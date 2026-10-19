# Send and publish -- the default way to ship

**Stamp:** `20261017.190500`
**Status:** Living pattern -- the default for any instance
**Room:** checkable -- each step names a command a reader can run.

## The default

1. **Log.** Write a session log for the round, with its stamp, its title, and its files.
2. **Commit.** One commit per round, with a subject under fifty characters and a body that names the file changed.
3. **Push to the private remote first.** Fast-forward only. No force-push.
4. **Publish to the public remote only on a named word.** The public remote never receives a commit that the
   private one has not reviewed.
5. **Never force-push.** A history rewrite needs a checkpoint row and a named reason first.

## Check the result

After each push, read the remote's head and compare it with local HEAD. A mismatch is the first thing to fix.
