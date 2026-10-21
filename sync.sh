#!/usr/bin/env bash
# Mirror the Drive asset library into this repo (kebab-case paths), validate for the
# Google Slides API, regenerate manifest.json + README.md, commit and push. Idempotent.
set -euo pipefail

SRC="${ASSETS_SRC:-$HOME/Library/CloudStorage/GoogleDrive-ofournier@salesforce.com/My Drive/Layouts/Assets}"
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO"

[ -d "$SRC" ] || { echo "ERROR: source not found: $SRC" >&2; exit 1; }
REMOTE="$(git remote get-url origin)"
GH_USER="$(printf '%s' "$REMOTE" | sed -E 's#^(https://github.com/|git@github.com:)([^/]+)/.*#\2#')"
REPO_NAME="$(basename "$REPO")"

STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

# Steps 2-4: copy + rename, validate, manifest, README (python reads Drive as untrusted data)
python3 -E - "$SRC" "$STAGE" "$GH_USER" "$REPO_NAME" <<'PY'
import json, os, re, shutil, sys, unicodedata
from PIL import Image
Image.MAX_IMAGE_PIXELS = None

src, stage, user, repo = sys.argv[1:5]
MAX_PIXELS, MAX_BYTES = 25_000_000, 50_000_000
TOP = ["Icons", "Product icons", "Agent Astro", "Astro", "3D accents", "Frames", "Cards", "Contact sheets"]
EXT = {".png": "PNG", ".gif": "GIF"}

def kebab(s):
    s = unicodedata.normalize("NFKD", s)
    s = "".join(c for c in s if not unicodedata.combining(c)).lower()
    return re.sub(r"-+", "-", re.sub(r"[^a-z0-9*]+", "-", s)).strip("-")

def kpath(rel):  # relative path with "/" separators -> kebab path, ext lowercased
    parts = rel.split("/")
    stem, ext = os.path.splitext(parts[-1])
    return "/".join([kebab(p) for p in parts[:-1]] + [kebab(stem) + ext.lower()])

# source roots: (source dir, repo-relative prefix)
roots = [(os.path.join(src, t), t) for t in TOP if os.path.isdir(os.path.join(src, t))]
pub = os.path.join(src, "Public")
if os.path.isdir(pub):
    for d in sorted(os.listdir(pub)):
        if os.path.isdir(os.path.join(pub, d)) and d != "Agent Astro":
            roots.append((os.path.join(pub, d), d))

mapping, excluded, errors = {}, [], []   # new path -> source file
for root, prefix in roots:
    for dp, dn, fn in os.walk(root):
        dn.sort()
        for f in sorted(fn):
            full = os.path.join(dp, f)
            rel = prefix + "/" + os.path.relpath(full, root).replace(os.sep, "/")
            if f == ".DS_Store" or os.path.splitext(f)[1].lower() not in EXT:
                excluded.append(rel); continue
            new = kpath(rel)
            if new in mapping:
                errors.append(f"COLLISION: {new} <- {mapping[new]!r} and {full!r}")
            mapping[new] = full

manifest = []
for new, full in sorted(mapping.items()):
    size = os.path.getsize(full)
    try:
        with Image.open(full) as im:
            fmt, (w, h) = im.format, im.size
    except Exception as e:
        errors.append(f"UNREADABLE: {new}: {e}"); continue
    if fmt != EXT[os.path.splitext(new)[1]]:
        errors.append(f"FORMAT: {new} is {fmt}, extension says {os.path.splitext(new)[1]}")
    if w * h >= MAX_PIXELS: errors.append(f"TOO MANY PIXELS: {new} {w}x{h} = {w*h/1e6:.1f} MP (limit < 25 MP)")
    if size >= MAX_BYTES: errors.append(f"TOO BIG: {new} {size/1e6:.1f} MB (limit < 50 MB)")
    parts = new.split("/")
    manifest.append({"path": new,
        "url": f"https://raw.githubusercontent.com/{user}/{repo}/main/{new}",
        "category": parts[0], "set": "/".join(parts[1:-1]),
        "name": os.path.splitext(parts[-1])[0], "width": w, "height": h, "bytes": size})

if errors:
    print("\nVALIDATION FAILED, nothing was changed:", file=sys.stderr)
    for e in errors: print("  " + e, file=sys.stderr)
    sys.exit(1)

for new, full in mapping.items():
    dst = os.path.join(stage, new)
    os.makedirs(os.path.dirname(dst), exist_ok=True)
    shutil.copyfile(full, dst)

with open(os.path.join(stage, "manifest.json"), "w") as fh:
    json.dump(manifest, fh, indent=1, ensure_ascii=False); fh.write("\n")

# README: kebab-case every path-like token, drop sections about files that aren't published
readme = open(os.path.join(src, "README.md"), encoding="utf-8").read()
readme = re.sub(r"\n## (Shapes kit\.pptx|Logos)\n.*?(?=\n## |\Z)", "", readme, flags=re.S)
readme = readme.replace("Paths are relative to `My Drive/Layouts/Assets/`.", "Paths are relative to the repo root.")
def fix_code(m):
    t = m.group(1)
    return "`" + (kpath(t) if re.search(r"\.(png|gif|PNG|GIF)$", t) or "/" in t else t) + "`"
readme = re.sub(r"`([^`\n]+)`", fix_code, readme)
readme = re.sub(r"^(## )([A-Za-z0-9 ]+(?:/[A-Za-z0-9 ]+)?)( — |$)",
                lambda m: m.group(1) + "/".join(kebab(p) for p in m.group(2).split("/")) + m.group(3),
                readme, flags=re.M)
readme = re.sub(r"^\| ([^|\n]+\.(?:png|gif)) \|", lambda m: "| " + kpath(m.group(1)) + " |", readme, flags=re.M)
header = "Salesforce brand assets for internal slide building. Not licensed for reuse.\n\n"
open(os.path.join(stage, "README.md"), "w", encoding="utf-8").write(header + readme)

total = sum(m["bytes"] for m in manifest)
print(f"{len(manifest)} images, {total/1e6:.1f} MB; excluded {len(excluded)} non-png/gif/ignored files")
for e in excluded: print("  excluded:", e)
PY

# Optional lossless optimisation (not installed on every machine)
if command -v oxipng >/dev/null; then
  find "$STAGE" -name '*.png' -print0 | xargs -0 oxipng -q --strip safe
fi

# Mirror stage -> repo, deleting files removed at the source
rsync -a --delete --exclude='.git/' --exclude='sync.sh' --exclude='.gitignore' "$STAGE"/ "$REPO"/

git add -A
if git diff --cached --quiet; then echo "No changes."; exit 0; fi
{
  echo "Sync assets from Drive"; echo
  git diff --cached --name-status --diff-filter=A | sed 's/^A\t/added: /'
  git diff --cached --name-status --diff-filter=M | sed 's/^M\t/modified: /'
  git diff --cached --name-status --diff-filter=D | sed 's/^D\t/removed: /'
} | git commit -q -F -
git push -u origin main
