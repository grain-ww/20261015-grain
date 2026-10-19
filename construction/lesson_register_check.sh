#!/bin/sh
# construction/lesson_register_check.sh -- the share of negative sentences in the study course's lessons.
# Usage: sh construction/lesson_register_check.sh
# A sentence counts as negative when it holds one of the negative words below. The share is negative sentences over all sentences.
# Ratchet: each lesson's share sits under the ceiling in construction/lesson_register_ceiling.txt. A lesson may only fall below its ceiling.
set -eu
DIR=tablecloth/documents/research/date/20261018
CEIL=construction/lesson_register_ceiling.txt
red=0
for f in "$DIR"/*lesson-0*.md; do
  name=$(basename "$f")
  read -r total neg <<EOT
$(awk 'BEGIN{IGNORECASE=1}
  /^## /{next} /^\*\*/{next} /^>/{next} /^$/{next} /^Source:/{next} /^Radha, /{ }
  { line=$0; n=split(line, s, /[.!?]+ /); for(i=1;i<=n;i++){ if (s[i] ~ /[A-Za-z]/) { t++; if (s[i] ~ /(^| )(not|no|never|nor|nothing|none|without|cannot|don.t|doesn.t|isn.t|aren.t|won.t|nobody)( |[.,;:!?]|$)/) k++ } } }
  END{ printf "%d %d\n", t+0, k+0 }' "$f")
EOT
  share=$(awk -v t="$total" -v k="$neg" 'BEGIN{ if (t>0) printf "%.1f", 100*k/t; else print "0.0" }')
  ceil=$(grep "^$name " "$CEIL" 2>/dev/null | awk '{print $2}' || true)
  [ -n "$ceil" ] || ceil="$share"
  if awk -v s="$share" -v c="$ceil" 'BEGIN{exit !(s+0 > c+0)}'; then status=RED; red=1; else status=ok; fi
  echo "$status $name negative=$neg of=$total share=$share ceiling=$ceil"
done
[ "$red" -eq 0 ] && echo "verdict=ok" || { echo "verdict=red"; exit 1; }
