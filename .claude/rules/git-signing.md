# Git commit signing

**Status:** Living -- the signing rule for every commit.

Every commit in this tree is GPG-signed. `commit.gpgsign` is true and the signing key
is named in the tree's own `.git/config`; the keyring lives in the tree (`.gnupg-rye/`)
and is never tracked. Keep `--no-gpg-sign`, `-c commit.gpgsign=false`, and `--no-verify`
unused. If a commit fails on GPG, fix the cause and keep signing on.

A tree carries its own keys: `gpg.program`, `core.sshCommand`, and every `IdentityFile`
name paths inside this tree, so the enclosure can reach them. A path into a sibling tree
is a path the jail cannot see.

## The one exception -- the public ww seed

The public seed is committed **unsigned**, on purpose: signing it with the maintainer's
key would cryptographically link the anonymized seed back to the maintainer and defeat the
depersonalization. The seed sets `commit.gpgsign false` in its own throwaway `.git` config
alone; the field's own config stays signed. This is the only place signing is off.

## Our own record numbers wear `%`, never `#`

Write `REDS %7`, `gate %1`. Reserve `#` for a real GitHub issue or pull request, because
GitHub's commit renderer turns `#<n>` into a link. In `%`, as in Glow's constant term, the
number is exactly itself and never varies -- which is what an immutable record number is.
