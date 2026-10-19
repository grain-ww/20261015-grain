# Bridge with .zig imports -- scratch build reproduces on Zig 0.17

**Stamp:** `20261018.164625` -- **Style:** Gauge at the Field setting -- **Voice:** Kyri
**Status:** Measured in scratch. The field tree and its bootstrap are unchanged.

## What was measured

- Zig 0.17.0, the vendored toolchain, `ReleaseSafe`, `-lc`, with the field's `lib`.
- `rye/src/parse_int.rye` is a **symlink** to `../../tally/parse_int.rye`. The link sits outside `rye/src`, so a copy of that folder alone cannot resolve it. `cp -a` copies the dangling link, and the build fails with `FileNotFound`. This is why the witness is red on its first build.
- With the link dereferenced in scratch (`cp -aL`), and the bridge's imports renamed to `.zig`, two builds at one path give one sha256: `186edd502d76dcaf7b760afdccf96a46152cd12343bcd65cf4ac974c9986ef3f`.

## What this does and does not show

- It shows the rename path reproduces on 0.17 **as a variant**. The rename changes the bridge's bytes, so it is a different claim from the bootstrap as recorded.
- It does not change `rye/bootstrap.sh` or `construction/bootstrap_repro_witness.sh`. The witness needs two fixes before it can go green, and those are the owner's choice: copy with `-L`, and decide whether the bridge renames.

## What waits for a word

- Keep the 0.17 rename as the bootstrap's path, or pin the bootstrap to 0.16.
- Whether the witness copies with `-L` (a one-word fix that keeps the bootstrap's bytes).
