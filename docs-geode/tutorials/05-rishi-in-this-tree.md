# Rishi in this tree -- the drivers, and how they keep the TAME core

**Style:** Jena at the Door setting, in the Radha style from `context/styles/radha.md`. The voice is in `context/voices/jena.md`.
**Status:** Tutorial and user-manual reference. It names each Rishi driver, what it checks, and the TAME rules it follows.

Rishi is the tree's scripting language. Its drivers are small: each one runs a check, asserts the result, and says what
broke. Every driver follows the TAME core in `context/TAME_CORE.md`, and each one is built in the simple-lovable-complete order:
first the smallest check that runs, then the one that names what broke, then the one that covers the whole tree.

## The drivers

| Driver | What it checks | Run it |
|---|---|---|
| `construction/check_all.rish` | the living links, the spell strand, and the voice pages, all at once | `rishi/bin/rishi run construction/check_all.rish` (no runner in this tree yet) |
| `construction/links.sh` | every relative link in the living pages | `sh construction/links.sh` |
| `construction/spells_check.sh` | every spell has a meaning, and every alias points at a spell | `sh construction/spells_check.sh` |
| `construction/voices_check.sh` | every voice page named in the voice strand exists | `sh construction/voices_check.sh` |
| the spell lookup (no file: a grep) | looks up a spell or alias in the strand, and reds on an unknown word | `grep -E '^(spell|alias) <word> ' nova/spells.brix` |
| `construction/publish.rish` | builds the one-commit snapshot, with a word guard; `dry` changes nothing | `rishi/bin/rishi run construction/publish.rish dry` (no runner in this tree yet) |

## How the TAME core shows up here

- **Named failures.** Each assert carries a message that names the thing that broke, as the TAME core asks.
- **One statement per loop body.** This build of Rishi allows one statement in a loop, so a loop does one check per item.
- **Bounds stated.** The link driver, while it was a Rishi driver, passed pages in batches of fifty, because a run takes at most sixty-four arguments. It was shed, and the history is on page 04.
- **Reading, not guessing.** A driver reads the strand it checks, and it copies no meaning from elsewhere.

## Where Rishi stops in this build

This build has no text split and no counter, and it rejects command substitution inside a quoted argument. A driver that needs
those hands the work to a small shell step, and reads only its exit status. Each such step is named in its driver's header.

## Where the runner lives

This tree does not ship a Rishi runner. A working binary lives in the field tree, under its `rishi/bin/` folder, and it is untracked there. Name that binary in the `RISHI_BIN` environment variable, and run the runner shim from the root of this tree:

```
RISHI_BIN=<path to the field's rishi binary> rishi/bin/rishi run construction/runner.rish construction/check_all.rish
```

Until a runner is built or copied in on purpose, the shim is the one way to run a driver here, and it reds at the door when `RISHI_BIN` is unset.

## Simple, lovable, complete

The drivers arrived in that order: a single check, then the drivers that name what broke, then one runner for the whole tree.
Each one is small enough to read in one sitting, and the whole is the sum of the parts that already work.
