# The immutable date-prefix

A tree carries the date of its own first commit as a prefix that never moves:
`YYYYMMDD-grain-{ship}`. The prefix is a fact about when the tree began, so it is immutable
the way a birthday is. A later tree takes a later date, and the two stand side by side, each
whole, each readable on its own terms.

This buys two things. It makes a tree's identity legible at a glance -- `20261015-grain` is
younger than `20260618-grain`, and the folder, the repository, and the remote all say so. And
it lets a beginning be a real beginning: rather than rewriting an overgrown tree in place, we
start a fresh simple one beside it and let the old one rest as a prototype.

The prefix is held as **one strand** -- a single variable a script prepends -- rather than
hard-coded into a thousand paths. On disk, a bare `~/grain` points at the newest, most
current tree for a ship. When two trees could answer, the newer one without uncommitted
changes wins. See [single-stranded](20261015-154757_single-stranded.md).
