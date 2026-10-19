# Order -- the one ordering that TAME core, the rota, and the stamps share

**Status:** Living. The single statement of the ordering rules. The pages that use an order point here rather than restating it.

## The shared rules

1. **One clock.** Every order reads one clock. For dated files that clock is the one-clock stamp,
   `YYYYMMDD-HHMMSS`, read in America/New_York. For rounds it is the commit count, `git rev-list --count HEAD`.
2. **Later is larger.** A later stamp or a higher count is a later state. Nothing is ordered by a label that
   could be reordered.
3. **Count, do not number.** A count is read from the clock when it is needed. It is never typed into a name
   or carried as a fixed total.
4. **Living and dated are different.** A living file has no stamp in its name and is edited in place. A dated
   file keeps its stamp and its words; a correction goes in an errata beside it.
5. **Each number is bounded and says why.** A bound states the largest value a loop, buffer, or count may reach,
   and the reason for it sits beside it, as TAME core asks.

## Where each rule is used

- **Rounds and orbits** read rule 1 and rule 3 through the commit count. See `.claude/rules/rota-and-calfive.md`.
- **Dated files and their versions** read rule 1, rule 2, and rule 4. See `.claude/rules/stamp-and-name.md`.
- **Code and its bounds** read rule 5. See `context/TAME_CORE.md`.
- **A Rye version** is chronological by its stamp, and a living source keeps its plain name. See the stamp rule above.
