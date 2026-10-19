# Removal -- the verbs for molt, breach, debride, and infuse

**Status:** Living -- the one page that defines these verbs. Other pages point here rather than
restating them.
**Lens (design reasoning):** [`active-designing/date/20261017/20261017-185823_molt-breach-debride-infuse-lens.md`](../active-designing/date/20261017/20261017-185823_molt-breach-debride-infuse-lens.md)
**Plan that set this up:** `active-development/date/20261018/20261018-001012_removal-verbs-plan.md`

The tree keeps every byte by default. A verb below says how deep a removal reaches, and what it
costs. None of them runs without a named word from the owner.

| Verb | What it does | What it keeps | Gate |
|---|---|---|---|
| **molt** | Seats a new version of a writing at a new stamp, and marks the old version as a fossil on a prep list. Opens no cut. | The old version, as a fossil. | A named word that opens the prep. |
| **breach** | Declares a name or shape superseded. Every reference is repointed, and the work goes on under the new name. | The old name in history. | A named word, with the restart scope stated. |
| **debride** | Removes content from every commit, then re-seals. Rewrites history and force-pushes. | Nothing. This is the one destructive verb. | A named word, and a checkpoint recorded before the rewrite. |
| **infuse** | Applies a declaration to the world: `infusion(world') -> world'`. Running it twice moves nothing. | The declaration, which is the record. | None beyond the declaration itself. |

## Which verb to reach for

- Changing a living page: edit it in place. No verb is needed.
- Retiring a dated writing: **molt**, so the old version stays as a fossil.
- Renaming something the history should still remember: **breach**.
- Removing something from every commit, such as a leaked key: **debride**, with a checkpoint first.
- Applying a declared set of files: **infuse**.

## The checkpoint rule

Before any debride, record the commit the rewrite starts from and the date, so the old state can be
found again. A rewrite without that record cannot be walked back.

## Where the keys page fits

If a signing key ever reaches a commit, the first step is to rotate the key, not to debride.
[`KEYS.md`](KEYS.md) gives the order. A debride is the second step, and only if rotation is not enough.

## Standing permission for tree uniformity

The owner allows **molt**, **breach**, and **debride** for the purpose of keeping the tree uniform, with these terms:

- **Molt and breach** may run without a named word for each item, when the item brings a living page into the shared
  shape, such as the page header or the tutorial style line. Each run names the files it touches in its commit body.
- **Debride** may run for uniformity only with a named target, a checkpoint recorded first, and a backup that holds the
  content before it is rewritten. Each target is stated to the owner before the rewrite runs.
- **Dated testimony** is not uniformed. Molt, breach, and debride do not touch a file whose name carries a one-clock stamp.
- **Shed** is not part of this permission. A shed still needs its own named target and word.

The permission widens what may run for uniformity. It does not remove the checkpoint, the backup, or the named target.
