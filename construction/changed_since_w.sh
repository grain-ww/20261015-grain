#!/bin/sh
# construction/changed_since_w.sh -- list the files changed since the local head the last w publish was built from.
# Read-only. The base is the newest checkpoint row that carries a "Source head (local):" field. The list is a
# shortcut for reviewing what changed. It does not replace the full scrub, which always reads the whole snapshot.
set -eu
BASE=$(grep -E 'Source head \(local\):\*\*' construction/CHECKPOINTS.md | head -1 | sed -E 's/.*`([0-9a-f]+)`.*/\1/')
# invariant: a base head is named in the ledger, or the list stops by name rather than guessing a base.
[ -n "$BASE" ] || { echo "changed: no source head named in construction/CHECKPOINTS.md" >&2; exit 2; }
git cat-file -e "$BASE^{commit}" 2>/dev/null || { echo "changed: the named source head $BASE is not in this repository" >&2; exit 2; }
echo "base $BASE, head $(git rev-parse --short HEAD)"
git diff --name-only "$BASE" HEAD
