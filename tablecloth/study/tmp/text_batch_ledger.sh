#!/bin/sh
# tablecloth/study/tmp/text_batch_ledger.sh -- template: read one text's batch drafts and print each batch's reading status.
# Usage: sh tablecloth/study/tmp/text_batch_ledger.sh TEXT_DIR
#   TEXT_DIR is the study folder of one text, for example tablecloth/study/texts/taylor-plato-wellcome-1793.
# Expects drafts at TEXT_DIR/draft/NNN-batch-START-END.md, each with "## Scan page" headings.
# Counts scan-page headings, reading-two sections (any case), and not-yet-read marks. Writes nothing.
set -eu
TEXT_DIR=${1:?usage: text_batch_ledger.sh TEXT_DIR}
for f in "$TEXT_DIR"/draft/[0-9][0-9][0-9]-batch-*.md; do
  [ -f "$f" ] || continue
  name=$(basename "$f")
  pages=$(grep -c '^## Scan page' "$f" || true)
  two=$(grep -ci '^## .*reading two' "$f" || true)
  gaps=$(grep -ci 'not yet read' "$f" || true)
  echo "$name scan_pages=$pages reading_two_sections=$two not_yet_read_marks=$gaps"
done
