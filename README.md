Salesforce brand assets for internal slide building. Not licensed for reuse.

# Salesforce 2026 asset library — index

Shared, cross-project assets for Salesforce-template decks. Read this file instead of opening images; open a contact sheet (`contact-sheets/*.png`, one image per set) only when a visual check is needed.

Paths are relative to the repo root. Every animated icon exists as `name.gif` (animated, plays in slideshow) and `name.png` (static, best frame). **Use the PNG for anything exported to PDF or printed**, and whenever `first frame blank` = yes (the GIF shows nothing in PDF/thumbnail).

## Rules of use

- Blue icons on white / light-blue backgrounds; White icons on dark-blue backgrounds. Never put a coloured tile or circle behind an icon (plain icons only)
- One icon family per slide; same size for icons in a row (≈0.9–1.2" on the 20" canvas); align on the text they illustrate
- `line-icon` assets are black on an opaque white tile: only on white backgrounds or inside a white card
- `annotation` assets (scribble circle, underline, arrows, burst) point at one thing per slide; `ui` assets are for mock customer journeys
- Agent Astro only when the slide is about Agentforce; one pose per slide, add `agent-astro/shadow.png` under standing poses
- Product icons: one style per deck (Flat, 2D or 3D); show the icon instead of repeating the product name in a header

## icons/blue — 69 animated icons

| file | category | meaning / use | first frame blank |
|---|---|---|---|
| heart-3d | illustration | care, loyalty, customer love (static PNG) |  |
| chevrons-double-white | annotation | forward / next, white animated chevrons (use on dark) |  |
| scribble-circle | annotation | hand-drawn circle to highlight a number or word |  |
| user-refresh | icon | customer profile update, re-engagement, account sync |  |
| brick-wall | line-icon | barrier, blocker, silo (black line on white tile) |  |
| dollar-growth | line-icon | revenue growth, ROI (black line on white tile) |  |
| trophy | line-icon | win, award, success (black line on white tile) |  |
| lightbulb-line | line-icon | idea, insight (black line on white tile) |  |
| search-analytics | line-icon | analysis, investigation, insights (black line on white tile) |  |
| network-hub | line-icon | integration, hub, connected ecosystem (black line on white tile) |  |
| meeting-team | line-icon | workshop, meeting, collaboration (black line on white tile) |  |
| agent-astro-head | character | Agent Astro head, animated (11 MB: use sparingly, Agentforce only) |  |
| checkmark-circle | icon | done, validated, compliant |  |
| phone-call | icon | call, contact centre, voice |  |
| target-arrow | icon | goal, target, precision |  |
| mail-notification | icon | email, new message, campaign |  |
| bell-notification | icon | alert, notification, reminder |  |
| newsletter-mail | icon | newsletter, document received, content |  |
| thumbs-up-dark | icon | approval, satisfaction, like |  |
| calendar | icon | schedule, timeline, booking |  |
| cart-upload | icon | add to cart, order placed, commerce |  |
| support-headset | icon | customer service, support agent, chat |  |
| cart-dollar | icon | purchase, basket value, commerce revenue |  |
| warning-triangle | icon | risk, warning, issue |  |
| bar-chart | icon | performance, KPIs, reporting |  |
| download | icon | download, import, intake |  |
| megaphone | icon | marketing, announcement, campaign |  |
| share-nodes | icon | distribution, sharing, routing | yes |
| team-people | icon | team, workforce, users |  |
| credit-card | icon | payment, billing, checkout |  |
| search-magnifier | icon | search, discovery, audit |  |
| battery-full | icon | capacity, energy, readiness |  |
| location-pin | icon | location, site, store, field |  |
| folder-open | icon | files, records, case folder |  |
| folder-open-2 | icon | files, records (variant) |  |
| cart-dollar-2 | icon | purchase (variant) |  |
| search-magnifier-grey | icon | search (grey, neutral) | yes |
| button-submit | ui | UI button "Submit" for mock journeys |  |
| button-add-to-bag | ui | UI button "Add to bag" for commerce journeys |  |
| thumbs-up-blue | icon | approval, like (lighter blue) |  |
| chat-bubble-red | ui | message, complaint, notification bubble |  |
| rating-five-stars | ui | rating, review, CSAT |  |
| chat-typing | ui | chat in progress, conversational AI, agent typing |  |
| loading-spinner | ui | loading, processing, waiting |  |
| cursor-pointer | ui | click, self-service, digital action |  |
| button-sign-up | ui | UI button "Sign up" for acquisition journeys |  |
| burst-lines | annotation | emphasis burst above an element |  |
| arrows-down-three | annotation | converging arrows, focus, drill-down |  |
| arrow-right-3d | annotation | next step, direction |  |
| underline-scribble | annotation | hand-drawn underline for a key word |  |
| dashed-circle | annotation | loading ring, cycle, orbit |  |
| dot-filled | annotation | animated dot, bullet marker, pulse |  |
| circle-outline | annotation | animated ring to highlight |  |
| chevrons-double-navy | annotation | forward / next, navy chevrons |  |
| arrow-left-line | annotation | back, previous, pointer |  |
| download-circle | icon | download, intake (circle) |  |
| rectangle-outline | annotation | draw-on box to frame content | yes |
| rectangle-dashed | annotation | draw-on dashed box, placeholder, scope | yes |
| wave-lines | annotation | flow, movement, decorative waves |  |
| bar-chart-growth-green | illustration | growth bars (green) | yes |
| plant-hanging | illustration | sustainability, organic growth |  |
| lightbulb-idea | illustration | idea, innovation (colour) |  |
| heart-flat | illustration | care, health, loyalty (coral) |  |
| warning-red | illustration | alert, critical risk (red) |  |
| plant-leaves | illustration | growth, sustainability |  |
| phone-outline | illustration | mobile app, smartphone |  |
| pill-bottle-rx | illustration | pharma, health, prescription |  |
| lightning-pain | illustration | pain point, friction, frustration (red zigzag) |  |
| wallet | illustration | payment, wallet, spend |  |

