#!/bin/sh
# construction/links.sh -- check every relative link in the living Markdown pages of a tree.
#
# Usage: sh construction/links.sh [ROOT]     (ROOT defaults to this tree)
#
# Living pages are the tracked Markdown files that are not session logs, not dated testimony, and not refusals (context/lib/refusals/).
# Exits 0 when every relative link resolves, and 1 with a red line for each one that does not.
set -eu
ROOT=${1:-$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)}
cd "$ROOT"
checked=0; broken=0
# Why read line by line: a path with a space would split in a for loop over command output, and the link would be read as two.
LIST=$(mktemp); TARGETS=$(mktemp)
trap 'rm -f "$LIST" "$TARGETS"' EXIT
sh construction/living_pages.sh > "$LIST"
while IFS= read -r f; do
  d=$(dirname "$f")
  sh construction/page_targets.sh "$f" > "$TARGETS" || true
  while IFS= read -r t; do
    checked=$((checked + 1))
    if [ ! -e "$d/$t" ]; then
      broken=$((broken + 1))
      echo "red: $f -> $t"
    fi
  done < "$TARGETS"
done < "$LIST"
echo "links checked: $checked, broken: $broken"
[ "$broken" -eq 0 ]
