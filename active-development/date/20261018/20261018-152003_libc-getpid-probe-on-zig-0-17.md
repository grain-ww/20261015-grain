# Probe -- the libc getpid symbol on Zig 0.17.0

**Stamp:** `20261018.152003` -- **Status:** Done. A probe result, read on this stamp. It changes nothing in the tree.

## What was run

A one-file program in a scratch folder, compiled with the field's Zig 0.17.0 toolchain. It declares the libc symbol
`getpid` as an extern C function, and it is built twice: once without `-lc` and once with it.

## What it showed

- Without `-lc`: the build refuses with an explicit error that the dependency on libc must be specified.
- With `-lc`: the build succeeds.

So the bootstrap's note, that the libc getpid symbol needs `-lc` on Linux glibc hosts, holds on 0.17 for that symbol.

## What was set aside

A first probe used the raw system-call wrapper, `std.os.linux.getpid`. It built without libc, but it does not test the
libc symbol the note names, so its result is not the answer.

## What this does not settle

The bootstrap's other claims, about the build lock and the musl recipe on NixOS, are untested here.
