# Plan -- one page for the removal verbs

**Stamp:** `20261018.001012` -- **Style:** Gauge at the Field setting -- **Voice:** Kyri
**Status:** Done. Implemented in `569422a`: the lens moved to active-designing, and context/REMOVAL.md defines the verbs. The deep debride stays held.

## What we are fixing

Molt, breach, and debride are defined in more than one place. The clean tree has the lens in
`tablecloth/documents/research/`. The field has the three depths, the molt and debride rules, and
the infuse foundation. Two definitions of one idea drift apart, which is the single-stranded fault.

## What we are not doing

- **Not one root folder.** The verbs are operations, not places. A folder named for them would
  give an action a location it does not have.
- **No new name taken from a person or a tradition.** The notes that inspired this work name a
  real person and a devotional figure. Neither goes in a path. Inspiration, if it is written down,
  goes in a foundation page with the owner's word, and the path names only what the page does.

## The plan

1. **One definitions page, in `context/`.** Name: `context/REMOVAL.md`. It states the three depths
   and infuse in one table, with each verb's gate and what it keeps. It is living, so it carries no
   stamp in its name, and it sits beside `context/BRIX.md` and `context/KEYS.md`.
2. **Move the lens to `active-designing/`.** The lens is design writing: it would still be worth
   reading if the code were deleted. `design-rooms.md` places it there. The move keeps the file name,
   so the stamp stays with it.
3. **Repoint the one living link.** `context/BRIX.md` links the lens by path (line 37). After the
   move that link points at `active-designing/`. It also gives the verbs a pointer to `REMOVAL.md`.
4. **Leave testimony alone.** The infuse bundle index, the session log, and the counsel pages cite
   the old path. They are dated, so they keep their words. The bundle index records a blob hash
   that stays valid, since the move does not change the file's bytes.
5. **Check.** Run a link check over `context/` and `active-designing/`. Confirm that each verb is
   defined in one place, `context/REMOVAL.md`, and that other pages point to it instead of
   restating it.

## What each step touches

| Step | Files | Reversible? |
|---|---|---|
| 1 | new `context/REMOVAL.md` | yes, delete the new file |
| 2 | one `git mv` of the lens | yes, `git mv` back |
| 3 | one line in `context/BRIX.md` | yes, one edit |
| 4 | none | nothing to undo |
| 5 | none | read-only |

Every step is local until a push. Nothing in this plan publishes anything.

## What waits for a word

- Whether `REMOVAL.md` gets written now, or the verbs stay where they are until Brix is built.
- Whether the lens moves to `active-designing/` or stays where it is.
- Whether the field's three-depths foundation is copied in, or only linked by name.

## Sensitivity

The plan keeps the notes' sacred and personal material out of every path and every new page. The
scripture stays in the resin, marked for review. Nothing here quotes it or names the people in it.
