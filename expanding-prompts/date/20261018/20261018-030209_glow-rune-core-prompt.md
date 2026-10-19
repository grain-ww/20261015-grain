# Expanding prompt -- a Glow rune core that lowers to a Rye struct

**Audience:** a generic Acme Corporation employee who picks this up with no memory of the chat.
**Status:** Plan. Nothing here is built. Each step ends in a decision or a witness, not a claim.

## The intent

A spell in this tree is one bare word on its own line, such as "a" or "i". A Glow rune core would let a spell be
written as a small form in Glow, a language whose runes are two ASCII characters, and lowered to a plain Rye struct
that a program can read. The aim is one source for a spell, readable as a line and checkable as a struct.

## Priority, in order

1. **Fix the line grammar first.** The "a", "i", "a" chain is defined in `context/SPELLBOOK.md`. Write the grammar
   in one sentence a reader can test: a spell is one bare word on its own line, and a chain is three such lines.
2. **Read the elder's rune reference.** `active-designing/docs/glow/runes.md` in the field tree. Note which entries are
   deep, read against a module source, and which are seed. Use only the deep entries as the basis.
3. **Reverse-engineer one rune.** Pick the one rune that the spell chain needs, and write down its shape, its meaning,
   and the source it was read from. A rune with no source stays a seed entry.
4. **Map the rune to a struct.** Write the Rye struct the rune lowers to, with its fields and their widths. Name each
   width, as the TAME core asks.
5. **Witness it, later.** A witness that builds the struct and checks the mapping is the next build, and it waits for
   the Glow decision below.

## Bounds

- One rune, one struct, one witness, in one round.
- No Glow toolchain is added in this step.
- The deep-entry rule holds: a rune with no source is not promoted.

## Decisions that wait on a word

- Whether the tree carries a Glow toolchain at all.
- Whether a spell is written in Glow, in Rye directly, or in both.
- Whether the rota and the TAME core are decoupled into their own pages before the struct is written.

## What this does not cover

The rota audit and the decoupling of the TAME core are separate rounds. They are named here so they are not lost,
but they are not planned in full here.
