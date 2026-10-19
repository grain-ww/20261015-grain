# ASCII-first

**Status:** Living -- the plain-ASCII rule for documents and commits.

Write every document, comment, and commit message in plain 7-bit ASCII. Use `--` for a dash,
straight quotes, `->` for an arrow, `...` for an ellipsis, and spell Greek in prose
(`gamma`, `sigma`). Plain ASCII survives every tool, terminal, diff, and re-encoding intact.

The one exception is an explicitly named round whose subject is a script itself -- a Unicode
module's fixtures, an internationalization surface. Name the exception; keep it out of commit
subjects and general prose.
