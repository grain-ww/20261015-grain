#!/bin/sh
# construction/shed_rows_check.sh -- every row of the shed list agrees with the tree: a shed row is absent, a prepped row is present.
# Usage: sh construction/shed_rows_check.sh
# Reads construction/SHRED_PREP.md. Prints each mismatch by path and exits 1 when any row disagrees.
set -eu
bad=0; seen=0
while IFS='	' read -r p s; do
  q=$(echo "$p" | sed 's/ .*//')
  seen=$((seen + 1))
  if [ -e "$q" ]; then here=present; else here=absent; fi
  case "$s" in shed*) want=absent;; *) want=present;; esac
  if [ "$here" != "$want" ]; then echo "MISMATCH $q: state says $want, tree says $here"; bad=1; fi
done <<EOT
$(awk -F'|' '/^\| `/ {f=$2; s=$4; gsub(/^ +| +$/,"",f); gsub(/^ +| +$/,"",s); gsub(/`/,"",f); print f "\t" s}' construction/SHRED_PREP.md)
EOT
echo "shed rows checked: $seen"
[ "$bad" -eq 0 ] && echo "verdict=ok" || { echo "verdict=red"; exit 1; }
