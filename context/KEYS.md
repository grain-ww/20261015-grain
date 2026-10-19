# Keys -- where the signing material lives, and why it stays out of git

**Stamp:** `20261017.214500` -- **Voice:** Kyri
**Status:** Living
**Single strand:** the one place this fact is written down. The reasoning it rests on is
[single-stranded](../foundations/date/20261015/20261015-154757_single-stranded.md).

## The short version

Commits are signed with a GPG key. The keyring that holds the key lives inside this tree, in
`.gnupg-rye/`. That folder stays untracked by git, and every commit in this tree's history is free of it.
Private key material stays off every remote, so this holds.

## What is where

| Thing | Where | Tracked by git? |
|---|---|---|
| The keyring (`pubring.kbx`, `trustdb.gpg`, `private-keys-v1.d/`) | `.gnupg-rye/` | no |
| The signing shim (`gpg.sh`) | `.gnupg-rye/gpg.sh` | no |
| The signing key id and the shim path | local `.git/config` | no |
| The ssh config for pushes | `.git/ssh_config_jail` | no |

`gpg.sh` is a three-line script. It sets `GNUPGHOME` to its own directory, then runs `gpg`. Because
it reads its own location at run time, a copy of the tree still points at its own keyring.

## Why it stays untracked

Git keeps every commit forever, on every clone and every remote. If a private key is committed,
deleting the file later leaves it in the history. Only a history rewrite does, and that changes every
commit hash and forces every clone to re-clone. Keeping the keyring out of git avoids that cost
entirely.

The root `.gitignore` denies everything by default (`/*`) and then allows project paths back one at
a time. `.gnupg-rye` sits outside the allow list, so git ignores it.

## How to check it

Run these from the tree root. Each should print only the note in brackets:

```sh
git ls-files .gnupg-rye                  # tracked files under the keyring (none)
git log --all --oneline -- .gnupg-rye    # every commit that touched it (none)
git check-ignore -v .gnupg-rye           # the ignore rule that covers it (.gitignore:4)
git grep -l 'PRIVATE KEY'                # tracked files holding private key text (none)
```

## If a key leaks

1. **Rotate the key first.** Create a new signing key, switch `user.signingkey`, and revoke the old
   one. Revocation is the step that stops other people trusting it.
2. **Check history.** If the material reached a commit, a deletion alone is not enough. Decide
   whether a history rewrite is worth the cost, and record the decision before running it.
3. **Tell the remotes' owners,** since a private repository can still be cloned by its members.

## Moving the tree

A new clone gets its keys by hand, not from git. Copy the keyring and the ssh config by hand from a
machine that has them, and check the signing key with `git config --get user.signingkey` before the
first commit. The field tree's `tools/b/birth_a_clone.rish` automates this copy; the clean tree lacks
that tool yet.
