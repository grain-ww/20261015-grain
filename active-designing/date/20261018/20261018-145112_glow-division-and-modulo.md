# Glow division and modulo -- the options, for a decision

**Stamp:** `20261018.145112` -- **Voice:** Jena -- **Style:** Radiant at the Door setting
**Status:** Proposed. It sets out options for a language change in the field tree. It changes nothing here and nothing there.
**Working choice:** option three, keeping the calfour arithmetic in shell and Glow carrying only its assertions, until the owner decides otherwise. It changes nothing in the field.

## Why this matters

The calfour rule is integer arithmetic: a round is `(count - 1) % 8 + 1`, and a quest is a division by 32. Glow's
lowering passes support `add`, `assert`, and calls, and no division or modulo rune. So a calfour slice written in Glow
has no form yet. The chain witness proves the lowering works; it does not prove the calfour arithmetic.

## The three options

1. **Add the rune pair, `div` and `mod`, to the lowering.** Each lowers to the Rye operator of the same meaning. Cost: a
   new lowering pass in the field, a witness for each operator, and a ruling on the value type. Proof: the boundary counts
   the calfour helper already checks, 1, 8, 9, 32, 33, 128, 129, 512, and 513, must give the same answers in Glow and in shell.
2. **Lower the arithmetic through a helper.** Glow calls a Rye function that does the division, and Glow stays as it is.
   Cost: one helper and one call rune, which the lowering already supports. Proof: the same boundary counts through the call.
3. **Keep Glow without arithmetic.** The calfour slice stays in shell, and Glow carries only the assertions. Cost: none now.
   Proof: the existing checks. This is the cheapest option and the one that changes nothing.

## What every option refuses

- **Division by zero** refuses by name at lowering, not at run time.
- **A negative operand** refuses by name, since the calfour counts are never negative.
- **A count of zero** refuses, as the calfour helper already refuses it.

## What this page depends on

- The calfour helper, `construction/calfour.sh`, whose boundary answers this page uses as the proof.
- The calfour rule, `.claude/rules/rota-and-calfive.md`, which states the formulas.
- The Glow chain witness, `glow/chain_witness.sh`, which lives in the field tree and proves the lowering chain.

## What is not decided here

Which option the owner takes. Whether the field's Glow language grows at all. This page gives the choice in one place.

Recommend: check in (Claude) -- say which of the three options to take, or hold on option three for now.
