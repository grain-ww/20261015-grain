#!/bin/sh
# construction/batch_output_check.sh -- a batch whose count has passed must have its output file on disk.
# Usage: sh construction/batch_output_check.sh
# For each batch plan not marked superseded, read its count and its output path. A count not yet reached is fine.
# A count already reached with no output file is red, so a batch run without its output shows up.
set -eu
NOW=$(git rev-list --count HEAD)
red=0; seen=0
for f in active-development/date/20261018/*_taylor-batch-*.md active-development/date/20261018/*_brihat-batch-*.md; do
  [ -f "$f" ] || continue
  grep -q "Superseded by" "$f" && continue
  seen=$((seen + 1))
  name=$(basename "$f")
  N=$(grep -oE 'The count it reads at is `[0-9]+`' "$f" | grep -oE '[0-9]+' | head -1)
  out=$(grep -oE 'draft/([0-9]{3}-)?batch-[0-9]+-[0-9]+\.md' "$f" | head -1)
  if [ "$N" -gt "$NOW" ]; then echo "not yet due $name: count $N is ahead of $NOW"; continue; fi
  if [ -n "$out" ] && [ -f "tablecloth/study/texts/taylor-plato-wellcome-1793/$out" ]; then
    echo "ok $name: count $N reached and output $out is on disk"
  else
    echo "RED $name: count $N reached at $NOW, and its output ${out:-?} is not on disk"; red=1
  fi
done
echo "batch plans checked: $seen"
[ "$red" -eq 0 ] && echo "verdict=ok" || { echo "verdict=red"; exit 1; }
