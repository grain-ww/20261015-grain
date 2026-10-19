#!/bin/sh
# construction/spells_check.sh -- check the spell strand: every spell has a meaning, and every alias points at a spell that exists.
# Usage: sh construction/spells_check.sh [STRAND]     (STRAND defaults to nova/spells.brix)
set -eu
STRAND=${1:-nova/spells.brix}
bad=0; spells=0; aliases=0
while read -r kind name rest; do
  case "$kind" in
    spell)
      spells=$((spells + 1))
      [ -n "$rest" ] || { echo "red: spell $name has no meaning"; bad=1; } ;;
    alias)
      aliases=$((aliases + 1))
      if ! grep -q "^spell $rest " "$STRAND"; then echo "red: alias $name points at $rest, which is not a spell"; bad=1; fi ;;
  esac
done < "$STRAND"
echo "spells $spells aliases $aliases bad $bad"
[ "$bad" -eq 0 ]
