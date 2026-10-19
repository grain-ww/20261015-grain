# Shed prep -- the whole tree, prep only

**Status:** Living -- the shed prep list, prep only.

**Kind:** the shed list, preparation only. Every row is prepped. A row is shed only when its state column records the shed. Nothing here is cut by this list.
**Rule:** a shed needs a named target, a checkpoint, and an explicit word. Prep names only the rows, and each shed still waits on those three.

| File | Checkpoint (head before the prep) | State | Waits on |
|---|---|---|---|
| `yonder/constel/LADDER.md` | `5aee2fe919` | shed under the checkpoint at a977ee0cfc, recoverable there | none; the links point at the walk-back commit |
| `gratitude/SimpleMadeEasy.md` | `f3993331aa` | prepped, fossil banner | the source's license check, then a word |
| `active-designing/date/20261015/20261015-225351_grain-within-grain-the-fold-the-surface-and-the-wasm-question.md` | `f9ccbe923f` | prepped, fossil banner | the conclusions note reviewed, then a word |
| `tablecloth/documents/counsel/date/20261015/20261015-204008_kernels-in-the-zig-grain-and-the-license-fork.md` | `3b869e80e7` | prepped, fossil banner | licensed counsel's reading, then a word |
| `context/TWO_ROOMS.md` | `97096d5867` | prepped in place, banner only | a word on what the in-place molt keeps |
| `tablecloth/documents/context-data/replay/` (`commits.txt`, `files.txt`) | `44d0f10c9f` | prepped, still tracked | a named word to untrack; they regenerate from `construction/replay.sh` |
| `construction/links.rish` | `592102f911` | shed under the checkpoint at b1fd83e | a named word to shed; `construction/links.sh` runs the same check here |
| `construction/spells.rish` | `592102f911` | shed under the checkpoint at b1fd83e | a named word to shed; `construction/spells_check.sh` runs the same check here |
| `construction/voices.rish` | `592102f911` | shed under the checkpoint at b1fd83e | a named word to shed; `construction/voices_check.sh` runs the same check here |
| `construction/spell.rish` | `592102f911` | shed under the checkpoint at b1fd83e | a named word to shed; a grep on `nova/spells.brix` does the same lookup here |
| `construction/links_page.sh` | `bf61d851c6` | shed under the checkpoint at b1fd83e | shed with `construction/links.rish`, its only caller, under the same word |

## What this list does not cover

- The prep notes themselves are dated records, and they stay as written.
- The Bhakta-to-Radha molt record is a record of a rename, kept as testimony and outside the shed list.
- Held items (the audit's holds, the scripture review) sit outside this list, because none is prepped for a cut.
