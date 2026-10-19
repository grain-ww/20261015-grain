# Audit -- what is private in the 20261015 tree, before any public export

**Kind:** read-only audit. It moves nothing, deletes nothing, and changes no visibility.
**Read at:** commit count 149 and later, by a scan of the tracked files and the full commit history.

## What the scan found

- **Decided by the owner:** the author address `keaton.dunsford@gmail.com` may appear publicly in commit history. This is the owner's word, recorded here; no commit is rewritten.
- **Author email in every commit.** All 154 commits carry the same author address. A public history would show it permanently.
  This is the first decision for the owner: a noreply address, or accepting the exposure.
- **No email address in any tracked file.** The scan of the tracked files found none.
- **Private-sounding folders.** `tablecloth/` holds personal documents and notes, and `yonder/tablecloth/` holds the
  superseded summaries. Both need a decision before export.
- **Held files.** 16 Markdown files sit in `tablecloth/`. The audit's four holds are the filetree note, the ad-ideas resin, the HeyGen
  draft, and the scripture review request. The grain-spec project page is also held.

## What the scan did not check

- Personal names inside the held files. Each file needs a read before it goes public, and this audit did not read them.
- Names and details in the commit messages beyond the author field.
- The field tree, which is a separate repository with its own history.

## Next

1. The author identity is decided: the address may be public (recorded above). No history is rewritten.
2. Each held file is read, and classed private or public.
3. Private material moves to `tablecloth/private/`, excluded from the export.
4. The export script's exclusion is tested with a planted file before any public push.

## Check recorded -- the counsel page

The license counsel page was read for personal markers. The one match was a product description (Claude Code plans), not a personal detail. The page stays public. This is recorded, not edited.
