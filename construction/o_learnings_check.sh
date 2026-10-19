#!/bin/sh
# construction/o_learnings_check.sh -- o may push only when a step's learnings are written into tablecloth.
# Usage: sh construction/o_learnings_check.sh
# If HEAD is ahead of xy/main, the range must touch a dated note under tablecloth/documents/notes/date/. Red otherwise.
set -eu
AHEAD=$(git rev-list --count xy/main..HEAD)
if [ "$AHEAD" -eq 0 ]; then echo "ok: nothing ahead of xy, nothing to write"; exit 0; fi
if git diff --name-only xy/main..HEAD | grep -q '^tablecloth/documents/notes/date/'; then
  echo "ok: $AHEAD commit(s) ahead, and the range writes a tablecloth note"; exit 0
fi
echo "red: $AHEAD commit(s) ahead of xy, and none writes a dated tablecloth note; write the unstored learnings first"; exit 1
