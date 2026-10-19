# Plan -- how each untested bootstrap claim would be tested

**Stamp:** `20261018.152426` -- **Status:** Proposed, and ready to run. The probe for claim four is prepared with its bridge step and build line. The probe itself has not been run, and it needs the field tree.

## Claim 2, Darwin accepts the build without -lc

Test: on a Darwin host, compile the extern getpid probe without `-lc`. Needs a Mac; not available here.

## Claim 3, NixOS without FHS libc keeps the musl recipe

Test: on a NixOS host without the FHS libc, follow the musl recipe in the first-hour tutorial and build the bootstrap.
Needs that host; not available here.

## Claim 4, ReleaseSafe builds are reproducible at one path

Test: build the bootstrap twice at one path with ReleaseSafe, and compare the sha256 of `bin/rye` both times. Runs here
in scratch, using the field's toolchain. The stated hash is a measurement from an earlier date and is not reused as proof.

## Claim 5, the binary embeds the tree's absolute path

Test: build the same tree at two paths, and compare the two hashes. Expected to differ, which is what the claim says.
Runs here in scratch.

## What this plan does not decide

Whether the bootstrap comment is rewritten for 0.17. That waits on the field's owner.

## The prepared probe for claim 4, not yet run

The script below would build the bootstrap twice at one path and compare the hashes. It is written here as prep, and it
has not been executed.

```sh
#!/bin/sh
# probe for claim 4: two ReleaseSafe builds at one path give one sha256
set -eu
ZIG=vendor/zig-toolchain/zig
W=$(mktemp -d); trap 'rm -rf "$W"' EXIT
cp rye/bootstrap.sh "$W/bootstrap.sh"
for n in 1 2; do
  "$ZIG" build-exe "$W/bridge.zig" -O ReleaseSafe -femit-bin="$W/rye-$n" -lc >/dev/null 2>&1 || true
  sha256sum "$W/rye-$n" 2>/dev/null | cut -d' ' -f1
done
```

The bridge file and the exact build line come from the bootstrap itself, and must be copied from it before the probe is
run for real. The sketch is not a finished probe.

## The bridge and build line, copied from the bootstrap

The bootstrap bridges its source by copying \`src/main.rye\` to \`src/main.rye.zig\`, then builds that bridge with the exact
line below. The bridge is removed on exit. A real run must do the same copy, and must build from the field tree where
\`src/main.rye\` exists.

    bridge="src/main.rye.zig"
    cp src/main.rye "$bridge"
    "$zig" build-exe "$bridge" -O ReleaseSafe -femit-bin=bin/rye --zig-lib-dir lib -lc
