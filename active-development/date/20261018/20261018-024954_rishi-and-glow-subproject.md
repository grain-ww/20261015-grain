# Subproject -- converting the scripts to Rishi, and the Glow question

**Kind:** subproject note with its open questions. It records what was tested, what is blocked, and what it changes
for docs-geode and the tree. It changes no script.

## Subproject goal

Move the tree's shell scripts to Rishi where Rishi can carry them, and state plainly where it cannot yet.

## What was tested

- **Rishi driver for the link check.** Done and witnessed (`dae8301`). The loop and the assertion are in Rishi. The
  per-page text work stays in `construction/links_page.sh`, because this build has no text split and no counter.
- **Witness for the Zig build.** Tested and blocked. A Rishi script can take the compiler path as an argument, but a
  command's argument list must be strings, and a loop body allows one statement. A single flow of copy, check, and run
  therefore needs a shell helper, which is the same hybrid as the link check, not a conversion.
- **Round composer.** Blocked. It needs integer arithmetic for the Calfive round, and Rishi's rules forbid integer
  division and modulo.

## What blocks the rest

1. Rishi has no text split and no counter in this build.
2. Rishi forbids integer division and modulo, which the Calfive round needs.
3. A loop body is one statement, so multi-step flows need a helper.

Each block is a question for the Rishi build, not for the tree. Until a build answers them, a script stays in shell.

## The Glow question

The simplest Rye file that has been witnessed and kept stable is `bounds/bounded_count.rye`. The request was to write it
in Glow runes. That is not a mechanical translation:

- Glow is a separate language with its own parser, and the parser is deliberately narrow.
- The field's Glow rune reference is about 2,200 words, and its status line reads mixed: deep entries are read against
  their module sources, and seed entries are not.
- Writing the program in runes needs the field's Glow toolchain and a choice of which runes the program uses.

So the Glow form is not written here. It waits on a decision about whether the tree should carry a Glow toolchain at all.

## What this changes for docs-geode

- The link-check tutorial says the per-page check is a shell helper. That stays true, and the tutorial's reason still holds.
- The round tutorial names `construction/round.sh`. That script stays in shell until the Rishi build can carry it, so the
  tutorial's command stays correct.
- A new tutorial on Glow would depend on the open decision above. It should not be written until that decision is made.

## What this changes for the tree

- Two scripts are candidates for later conversion: `construction/replay.sh` and `bounds/run_witness.sh`. Both wait on the
  Rishi questions above.
- `construction/BATON.md` gains one open item: the Glow toolchain decision.

## Open questions

1. Does Rishi gain a text split and a counter, or does the tree keep these steps in shell?
2. Does the tree carry a Glow toolchain, and if so, which runes does the first program use?
3. Which of the scripts converts first, once the questions above are answered?
