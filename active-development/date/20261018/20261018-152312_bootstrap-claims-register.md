# Register -- the bootstrap's claims, and which are tested on Zig 0.17.0

**Stamp:** `20261018.152312` -- **Status:** Done. A register of claims read from `rye/bootstrap.sh`. It changes nothing in the field.

## The claims

1. **Zig 0.16 needs `-lc` for getpid, which the build lock uses, on Linux glibc hosts.** Tested on 0.17.0 for the libc
   symbol: the build refuses without `-lc` and builds with it. Holds for 0.17 on that symbol.
2. **Darwin accepts the build without `-lc`.** Not tested here.
3. **NixOS without FHS libc keeps the musl recipe** in the first-hour tutorial. Not tested here.
4. **ReleaseSafe builds are reproducible at one path,** stated as sha256 `a771f33cea173eca` twice. Not re-measured here.
5. **The binary embeds the tree's absolute path,** so two trees give two hashes. Not tested here.

## What this register does not decide

Whether the bootstrap's comment should be rewritten for 0.17. That is a change in the field tree, and it waits on the
field's owner.
