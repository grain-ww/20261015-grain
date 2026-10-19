# Brix -- the declaration, and the filesystem it describes

**Stamp:** `20261017.233257` -- **Voice:** Kyri
**Status:** Living -- **Room:** declared, not built.
Brix has no code in this tree yet. Everything here describes what Brix is meant to do, and it is
held by the field tree's elder records rather than by a witness here.

## One sentence

Brix is the file you write to say what a system should contain. Applying it changes the world to
match, and running it a second time changes nothing.

**Brix is not a module.** It is a kind of file, the data side of the Glow/Brix pair, the way
`.kyri` is a kind of file. Configuration lives in Brix files, not in a module list. The elder's
lexicon retired "Silo" as a module name for exactly this reason. Where a `.brix` file sits in the
tree is still undecided (see the last section).

## The two faces

**The declaration.** A Brix file (`.brix`) holds data about a system: course descriptors, recursion
templates, rosters, and aliases. An alias line such as `alias from to` carries a typo fix. The file
evaluates to Kyri notation, the plain key-value form in `context/voices/kyri.md`.

**The filesystem it describes.** The declaration names the bricks, the files a namespace is allowed
to hold. A namespace built from a Brix descriptor refuses any file it does not list. Walking the
bricks means comparing each file with its entry in the weave and applying the differences. The weave
and the storage hold the actual bytes. Brix holds only the list.

These are one thing seen twice: the declaration says what should be in the filesystem, and the
filesystem is what the declaration produces. Brix is not the filesystem itself. Keeping the two
apart means a reader asks "what does the declaration say?" and "what does the weave hold?" as two
separate questions.

## The law of applying it

Brix's law is `infusion(world') -> world'`. Applying the declaration to the world gives the new
world, and applying it again moves nothing. The field's infuse foundation states it in full. The
clean tree's lens (`active-designing/date/20261017/20261017-185823_molt-breach-debride-infuse-lens.md`)
reads it beside the molt, breach, and debride verbs. The one-line definitions of those verbs are in
[`REMOVAL.md`](REMOVAL.md).

## The name collision

An older thread in the tablecloth namespace also uses the name Brix for something else. A counsel note
calls it "a different thing wearing the same name." When a page here says Brix, it means the
declaration above. Read any other use with its own page beside it.

## What is not decided

- Whether a Brix file carries bond overrides, which the elder uses for the infuse pattern, or leaves
  overrides to the caller.
- How the declaration is checked before it is applied, since no witness exists here yet.
- Where the first Brix file in this tree lives.

Each of these waits for the first build lap, which is where a declaration would first be checked.
