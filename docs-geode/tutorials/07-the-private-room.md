# The private room -- what stays out of git, and how to keep it safe

**Style:** Jena at the Door setting, in the Radha style from `context/styles/radha.md`. The voice is in `context/voices/jena.md`.
**Voice:** Jena, the first-hour voice.
**Status:** Tutorial. It explains the `private/` folder for a reader who is new to this tree.

Some of the material in this tree is not for the public. A session log may name a person. A draft may
hold a figure from a private account. A review may quote a text that is not ours to publish. This page
explains where that material lives, how git keeps it out, and what you still have to do yourself.

## Step 1: know where it goes

The room is the folder `private/` at the root of the tree. It has one tracked file, `private/README.md`,
which is the template. Everything else you put in the folder stays on this machine.

## Step 2: see why git ignores it

The tree's `.gitignore` denies the root by default and then allows folders back in one at a time. A
folder at the root that nobody has allowed is ignored without any new rule. The `private/` folder gets
an explicit allow for its template and a deny for everything else in it.

You can check this yourself. Make a probe file and ask git what it sees:

```
printf 'probe\n' > private/probe.txt
git status --short --untracked-files=all private/
rm -f private/probe.txt
```

The probe does not appear. Only `private/README.md` does. If the probe appears, stop and read the
`.gitignore` before you add anything to the room.

## Step 3: know what git does not do

Ignoring a file keeps it out of commits. It does not keep a copy of it. A file in `private/` has no
history and no remote. If the disk fails, the file is gone.

That is why the template names a second copy: the private repository `grain-ww/20261015-grain-private`, which holds
the held tablecloth files and the generation PNGs. Keep that name current in `private/README.md`, so the next reader
knows where the copy is.

## Step 4: know what the room is not for

The room is for material that must not be public. It is not a place to keep code, witnesses, or any
file the tree needs to build or check. Those belong in the tree, where every reader and every check can
reach them.

Some material is already in git history. Ignoring a file does not remove it from history. A file that
was tracked before it moved into the room stays in every commit that carried it, until a history
rewrite removes it. That rewrite is a separate, deliberate step with its own checkpoint.

## Step 5: check the room before you publish

Before any push or any public snapshot, run the two checks that matter here:

- `git status --short` shows nothing under `private/` except the template.
- `git ls-files private/` lists only `private/README.md`.

If either check shows a private file, do not publish. Read the checkpoint ledger first, then decide.

## What to keep in mind

Plain words are enough for this room. Keep a note of what you moved in, and when. Keep the backup named.
And remember that the room protects what you put in it only as far as git is concerned. Everything else
is your own care.
