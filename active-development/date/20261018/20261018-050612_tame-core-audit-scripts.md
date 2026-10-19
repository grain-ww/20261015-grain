# TAME core audit -- the tracked Rishi and shell scripts

**Stamp:** `20261018.050612` -- **Style:** Gauge at the Field setting -- **Voice:** Kyri
**Status:** Measured and read. Nothing is fixed by this page. Each finding names the fix, and each fix waits for a word.
**Scope:** the 15 tracked `.sh` and `.rish` scripts, read in full, at head `f385e52`.
**Reflexes checked:** `context/TAME_CORE.md` -- bound everything, assert invariants, say why, named errors, docs match code, reds first.

## The one that matters most

**Status, later:** finding 2 is fixed in `a7bff5f`, which also adds `construction/scripts_audit.rish`, so the counts in this page can be rerun. Its figures read: 8 shell scripts, 5 with `set -e`, 2 with an invariant line; 7 rish drivers, none with an invariant line. The findings from 3 down stay open. Findings 4 and 5 are fixed too: `00055ac` names the round composer's failures and escapes its values, and `2a9766c` makes the spell lookup match exactly, not as a regex. Both are on `xy`. Findings 6 to 9 are now fixed too. Finding 6 is in `9737c56`, finding 7 in `dc9b115`, finding 8 in `71f26d1`, and finding 9 in `1710c77`. Two gaps found in the re-audit, the zero-argument drivers and the replay writes, are fixed as well: `09a954c` and `71f26d1`. What stays open is the invariant-line ratchet: 3 of 8 shell scripts and 1 of 8 Rishi drivers carry one. Finding 3's shed is already prepped: `construction/voices.rish` has a row on the shed prep list from `bf61d85`. The cut waits for a circled word.

**Status:** finding 1 is fixed. The one-word guard is in `e38c030` and on `xy`, tested with zero words, two words, and one `dry` word. The other findings stay open.


**`construction/publish.rish` can force-push with the wrong word count.** Its header says the word is
`dry` or `yes`, and that `yes` pushes to `ww` and nothing else. The guard checks each word, but the
driver then runs the helper once per word:

```
for-each args as word do assert (run ["sh" "construction/publish_push.sh" word]).ok ...
```

So `publish.rish dry yes` builds the snapshot and force-pushes it, and the header's promise does not hold.
The same loop makes a **zero-word run** report `publish: done` with no action at all. Measured:
`rishi run construction/publish.rish` prints `publish: done` and exits 0. That is a silent green, which
the TAME core forbids. **Not run with two words here**, since that would have pushed. The reading is from the
source. The fix is one assert that exactly one word is given, before any loop runs.

## The proposed guard, not yet run

The fix, written here so a word can seat it without retyping. It is unverified: this Rishi build has not run it, and it must be run with a word that is safe to push before anyone trusts it.

```
assert ... one word only, named before any loop runs
```

Shape: the driver asserts that exactly one word is given, then runs the helper once. A zero-word run and a two-word run both red by name.

## The rest, ranked

| # | File | Finding | Reflex | Fix, when a word comes |
|---|---|---|---|---|
| 2 | `construction/links.rish` | zero arguments prints "every page passed in is clean" and exits green | named error | assert at least one page is passed |
| 3 | `construction/voices.rish` | the six voice pages are typed into its usage line, a second copy of the strand | single strand | retire it on the shred list, since `voices_check.sh` reads the strand |
| 4 | `construction/round.sh` | a row missing from `rota.brix` substitutes an empty theme with no red; a count below 1 is not checked; a `/` in a subject breaks the `sed` | bound, named error | assert count is at least 1 and theme is non-empty; escape the substituted values |
| 5 | `construction/spell.rish` | a word is interpolated into a `grep -E` pattern unescaped, and the second loop trusts `.out` without its own `ok` | run returns ok before out | escape the word; check `ok` in the second loop |
| 6 | `construction/links.sh`, `links_page.sh`, `replay.sh` | `for t in $(...)` and `for f in $(...)` split on spaces, so a path with a space is read as two | bound, named error | read the list one line at a time |
| 7 | `construction/links_page.sh`, `spells_check.sh`, `voices_check.sh` | no `set -eu`; `links_page.sh` checks `.` silently when given no argument | named error | add `set -eu` and an argument assert |
| 8 | `construction/replay.sh` | writes three files and never checks that the writes or the parses succeeded | named error | check each step's exit status |
| 9 | `construction/publish_push.sh` | a word other than `dry` or `yes` is accepted and does nothing, with no message | named error | refuse any other word by name |

## What holds

- **`bounds/run_witness.sh`** is the strongest script here. It pins the compiler version and refuses a
  different one, reads its program from its own folder, prints one exact green line, and names each red.
- **`construction/publish_push.sh`** builds in a temporary index, refuses if the private folder is in
  the snapshot, and pushes only on `yes`. Its failure is the driver's, not its own.
- **`construction/check_all.rish`** asserts each check's `ok` before it trusts the output, names the
  failing check, and runs the three checks that work here.

## Invariants and strict mode, measured

| Reading | Count | Read by |
|---|---|---|
| Shell scripts with `set -e` | 5 of 8 | `grep -c '^set -e'` over the tracked `.sh` files |
| Scripts carrying an `invariant:` line | 2 of 8 | `grep -c 'invariant:'` over the same files |
| Rishi drivers carrying an `invariant:` line | 0 of 7 | the same grep over the `.rish` files |

Scripts have few functions, so the two-asserts-per-function rule has little to bite on. The ratchet
here is the `invariant:` line before each assert, which the TAME core asks for. Every driver asserts,
and none names its invariant.

## What the audit does not reach

- **Behavior under a two-word run.** Read from source, not run. Run it only with a word you intend to push.
- **Rishi build limits.** The one-statement and no-counter limits come from the tutorial. The audit did not
  test them against the binary beyond the drivers that already run.
- **Paths with spaces.** None exist in the tracked tree today, so the word-splitting findings are latent.

## Next

The two-word publish guard is the fix to make first, before anything else is pushed. It is small, and it
protects the one outward action in the tree. The rest are one lap each, and most can ride a single
`kg` step once the publish guard is in.

**Status, later:** the publish guard is in (`1710c77`), and so is every other finding. The open item is the invariant-line ratchet, which waits on a word about whether it is worth a pass. The paragraph above is kept as it was written.
