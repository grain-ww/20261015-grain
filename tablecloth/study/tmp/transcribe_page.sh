#!/bin/sh
# tablecloth/study/tmp/transcribe_page.sh -- template: transcribe one scan page with a headless Claude session.
# Usage: sh tablecloth/study/tmp/transcribe_page.sh PDF SCAN_PAGE OUT_FILE [READING]
#   Renders SCAN_PAGE of PDF at 220 dpi, then asks a headless session to read the image and write one
#   section to OUT_FILE. READING is "one" (default) or "two" (a fresh pass, compared to an existing file).
#   Greek is not transcribed by policy: it is marked, not guessed. Writes only OUT_FILE and a scratch PNG.
set -eu
PDF=${1:?usage: transcribe_page.sh PDF SCAN_PAGE OUT_FILE [one|two]}
PAGE=${2:?scan page}
OUT=${3:?out file}
READING=${4:-one}
SCRATCH=${SCRATCH:-/tmp/transcribe-scratch}
mkdir -p "$SCRATCH"
PNG="$SCRATCH/pg-$(printf %03d "$PAGE").png"
nix shell nixpkgs#poppler-utils -c pdftoppm -r 220 -f "$PAGE" -l "$PAGE" -singlefile -png "$PDF" "${PNG%.png}"
BOOK=${BOOK:-Taylor Plato Wellcome 1793}
PROMPT="Read the scan image at $PNG ($BOOK, printed text, scan page $PAGE). Transcribe the printed English into one markdown section and write it to $OUT, starting with the heading '## Scan page $PAGE -- printed page <label>, <running head>'. Keep printed text as printed (long s written as s). Keep square brackets for your own notes. Greek and Sanskrit: transliterate Sanskrit and mark it uncertain; do NOT transcribe Greek; write Greek as '[Greek, not transcribed by policy]'. Mark any unreadable word as [illegible]. Do not invent text. Reading pass: $READING. Write only that one file."
claude -p "$PROMPT" --allowedTools Read Write --permission-mode acceptEdits
