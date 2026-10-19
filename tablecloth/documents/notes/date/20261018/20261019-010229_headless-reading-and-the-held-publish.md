# Learnings -- the headless page reader, the Brihat batches, and the held publish

**Stamp:** 20261019.010229
**Recorded by:** the `o` step after the `o w`, `kg`, and `br r` passes.

## What was learned

1. **A headless session can read a scan page.** `tablecloth/study/tmp/transcribe_page.sh` renders one page at 220 dpi and asks `claude -p` to write one transcription section. Batch 011 ran that over twenty pages with no red pages. Reading two and a second reader are still not done.

2. **Quoting broke the first Brihat run.** An apostrophe in a default value (`Taylor's Plato`) left the prompt string unclosed, so every page came back red. The fix is in `transcribe_page.sh`; a test with `sh -n` now passes before any run.

3. **A pkill pattern can kill the calling shell.** Matching `batch_loop` on the full command line also matched the shell running the command. Stop a loop by process ID from `ps`, not by pattern.

4. **Brihat is booked, not read.** Fifteen plans cover 293 scan pages in twenty-page batches, one per orbit from count 593 through 705. Batch 001 is running now. The output check only covers the Taylor drafts.

5. **The rota base is now named in each rota file.** `context/lib/rota.brix` names `rota-base.brix` in its header, like the fifteen-round rota and `calendar.brix` already did. The rows and the calendar readings did not change.

## What this does not do

- It does not publish. `w` is held: it sends the `ww` snapshot, and it needs an explicit yes from the owner.
- It does not close Brihat batch 001 or any other batch.
- The shed census and the TAME check printed nothing from this shell, so their status this turn is unknown.
