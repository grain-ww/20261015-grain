# Fused calendar record -- calfour and calfive at one count

**Stamp:** `20261018.175515` -- **Style:** Gauge at the Field setting -- **Voice:** Kyri
**Status:** A snapshot. Read again with `sh construction/calendar_record.sh`; the count moves with every commit.

## The reading at this stamp

```
count 411
calfour: round 3 orbit_overall 52 orbit_in_quest 4 quest_in_journey 1 journey_in_equinox 4 equinox 1
calfour row 3: leo-water
calfive round 6 of 15: Virgo
```

## How it is read

The count is `git rev-list --count HEAD`. Calfour uses `construction/calfour.sh` and the eight-theme rota in `context/lib/rota.brix`. Calfive uses the fifteen-round rule and `context/lib/rota-of-fifteen.brix`. The wildcard rows 13 to 15 await the owner.
