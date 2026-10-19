# Project conclusions -- what the tablecloth notes settle, and what they leave open

**Kind:** conclusions, drawn from the notes' own status lines. Each conclusion names the note it rests on.

## Settled by the notes

- **The license survey stands.** The kernel counsel finds that a GPL-2.0-only seL4 kernel translation carries GPL-2.0,
  and that a clean-room kernel from public documentation may carry any license. Source: the kernel counsel note.
- **The determinism witness is measured.** Three instrumented QEMU boots gave one output, and three free-running boots gave
  three. Source: the grain-within-grain research note, citing the counsel's witness.

## Open, and waiting on a word

- **The license choice binds outside parties.** The counsel note says a binding license seats only after licensed counsel
  reads it. Until then the GPLv3 choice is Keaton's, and it is held. Caravan's first link should wait for that reading.
- **The fold, the surface, and the WASM path are proposals.** The research note says each path waits on Keaton's word.
- **The self-hosting milestone is distant.** It needs the Rye toolchain building Grain from inside a Puddle world. Nothing
  in this tree builds that yet.

## What this means for the project's tasks

1. **The first build stays small.** `bounds/bounded_count.rye` already proves the path. The next build should wait on the
   license reading only if it links against seL4. A program that does not link can proceed.
2. **Counsel is the next gate for the license.** Put it in the held list in the baton, with the note that names it.
3. **Do not treat a proposal as a decision.** The fold and WASM notes are design. Carry them into `active-designing/`,
   which is where the audit moved them.
