# Record -- the logo generations, seated

**Stamp:** `20261018-071211` (one clock, America/New_York)
**Prompt:** the expanding prompt for the logo generations, the README mark, and the scribe default font, as pasted in this
session. Its two follow-ups are the record in `expanding-prompts/date/20261018/` and the make-it-yourself prompt.

## What is here

Two generations, both set in JetBrains Mono (SIL OFL 1.1) and drawn as outlines from the font's own glyphs. Each file is
named `20261018-071211_<gen>-logo-<kind>-<colour>.<ext>`:

- `gen1` -- the lockup `psi grain` and the mark `psi`.
- `gen2` -- the lockup `grain-psi psi` and the mark `psi psi`.
- Colours: gold `#C99700`, navy `#0C2340`, white `#FFFFFF`, black `#0A0A0A`.
- Each colour is an SVG (vector) and a PNG. The PNGs have transparent grounds.

## Palette, with its names

| Name | Hex |
|---|---|
| gold | #C99700 |
| navy | #0C2340 |
| white | #FFFFFF |
| black | #0A0A0A |
| coconut | #F5F3EE (the background the PNGs were checked on) |

## How it was made

The outlines came from the font's glyph data, flattened to polygons, then filled by a small rasterizer written for this
round and built with the pinned Zig compiler, 0.17.0. The PNG writer uses stored deflate blocks. Each lockup was checked
on a coconut background, and a lookup failure on a component glyph (the letter i) was found and fixed before seating.

## PNGs are private

By the owner's word, the PNG files are private. They sit in `private/generations/20261018/`, which git ignores, and they are no longer tracked. The SVGs stay in this folder as the tracked source of the set. The PNGs' history stays in the private `xy` repository, since it was committed there before this change.

## Not in the tree

No font file is in the repository. The outlines are the only glyph source the files carry.
