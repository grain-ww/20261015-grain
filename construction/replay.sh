#!/bin/sh
# construction/replay.sh -- deterministic replay of the tree's history into context data.
#
# Usage: sh construction/replay.sh [SINCE]   (SINCE defaults to 2026-10-17)
#
# Writes three files and no timestamps, so the same HEAD gives the same bytes:
#   replay/commits.txt     every commit since SINCE, oldest first: hash, author date, subject
#   replay/files.txt       the files each of those commits changed, with its status letter
#   dependencies/links.tsv every relative link in a living Markdown page, and whether it resolves
set -eu
SINCE=${1:-2026-10-17}
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
root=$(git -C "$here" rev-parse --show-toplevel)
# The data lives in the tablecloth, beside its summary, so the script names that room rather than its own folder.
data="$root/tablecloth/documents/context-data"
cd "$root"
HEADC=$(git rev-parse --short=12 HEAD)

# invariant: both output folders exist and accept writes, or the run stops by name before it touches a file.
for d in "$data/replay" "$data/dependencies"; do
  [ -d "$d" ] && [ -w "$d" ] || { echo "red: output folder $d is missing or not writable" >&2; exit 2; }
done

{
  echo "# replay of commits since $SINCE, head $HEADC"
  git log --reverse --since="$SINCE" --format='%h %ad %s' --date=short
} > "$data/replay/commits.txt"

{
  echo "# files changed per commit, since $SINCE, head $HEADC"
  for h in $(git log --reverse --since="$SINCE" --format='%h'); do
    echo "## $h"
    git show --name-status --format= "$h"
  done
} > "$data/replay/files.txt"

LIST=$(mktemp); TARGETS=$(mktemp)
trap 'rm -f "$LIST" "$TARGETS"' EXIT
sh "$here/living_pages.sh" > "$LIST"
{
  printf 'page\ttarget\tresolves\n'
  while IFS= read -r f; do
    d=$(dirname "$f")
    sh "$here/page_targets.sh" "$f" > "$TARGETS" || true
    while IFS= read -r t; do
      if [ -e "$d/$t" ]; then r=yes; else r=no; fi
      printf '%s\t%s\t%s\n' "$f" "$t" "$r"
    done < "$TARGETS"
  done < "$LIST"
} > "$data/dependencies/links.tsv"

# invariant: each output file was written and is not empty, or the run reds by name instead of reporting a summary.
for f in "$data/replay/commits.txt" "$data/replay/files.txt" "$data/dependencies/links.tsv"; do
  [ -s "$f" ] || { echo "red: $f was not written" >&2; exit 2; }
done

echo "replayed head $HEADC: commits=$(grep -c '^[0-9a-f]' "$data/replay/commits.txt") links=$(($(wc -l < "$data/dependencies/links.tsv") - 1)) broken=$(awk -F'\t' 'NR>1 && $3=="no"' "$data/dependencies/links.tsv" | wc -l)"
