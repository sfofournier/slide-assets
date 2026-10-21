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

`customer-360.png`, `net-zero.png`, `industries.png`, `customer-success.png`, `partner-and-custom-apps.png`, `data-cloud.png`, `slack.png`, `platform.png`, `mulesoft.png`, `small-business.png`, `tableau.png`, `commerce.png`, `agentforce.png`, `sales.png`, `service.png`, `marketing.png`, `heroku.png`, `trailhead.png`, `informatica.png`

## product-icons/3d — official 2026 3D style

`commerce.png`, `data-cloud.png`, `agentforce.png`, `sales.png`, `service.png`, `slack.png`, `platform.png`, `mulesoft.png`, `marketing.png`, `partner-and-custom-apps.png`, `small-business.png`, `industries.png`, `customer-success.png`, `tableau.png`, `heroku.png`, `trailhead.png`, `informatica.png`, `net-zero.png`

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
