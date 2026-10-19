# Measures -- output over activity (general)

**Status:** Living -- the general measures for the output-over-activity pattern.

Every output measure carries a partner. Instances fill the baseline column with their own dated reading.

| Output measure | Unit | Partner indicator | Unit | Baseline (date, source) |
|---|---|---|---|---|
| Work closed per round | items | open defects owned | defects | an instance fills this |
| Items removed by a cleanup | items | references still resolving | links | an instance fills this |
| Coverage of checks | checks | false positives | count | an instance fills this |
| Connections per living page | links per page | broken links per page | links | an instance fills this |
| Rounds per period | rounds | round claims that hold | share | an instance fills this |

A row without a baseline is a plan, not a measure.
