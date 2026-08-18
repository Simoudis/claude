---
name: site-design-system
description: Apply the simoudis.com design system and site architecture (colors, typography, layout rules, page specs, founding lines) when generating, editing, or reviewing code, copy, or layout for simoudis.com. Use whenever the task involves the simoudis.com site, its pages (Homepage, Thinking, Work, Book, Contact), or its visual/editorial identity.
---

# simoudis.com Design System

Full specs live in this skill's `reference/` directory:

- `reference/DESIGN.md` — color system, typography, layout rules, section anatomy, page specs, founding lines
- `reference/SITE.md` — site architecture, routes, navigation, external links, tech notes

Read the relevant file before generating or reviewing anything for the site. Do not rely on memory of these rules alone — they are precise and the deviations below are considered defects.

## Non-negotiables

- Background `#0e0f14`, primary text `#e8e6e0`, muted text `#6b6b72`, accent `#b8c4d4`, dividers `#1e2028` (Option A / default palette; see DESIGN.md for the two alternate palette variants).
- Display type: Cormorant Garamond, Light (300) only — never bold. Body/labels/nav: Inter.
- Zero border-radius, zero drop shadows, no cards, no icons, no decorative elements, no image grids or social widgets.
- Founding lines are sacred and must never be rephrased, reordered, or restyled:
  - "I think therefore I create."
  - "The difference is Practice. And Devotion."

## When applying this skill

1. Check which page/route is being worked on against `reference/SITE.md` for its route, template, and content requirements.
2. Check `reference/DESIGN.md`'s "Section Anatomy" and relevant page spec for layout structure.
3. Verify color, type, and spacing choices against the tables in `reference/DESIGN.md` — flag anything that isn't in the design system rather than inventing new values.
4. Cross-check against "What This Design Never Uses" in `reference/DESIGN.md` before finalizing.
