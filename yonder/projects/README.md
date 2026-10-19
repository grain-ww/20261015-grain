# Projects -- the root room for work that has an outcome

**Stamp:** `20261017.183219`
**Clock:** America/New_York, one clock.
**Status:** Living -- the rules for what a project is, how it is dated, and how a new one starts
**Voice:** Kyri, in Radiant Style

A **project** is a named piece of work with an outcome we can measure. It is not a log of effort.
Logs record what we did; a project records what the whole pier produced because we did it, and whether
that output moved.

## Shape

Every project is one folder, named for its root stamp or for its plain name when it began as a
long-running arc:

```
projects/<name>/
  README.md        living front door: purpose, status, outcome, links
  MEASURES.md      paired indicators, one row each, baseline first
  date/YYYYMMDD/   dated testimony: expanding prompts, audits, development summaries
```

## Starting one

Copy `projects/_template/`, rename the folder, fill the README, and write the first dated file under
`date/`. Never start a project by editing another project's files.

## Dating

Living files (`README.md`, `MEASURES.md`) keep their names. Anything dated uses the tree's one filing
shape, `YYYYMMDD-HHMMSS_sprig.md`, and the one clock. A dated file is testimony: it keeps its words, and
a later reading writes a new file rather than rewriting the old one.

## What a project must carry

- one outcome sentence the whole pier could check
- a paired indicator for every output measure (output beside the cost that would hide a loss)
- a baseline before the first change, measured, with its unit and date
- a link to the foundation it applies, rather than a copy of it

## Projects in this room

- [`20261015-grain/`](20261015-grain/README.md) -- the 20261015 pier project, carried from the Asana spec. Its output-over-activity instance lives at [`20261015-grain/output-over-activity/`](20261015-grain/output-over-activity/README.md).

## Patterns

General shapes that any project may instantiate live in the root [`patterns/`](../patterns/README.md) room, not here. A project cites a pattern and carries its own baseline and dates.
