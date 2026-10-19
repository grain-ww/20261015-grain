# The first hour

**Status:** Living -- the first hour, where to begin reading.

**Style:** Jena at the Door setting, in the Radha style from `context/styles/radha.md`. The voice is in `context/voices/jena.md`.

If you have never seen this tree before, you are exactly who this page is for. Nothing here
assumes you already know the words; each one is named plainly the first time it appears.

A **tree** is one project folder with its own history. This tree is named for the day it
began, `20261015-grain`, and that name never changes -- so you always know which beginning
you are standing in. The root commit is dated 2026-10-15, which is where the name comes from.

We build under the **GNU General Public License, version 3**, as the near aim in `README.md` states. In plain terms: you may read,
run, study, and share this work and anything you build from it, and that same freedom travels
to whoever you share it with. Nobody can take it back.

The near aim, as `README.md` gives it, is **Caravan** -- a program that starts and watches over other programs, the way
a caravan master keeps the whole company moving. We are writing it in **Rye**, and standing it
on **seL4**, a tiny core whose correctness has been mathematically proved. That is a large aim,
so we approach it the slow way: one small piece at a time, each read all the way through before
it lands.

Read the README next, then the three style pages in `context/styles/`. That is your first hour, and it
is enough.

## Where things live now

A few places have moved since the first pages were written, so here is where to look:

- **The checks.** The link check is `sh construction/links.sh`. The spell and voice checks are `sh construction/spells_check.sh` and `sh construction/voices_check.sh`. Run all three at once with `construction/check_all.rish` through a working runner, as the Rishi page explains.
- **The spells.** Every one-word command is in `nova/spells.brix`, the one strand for them. Look a word up with `grep -E '^(spell|alias) WORD ' nova/spells.brix`.
- **The private room.** Material that must stay out of git lives in `private/`. Git ignores that folder, and only its template is tracked. The room has its own page: `docs-geode/tutorials/07-the-private-room.md`.
- **The rota and the calendar.** The eight rota themes are in `context/lib/rota.brix`. The calfour position of any commit count comes from `sh construction/calfour.sh COUNT`.
- **The refusals.** Every refused study source is recorded in `context/lib/refusals/`.
