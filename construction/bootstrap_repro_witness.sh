#!/bin/sh
# construction/bootstrap_repro_witness.sh -- claim four of the bootstrap: two ReleaseSafe builds at one path give one sha256.
# Usage: sh construction/bootstrap_repro_witness.sh   (FIELD names the field tree; it defaults to the field path)
# Reads the field's rye folder, its bootstrap line, and its toolchain. Writes only to a scratch copy, removed on exit.
set -eu
FIELD="${FIELD:-/home/keeper/20260618-grain-incense}"
ZIG="$FIELD/vendor/zig-toolchain/zig"
# invariant: the field's rye folder and its toolchain exist before any build runs, or the witness stops by name.
[ -d "$FIELD/rye/src" ] || { echo "red: no field rye/src at $FIELD" >&2; exit 1; }
[ -x "$ZIG" ] || { echo "red: no toolchain at $ZIG" >&2; exit 1; }
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
mkdir -p "$W/rye" && cp -aL "$FIELD/rye/src" "$W/rye/"
cd "$W/rye"
hashes=""
for n in 1 2; do
  rm -rf bin && mkdir -p bin
  cp src/main.rye src/main.rye.zig
  "$ZIG" build-exe src/main.rye.zig -O ReleaseSafe -femit-bin=bin/rye --zig-lib-dir "$FIELD/vendor/zig-toolchain/lib" -lc >"$W/build$n.txt" 2>&1 || { echo "red: build $n failed" >&2; tail -3 "$W/build$n.txt" >&2; exit 1; }
  rm -f src/main.rye.zig
  h=$(sha256sum bin/rye | cut -d' ' -f1)
  echo "build $n sha256 $h"
  hashes="$hashes $h"
done
set -- $hashes
if [ "$1" = "$2" ]; then echo "green: two ReleaseSafe builds at one path give one sha256"; else echo "red: the two builds differ: $1 and $2" >&2; exit 1; fi
