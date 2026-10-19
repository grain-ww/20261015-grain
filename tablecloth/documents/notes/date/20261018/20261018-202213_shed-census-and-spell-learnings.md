# Learnings -- shed census, spell strand, and the stale Class O floor

**Stamp:** 20261018.202213
**Recorded by:** the `o` step after the `l` (learn) and `b` (run last suggestion) spells.

## What was learned

1. **The shed census runs read-only and gives a current reading.** `sh tools/fixtures/s/shed_census_scan.sh` returned verdict ok with 2 of 2 controls honored. It reads 28,017 tracked files, 19,447 of them dated testimony, and 1,165 orphaned. Fascia health is 80 now and 90 if the orphans were shed. shred stays RED.

2. **The Class O floor in `construction/SHRED_PREP.md` is stale.** Line 39 still reads `orphaned=921` with fascia 41 / 51 / 40. The census now reads 1,165, so the floor needs a refresh the next time that pin is opened. No edit was made in this step.

3. **The spell strand lives in the incense checkout, not in the 20260618 clone.** `nova/spells.brix` is present in `20261015-grain-incense` and absent from `20260618-grain-incense`. Read spell definitions from the incense checkout.

4. **Spell `a` is suggest-only, not act.** `nova/spells.brix` line 2 reads `spell a suggest-only`, and `limit a never-acts`. `improve` is suggest-only too. An earlier reply treated `a` as an action that edits files; that reading was wrong.

5. **Spell `b` is an alias for `i`, which runs the last suggestion.** `alias b i`, and `spell i run-last`, with `limit i never-chooses-removal`. The last printed suggestion before `b` was the `o` step.

6. **Spell `l` reads and changes nothing until the `o` step.** Its limit line says so. That is why this note was written as the only change.

## What this does not do

- It does not refresh the Class O floor.
- It does not commit. The change is a new untracked file under `tablecloth/documents/notes/date/20261018/`.
