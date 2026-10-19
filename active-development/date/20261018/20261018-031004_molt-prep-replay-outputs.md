# Molt prep -- replay outputs

**Kind:** molt record, prep only. It untracks nothing and removes nothing.
**Checkpoint:** head `44d0f10c9f` before this step.
**Trigger:** a suggestion from the "a" spell, run by the "i" spell.

## What the prep does

- Marks `commits.txt` and `files.txt` as regenerable by `construction/replay.sh`, in a README beside them.
- Leaves both files tracked. Untracking them is a further cut, and it waits for a named word.
- The dependency and data files stay as they are.
