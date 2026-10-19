# Learning -- the Toyota production system and standfast, and where this tree already keeps them

**Kind:** learning note. It states what the elder's sources teach, and where this tree already applies each lesson.
**Sources:** `gratitude/toyota-production-system.md` (kept whole, as the silo technique asks), and the field's standfast foundation.

## What the sources teach

- **Stop the line on a defect.** A defect stops the whole line until its root is found and fixed. It is not flagged for later
  and not worked around. This is the standfast discipline.
- **Jidoka and andon.** The machine stops itself when it detects a defect, and a visible signal calls a person to look.
- **Fix the root, then restart.** The line resumes only after the root is fixed, and the fix is closed by a check that passes.

## Where this tree already keeps them

| Lesson | Where it lives here |
|---|---|
| Stop on a defect | `.claude/rules/reds-first.md`: a red is written down first, and the round is booked to reds before new work |
| Close by a check that passes | the same rule: a fix is closed only by a witness run in the same round |
| The machine stops itself | `construction/links.sh` and `construction/links.rish` exit red on any broken link |
| A visible signal | a red line that names the file, from the link check and the bounds witness |
| Fix the root, then restart | the removal verbs in `context/REMOVAL.md`: a removal waits for its named word before it proceeds |

## What this tree does not yet keep

- **A stop before the next commit.** The commit-message wall in the field tree is the closest, and it is not wired here.
  A red link check does not block a commit in this tree, so a stop depends on the rule being followed.
