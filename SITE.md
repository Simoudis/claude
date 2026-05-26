# simoudis.com — Site Architecture

## Identity
**Platform:** simoudis.com
**Owner:** John Simoudis — creative director, strategist, author
**Purpose:** Personal platform for a mind. Not a portfolio. Not a services site.

---

## Pages

### / — Homepage
**Route:** `/`
**Template:** `home`

Hero: full-viewport, centered founding lines in Cormorant Garamond Light.
Below fold: left-aligned intro paragraph + three section links.
Sections linked: THE THINKING / THE WORK / THE BOOK

---

### /thinking — The Thinking
**Route:** `/thinking`
**Template:** `thinking`

Long-form essays, notes, and observations.
Chronological, no categories — the work speaks in sequence.
Each entry: date label, title in display type, body in Inter.

---

### /work — The Work
**Route:** `/work`
**Template:** `work`

Three practice areas:
- **BRAND CONVICTION** — Strategic clarity for brands that want to mean something.
- **CREATIVE DIRECTION** — Visual and verbal systems built around a singular point of view.
- **ADVISORY** — Embedded thinking partnership for founders and creative leaders.

No case studies. No client logos. Inquiry by introduction.

---

### /book — The Book
**Route:** `/book`
**Template:** `book`

Dedicated page for *Moving. Still.*
Large italic display title, three body paragraphs, first-chapter CTA.
External link → movingstillbook.com

---

### /contact — Contact
**Route:** `/contact`
**Template:** `contact`

Two short statements. One body paragraph.
Closing display couplet. Email in accent spaced caps.
No form. Direct email only: HELLO@SIMOUDIS.COM

---

## External Links (Navigation)

| Label | Destination | Behavior |
|-------|------------|----------|
| PHOTOGRAPHY | simoudisphotography.com | Opens new tab |
| Read the first chapter → | movingstillbook.com | Opens new tab |

---

## Navigation

**Fixed top bar.**
- Left: `SIMOUDIS` wordmark — Inter, all-caps, letter-spacing 0.2em
- Right: `THINKING · WORK · BOOK · CONTACT · PHOTOGRAPHY ↗`

All nav links: Inter, all-caps, letter-spacing 0.18em, 9px, muted (#6b6b72)
Active page link: primary text (#e8e6e0)

---

## Founding Lines (Sacred — Never Alter)

> "I think therefore I create."
> "The difference is Practice. And Devotion."

These appear: hero (Homepage), closing (About / Work / Contact pages).

---

## Tech Notes

- No CMS required at launch; static files acceptable
- No image assets — typography is the only visual element
- No social feeds, no analytics widgets, no cookie banners
- Font loading: Cormorant Garamond (Google Fonts), Inter (Google Fonts)
- Color palette: see `DESIGN.md`
