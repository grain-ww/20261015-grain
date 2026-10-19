# The w routine -- publish ww from the current tree, in order

**Status:** Living. The one checklist for a w publish. The steps live in `construction/publish_push.sh`, and the witness
that proves them is `construction/guards_witness.sh`. This page points at both and does not restate their code.

## The order

1. **Witness green.** Run `sh construction/guards_witness.sh`. The publish helper refuses to build a snapshot while it is red.
2. **Checkpoint row.** Write a row in `construction/CHECKPOINTS.md` that names the current `ww` head as its walk-back, with
   its real stamp and head. Check there is no placeholder, with `grep -c '%s' construction/CHECKPOINTS.md`.
3. **Commit and push the row.** Commit it, then push `xy` as a fast-forward, so the walk-back survives.
4. **Dry run.** Run `sh construction/publish_push.sh dry`. Its first line names the snapshot. Read the counts from that
   commit, not from a line printed later: Asana, private-folder, private-room, and PNG paths in the tree.
5. **Publish.** Run `sh construction/publish_push.sh yes`. The helper refuses unless step 2 named the head it replaces.
6. **Read the result.** Fetch `ww` and read its head and visibility from GitHub, not from the output alone.

## Why the order is fixed

Each step guards the next. A missing row stops the publish. A red witness stops the snapshot. A check that reads the
wrong line gives a false zero, which is why step 4 reads the first line and the witness checks it names a commit.

## What this page does not do

It does not publish, push, or change visibility. Visibility is a separate decision, recorded on the project page.
