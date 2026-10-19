# Proposal -- public trees, with a private tablecloth kept beside them

**Kind:** proposal. Nothing here has been made public, and no remote's visibility has changed.
**Status:** waiting on the owner's explicit word. Making a repository public cannot be reversed once it has been copied.

## What is proposed

- Every tree is public, except the one whose name marks it private.
- The private material lives in one folder, `tablecloth/private/`, which is never published.
- A local private copy of each tree carries a different `.gitignore`, so that the private tablecloth can be tracked and pushed
  to a private remote, while the public tree excludes it.
- An `rsync` pattern copies the public tree out, and checks that the private folder is absent before any push.

## Prerequisites before any public change

1. **The holds stay private.** The four held tablecloth files (the filetree note, the ad-ideas resin, the HeyGen draft, and the
   scripture review request) and the project spec move under `tablecloth/private/` first. The sacred lines in the resin wait for a
   reviewer before any public use.
2. **The rsync exclusion is tested.** A planted private file must be absent from the public copy, and the push must refuse if it
   is present.
3. **The field's public remote is not touched by this tree.** The field's `xy` is public and has diverged from local, so it needs
   its own decision.
4. **The register and the scripture review are complete.** Nothing from the devotional register appears publicly until then.

## What would be built, once the owner decides

- A short docs-geode tutorial on the two-tree pattern, with the first-hour pointer, the source map, and the onboarding steps.
- An `rsync` script with the exclusion test.
- A separate `.gitignore` for the private local tree.

## Open questions

- Which trees go public, by name?
- Does the private tree push to its own remote, and which one?
- Who checks the exclusion before each public push?
