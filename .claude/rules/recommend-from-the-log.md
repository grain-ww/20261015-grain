# Recommend from the log -- the next step is checked before it is named

**Stamp:** `20261017.191817`
**Clock:** America/New_York, one clock.
**Status:** Living -- a rule for every round
**Kin:** [`session-logs.md`](session-logs.md) -- [`send-and-publish`](../../yonder/patterns/send-and-publish/README.md)

## The rule

1. **Check what is done before naming a next step.** Read the remote heads, the last commit, and the newest
   session-log rows. A next step that repeats finished work is a defect in the suggestion, not an option.
2. **Write the `recommend` line of the session log from that check.** One line, one next step, with the reason it
   is still open.
3. **End the chat printout with that same line, verbatim.** The last text line of the reply repeats the log's
   `recommend` line word for word, so the reader sees the logged next step without opening the file.
4. **Offer a push, a publish, or a force-push as the next step only while the user's word is still pending.** A send
   that already landed is recorded as landed and left there.

## Why

Suggestions repeated completed work because a recommendation was written without a comparison to the remote. Checking first, then writing the same line into the log and the reply, closes that gap.

## What to check, in order

```sh
git ls-remote xy main
git ls-remote ww main
git rev-parse HEAD
git log --oneline -3
```
