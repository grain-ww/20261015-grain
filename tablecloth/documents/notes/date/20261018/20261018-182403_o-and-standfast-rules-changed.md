# The o and standfast rules, changed

**Stamp:** `20261018.182403` -- **Kind:** Notes. Written by o, as the o rule now requires.

## What changed

- **o:** `construction/o_learnings_check.sh` refuses a push when commits are ahead of `xy/main` and none of them writes a dated note under `tablecloth/documents/notes/date/`.
- **standfast:** `construction/standfast_check.sh` refuses any batch booking while a standfast note says Held. It reads the note's status line.
- **The audit and the record:** both checks run in `construction/check_all.rish`, and the calendar record prints the standfast state.

## What the audit found the first time it ran

- Taylor batch 001 was booked at count 425 and batch 002 at count 433. The count is now 435, so both passed without being run. The round check reds on them, and that red is real.
- No batch output file exists yet. The batches are not rebooked here: the owner chooses between rebooking them to the next round-1 counts and marking them missed.

## What waits for a word

- Rebook batches 001 and 002, or mark them missed.
- Whether the standfast's expiry should be a count rather than a status line.
