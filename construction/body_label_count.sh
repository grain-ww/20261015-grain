#!/bin/sh
# construction/body_label_count.sh -- count bold label lines in the body of living pages, read-only.
# The rule is in context/lib/page-header.md: labels live in the header block, and the body uses ## headings.
# A label is a line that starts with a bold word and a colon. Header-block labels are not counted.
set -eu
total=0; pages=0
# Read the list line by line from a file, so a page path with a space is read whole, and the counts reach the total.
LIST=$(mktemp)
trap 'rm -f "$LIST"' EXIT
sh construction/living_pages.sh | grep -v -E '/[0-9]{8}[-.][0-9]{6}_[^/]*$' > "$LIST"
while IFS= read -r f; do
  n=$(awk 'NR>12 && /^\*\*[A-Za-z][A-Za-z ]{1,30}:\*\*/' "$f" | wc -l)
  if [ "$n" -gt 0 ]; then pages=$((pages + 1)); total=$((total + n)); fi
done < "$LIST"
echo "body label lines $total in $pages living pages"
