# Spellbook -- the one-word gestures of this tree

**Stamp:** `20261018.015747` -- **Voice:** Kyri
**Status:** Living. Learned from the field's spellbook, keeping only the
words whose meaning this tree can state and whose home it can name.
**Rule:** a spell names its gesture in one word. Its full law lives in one place, and this page only points there.

## How to read the table

- **Here** means the home is in this tree, and the link resolves.
- **Not carried** means the elder's home exists in the field tree but is not yet brought over. The meaning
  is kept so the word is not lost. The home waits for its own round.

## The spells

| Spell | What it does | Home | Status |
|---|---|---|---|
| **baton** | write a handoff to disk, so the vision survives a context reset | [`construction/BATON.md`](../construction/BATON.md) | Here |
| **recur** | pass the baton onward: cite the parent whole, and fold in only the change | [`construction/BATON.md`](../construction/BATON.md), with the parent state in git history | Here |
| **molt** | prep a dated writing's fossil for later shedding; opens no cut | [`REMOVAL.md`](REMOVAL.md) | Here |
| **breach** | rename a superseded name, keeping the history | [`REMOVAL.md`](REMOVAL.md) | Here |
| **debride** | remove content from every commit; the one destructive verb | [`REMOVAL.md`](REMOVAL.md) | Here |
| **checkpoint** | record the state before a destructive step, so it can be walked back | [`REMOVAL.md`](REMOVAL.md) | Here |
| **infuse** | apply a declaration to the world; running it twice moves nothing | [`BRIX.md`](BRIX.md) | Here |
| **expand** | grow an intent into a runnable plan | `active-development/` (rounds are the plan room here) | Here, in part |
| **tend** | a light keeping round: freshen, and add no new weight | needs its rule carried, so a light keeping round has a written limit on new weight | Not carried |
| **prin** | print the live view of the loops: scope, nib, and the matrix frame | needs the elder's printer carried, or a clean-tree equivalent that reads the loops | Not carried |
| **send** | commit signed, push to the approved remote, merge to main | [`.claude/rules/git-signing.md`](../.claude/rules/git-signing.md) for signing; the push practice is in the session logs | Partly here |
| **kg** | keep going: the next mechanical step, which is not a send by itself | needs the collaboration rule carried, so "keep going" has its closing-line form written down | Not carried |
| **align** | reconcile the plan with what is true, then fix the plan | needs the reconcile rule carried, so the plan is checked against the witnesses | Not carried |
| **remember** | reprint the operator card for the next hand | [`construction/BATON.md`](../construction/BATON.md) is the card here | Here, in part |
| **a** | suggest only, and read first, within the bound in the section below. It names one next molt, breach, or deep debride step that would make the tree smaller, and it never acts. Its triggers and limits are in `spells.brix` | this page, with `nova/spells.brix` as the one strand of triggers | Here |
| **i** | run the last suggestion, or take the next mechanical kg step. Its triggers are in `nova/spells.brix`, and nothing else states them | this page, with `nova/spells.brix` as the one strand of triggers | Here |
| **tc** | copy a file into `tablecloth/`, keeping its name, so the copy sits beside the other documents | [`tablecloth/README.md`](../tablecloth/README.md) | Here |
| **survey** | a looking pass that lists sites and gaps before the first green | needs the vocabulary rule carried, so a looking pass before the first green has its form | Not carried |

The table lists the core spells. The full set, including the newer ones (o, b, e, r, g, output-update, and the combos
such as i a and i b), lives in [`spells.brix`](../nova/spells.brix), the one strand. Look a word up there with
`grep -E '^(spell|alias) <word> ' nova/spells.brix`.

## Bounds for the "a" spell

- **Reading bound:** three units at most, about 700 words. A unit is one output of the kind being read. The size comes from the
  mean of the tree's thirteen session logs, which is 234 words (the largest is 314), so three units sit near the largest log
  and no more.
- **Backtracking bound:** the spell goes back at most two units before the output in front of the reader. Past that it stops
  and says what it could not read.
- **Core size bound:** a core guide such as `context/TAME_CORE.md` stays at or under 500 words, about twice the mean log.
  That keeps a core a page a reader holds in mind. The TAME core is 472 words now, so it is inside the bound.
- These figures come from the tree at commit count 105. They are measured, not carried, so a later reading may move them.

## The "a", "i", and "improve" spells

The triggers for these spells live in one file, [`spells.brix`](../nova/spells.brix). Add a new alias or trigger there, and
nowhere else. This section states only what each spell does.

- A bare "a" line suggests one next molt, breach, or deep debride step that would make the tree smaller. It acts on nothing.
- A bare "i" line runs what it is triggered by, as the file lists it. A removal is never chosen by "i" alone.
- A bare "improve" line is a trigger for "i", as the file lists it.

## What is not learned yet

The elder's spells `seat`, `cast`, `checkpoint`, `round load`, `fleet`, and `same brain` name
machinery this tree does not carry. They wait until a round needs them, rather than arriving unused.
