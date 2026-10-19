#!/bin/sh
# construction/standfast_check.sh -- a held standfast refuses any new batch booking.
# Usage: sh construction/standfast_check.sh
# Reads each standfast note under active-development. A note whose status says Held blocks any booked batch in the
# day's plans. A note that says Released, or has no status, does not block.
set -eu
held=0
for n in active-development/date/*/*standfast*.md; do
  [ -f "$n" ] || continue
  if grep -qiE '^\*\*Status:\*\*.*\bheld\b' "$n" && ! grep -qiE '^\*\*Status:\*\*.*released' "$n"; then
    held=1; echo "HELD by $(basename "$n")"
  fi
done
booked=$(ls active-development/date/*/*_taylor-batch-*.md active-development/date/*/*_brihat-batch-*.md 2>/dev/null | wc -l)
if [ "$held" -eq 1 ] && [ "$booked" -gt 0 ]; then echo "red: a standfast holds and $booked batch plan(s) are booked under it"; exit 1; fi
echo "ok: no standfast holds bookings ($booked batch plan(s) booked)"
