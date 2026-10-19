#!/bin/sh
# tablecloth/study/tmp/text_batch_daemon.sh -- template: local status daemon for one text's batches.
# Usage: sh tablecloth/study/tmp/text_batch_daemon.sh TEXT_DIR [once|loop SECONDS]
# One pass runs the batch ledger for TEXT_DIR and writes session-output/<text>-daemon.txt.
# It reads the tree and writes only that gitignored file. It commits nothing, pushes nothing, and books no batch.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/../../.." && pwd)
cd "$ROOT"
TEXT_DIR=${1:?usage: text_batch_daemon.sh TEXT_DIR [once|loop SECONDS]}
NAME=$(basename "$TEXT_DIR")
OUT=session-output/$NAME-daemon.txt
mkdir -p session-output
pass() {
  {
    echo "stamp $(TZ=America/New_York date +%Y%m%d.%H%M%S) head $(git rev-parse --short=10 HEAD)"
    echo "--- ledger $NAME"
    sh tablecloth/study/tmp/text_batch_ledger.sh "$TEXT_DIR" 2>&1 || echo "ledger: red"
  } > "$OUT"
  echo "wrote $OUT"
}
case "${2:-once}" in
  once) pass ;;
  loop) N=${3:?loop needs SECONDS}; while :; do pass; sleep "$N"; done ;;
  *) echo "usage: text_batch_daemon.sh TEXT_DIR [once|loop SECONDS]" >&2; exit 2 ;;
esac
