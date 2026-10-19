# Learnings -- the n spell, the push, and the held publish

**Stamp:** 20261018.211004
**Recorded by:** the `o` step after the `i a`, `l` and `l a` passes.

## What was learned

1. **`n` means `nova`.** `spell n nova` is the one line added to `nova/spells.brix`. The spell check reads 24 spells and 0 bad. The change went to `xy` in `93618aa`, a fast-forward.

2. **The incense checkout is clean and matches `xy`.** `xy/main` and local `HEAD` both read `93618aaad5`, with no uncommitted changes.

3. **`w` is held again, on purpose.** `w` publishes the `ww` snapshot. It needs an explicit "yes" from the owner. A chain that contains `o w` does not count as that yes, so the publish waits.

4. **The publish has a ready path.** `construction/publish_push.sh dry` shows the snapshot first. A checkpoint row must name the current `ww` head in the guard's form before any `yes` run.

## What this does not do

- It does not publish to `ww`.
- It does not settle the `20260618` divergence (22 ahead, 22 behind `xy`).
