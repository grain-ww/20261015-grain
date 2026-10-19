# Composition -- which shared pieces each kind of page uses, and what it states alone

**Status:** Living. The one note that says how roles, voices, and modules compose from the shared library. Every
kind of page points here and does not restate it.

## The shared pieces

- **The header:** [`page-header.md`](page-header.md). Stamp, Status, and the optional Voice line.
- **The section names:** [`section-names.md`](section-names.md). Role in the tree, Register, Limits, Outcome, Open tasks.
- **The limits every voice keeps:** [`../styles/lib/voice-limits.md`](../styles/lib/voice-limits.md).

## Voices

A voice composes its header and its section names from the shared pieces. It states alone: its register, which is the
prose it writes in, and its role in the tree. Its limits come from the shared voice limits page, not from its own text.

## Roles

A role composes its header and its section names from the shared pieces. It states alone: what the job is, its limits
that are particular to the job, and its outcome, which is read from git or from the record of what was sent. A role's
limits that every role keeps belong in the shared pieces, not on its own page.

## Modules

A module composes its header from the shared piece. It states alone: its interface, what it takes and what it returns,
and its outcome, which is read from its own tests. Modules have no pages in this tree yet, so this section is a rule
for when they do.

## What is not composed

Dated testimony keeps the header and the words it was written with. A title that names its own page stays as it is.
