#!/bin/sh
# construction/page_targets.sh -- print the unique relative link targets in one Markdown page, sorted.
# Usage: sh construction/page_targets.sh PAGE
# Skips web links, mail links, and in-page anchors. The one place that reads a page's link targets.
set -eu
# invariant: exactly one page is named, or there is nothing to read and the run stops by name.
[ $# -eq 1 ] || { echo "red: usage: page_targets.sh PAGE" >&2; exit 2; }
grep -o '](\([^)#]*\))' "$1" | sed 's/](//;s/)$//' | grep -v -E '^(http|mailto|#)' | sort -u
