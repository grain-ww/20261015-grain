#!/bin/sh
# construction/publish_push.sh -- build the one-commit snapshot of HEAD's tree, without tablecloth/private, and push it to ww main
# only when the word is yes. Called by construction/publish.rish, which has already checked the word and that the tree is clean.
set -eu
# The w checklist, in this order. Skipping a step is the fault this list exists to prevent:
#   1. Write a checkpoint row that names the current ww head, in construction/CHECKPOINTS.md.
#   2. Commit the row, and push xy so the walk-back survives.
#   3. Run the dry run, and read the Asana, private, and PNG counts it prints.
#   4. Run with the yes word. The guard refuses unless step 1 named the head.
WORD=$1
# invariant: the word is dry or yes, and any other word stops here by name before any git state is read or written.
case "$WORD" in dry|yes) ;; *) echo "publish: unknown word $WORD; use dry or yes" >&2; exit 2 ;; esac
IDX=$(mktemp)
trap 'rm -f "$IDX"' EXIT
GIT_INDEX_FILE="$IDX" git read-tree HEAD
GIT_INDEX_FILE="$IDX" git rm -r -q --cached --ignore-unmatch tablecloth/private
TREE=$(GIT_INDEX_FILE="$IDX" git write-tree)
if git ls-tree -r "$TREE" | grep -q '^[0-9]* blob [0-9a-f]*	tablecloth/private/'; then
  echo "publish: tablecloth/private is still in the snapshot; refusing" >&2
  exit 1
fi
# Informational only: how many files changed since the last w. The full snapshot check below always runs.
CHANGED=$(sh construction/changed_since_w.sh 2>/dev/null | tail -n +2 | wc -l || true)
# invariant: the guards witness is green before any snapshot is built. The witness sets WITNESS_SKIP for its own scratch runs.
if [ -z "${WITNESS_SKIP:-}" ]; then
  sh construction/guards_witness.sh >/dev/null 2>&1 || { echo "publish: refused -- the guards witness is red; run sh construction/guards_witness.sh" >&2; exit 1; }
fi
# The public snapshot carries the anonymous identity and stays unsigned, as the public seed does.
# Setting the author and committer here keeps the owner's name and address off ww whatever the local config says.
SNAP=$(GIT_AUTHOR_NAME=grain-ww GIT_AUTHOR_EMAIL=grain-ww@users.noreply.github.com GIT_COMMITTER_NAME=grain-ww GIT_COMMITTER_EMAIL=grain-ww@users.noreply.github.com git -c commit.gpgsign=false commit-tree "$TREE" -m "incense snapshot: the 20261015 tree as one commit, without the private tablecloth")
# invariant: the snapshot is authored by the anonymous identity, or the push stops by name.
AUTH=$(git log -1 --format="%an <%ae>" "$SNAP")
[ "$AUTH" = "grain-ww <grain-ww@users.noreply.github.com>" ] || { echo "publish: refused -- the snapshot author is $AUTH, not the anonymous identity" >&2; exit 1; }
echo "publish: snapshot $SNAP would replace ww/main at $(git rev-parse ww/main)"
echo "publish: tablecloth/private absent from snapshot: yes"
echo "publish: files changed since the last w: $CHANGED (the full check still reads the whole snapshot)"
if [ "$WORD" = yes ]; then
  # invariant: the head this push replaces is named in the checkpoint ledger, or the push stops by name.
  WWH=$(git rev-parse --short=10 ww/main)
  grep -q "Walk-back head (ww):\*\* \`$WWH" construction/CHECKPOINTS.md || { echo "publish: refused -- no checkpoint row names the ww head $WWH; write the walk-back first" >&2; exit 1; }
  git push ww "$SNAP:refs/heads/main" --force
  echo "publish: pushed $SNAP to ww main"
fi
