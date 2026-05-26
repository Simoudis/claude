# DESIGN.md — simoudis.com Design System

## Identity

Personal platform for John Simoudis.
Creative director, strategist, author.
Not a portfolio. Not a services site.
A platform for a mind.

---

## Emotional Thesis

Restrained authority. Editorial precision.
Nocturnal and considered. Typography as architecture.
Every element earns its place or is removed.

**Visual reference:** movingstillbook.com — same DNA, lighter and more editorial.
Dark ground, outline typography at large scale, blue-grey accent, generous space.

---

## Color System

| Role | Hex | Usage |
|------|-----|-------|
| Background | `#0e0f14` | Page ground |
| Primary Text | `#e8e6e0` | Headlines, body, active nav |
| Muted Text | `#6b6b72` | Labels, nav links, descriptors |
| Accent | `#b8c4d4` | CTAs, email, hover states |
| Dividers | `#1e2028` | Thin rules between sections |

### Palette Variants

**Option A — Nocturnal (default)**
- Background: `#0e0f14`
- Text: `#e8e6e0`
- Accent: `#b8c4d4`

**Option B — Inverted (warm off-white)**
- Background: `#f5f4f0`
- Text: `#1a1a1a`
- Muted: `#8a8a90`
- Accent: `#b8c4d4` (unchanged)
- Dividers: `#e0deda`

**Option C — Mid-tone (deep warm grey)**
- Background: `#1c1a17`
- Text: `#e8e6e0`
- Muted: `#6b6b72`
- Accent: `#b8c4d4`
- Dividers: `#2a2822`

---

## Typography

### Display
- **Font:** Cormorant Garamond
- **Weight:** Light (300)
- **Tracking:** Wide — `letter-spacing: 0.04em` minimum, wider for labels
- **Use:** Hero statements, section opening lines, founding lines
- **Italic variant:** Book titles, closing couplets

### Body
- **Font:** Inter
- **Weight:** Regular (400)
- **Size:** 16px
- **Line height:** 1.7
- **Max width:** 680px
- **Use:** All paragraph copy

### Labels
- **Font:** Inter
- **Weight:** Regular (400)
- **Size:** 9px
- **Case:** All-caps
- **Tracking:** `letter-spacing: 0.18em`
- **Color:** Muted (`#6b6b72`)
- **Use:** Section identifiers, nav links, category markers

### Wordmark (SIMOUDIS)
- **Font:** Inter
- **Weight:** Regular (400)
- **Case:** All-caps
- **Tracking:** `letter-spacing: 0.2em`
- **Color:** Primary text

---

## Layout Rules

- Full-width sections, left-aligned text throughout
- Hero statement: centered only (horizontal + vertical)
- Max body text width: 680px
- Generous vertical rhythm — sections breathe (min 120px section padding)
- No cards
- No drop shadows
- No border-radius (absolute zero — no exceptions)
- No decorative elements
- No gradients except subtle radial hero vignette (rgba overlay, max 0.15 opacity)

---

## Navigation

**Position:** Fixed top, full width
**Background:** `#0e0f14` with subtle bottom border `#1e2028` (1px)
**Height:** 64px

| Position | Element | Style |
|----------|---------|-------|
| Left | `SIMOUDIS` wordmark | Inter, all-caps, tracking 0.2em, primary text |
| Right | Page links | Inter, all-caps, tracking 0.18em, 9px, muted |
| Right (last) | `PHOTOGRAPHY ↗` | Same style, opens new tab |

**Active state:** Primary text color, no underline, no indicator
**Hover state:** Accent color (`#b8c4d4`)

Pages: `THINKING · WORK · BOOK · CONTACT · PHOTOGRAPHY`

---

## Section Anatomy

Every section follows this exact pattern — no exceptions:

```
[LABEL — all-caps, muted, 9px, tracked]
[thin rule — 1px, divider color, full section width]
[16px gap]
[content]
[generous bottom space — min 80px]
```

---

## Page Specifications

### Homepage — Hero
- Full viewport height (`100vh`)
- Content centered vertically and horizontally
- Small label above: `JOHN SIMOUDIS` in Inter all-caps, tracked, muted
- 24px gap
- Display line 1: `"I think therefore I create."` — Cormorant Garamond Light
- Display line 2: `"The difference is Practice. And Devotion."` — same
- Scale: as large as viewport allows, responsive
- Below fold: left-aligned intro paragraph + three text links

### Homepage — Below Fold Section Links
```
THE THINKING →
THE WORK →
THE BOOK →
```
Inter, all-caps, tracking 0.18em, primary text, no underline, spaced vertically

### About Page
- Label: `ABOUT`
- Opening display line: *"I am interested in things that last."* — Cormorant Garamond Light, 44px
- Body copy in Inter Regular
- Closing italic display lines (founding lines)

### Work Page
- Label: `THE WORK`
- Three-line display opening (Cormorant Garamond Light):
  - *"My thinking is visual."*
  - *"My practice is strategic."*
  - *"The intersection is where exceptional things get built."*
- Body paragraph in Inter
- Three sections separated by thin rules:
  - `BRAND CONVICTION` + one-line descriptor
  - `CREATIVE DIRECTION` + one-line descriptor
  - `ADVISORY` + one-line descriptor
- CTA: `write to me →` in accent color (`#b8c4d4`)

### Book Page
- Label: `THE BOOK`
- Large italic display title: *"Moving. Still."* — Cormorant Garamond Light Italic, 64px minimum
- Three short body paragraphs
- CTA: `Read the first chapter →` — links to movingstillbook.com (new tab)

### Contact Page
- Label: `CONTACT`
- Two short statements:
  - *"I'm not difficult to reach."*
  - *"I'm selective about what I take on."*
- One body paragraph
- Closing display couplet (founding lines, italic)
- Email: `HELLO@SIMOUDIS.COM` — Inter all-caps, accent color, tracked

---

## What This Design Never Uses

- Cards or contained boxes
- Drop shadows (zero exceptions)
- Border-radius (zero exceptions)
- Gradients (except the single hero vignette)
- Decorative elements or shapes
- Centered body text
- Icons or iconography
- Social media feeds or widgets
- Photo galleries or image grids
- Bold display type (Light only for Cormorant)
- Trend aesthetics
- Pinterest minimalism
- Anything that could belong to a different site

---

## Founding Lines (Sacred — Never Alter)

> "I think therefore I create."

> "The difference is Practice. And Devotion."

These lines are non-negotiable. Do not rephrase, reorder, or stylistically modify them.
They appear in the hero and as closing statements across pages.
