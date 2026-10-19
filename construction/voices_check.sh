#!/bin/sh
# construction/voices_check.sh -- every voice page named in context/voices/voices.brix must exist. Exits 1 on a missing page.
set -eu
bad=0; count=0
# Why read line by line: a page name with a space would split in a for loop over command output.
PAGES=$(mktemp)
trap 'rm -f "$PAGES"' EXIT
awk '$1=="voice"{print $4}' context/voices/voices.brix > "$PAGES"
while IFS= read -r p; do
  count=$((count + 1))
  [ -e "context/voices/$p" ] || { echo "red: voice page context/voices/$p is missing"; bad=1; }
done < "$PAGES"
echo "voice pages $count missing $bad"
[ "$bad" -eq 0 ]
