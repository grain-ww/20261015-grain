# Baton -- the living handoff for this tree

**Stamp:** `20261018.015658` -- **Voice:** Kyri
**Status:** Living. Rewritten at each handoff. The
dated history of what changed lives in `session-logs/` and in the round notes under `active-development/`.

## Passed on (recur)

Next prompt: `expanding-prompts/date/20261018/20261018-150713_single-strand-composition.md`. It plans single strand composition for roles, voices, and modules, and states the approvals and the held standfast.

The state above is carried forward from the parent of the last full pass. This page does not copy that hash, since every commit moves the head. Find it in git history with `git log --oneline -- construction/BATON.md`.

## Where the tree stands

- **Head and pushes:** read live from the reading in `construction/PROJECT.md`, not copied here.
- **Code:** one program, `bounds/bounded_count.rye`. Its witness, `bounds/run_witness.sh`, is green on
  Zig 0.17.0 and red on any other version by design.
- **Keys:** kept outside git in `.gnupg-rye/`. Checked this round: nothing tracked, no history.
- **Links:** every relative link in a living page resolves. Dated testimony keeps its old links.
- **Study room:** one accepted text, a Wellcome record with the Public Domain Mark, and one accepted
  Plato translation record, both with their files not yet stored. Refusals are in `context/lib/refusals/`.

## Open decisions

The items waiting on a word are listed in `construction/PROJECT.md`, under Open tasks. Two decisions are done and recorded there as done.

## Study room, what can be worked with

Only four sources have passed the gate: the 1896 Bhagavadgita, Taylor's 1793 Plato, the 1885 *Brihat Jataka*,
and Legge's *Tao Te Ching* on Standard Ebooks. The plan that uses only those four is the expanding prompt at
`expanding-prompts/date/20261018/`. Everything else stays in the refusals file in `context/lib/refusals/`.

## Prioritized: the Glow rune core

Priority one among the open items: a spell as a Glow rune core that lowers to a Rye struct. The plan is in
`expanding-prompts/date/20261018/` (the glow-rune-core prompt). It starts with the line grammar, then one deep rune
from the elder's reference, then its struct. The Glow toolchain decision waits on a word.

## Open tasks

The open tasks are listed in `construction/PROJECT.md`, under Open tasks.

## Next steps, in order

1. Take one of the open decisions above, when there is a word on it, or build the tutorial from the expanding prompt.
2. Build the next small program in its own room, with a witness and a version pin, the way `bounds/` is built.
3. Keep every living link resolving, and every dated file as written.

## How to restart

Start with the agent instructions in `construction/PROJECT.md`. The bounds witness needs a Zig 0.17.0 binary; `bounds/README.md` says where to get one and how to check it.
