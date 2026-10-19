#!/bin/sh
# construction/batch_round_check.sh -- every booked batch names a count that is round 1 of an orbit and not yet past.
# Usage: sh construction/batch_round_check.sh
# A booking that drifts past the count, or lands off round 1, reds here. Reads the Taylor and Brihat batch plans under active-development/date/20261018.
set -eu
NOW=$(git rev-list --count HEAD)
red=0; seen=0
for f in active-development/date/20261018/*_taylor-batch-*.md active-development/date/20261018/*_brihat-batch-*.md; do
  [ -f "$f" ] || continue
  grep -q "Superseded by" "$f" && continue
  # A plan closed late names its close on the owner's word; its count is history, not a booking.
  grep -q "Closed late" "$f" && continue
  seen=$((seen + 1))
  name=$(basename "$f")
  N=$(grep -oE 'The count it reads at is `[0-9]+`' "$f" | grep -oE '[0-9]+' | head -1)
  [ -n "$N" ] || { echo "RED $name: no booked count found"; red=1; continue; }
  round=$(( (N - 1) % 8 + 1 ))
  if [ "$round" -ne 1 ]; then echo "RED $name: count $N is round $round, not round 1"; red=1; continue; fi
  if [ "$N" -lt "$NOW" ]; then echo "RED $name: count $N is already past the count $NOW"; red=1; continue; fi
  echo "ok $name: count $N is round 1 and ahead of $NOW"
done
echo "batches checked: $seen"
[ "$red" -eq 0 ] && echo "verdict=ok" || { echo "verdict=red"; exit 1; }
