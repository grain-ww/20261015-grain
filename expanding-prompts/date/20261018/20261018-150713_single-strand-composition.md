# Expanding prompt -- single strand, one place, composed differences

**Stamp:** `20261018.150713` -- **Voice:** Jena -- **Style:** Radiant at the Door setting
**Status:** Proposed. The plan for the next round. It moves nothing by itself.

## The question this answers

Roles, voices, and modules are three different things, and they should not be one kind. A voice is a writing identity
in `context/voices/`. A role is a job the tree does in `context/roles/`. A module is a code unit under `tools/` or
`linengrow/`. They share a page shape and some section names. They do not share their content.

## The shape to compose from

Each kind composes from one-place library pieces and states only what is unique to it:

- **The header:** `context/lib/page-header.md`. Stamp, Status, and the optional Voice line.
- **The section names:** `context/lib/section-names.md`. Role in the tree, Register, Limits, Outcome, Open tasks.
- **The limits every voice keeps:** `context/styles/lib/voice-limits.md`, already one place.
- **The unique part:** each kind's own content under its own section, and nothing that a library piece already states.

A voice page then reads its register and limits from the library, and states only its own register and role. A role
page does the same with the role and limits that are its own. A module page is out of scope for this round, since
the clean tree has no module pages yet.

## Approvals, stated once

The owner approves **molt, breach, and deep debride for totality**: keeping the whole tree uniform and clear. The terms
are the ones in `context/REMOVAL.md`. Molt and breach may run without a named word per item, and they name their files.
Deep debride is approved in principle. Each run still names its target, records a checkpoint and a backup, and states
the target to the owner before it runs. Dated testimony is not uniformed, and shed keeps its own word.

## The standfast

The Zig 0.17 Seva build is held. Its fault is a one-sided repeat-operator spacing in build-generated Zig, and its
emitter line is not yet read. The resolve control's failing leg is unnamed. Nothing else in this prompt depends on the
standfast, so the composition work proceeds while it is held.

## The next steps, in order

1. Write a short composition note in `context/lib/` that states which section names each kind uses, and where.
2. Compose the voice pages from that note, removing only text that the note now states.
3. Write the role page for Seva against the same note, with its own limits and outcome.
4. Run the header, section, voice, and link checks after each step, and record the counts.

## What this does not decide

Whether modules get pages in this tree. Whether Seva takes the announcement role, which waits on the first statement.

## Recorded counts, step four

Read at `20261018.151642`, after steps one to three:

- Links: 136 checked, 0 broken.
- Living pages without a Status line: 0 of 87.
- Voice pages present: 6 of 6.
- Spells: 16, with 5 aliases and no bad targets.
- Body label lines below the header: 0.
- Guards witness: green.
