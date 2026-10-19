# Zig 0.17.0 -- the first witness moves to the newest stable, and one open question

**Stamp:** `20261018.001752` -- **Style:** Gauge at the Field setting -- **Voice:** Kyri
**Status:** Round note. The witness change is landed locally. The question at the end waits on Keaton's word.

## What was checked, and how

- **Newest stable release.** `ziglang.org/download/index.json` lists 0.17.0 as the newest stable
  release, dated 2026-10-01. Its `master` entry is a development build and was set aside. 0.17.0 is
  seventeen days old, past the two-week floor for pins.
- **Download and checksum.** The Linux build `zig-x86_64-linux-0.17.0.tar.xz`, 57,332,648 bytes. Its
  SHA-256 matched the index value `1cbe9df9...4e2026` before extraction. The archive is in the session
  scratch directory, not the tree.
- **Release notes.** The 0.17.0 notes list removals and renames. None appears in
  `bounds/bounded_count.rye`: no array multiplication, no `i0`, no `void{}`, no `errdefer |err|`
  capture, no `@bitCast` on arrays. The build-system changes concern `build.zig`, which the clean tree
  does not have yet.
- **The program on both compilers.** `bounds/bounded_count.rye` runs under 0.17.0 and under the old
  0.16.0 pin with the same output, `green: counted to 16 within bound 16`, exit 0.

## What changed in the tree

- `bounds/run_witness.sh` is new. It takes the compiler path as an argument, refuses any compiler
  whose version is not 0.17.0, copies the program to a scratch directory, runs `ast-check` and `run`,
  and passes only on the exact green line. It was run on 0.17.0 (green) and on 0.16.0 (red, by design).
- `bounds/README.md` names the 0.17.0 pin, the download and checksum step, and the witness command.

Nothing in the tree was made to depend on a binary. The compiler lives outside it.

## The open question

**Should the Glow, Rishi, and Rye documentation be checked against the 0.17.0 changelog?**

Rye is written as Zig source under a `.rye` name, so a Zig release can change Rye's meaning as well
as its build. The field tree pins 0.16.0 in `vendor/zig-toolchain/`. Two things are open:

1. **Which pages?** The question covers the Glow, Rishi, and Rye docs. Checking all of them is larger
   than one lap. A first slice would be the pages that show code, since those are where a changelog
   item would break a reader's copy-paste.
2. **Whether the field's pin moves too.** The clean tree now pins 0.17.0. The field still builds on
   0.16.0, and moving its launcher is a decision for the field tree's owner, not this round.

A third item was in the request: a list of companies and apps, under a heading about solving a
problem as open-source contributors. The list does not say what would be built or proposed. It is not
written into this note. If it names a plan, that plan needs its own statement of what it is and who
it is for.

## What waits for a word

- The page slice for the changelog check.
- Whether the field's launcher moves from 0.16.0 to 0.17.0.
- What the company and app list is meant to be.
