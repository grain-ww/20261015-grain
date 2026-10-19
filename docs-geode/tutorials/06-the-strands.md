# The strands: one place for each thing, and the checks that hold it

**Style:** Jena at the Door setting, in the Radha style from `context/styles/radha.md`. The voice is in `context/voices/jena.md`.
**Status:** Tutorial and user-manual reference. It names each strand, the file that holds it, and the check that runs against it.
**Sources checked:** each strand file named in the table, the spells `output-update` and `improve`, and the four project keys in `context/lib/project.brix` were read against this page on the day of this edit.

A strand is a single file that holds one kind of fact. Every other page points to it, and nothing copies it. This tutorial
lists the strands in this tree, and the commands that check each one.

## The strands

| Strand | What it holds | Who reads it | Check |
|---|---|---|---|
| `nova/spells.brix` | the one-word spells and their triggers | the spell lookup, the spellbook | `grep -E '^(spell|alias) (a|i|improve) ' nova/spells.brix` |
| `context/voices/voices.brix` | each voice's page, style, register, setting, and default standing | the voices index | `sh construction/voices_check.sh` |
| `.claude/rules/rota-and-calfive.md` | the rota and the calfour calendar | `construction/round.sh`, the project document | `sh construction/round.sh --subject NAME --measure NAME` |
| `context/lib/rota.brix` | the eight rota themes in order, with the one-indexed base and the row rule | the rota and the composer | read by eye against `.claude/rules/rota-and-calfive.md`; the rule points here as active |
| `context/lib/project.brix` | the project's name, reading file, measure, and partner | the output-update spell and the live reading | read by the output measure, which names it |
| `context/order.md` | the shared ordering rules | the rota, the stamp rule, and the TAME core | read by each of them, not copied |

## How to read a strand

1. Open the strand file and find the line for the thing you want.
2. Read it as a fact. A spell line is `spell NAME MEANING`. A voice line is `voice NAME page PAGE style STYLE ...`.
3. Do not copy the line into another page. Point to the strand instead.

## How to add to a strand

Add one line to the strand, then run its check. A new spell goes in `spells.brix`. A new voice goes in `voices.brix`, and
then you pass its page name to the voices check. A check that reds names the missing thing, and the fix is to add that
thing or remove its line.

## Where the checks stop

- The spell lookup reads the strand, yet it does not run a spell. A spell's suggestions are composed by a person or an
  assistant, not by the driver.
- The voices check confirms that a page exists. It does not check that a page's style line matches its strand line.
- This build of Rishi cannot split text into lines, so the page names are passed as arguments by the caller.

## Links

The link check, `sh construction/links.sh`, reads every living page and reds on a broken relative link. It is the check
that keeps the strands' pointers true.