`heart-3d` is a static PNG only. `agent-astro-head.gif` is 11 MB.

## icons/white — 44 animated icons (white glyphs, same meanings as Blue)

- **icon**: user-refresh, phone-call, bell-notification, mail-notification, target-arrow, newsletter-mail, calendar, cart-upload, support-headset, warning-triangle, cart-dollar, download, bar-chart, thumbs-up, checkmark-circle *, thumbs-up-2, download-circle, megaphone, share-nodes *, team-people, credit-card, battery-full, location-pin, folder-open, folder-open-2, search-magnifier
- **ui**: rating-five-stars, button-pill-1, button-pill-2, chat-typing, chat-bubble, loading-spinner, cursor-click, button-pill-3
- **annotation**: burst-lines, arrows-down-three, arrow-right-outline, asterisk-burst, underline-scribble, dashed-circle, chevrons-double, dot-filled, circle-outline, arrow-left-fletched

White-only extras: `asterisk-burst` (emphasis), `button-pill-1..3` (blank UI buttons), `arrow-left-fletched`. `*` = first frame blank.

## product-icons/flat — flat outline style (from the team deck)

`marketing.png`, `partner-and-custom-apps.png`, `sales.png`, `commerce.png`, `mulesoft.png`, `net-zero.png`, `tableau.png`, `customer-success.png`, `slack.png`, `platform.png`, `heroku.png`, `data-cloud.png`, `industries.png`, `small-business.png`, `trailhead.png`, `analytics.png`, `service.png`, `revenue-and-orders.png`, `experience.png`, `agentforce.png`, `customer-360.png`, `field-service.png`

## product-icons/2d — official 2026 2D style

`customer-360.png`, `net-zero.png`, `industries.png`, `customer-success.png`, `partner-and-custom-apps.png`, `data-cloud.png`, `slack.png`, `platform.png`, `mulesoft.png`, `small-business.png`, `tableau.png`, `commerce.png`, `agentforce.png`, `sales.png`, `service.png`, `marketing.png`, `heroku.png`, `trailhead.png`, `informatica.png`, `field-service.png`

## product-icons/3d — official 2026 3D style

`commerce.png`, `data-cloud.png`, `agentforce.png`, `sales.png`, `service.png`, `slack.png`, `platform.png`, `mulesoft.png`, `marketing.png`, `partner-and-custom-apps.png`, `small-business.png`, `industries.png`, `customer-success.png`, `tableau.png`, `heroku.png`, `trailhead.png`, `informatica.png`, `net-zero.png`, `field-service.png` (400 px)

## agent-astro — 3D character (PNG, transparent)

| file | pose / when to use |
|---|---|
| flying-forward.png | flying horizontally, arm forward: speed, launch |
| flying-reaching-right.png | flying up and reaching right: ambition, next step |
| standing-presenting-left.png | standing, presenting to the left: place right of content |
| standing-waving.png | standing and waving: welcome, intro, hello |
| floating-pointing-right.png | floating, pointing right: place left of content |
| celebrating-arms-up.png | both arms up: success, win, launch |
| floating-gesturing-right.png | leaning and gesturing right: explain, guide |
| jumping-waving.png | jumping and waving: energy, kick-off |
| standing-presenting-right.png | standing, presenting to the right: place left of content |
| shadow.png | isolated ground shadow to sit under any pose |

