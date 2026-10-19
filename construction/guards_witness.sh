#!/bin/sh
# construction/guards_witness.sh -- re-prove the publish guard and the changed-since-last-w base check, in scratch copies.
# Usage: sh construction/guards_witness.sh
# Nothing here pushes or publishes: each case runs in a throwaway repository with a local bare remote, removed at the end.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
PUB="$ROOT/construction/publish_push.sh"
CHG="$ROOT/construction/changed_since_w.sh"
W=$(mktemp -d)
trap 'rm -rf "$W"' EXIT
export WITNESS_SKIP=1
export GIT_AUTHOR_NAME=witness GIT_AUTHOR_EMAIL=witness@example.invalid GIT_COMMITTER_NAME=witness GIT_COMMITTER_EMAIL=witness@example.invalid
fail=0
say() { echo "$1"; }

# invariant: the helpers under test exist before any case runs, or the witness stops by name.
[ -f "$PUB" ] || { echo "red: no publish helper at construction/publish_push.sh" >&2; exit 1; }
[ -f "$CHG" ] || { echo "red: no changed-since list at construction/changed_since_w.sh" >&2; exit 1; }

cd "$W" && git init -q --bare bare.git && git init -q p && cd p && mkdir -p construction && cp "$PUB" "$CHG" construction/
printf 'x\n' > a.txt && git add -A && git commit -q -m one
H1=$(git rev-parse --short=10 HEAD)
git remote add ww "$W/bare.git" && git push -q ww HEAD:refs/heads/main
printf '# Checkpoints\n\n- **Walk-back head (ww):** `%s`. recorded.\n' "$H1" > construction/CHECKPOINTS.md
git add -A && git commit -q -m two
H2=$(git rev-parse --short=10 HEAD)
git push -q ww HEAD:refs/heads/main
printf 'y\n' > b.txt && git add -A && git commit -q -m three

# case 1: the ww head is not named in the ledger, so yes must refuse and push nothing
if sh construction/publish_push.sh yes >/dev/null 2>&1; then say "red: unnamed ww head was pushed"; fail=1; else say "green: unnamed ww head refused"; fi
# case 2: name that head, and yes must push
printf -- '- **Walk-back head (ww):** `%s`. recorded.\n' "$H2" >> construction/CHECKPOINTS.md
if sh construction/publish_push.sh yes >/dev/null 2>&1; then say "green: named ww head pushed"; else say "red: named ww head was refused"; fail=1; fi
# case 3: the changed list stops by name when no source head is named
if sh construction/changed_since_w.sh >/dev/null 2>&1; then say "red: changed list ran with no source head named"; fail=1; else say "green: changed list refuses with no source head"; fi
# case 4: a named source head lists the files changed since it
printf -- '- **Source head (local):** `%s`.\n' "$H1" >> construction/CHECKPOINTS.md
if sh construction/changed_since_w.sh >/dev/null 2>&1; then say "green: changed list runs from a named source head"; else say "red: changed list refused a named source head"; fail=1; fi

# case 5: the publish helper's first output line names a real commit, so a check that reads it cannot take a word for an id
FIRST=$(sh construction/publish_push.sh dry 2>/dev/null | head -1 | awk '{print $3}')
if git cat-file -t "$FIRST" >/dev/null 2>&1; then say "green: the first output line names a commit"; else say "red: the first output line does not name a commit"; fail=1; fi
[ "$fail" -eq 0 ] && echo "green: publish guard and changed-list base hold in scratch" || { echo "red: a guards case failed" >&2; exit 1; }
