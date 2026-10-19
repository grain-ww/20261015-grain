# Negative content in one place, linked from where it is needed

**Stamp:** `20261018.060310` -- **Voice:** Jena -- **Style:** Radiant at the Door setting
**Status:** Design. It names a shape and a rule. It moves one file, already molted, and builds nothing else.

## The shape

Some negative content is a record: a refusal, a held item, a boundary a source sets. Such a record belongs in one
place, and the pages that need it link to that place. The place is `context/lib/refusals/`, molted from `yonder/refusals/` on
the owner's approval. Pages that need a refusal link to its entry; they do not restate it.

## What stays inline, and why

Not every negative moves. A prohibition that is itself the rule stays where the rule lives. The sacred-text rules in
`context/styles/lib/devotional-register.md` and the key-safety rules in `context/KEYS.md` are requirements, and a reader
must meet them where they apply. Moving them out would make the rule easier to miss. So the split is:

- **A record of refusal or hold** (a source refused, a text held, a claim left out): one file, linked.
- **A requirement stated as a prohibition** (never publish this, never track that): inline, next to the thing it governs.

## The one exception, and where it is defined

The exception is the living-page rule. `construction/living_pages.sh` defines which pages are living, and it excludes
`context/lib/refusals/` by name in one line. A refusal entry is therefore not held to the living-page check, and the
rule for that exclusion lives in one place.

## What fascia means here

The word fascia appears in the tree's field notes as the connective tissue of references: the links that hold pages
together. A fascia link in this sense is a relative link from a page to the one place that owns a record. The check is
`construction/links.sh`, which reads every such link. The field's fascia meter is not in this tree, so the shape here
is the link check, not a new instrument.

## What this does not decide

- Whether every refusal in the study room moves into `context/lib/refusals/`, or only the ones a page cites.
- Whether a requirement written as a prohibition should ever be linked rather than inline. This page says no for now.
- The field's fascia meter, which waits for an owner's word before any of it is brought in.

Recommend: check in (Claude) -- say whether to link the study pages to individual refusal entries, or keep one record file.
