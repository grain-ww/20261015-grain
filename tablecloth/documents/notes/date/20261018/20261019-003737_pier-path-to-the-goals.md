# The path for Claude Code on the pier to reach the goals

**Stamp:** 20261019.003737
**Recorded by:** the `o` step, with `l r l` read-only and the `kg f` forward step.

## What is left, measured

- **The study copy**: the full 595-page scan. Scan pages 1 to 213 are read in reading one. About 380 pages remain, measured from the batch plans and the scan's page count (`pdfinfo`).
- **Batches**: batches 001 to 010 are closed, and 011 is booked at count 585 for scan pages 214 to 233. Its later batches run until the Phaedo's end, which is not yet located.
- **Greek**: marked uncertain in every batch. Nothing here settles it without a reader of the script.
- **Round checks**: green with batch 011 booked; the count is 583.

## What Claude Code on the pier can do alone

1. **Ledger, round, and render**: `construction/taylor_batch_ledger.sh`, `batch_round_check.sh`, and `pdftoppm` through `nix shell nixpkgs#poppler-utils`. These need no reader.
2. **Book and close**: the batch plans, at the next round-one count, on the owner's word.
3. **Status**: `tablecloth/study/tmp/text_batch_daemon.sh` writes a status file each pass.

## What needs a person or a reader

- **Transcribing scan images.** It takes an image-reading model in a session, and a shell agent can't do it. That session is the one bottleneck.
- **The Greek.** A reader of the script closes it. Until then it stays marked.
- **Publishing.** The `ww` snapshot waits for an explicit yes, and so does any push to `xy` that changes history.

## The route, in order

1. Run one image-reading session per batch, from the pier, with two readings per page and the same convention as batches 001 to 010.
2. Close each batch on the owner's word, so the round check stays green.
3. Book the next batch at the next round-one count until the Phaedo's end is located.
4. Message the owner's inbox when the ledger shows the last batch closed. The status daemon is the trigger; it doesn't send anything by itself.

## What this leaves open

- The Phaedo's end, not yet located.
- Whether a second reader is wanted for the Greek.
- The `ww` publish, which needs its own yes.
