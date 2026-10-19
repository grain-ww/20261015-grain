# Molt note -- the bootstrap import on Zig 0.17

**Stamp:** `20261018.153950` -- **Style:** Gauge at the Field setting -- **Voice:** Kyri
**Status:** Prep only. Opens no cut and edits no file outside this note.

## The last referenced file

`rye/bootstrap.sh` in the field tree. Its comment says "Zig 0.16 requires -lc" while the pin is 0.17.0. The reason holds on 0.17 too, since the libc getpid probe needed `-lc`, but the version name is stale.

## What the molt records

1. The bridge in `rye/bootstrap.sh` copies only `src/main.rye`. `src/main.rye:68` imports `parse_int.rye`, and Zig 0.17 refuses a module name that does not end in `.zig`. The same refusal applies to the witness's bridge in `construction/bootstrap_repro_witness.sh`.
2. The fix is a choice, not a molt: either bridge every imported module to a `.zig` name, which changes the bootstrap's bytes, or build the bootstrap with Zig 0.16. Neither is taken here.
3. The stale comment is a candidate for a field molt, to be made only with the field owner's word.

## What waits for a word

- Which fix the claim four witness takes.
- Whether the field's stale 0.16 comment is molted in the field tree.
