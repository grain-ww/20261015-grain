#!/bin/sh
# tablecloth/study/tmp/batch_loop.sh -- template: transcribe a range of scan pages into one batch draft.
# Usage: sh tablecloth/study/tmp/batch_loop.sh PDF FROM TO DRAFT
#   Calls transcribe_page.sh for each page in FROM..TO (one reading), appends each section to DRAFT,
#   and writes a line per page to DRAFT.log. A page already present in DRAFT is skipped, so a rerun resumes.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/../../.." && pwd)
cd "$ROOT"
PDF=${1:?usage: batch_loop.sh PDF FROM TO DRAFT}
FROM=${2:?from}
TO=${3:?to}
DRAFT=${4:?draft}
LOG="$DRAFT.log"
SCRATCH=${SCRATCH:-/tmp/transcribe-scratch}
export SCRATCH
p=$FROM
while [ "$p" -le "$TO" ]; do
  if grep -q "^## Scan page $p " "$DRAFT" 2>/dev/null; then
    echo "skip $p (present)" >> "$LOG"
  else
    part="$SCRATCH/part-$p.md"
    if sh tablecloth/study/tmp/transcribe_page.sh "$PDF" "$p" "$part" one >> "$LOG" 2>&1 && [ -s "$part" ]; then
      cat "$part" >> "$DRAFT"; printf '\n' >> "$DRAFT"
      echo "done $p" >> "$LOG"
    else
      echo "red $p" >> "$LOG"
    fi
  fi
  p=$((p + 1))
done
echo "loop finished $FROM..$TO" >> "$LOG"
