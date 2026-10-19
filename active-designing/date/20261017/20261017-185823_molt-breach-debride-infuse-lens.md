# Molt, breach, debride, and infuse -- a lens from SixOS, infuse.nix, and Brix

**Stamp:** `20261017.185823` (one clock, America/New_York)
**Status:** Research -- a reading and a proposed lens, not a seated law. Written in Radiant Style.

## What was read, and how

- **SixOS** (`codeberg.org/amjoseph/sixos`, GPL-3.0-only): cloned to a scratchpad at head `d6d69bd`, read in
  its README, its `doc/FAQ.md`, and its licence file. Study only; no code or text copied.
- **infuse.nix** (`codeberg.org/amjoseph/infuse.nix`): cloned to the same scratchpad at head `364ea18`, read in its
  README in full, including its semantics section. Study only.
- **Brix infuse** (`foundations/20260823-222019_what-brix-infuse-is.md`, 434 words) and **the machine you
  can write down** (`foundations/20260909-004934_the-machine-you-can-write-down.md`, 690 words), both in full.

**Gratitude and licence.** The two repositories sit in `.gitmodules` but were never added as gitlinks in
this field tree, so `git submodule update` has nothing to fetch. They were cloned outside the tree instead,
and nothing from them enters any history here. SixOS is GPL-3.0-only, so its ideas are studied and
thanked in our own words only. infuse.nix's licence was not checked in this round.

## What SixOS teaches

SixOS's FAQ explains why its supervision layout forbids some shapes. A change to a service's logging
path restarts the service, and the restart spreads to everything that depends on it. On a desktop that
can kill the display server. Six's answer is a restriction: every longrun gets its own logger, so the
logging path never changes, and a restart of a logger can be **non-propagated**, restarting only the
logger and leaving the service running.

**The lesson for us:** a change propagates. A breach that renames a living file restarts every citer,
which the broken-link count in `active-designing` hints at. That count predates this lens, so it is a hint, not a measurement of the cause. Keep each change local to its
own logger, and choose the restart scope on purpose.

## What infuse.nix teaches

infuse.nix merges trees, and a subtree marked with a function stops the merge and is replaced
wholesale. That gives two modes in one operator: merge by default, replace when marked.

**The laws it keeps** are what make it safe to compose: infusing an empty list does nothing, infusing a
concatenated list equals infusing each part in turn, and the same rule holds at all three non-finite types.
The README calls this **identity and associativity**.

**The lesson for us:** a molt is a merge into a new generation, and a breach is a marked replacement.
An audit that is a sequence of infusions is safe to split, because associativity says the pieces compose
to the same result as the whole.

## What Brix infuse and the declared machine teach

Brix's law is `infusion(world') -> world'`, idempotent: running it twice moves nothing. The declared-machine
foundation adds the direction: the description is the original and the machine is the copy, so a reconciliation
always runs from the description outward.

## The proposed lens

| Verb | Law from the sources | Gate | Keeps |
|---|---|---|---|
| **molt** | a merge into a new generation (infuse's default; a Nix generation) | a named word that opens the prep, not the cut | the prior generation, as a fossil |
| **breach** | a marked replacement (infuse's function-marked subtree; six's non-propagated restart) | a named word, with the restart scope stated | the elder bytes, in history |
| **debride** | a garbage collection (remove what no live generation names) | a named word and a recorded checkpoint, every time | nothing; the one destructive verb |
| **infuse** | `infusion(world') -> world'`, idempotent and associative | none beyond the declaration itself | the declaration, which is the record |

**Why three verbs, not one.** The gates differ by how much each can destroy. Merging the verbs would
let a prep carry a cut, which is the failure the custody law exists to stop.

## Use in the rota audit

A rota audit is an infusion: it reads the tree, compares the claims against the witnesses, and writes a new
dated state, leaving the last one whole. Splitting it by row is safe because of associativity.

## Honest limits

This lens rests on two foundations read in full, two source trees read in their READMEs, and no SixOS
code. The Mantra, Mycelium, and Tally claims below are drawn from openings and measured counts, not full reads.

## Dependencies, measured

| Reading | Count |
|---|---|
| `mantra/` Rye files importing Tally | 26 of 63 |
| `mycelium/` Rye modules | 100 |
| Tally tracked files | 18 |
| Mantra is named as the most-depended-upon module (`active-designing/date/20260905/20260905-153729_mantra-was-named-for-the-weave.md`) | measured 20260905 |

**Mantra's law** -- a name is bound to bytes, so the bytes cannot change under it -- is the same discipline as
the lens: a name keeps the bytes it was given, and a different name marks a different generation.

**Mycelium's law** -- the order is decided once and read the same way everywhere -- is read here, as a proposal, as an infusion over signed facts.

## Warnings from the sources

The SixOS `AGENTS.md` file, in a third-party repository, contains text describing itself as offensive
material. Nothing in it was run, copied, or followed. It is recorded here so a reader knows the file was read and
set aside.