## GitHub mirror — for Google Slides

Everything in this folder except `logos/` and `Shapes kit.pptx` is mirrored to the public repo https://github.com/sfofournier/slide-assets (kebab-case paths, e.g. `3d-accents/sparkles/sparkle-blue.png` → `3d-accents/sparkles/sparkle-blue.png`). The Google Slides API can only insert images from a public URL, so Google Slides decks use `https//raw-githubusercontent-com/sfofournier/slide-assets/main/path`; `manifest.json` at the repo root lists every path with its size. After changing this folder, run `/sync.sh` in the local clone (`/documents/other-bvs/slide-assets`). Never add customer logos, people photos or anything confidential here.

## 3d-accents — brand accents (PNG, transparent, ≤1000 px)

Accents add the brand's warmth to a key slide; they are not information. Rules: 1–2 accents per slide, only on the single callout, the key-message slide, a title, divider or closing slide; one colour family per slide; overlap a corner of the card (about a third of the accent outside it), never over text or data.

| set | files | meaning / when to use |
|---|---|---|
| Sparkles | `sparkle-yellow-cyan-blue-teal-pink-violet-2-3.png` (3 angles per colour) | AI, Agentforce, "new", insight. Default accent on AI slides. Pick the colour closest to the slide's accent; yellow for highlights |
| Sparkles | `sparkle-holographic-blue-violet.png`, `sparkle-holographic-blue-tall.png` | premium / hero AI moment (cover, key message) |
| Sparkles | `sparkles-cluster-blue.png` | one big + two small sparkles: delight, magic moment |
| Sparkles | `sparkles-app-tile.png` | AI feature, "Einstein / Agentforce inside" |
| Cursors | `cursor-violet-blue-teal-pink-orange.png` | click, self-service, digital action, demo |
| Emoji | `grinning, laughing, smiling, winking, heart-eyes, party` | delight, satisfaction, success, celebration |
| Emoji | `thinking, worried, anxious, astonished, mind-blown, angry` | doubt, pain point, frustration, surprise (one per pain point) |
| Emoji | `headset-support` | customer service, contact centre, support agent |
| Hands | `thumbs-up, thumbs-up-left` | approval, agreement, "done" |
| Hands | `handshake` | partnership, deal, alliance (e.g. Orange × Salesforce) |
| Hands | `clap` | congratulations, win, thank you |
| Hands | `pinch` | "just right", precision, small detail |
| Objects | `heart-pink, heart-glossy` | customer love, trust, care, loyalty |
| Objects | `rocket, jetpack, chevrons-forward` | launch, acceleration, go-live, next steps |
| Objects | `lightbulb` | idea, innovation |
| Objects | `person-check, person-scan-pink` | verified user, identity / 360 view of a customer |
| Objects | `lock-holographic` | security, trust, compliance |
| Objects | `location-pin, compass` | place, store, field / direction, strategy |
| Objects | `graduation-cap, trailhead-badge` | training, enablement, Trailhead |
| Objects | `hex-badge-navy-sparkle, hex-badge-violet` | container for a number or label (badge) |
| Objects | `paintbrush, plus-tile-glass` | customisation, design / add, new |

## astro — Trailhead Astro (the brown mascot, PNG)

Use for Trailhead, learning, community and customer-success content; not for Agentforce (that is Agent Astro). One pose per slide, facing the content; put `agent-astro/shadow.png` under standing poses if needed.

`presenting-right`, `presenting-right-tee`, `presenting-right-hoodie`, `reaching-right-closeup` (place left of content) · `holding-sign`, `holding-sign-2` (white disc to carry a number or word) · `waving`, `waving-slack-shirt`, `jumping-waving` (welcome, kick-off) · `walking`, `walking-tee`, `walking-hoodie`, `running` (progress, journey) · `standing-backpack`, `standing-hoodie` (neutral) · `selfie` (mobile, social) · `crystal-ball-ai` (AI + CRM, prediction) · `hard-hat` (implementation, build) · `ranger-sparkle` (guide, discovery, AI)

## frames — device outlines (white, transparent screen)

`laptop`, `monitor`, `phone`, `tablet`: put a product screenshot behind the frame (send the screenshot to back).

## cards — shadowed white cards for callouts

`card-1x1, card-4x3, card-3x2, card-2x1, card-3x1, card-3x4, card-1x2`: white rounded card (radius 10 %) with the brand shadow (#066AFE at 15 %, soft blur, slightly below). Google Slides cannot draw shadows through the API, so the callout is this PNG behind a text box. Pick the ratio closest to the text block; never stretch a card more than ±15 % in one direction (the corners distort).
