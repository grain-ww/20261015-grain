#!/bin/sh
# construction/page_header_check.sh -- report living pages whose header block has no Status line.
# Dated testimony, whose name carries a one-clock stamp, keeps its header as written and is not counted.
# The rule is in context/lib/page-header.md. The check reads the first twelve lines of each living page, and a Status
# label counts whether it sits on its own line or inline with the stamp.
set -eu
bad=0; count=0
sh construction/living_pages.sh | grep -v -E '/[0-9]{8}[-.][0-9]{6}_[^/]*$|^[0-9]{8}[-.][0-9]{6}_[^/]*$' | while IFS= read -r f; do
  head -12 "$f" | grep -q '\*\*Status:\*\*' || echo "no status line: $f"
done > /tmp/page_header_$$.txt
count=$(sh construction/living_pages.sh | grep -v -E '/[0-9]{8}[-.][0-9]{6}_[^/]*$|^[0-9]{8}[-.][0-9]{6}_[^/]*$' | wc -l)
bad=$(wc -l < /tmp/page_header_$$.txt)
cat /tmp/page_header_$$.txt; rm -f /tmp/page_header_$$.txt
echo "living pages $count without a status line $bad"
[ "$bad" -eq 0 ] || exit 1
