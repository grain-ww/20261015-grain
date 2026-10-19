# Session logs

**Status:** Living -- the session log rule.

At the end of every response, write a `.kyri` session log to `session-logs/`. It records
the reasoning followed and the changes made. It is kept for years.

## Filename and clock

`session-logs/date/YYYYMMDD/YYYYMMDD-HHMMSS_short-sprig.kyri` -- born on its day's shelf.
One clock: `TZ=America/New_York date +%Y%m%d.%H%M%S`. A later stamp is a later version.
Dated logs are never rewritten.

## Fields (one per line, `#` comments, no quotes, no braces)

```
format session-log-v1
stamp YYYYMMDD.HHMMSS
editor product interface
provider model provider
product product name
model verified-active-id-or-unverified
model_status evidence status
voice Kyri
title short title
prompt what Keaton asked
think step of reasoning
obs observation or trade-off
file path why-one-line
recommend keep-going|check-in what and why
```

## Provenance stays honest

Record the model only when runtime evidence proves it; otherwise write `model unverified`
and carry a configured default separately. A configuration describes a default; only
runtime evidence identifies the model that produced a log.
