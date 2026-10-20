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
