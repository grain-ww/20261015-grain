# Round prompt -- one bounded round, step by step

**Status:** Living -- the round prompt the composer fills.

Read this file top to bottom. Each step names what it reads, what it writes, and the check that must pass
before the next step runs. The composing script fills the {placeholders} from its flags; nothing here
names a fixed path outside this tree.

Inputs: {round} {orbit} {theme} {subject} {measure} {send}

1. **Read the state.** This round reads the rota theme {theme}, the active row of `context/lib/rota.brix`. Run `git rev-list --count HEAD` and `git status --short`. Check: the tree is clean.
   Stop if it is not, and name the dirty files.
2. **Read the card.** Read `construction/BATON.md` whole. Check: the subject {subject} is listed as open.
   Stop if it is not, and ask.
3. **Do the smallest change.** Change only the files the subject names. Do not overwrite a finished task;
   add beside it or repoint it.
4. **Run the witness for the change.** Check: the witness the subject names is green. A red stops the round,
   and the red is written to the baton before anything else.
5. **Measure the output.** Record the output measure {measure} with its partner indicator, and its baseline
   from the same command run before step 3. A row without a baseline is a plan, not a measure.
6. **Write the baton.** Update `construction/BATON.md` with the new head, the result, and the next open
   item. Keep the earlier state in git history; do not delete it.
7. **Commit.** One signed commit. Its body names the file and the function changed, in plain words,
   before any metaphor. Stage only the files named in step 3 and step 6.
8. **Send, only if {send} is `yes`.** Push to the approved private remote named in the baton. Otherwise stop
   here and say the commit is local.

Close with one line: the round, the orbit, the measure, and the next open item.
