#!/bin/sh
# tablecloth/study/tmp/run_all_batches.sh -- template: run every booked batch of the large study PDFs in order.
# Usage: sh tablecloth/study/tmp/run_all_batches.sh
# Runs batch_loop.sh over each batch range of each book. A draft that already exists is resumed page by page,
# so a rerun continues where it stopped. Writes only the batch drafts and their logs.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/../../.." && pwd)
cd "$ROOT"
SCRATCH=${SCRATCH:-/tmp/transcribe-scratch}
export SCRATCH
run() {
  book=$1; pdf=$2; k=$3; a=$4; b=$5; dir=$6
  draft="$dir/$(printf %03d "$k")-batch-$(printf %03d "$a")-$(printf %03d "$b").md"
  [ -f "$draft" ] || printf '# %s batch %03d -- scan pages %s to %s\n\n' "$book" "$k" "$a" "$b" > "$draft"
  BOOK="$book" sh tablecloth/study/tmp/batch_loop.sh "$pdf" "$a" "$b" "$draft"
}
B=tablecloth/study/texts/brihat-jataka-wellcome-1885
T=tablecloth/study/texts/taylor-plato-wellcome-1793
mkdir -p "$B/draft" "$T/draft"
k=2; a=21
while [ "$a" -le 281 ]; do b=$((a + 19)); [ "$b" -gt 293 ] && b=293; run "Brihat jataka N Chidambaram Iyer Madras 1885" "$B/b2488442x.pdf" "$k" "$a" "$b" "$B/draft"; a=$((b + 1)); k=$((k + 1)); done
k=12; a=234
while [ "$a" -le 595 ]; do b=$((a + 19)); [ "$b" -gt 595 ] && b=595; run "Taylor Plato Wellcome 1793" "$T/b28767305.pdf" "$k" "$a" "$b" "$T/draft"; a=$((b + 1)); k=$((k + 1)); done
echo "all batches finished" >> "$T/draft/run_all.log"
