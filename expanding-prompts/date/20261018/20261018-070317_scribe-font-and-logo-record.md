# Record -- the scribe default font and the logo generations, as far as this tree can take them

**Stamp:** `20261018.070317` -- **Voice:** Jena -- **Style:** Radiant at the Door setting
**Source prompt:** the expanding prompt pasted into the session on this stamp's date. It asked for two logo generations,
a README mark, and the scribe default font, in the public snapshot's terms.
**Status:** Partly done. The Brix file is seated. The images are blocked here.

## Each step, and where it stands

1. **Survey.** Done. README.md, SOURCE.md, .gitignore, tablecloth/README.md, context/BRIX.md, and context/lib/rota.brix are
   present. The tablecloth README names `documents/generations/` for machine-made outputs, kept whole with the prompt
   beside them. No font and no image renderer were found on this machine, so the outline step cannot run here.
2. **Keep both generations whole.** Blocked. Making the lockup and mark as PNG and SVG needs an image renderer and the
   JetBrains Mono font. Neither is on this machine, and no outline was drawn. The generations folder is not created.
3. **Seat generation one as the README logo.** Blocked, for the same reason as step 2. The README carries no image.
4. **Name the scribe font in Brix.** Done. `context/lib/scribe.brix` names JetBrains Mono as the default, its license as
   SIL-OFL-1.1, and monospace as the fallback. The file is ASCII only. Where the first Brix file lives remains the owner's
   decision, and this file sits beside the other `context/lib/` files as the prompt asked.
5. **Check, then log.** Partly done. The Brix file is ASCII, and the link check reads 121 links with 0 broken. The images
   cannot be opened, since no viewer is available here, so no look was taken at them.

## What waits on a word

- Whether "first" means generation one, the psi-then-grain lockup, or the newer grain-then-two-psi lockup.
- Whether the generations room is `tablecloth/documents/generations/` or `yonder/`.
- Whether the outlines are drawn on a machine that has the font and a renderer, and then copied in.
- Whether the scribe settings grow size or line height now, or wait for the scribe app.

## What this does not decide

No font is installed or fetched in the repo. The Greek letter appears in no file here, since the images are not made.

Recommend: check in (Claude) -- say whether the images should be made on a machine with the font and a renderer, or
whether the font should be fetched once and kept outside the tree.
