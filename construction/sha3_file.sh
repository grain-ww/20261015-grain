#!/bin/sh
# construction/sha3_file.sh -- SHA3-256 of a file, the successor to SHA-256 for this tree's content addresses.
# Usage: sh construction/sha3_file.sh <file>        prints the digest
#        sh construction/sha3_file.sh --check <sums> checks a sum file of "digest  path" lines
#        sh construction/sha3_file.sh --witness      proves the FIPS 202 known answers
# The digest is the field's authored SHA3-256 (crypto/bin/sha3-digest, parity-checked against FIPS 202 and Zig's std).
# Every digest is cross-checked against Python's independent hashlib.sha3_256 when python3 is present; a disagreement is red.
set -eu
FIELD="${FIELD:-/home/keeper/20260618-grain-incense}"
TOOL="$FIELD/crypto/bin/sha3-digest"
[ -x "$TOOL" ] || { echo "red: no authored SHA3 tool at $TOOL" >&2; exit 1; }

# The authored primitive refuses a message over 1 MiB (max_message_bytes = 1 << 20 in crypto/sha3.rye).
MAX=1048576
digest() {
  f="$1"
  size=$(wc -c < "$f")
  if [ "$size" -gt "$MAX" ]; then echo "refused: $f is $size bytes, over the 1 MiB bound of the authored SHA3 (streaming is not yet in the field)" >&2; return 1; fi
  a=$("$TOOL" 256 "$f" 2>/dev/null | tail -1 | cut -c1-64)
  if command -v python3 >/dev/null 2>&1; then
    b=$(python3 -c "import hashlib,sys; print(hashlib.sha3_256(open(sys.argv[1],'rb').read()).hexdigest())" "$f")
    [ "$a" = "$b" ] || { echo "red: field and python disagree on $f" >&2; return 1; }
  fi
  echo "$a"
}

case "${1:-}" in
  --witness)
    t=$(mktemp); trap 'rm -f "$t"' EXIT
    printf '' > "$t"; e=$(digest "$t")
    printf 'abc' > "$t"; a=$(digest "$t")
    [ "$e" = "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a" ] || { echo "red: empty message" >&2; exit 1; }
    [ "$a" = "3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532" ] || { echo "red: abc" >&2; exit 1; }
    echo "green: FIPS 202 known answers for the empty message and abc hold" ;;
  --check)
    s="$2"; bad=0; n=0
    while read -r want path; do
      n=$((n + 1)); got=$(digest "$path")
      [ "$got" = "$want" ] || { echo "MISMATCH $path"; bad=1; }
    done < "$s"
    echo "files checked: $n"; [ "$bad" -eq 0 ] && echo "verdict=ok" || { echo "verdict=red"; exit 1; } ;;
  "") echo "usage: sh construction/sha3_file.sh <file> | --check <sums> | --witness" >&2; exit 2 ;;
  *) digest "$1" ;;
esac
