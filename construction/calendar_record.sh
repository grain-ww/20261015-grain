#!/bin/sh
# construction/calendar_record.sh -- one record of both calendars at the current count.
# Usage: sh construction/calendar_record.sh
# Calfour (eight-round orbits) from construction/calfour.sh; calfive (fifteen-round orbits) from the round rule and context/lib/rota-of-fifteen.brix.
set -eu
N=$(git rev-list --count HEAD)
F=$(sh construction/calfour.sh "$N")
R15=$(( (N - 1) % 15 + 1 ))
SIGN=$(grep -E "^row $R15 " context/lib/rota-of-fifteen.brix | cut -d' ' -f3)
ROW8=$(( (N - 1) % 8 + 1 ))
ROW8NAME=$(grep -E "^row $ROW8 " context/lib/rota.brix | cut -d' ' -f3)
echo "count $N"
echo "calfour: $F"
echo "calfour row $ROW8: $ROW8NAME"
echo "calfive round $R15 of 15: $SIGN"
echo "standfast: $(sh construction/standfast_check.sh | head -1)"
