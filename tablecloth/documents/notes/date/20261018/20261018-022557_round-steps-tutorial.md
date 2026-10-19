# A round, step by step

**Style:** Bhakta at the Door setting, with the shared moves from `context/styles/lib/shared-register.md`.
**Status:** Tutorial. It describes what a round does, in order. It is the operating steps, not a record of anyone's inner thoughts.

A round is one bounded unit of work. It has a count, a subject, a measure, and an end you can check. Here are its steps, as they appear in `construction/prompts/round.md`.

## 1. Read the state

Run `git rev-list --count HEAD` and `git status --short`. The round must start on a clean tree. If the tree is dirty, name the dirty files and stop.

## 2. Read the card

Open `construction/BATON.md` and find the subject. If the subject is not listed as open, stop and ask.

## 3. Make the smallest change

Change only the files the subject names. Add beside a finished task rather than overwriting it.

## 4. Run the witness

Run the witness the subject names. A red stops the round, and the red goes into the baton before anything else.

## 5. Measure the output

Record the output measure, its partner indicator, and its baseline. The baseline is read before the change, so the measure can show a difference.

## 6. Write the baton

Update `construction/BATON.md` with the new head, the result, and the next open item.

## 7. Commit

One commit per round. The commit body names the file and the function changed, in plain words, before any metaphor.

## 8. Send, only when asked

Push only when the send flag says yes, and only to the remote named in the baton. Otherwise stop and say the commit is local.

## Composing a round

Run `sh construction/round.sh --subject NAME --measure NAME --send no`. The script reads the count, works out the round and the orbit, and fills the steps.
