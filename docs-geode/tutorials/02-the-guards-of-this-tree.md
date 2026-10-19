# The guards of this tree

**Style:** Jena at the Door setting, in the Radha style from `context/styles/radha.md`. The voice is in `context/voices/jena.md`.
**Status:** Tutorial. It names only the guards that are present in this tree, and says where each one lives.

A guard is a check that refuses something before it lands. This tree has a few. Each one is a file you can read and
run, so you can see exactly what it stops.

## 1. The study gate

Outside texts enter the study room only when their own license says they are public domain or dedicated to the public.
Share-alike and non-commercial licenses are refused, and so is any text with no license. The gate is written in
[`tablecloth/study/README.md`](../../tablecloth/study/README.md), and every refusal is recorded in `context/lib/refusals/`.

## 2. The link check

Every relative link in a living page must resolve. [`construction/links.sh`](../../construction/links.sh) checks them
and exits red on any that fail to resolve. The Rishi driver that once wrapped this check was shed, so the shell script above is the check now.

## 3. The bounds witness

[`bounds/run_witness.sh`](../../bounds/run_witness.sh) refuses any compiler whose version differs from the pinned one, then
compiles and runs the first program and checks its exact output. A different compiler reds on purpose.

## 4. The removal verbs

A removal is one of the verbs in [`context/REMOVAL.md`](../../context/REMOVAL.md): molt, breach, debride, or infuse.
Molt prepares and cuts nothing. Breach renames and keeps the history. Debride rewrites history, and it needs a named
target, a checkpoint, and an explicit word. A shed is a separate cut, and it needs a named target and your word too, so
no verb removes content on its own.

## 5. The keys

Signing keys stay outside git. [`context/KEYS.md`](../../context/KEYS.md) gives four commands that show nothing is tracked,
and nothing is in the history.

## What is still to arm

The commit-message wall, which refuses a commit body that names no mechanism, lives in the field tree. This tree has no hook yet:
`core.hooksPath` is unset, and no `tools/hooks` folder exists. A commit here carries its mechanism by the rule in `.claude/rules/`, which is the check until a hook arrives.
