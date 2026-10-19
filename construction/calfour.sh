#!/bin/sh
# construction/calfour.sh -- print the calfour position of one commit count.
# Usage: sh construction/calfour.sh COUNT
# The formulas are the ones in .claude/rules/rota-and-calfive.md: a round is 1 to 8 within an orbit, an orbit is 8 rounds,
# a quest is 4 orbits, a journey is 4 quests, and an equinox is 4 journeys. The helper is the one place the arithmetic lives.
set -eu
COUNT=$1
# invariant: a count is at least 1, since a count of 0 has no round.
[ "$COUNT" -ge 1 ] || { echo "red: the count must be at least 1" >&2; exit 2; }
ROUND=$(( (COUNT - 1) % 8 + 1 ))
ORBIT_OVERALL=$(( (COUNT - 1) / 8 + 1 ))
ORBIT_IN_QUEST=$(( ((COUNT - 1) / 8) % 4 + 1 ))
QUEST_IN_JOURNEY=$(( ((COUNT - 1) / 32) % 4 + 1 ))
JOURNEY_IN_EQUINOX=$(( ((COUNT - 1) / 128) % 4 + 1 ))
EQUINOX=$(( (COUNT - 1) / 512 + 1 ))
echo "round $ROUND orbit_overall $ORBIT_OVERALL orbit_in_quest $ORBIT_IN_QUEST quest_in_journey $QUEST_IN_JOURNEY journey_in_equinox $JOURNEY_IN_EQUINOX equinox $EQUINOX"
