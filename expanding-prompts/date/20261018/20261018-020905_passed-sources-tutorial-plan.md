# Expanding prompt -- a tutorial from the four passed sources

**Stamp:** `20261018.020905` -- **Style:** Gauge at the Door setting -- **Voice:** Kyri
**Audience:** a generic Acme Corporation employee tending this tree, who is new to it.
**Status:** Plan. Nothing here has been built, tested, or published.

## The intent, in one sentence

Write a short tutorial that shows a newcomer how to read a study source, and how the study room's gate decides
whether that source may be stored, using only the four sources that have passed the gate.

## The sources it may use

| Source | Record | Statement it passed on |
|---|---|---|
| Bhagavadgita, Anandashrama Press (1896) | Wellcome `n3mtedcf` | Public Domain Mark |
| Thomas Taylor, Plato (1793) | Wellcome `gt9wpfs2` | Public Domain Mark |
| Brihat Jataka, Chidambaram Iyer (1885) | Wellcome `afmgm695` | Public Domain Mark |
| Tao Te Ching, Legge (1891), Standard Ebooks | Standard Ebooks `laozi/tao-te-ching/james-legge` | CC0 on the edition; translation public domain by age |

No other source may appear in the tutorial. A refused source may be named only as a refusal, with its row in
`yonder/refusals/`.

## The steps

1. **Read the gate.** Open `study/README.md` and state the three conditions in the tutorial's own words.
2. **Read one record.** Open `study/MANIFEST.md`, pick the Tao Te Ching row, and explain each column.
3. **Read one refusal.** Open the refusals file and explain why the Gutenberg rows fail, in one paragraph.
4. **Check the rule for sacred texts.** Explain the review step in `context/styles/lib/devotional-register.md`,
   and say plainly that no passage is quoted in the tutorial.
5. **Write the tutorial.** Keep it to a page. Name each claim with its source record, and mark anything that
   is a judgment rather than a fact.

## Bounds

- One page, at most about 600 words.
- No passage quoted from any source.
- Each factual sentence carries a record number, not a paraphrase of the source's own words.

## What is not in this plan

- A build and a test. The tutorial is prose, so its check is reading, not a witness.
- Any acme or northwind product tutorial. Those names come from the notes, and no source for them has been checked.
- Epistemology, Sufi, and Bhagavata sources. None has passed the gate.

## Where the output goes

`docs-geode/` is the shelf a newcomer reads, and it is in this tree. The finished page goes there, and the baton
card is updated to point to it.
