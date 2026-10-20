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

## ig-plan on these accounts

`ig-plan` is written for growth accounts. For all three accounts, these
replace its defaults:

- **Cadence:** not fixed by the user yet. Suggest at most three posts per
  account per week, label it a suggestion, and say "nothing worth posting
  this week" when that is true. Never fill a slot just to keep a schedule.
- **Format mix (Jerry Rose):** use the approved mix in `voices/jerry-rose.md`
  (Home + Garden ~60% carousels / 25% singles / 15% Reels; Events ~50 / 20 /
  30). Not "at least three Reels".
- **Slot types:** plan by the four Point of View pillars (How We See, How
  Nature Leads, How People Live, How Hospitality Feels), not Proof / Teach /
  Opinion / Story / Offer. No hook formula numbers.
- **Offer slot:** only when the user names a real, approved seasonal service.
- **Photo source for every slot:** a new Dropbox shoot, an archive folder
  (check capture date and client authorization), or a shot list for John.
  Archive posts at most one in five. Never generate imagery of work that was
  not done.
- **No engagement round.** No comment lists, no buyer DMs. If useful, list
  vendors or venues to credit or invite to a collab, only from real projects.
- **Stories:** optional, not daily.
- **@simoudis:** plan from the positions and photography series in
  `voices/simoudis.md`; mostly carousels and images, rarely video.
