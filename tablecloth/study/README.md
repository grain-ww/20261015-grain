# Study -- the room for outside texts, kept with care

**Status:** Living -- the study room and its gate.

**Voice:** Jena writes the notes here, in the register of the shared library. See `context/voices/jena.md`.
**Style:** Radiant, with the shared moves from [`context/styles/lib/shared-register.md`](../../context/styles/lib/shared-register.md).

This room holds outside texts kept for study. A text enters only when its own license says it may be kept
without strings. The room sits apart from `tablecloth/`. It was published to `ww` with the full snapshot at `e895cb2ac7` (20261018), so the stored texts and drafts here are public now.

## The gate

A text enters the room only when all three hold:

1. **It is public domain, or dedicated to the public.** The license names that in its own words, at its source,
   such as the Public Domain Mark or CC0.
2. **It has no share-alike condition.** A CC BY-SA text is refused, even though it can sit beside GPLv3, so the repo
   keeps no condition on anything it holds.
3. **It has no non-commercial condition.** A CC BY-NC text is refused, because the project may be used commercially.

A text with no clear license is refused. A translation counts as its own work, so a public domain original with a
copyrighted translation is refused unless the translation passes too.

## What each entry records

Each entry in [`MANIFEST.md`](MANIFEST.md) records, before anything is stored:

- the source URL, and the page it came from
- the license text as published there, quoted in full
- the date it was retrieved, on the one clock
- the SHA-256 of the file as stored here, once a file is stored
- the reason it passes the gate

Refusals keep their own record in [`../context/lib/refusals/`](../../context/lib/refusals/), so a later reader can see why a text is absent.

## Scripture and tradition

Sacred texts wait for a reviewer as well. The gate decides whether a text may be stored, and the review decides
whether it may be used. Both must pass before a passage appears in any public copy. The review request is in
`tablecloth/documents/notes/date/20261018/`.

## How the room is kept

The fascia reading for the context data, and the link health that goes with it, are in
[`../tablecloth/documents/context-data/fascia/fascia.md`](../../tablecloth/documents/context-data/fascia/fascia.md).

## Status

Accepted so far: two records with their files not yet stored (the 1896 Bhagavadgita and the 1885
Brihat Jataka). Legge's *Tao Te Ching* is stored for study, and its public use waits for review, Muir's *My First Summer in the Sierra* and Whitman's *Leaves of Grass* and Stevenson's *Poetry*, stored at `texts/whitman-leaves-of-grass-1892/`, `texts/stevenson-poetry-standard-ebooks/`, and `texts/muir-first-summer-standard-ebooks/`, and Taylor's 1793 *Plato* stored as ten parts at `texts/taylor-plato-wellcome-1793/parts/`.
The manifest holds each one's own statement.
