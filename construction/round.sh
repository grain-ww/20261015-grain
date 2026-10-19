#!/bin/sh
# construction/round.sh -- compose one round prompt from flags.
#
# Usage: sh construction/round.sh --subject NAME --measure NAME [--send yes|no] [--template FILE]
#
# The template is passed by flag, so no prompt path is fixed here. The round numbers come from the
# one count in git, the same count the calfour rule reads: round = (count - 1) % 8 + 1, orbit = (count - 1) / 8 + 1.
# The theme is the active one-indexed row of context/lib/rota.brix, row = round.
set -eu

SUBJECT=""; MEASURE=""; SEND="no"; TEMPLATE=""
while [ $# -gt 0 ]; do
  case "$1" in
    --subject)  SUBJECT=$2; shift 2 ;;
    --measure)  MEASURE=$2; shift 2 ;;
    --send)     SEND=$2; shift 2 ;;
    --template) TEMPLATE=$2; shift 2 ;;
    *) echo "red: unknown flag $1" >&2; exit 2 ;;
  esac
done

# invariant: a subject and a measure are named, or the round has nothing to do and nothing to measure.
[ -n "$SUBJECT" ] || { echo "red: --subject is required" >&2; exit 2; }
[ -n "$MEASURE" ] || { echo "red: --measure is required" >&2; exit 2; }
case "$SEND" in yes|no) ;; *) echo "red: --send is yes or no" >&2; exit 2 ;; esac

here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
[ -n "$TEMPLATE" ] || TEMPLATE="$here/prompts/round.md"
[ -f "$TEMPLATE" ] || { echo "red: no template at $TEMPLATE" >&2; exit 2; }

# invariant: the count is read from git, and a repository with no commits stops here by name.
COUNT=$(git -C "$here/.." rev-list --count HEAD 2>/dev/null) || { echo "red: no git history to count rounds from" >&2; exit 2; }
[ "$COUNT" -ge 1 ] || { echo "red: the count is $COUNT; a round needs at least one commit" >&2; exit 2; }
ROUND=$(( (COUNT - 1) % 8 + 1 ))
ORBIT=$(( (COUNT - 1) / 8 + 1 ))

ROW=$ROUND
THEME=$(awk -v r="$ROW" '$1=="row" && $2==r {print $3}' "$here/../context/lib/rota.brix")
# invariant: the active rota has a theme for this row, or the prompt would carry an empty theme and no red.
[ -n "$THEME" ] || { echo "red: context/lib/rota.brix has no theme for row $ROW" >&2; exit 2; }

# Why escape: a / or & in a subject or measure would end the sed expression early or insert the match.
esc() { printf '%s' "$1" | sed 's/[\\/&]/\\&/g'; }
S_ESC=$(esc "$SUBJECT"); M_ESC=$(esc "$MEASURE")
sed -e "s/{round}/$ROUND/g" -e "s/{orbit}/$ORBIT/g" \
    -e "s/{theme}/$THEME/g" -e "s/{subject}/$S_ESC/g" -e "s/{measure}/$M_ESC/g" -e "s/{send}/$SEND/g" "$TEMPLATE"
