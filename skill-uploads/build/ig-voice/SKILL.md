---
name: ig-voice
description: The voice and house rules for the Instagram accounts @simoudis, @jerryroseevents and @jerryrosehomeandgarden. Load this before any ig-* skill writes, rewrites, scores or plans anything for Instagram, and whenever a request names one of those accounts, Jerry Rose or John Simoudis on Instagram.
---

# ig-voice

Every `ig-*` skill reads its voice from this skill. Load it first, then pick
exactly one voice file:

| Request names | Read |
| --- | --- |
| `@jerryroseevents`, `@jerryrosehomeandgarden`, or Jerry Rose | `voices/jerry-rose.md` |
| `@simoudis` or John Simoudis personally | `voices/simoudis.md` |
| No account named | Ask which account. Never guess from the image. |

The voice file wins wherever it disagrees with an `ig-*` skill.

For Jerry Rose captions, run the humanizer with the brand lexicon so approved
lines such as "Curated by Nature" are not rewritten:

```bash
python3 <ig-human folder>/humanize.py draft.txt --lexicon <this folder>/voices/jerry-rose.slop.json
```

Inside `voices/simoudis.md`, the routing note at the top refers to
`voices/jerry-rose.md` in this same folder.

Memory files (`log.md`, `swipe.md`, `plan.md`) that some skills mention do not
persist between chats here. If one is missing, say so and carry on; ask the
user to paste a previous plan or swipe file when it matters.

## ig-profile on the Jerry Rose accounts

The `ig-profile` rubric is written for personal growth accounts. When scoring
`@jerryroseevents` or `@jerryrosehomeandgarden`, apply these exceptions and
say so in the scorecard:

- **photo:** the logo is correct for a studio account. Score it on legibility
  at small size, not on a face.
- **highlights:** never propose "Pricing" or "Results" highlights unless the
  user supplies approved prices or real, authorized outcomes. Name highlights
  for the account's territory instead (for example Weddings, Celebrations,
  Corporate on events; Seasonal, Gardens, Interiors on home and garden).
- **story_presence:** not required daily. Score it as optional.
- **pinned_three:** best proof, clearest view of the service, and the best
  introduction to the studio (not to a person).

`@simoudis` is a personal account; the rubric applies as written there.
