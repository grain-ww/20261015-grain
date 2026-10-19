#!/bin/sh
# bounds/run_witness.sh -- prove the first program runs under the pinned Zig compiler.
#
# Usage: sh bounds/run_witness.sh /path/to/zig
#
# The pin is Zig 0.17.0, the newest stable release at the time of writing. A run on any other
# version reds here on purpose: a witness that accepts whatever compiler is on hand would prove
# nothing about the version it names.
set -eu

ZIG=${1:?usage: run_witness.sh /path/to/zig}
WANT=0.17.0
GREEN="green: counted to 16 within bound 16"

# invariant: the compiler we were handed is the pinned version, or we stop before running anything.
got=$("$ZIG" version)
[ "$got" = "$WANT" ] || { echo "red: zig is $got, want $WANT" >&2; exit 1; }

# invariant: the program is read from this room, not from the caller's working directory.
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

# Why a scratch directory: the build writes its output beside the source, and the tree should stay clean.
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT
cp "$here/bounded_count.rye" "$work/bounded_count.zig"
cd "$work"

# Why ast-check first: a parse failure reads more plainly here than inside a run.
"$ZIG" ast-check bounded_count.zig

# invariant: the printed line is exactly the expected green line, nothing more and nothing less.
out=$("$ZIG" run bounded_count.zig 2>&1)
[ "$out" = "$GREEN" ] || { echo "red: unexpected output: $out" >&2; exit 1; }

echo "green: bounds witness on zig $got"
