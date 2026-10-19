# Learnings -- the PDF debride, the publish, and the parked pages

**Stamp:** 20261019.104527
**Recorded by:** the `o` step, after `s l` over the studies.

## What was learned

1. **The large PDFs are out of git history.** The four study PDFs (the Brihat scan, the ten Taylor parts, and the full Taylor scan, which was untracked) moved to `tablecloth/private/study-pdfs/` and were removed from every commit with `git filter-repo`. `.git` went from 191 MB to 12 MB. xy was force-pushed with a lease, from `1cf271f` to `935c3c8`.
2. **Checkpoint first, then the publish.** The ww walk-back row was written and pushed before the publish. The dry run compared against a stale tracking ref until it was fetched; a fetch fixed it.
3. **The headless reader blocks some pages.** Seven Taylor pages (482, 490, 501, 527, 530, 563, 571) returned a content-filter error. They are parked in `draft/parked-blocked-pages.md`, and the batch drafts hold them as gaps.
4. **Earlier, a claim of insertion was false.** The hand transcriptions were read but never written to disk. The drafts still lack them.

## What this does not do

- It does not write the seven pages into the drafts.
- It does not close any batch.
- It does not change the ww snapshot again.

## What this leaves open

- The seven parked pages, either by hand or left as gaps.
- Batches 003 and 005 in the Taylor drafts, which have a gap and an overlap.
- Other clones of this pier, which must reset to the rewritten xy history.
- ITINERARY is missing from this checkout, so the git-nib pin was not refreshed.
