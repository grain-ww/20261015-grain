# bounds -- the first code in this tree

**Status:** Living -- the first program and how to run its witness.

`bounded_count.rye` counts from zero to a named bound and asserts each step stays inside it. It prints one
green line only when every assert holds. Its purpose is to test the build path, not to do useful work.

## Run it

The pinned compiler is **Zig 0.17.0**, the newest stable release (released 2026-10-01, checked against
`ziglang.org/download/index.json`). The clean tree does not vendor the compiler. Download the Linux build
and verify its SHA-256 against the index before use; the index gives the value for `x86_64-linux`.

Then run the witness with the path to that compiler:

```sh
sh bounds/run_witness.sh /path/to/zig-0.17.0/zig
```

Expected output: `green: bounds witness on zig 0.17.0`, exit status 0. A compiler of any other version
reds on purpose, since the witness names its version.

The witness copies the `.rye` file to a `.zig` name in a scratch directory before building, because
the compiler does not accept the `.rye` extension. The field's launcher does the same copy.

## Why it is shaped this way

- The bound is one named constant, so a reader sees the limit in one place.
- Each function asserts its inputs and its result, with an `// invariant:` line before each assert.
- The counter is `u32`, which is wide enough for a named bound held in memory (TAME core, reflex 3).
