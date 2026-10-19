#!/bin/sh
# construction/living_pages.sh -- print the tracked living Markdown pages, one per line, sorted.
# Living pages are the tracked .md files that are not session logs, not dated testimony, and not refusals. The refusals room is `context/lib/refusals/`.
# The one place that decides which pages are living; the link check and the replay both read it.
set -eu
git ls-files '*.md' | grep -v -E '^session-logs/|/date/|^context/lib/refusals/' | sort
