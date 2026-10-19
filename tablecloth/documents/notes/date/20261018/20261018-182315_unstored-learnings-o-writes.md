# Unstored learnings, written by o

**Stamp:** `20261018.182315` -- **Kind:** Notes. Written into tablecloth so the record outlives the reply.

## The SHA3 successor

- The field's authored SHA3-256 (`crypto/bin/sha3-digest`) passes the FIPS 202 known answers for the empty message and "abc", and agrees with Python's `hashlib` on the stored Whitman EPUB.
- Its primitive refuses any message over 1 MiB (`max_message_bytes = 1 << 20`). Most stored texts are larger, so the adoption covers two files: the Whitman and Laozi EPUBs (`study/texts/SHA3-256SUMS`).
- The bound is a field change to lift, by streaming. That waits on the owner.

## The Taylor batches

- Batch 001 is booked at count 425 and batch 002 at count 433, both on round 1 of an orbit. The round check reads both and passes.
- The Taylor parts are checked by their own `SHA256SUMS` and all ten match.

## The Tao study

- Legge's *Tao Te Ching* is stored for study. Public use waits for the sacred-text review, and no verse is quoted in the study note.
- Its structure in reading order: the preface, four introductions, the text in two parts, endnotes, colophon.

## The shell and Rishi inventory

- The clean tree has no Python and 21 shell scripts. The molt inventory in `active-development/date/20261018/` maps each to a Rishi target. Nothing is moved.

## What waits for a word

- Streaming SHA3 in the field, to cover the large texts.
- The Brihat batch round, and the batch format.
- The shell-to-Rishi migration, and the Glow, Rye and align items.
