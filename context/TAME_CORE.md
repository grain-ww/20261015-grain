# TAME Core -- the reflexes for this tree

**Status:** Living -- the reflexes for this tree.

The ordering rules that bounds sit under are stated once in [`order.md`](order.md).

**Stamp:** `20261017.205503` -- **Voice:** Kyri
**Status:** Living

This is the clean tree's first code guide. It is the field's `TAME_CORE.md` (`20260811.200854`)
trimmed to what a tree with no code yet can use. The field's full guidance and its checking
tools are not carried here. They come in one check at a time, once there is code for each check
to read.

## The spine

**Safety first, performance second, joy third.** Safety is built into the shape of the code, not
left to good habit. Performance is measured before it is changed. Joy is clear names and the
habit of saying why. When two of these pull apart, safety wins.

## The reflexes

1. **Bound everything.** Every loop, buffer, and collection names its largest size. Check the
   size where the value enters, and fail with a named error. No recursion without a depth limit.
2. **Assert invariants.** Each function asserts its inputs and its result, at least twice. Put a
   `// invariant:` line before each assert, and state it as what must hold, not what must not.
3. **Explicit widths.** Use `u32` for counts and indices held in memory. Use `u64` for anything
   written to disk or sent on the wire. Use `usize` only where the standard library requires it,
   and convert at that edge. Say why in a comment.
4. **Say why.** Every assert, named constant, and surprising choice gets a comment with its reason.
5. **Keep functions short.** Split a function at a natural seam before it grows past a screen.
6. **Name errors and handle them.** A failure returns a named error, and the caller says what it
   does with it. Do not swallow errors silently.
7. **Docs match code.** When behavior changes, the doc that describes it changes in the same
   commit.
8. **Reds first.** A failure is written down before it is fixed. It is closed only by a check that
   passes, which you ran yourself, not by a claim that it works.
9. **Change by tier.** A thing that has been proven stays fixed. A thing that has been recorded
   changes only with an erratum. A living thing changes freely.

## Rye

- Every hosted `.rye` file opens with three lines:
  `const std = @import("std");`, `const assert = std.debug.assert;`, and
  `const print = std.debug.print;`. After that, call bare `assert(...)` and `print(...)`.
- Names are `snake_case` for functions, variables, and files.
- Write `assert(...)` on one condition at a time. Do not join two in one call with `and`.

## Why this page is short

A page read at the keyboard is read every time. A page of reasons is read once. Keep the reflexes
here, and write the reasons next to the code they govern.
