# Page header -- the one place a living page's header is defined

**Status:** Living. The single definition of a living page's header. Every other page points here and does not restate it.

## The shape

A living page opens with a title, then a short header block. Each field is one line, bold label, colon, value:

- **Stamp:** the one-clock stamp of the page's last real edit, `YYYYMMDD.HHMMSS`, read from `TZ=America/New_York date`.
- **Status:** `Living`, `Proposed`, `Done`, or `Draft`, then one clause saying what the page is. The label may sit on its own line or inline with the stamp, as long as it is in the first twelve lines.
- **Room:** the register the page's claims are held to: `checkable`, `vision`, `mixed`, or `research`.

Pages that write in a named voice or style add **Style:** or **Voice:** after **Status:**, in the form the tutorials use:
`**Style:** <voice> at the Door setting, <style> from context/styles/<style>.md.`

## The stamp line

The stamp line is the first line after the title that carries a **Stamp:** label. It holds the stamp, then at most one
further field, **Voice:**, and nothing else. Status is never on the stamp line; it has its own line under it. A page with
no voice has a stamp line with the stamp alone.

## The body

Labels live only in the header block. Everything below the header is structured by `##` headings. A bold label at the
start of a body line is a stray label and is counted, not molted, until the count is agreed.

## What is not in the header

Dated testimony keeps its own header, as written. A header never carries a count, a head hash, or a position. Those are read
from git by the command that owns them, so they cannot go stale in a page.

## The check

`sh construction/page_header_check.sh` reads each living page and reports the pages that lack a **Status:** line. It
reads only the header block, the first twelve lines.
