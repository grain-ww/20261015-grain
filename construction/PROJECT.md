# Project -- the start, the journey, and the orbit in progress

**Stamp:** `20261018.022012` -- **Voice:** Kyri
**Status:** Living. Rewritten at each orbit's start. Finished rounds are
not rewritten; they stay in git history and in the round notes.

## The start

The project starts at commit 1 of this tree, `20261015-grain`, the first commit on the one clock. The count
of commits is the only clock the round load reads: `git rev-list --count HEAD`.

## The quick reference (for a fresh session)

- **Count and head:** read them, do not copy them: `git rev-list --count HEAD` and `git rev-parse --short HEAD`. Every commit moves the count, so a number written here goes stale on the next one.
- **Calfour now:** read from the commit count by the formulas in `.claude/rules/rota-and-calfive.md`.
- **Sign and verb for this round:** not carried here. They live in the field's round-load table
  (`context/SPELLBOOK.md` in the field tree). Read them there, do not guess.
- **How to compose the next round:** `sh construction/round.sh --subject NAME --measure NAME --send no`.
  The steps are in `construction/prompts/round.md`.

## The journey

A journey is 128 rounds on calfour: 16 orbits of 8 rounds, in four quests of four orbits. The position inside a journey is read from the count, not written here (see the quick reference).

| Journey | Counts | State |
|---|---|---|
| One | 1-128 | done, closed at count 128 |
| Two | 129-256 | done, closed at count 256 |
| Three | 257-384 | open from count 257; each orbit is planned at its start |
| Four | 385-512 | planned when it opens |

The plan for journey two's last orbit, counts 249 to 256, is in [`active-development/date/20261018/20261018-054511_jena-calfour-rest-of-journey.md`](../active-development/date/20261018/20261018-054511_jena-calfour-rest-of-journey.md). Those counts have passed, so that plan is history now, and the systems waiting to be booked are listed there too.

Journey one's rounds are in git history, not rewritten here. Journey two's orbit plans are written at each orbit's start, not ahead, since a plan written twenty orbits out is a guess.

> **Drift, recorded 20261018:** the replay and tutorial commits took counts 71 and 72, so the planned rounds for counts 71 and 72 did not run in order. The link check ran at count 73, round 13. The count is the clock, so the drift stays as history and is not renumbered.

## Live reading (printed by the prin step, 20261018)

- **Count, round, and position:** not written here. Read the count, then apply the calfour formulas in `.claude/rules/rota-and-calfive.md`. The working tree is read live by the checks.
- **Pushes:** not written here. Read the gap with `git rev-list --count xy/main..HEAD` and `git rev-list --count ww/main..HEAD`. Each push waits on its word.
- **Rota:** eight themes are seated in `context/lib/rota.brix`, one-indexed, and the row is `((count - 1) mod 8) + 1`. The four-sense text in `.claude/rules/rota-and-calfive.md` is still pending the owner's mapping of the twelve elder signs onto the eight.


- **Output, whole tree (partner: broken living links, read by the link check):** 178 tracked files, 35806 living words, 20578 yonder words. Words removed this round: 0. The measure and its partner are set in `context/lib/project.brix`.

## Open tasks

The open tasks and the items waiting on a word live here, in one place. The baton points here.

### Waiting on a word

- **Favorite passages and quotes, as tablecloth writes of books.** How a favorite passage is filed, and how a quote is cited, without claiming it as ours. Open. Named in `context/lib/refusals/` at the favorite-quote refusal, stamp $S. Waiting on the owner's word for the rule.
- **Standfast: the rest of calfour, released at 20261018.180047.** Released on the owner's word; the batch plans may now be booked. The earlier hold, for reference: per `active-development/date/20261018/20261018-055345_calfour-chapter-ladder-and-the-transcription-standfast.md`. The rounds keep the count as their clock, but the plans for them stay unbooked until the standfast is released. Which schedule PDF the standfast pushes back to is not yet named.
- **Redate.** Whether the tree keeps `20261015` or moves to `20261016`. Keaton chooses. The errata says the question is open.
- **`ww` publish.** `ww` is published as one snapshot by the w routine, not synced by history, so a commit-count gap against `ww` is not a lag. The item is retired; the next w run publishes it.
- **Field launcher.** Measured: the field pins Zig 0.16.0 in its toolchain fetch, its bootstrap, and its equinox bundle, and this tree pins 0.17.0 in its bounds witness. Whether the field moves to 0.17.0 is a decision for the field's owner.
- **Scripture review.** The reviewer and the owner's approval for the sacred lines. Nothing is published until both are in place.
- **Private backup repo.** Name the second private place for `private/` and the held files. The `xy` scrub waits on it.
  **The mirror is already made.** `~/20261015-grain-backups/xy-pre-scrub-d31a72a.git` holds the full `xy` history before any scrub, outside the tree.
- **Scrub `xy` history.** The scrub test passes on history (234 commits kept, no held path left), but it also removes `tablecloth/private` from `xy`'s current tree, so it waits on the backup repo and a re-signing check.
  **Status, later:** the first re-signing test left every rewritten commit unsigned. Its test clone had no commit identity, so the cause is not yet known. A rerun with the identity set would settle it.
  **Settled, later:** the rerun on a throwaway clone, with the commit identity and the tree's signing program set, signs all 234 commits, and no held path remains in any of them. The scrub's remaining gates are the backup repo and the owner's word.
- **Calfour helper.** Build it in shell, with boundary checks against the rule page, or hold. Rishi cannot do the arithmetic, so no Rishi version.
- **Rishi capabilities.** Which limits to lift first. The source is `rishi/src/` in the field tree, and a value-model change needs a ruling first.
- **Chapter one start, for review.** A draft event record at count 1 (root `31680ac914`) is waiting on the format, the parties, the purpose, and a word before any public step.
- **The elder's rings, deferred.** The elder's 9,375-round chapter is held in `yonder/calfive/elder-rings.md`. The tree's chapter is calfour's 2,048.
- **Three decisions for the next lap.** The panchanga deep debride needs its target and a history-rewrite word. Calfive needs its scope, live calendar or design page. Astrology needs its source, from the accepted Brihat Jataka or a gated trait text.
- **Shed prep walk-back.** The newest walk-back for the shed list is in `construction/CHECKPOINTS.md`, and it stands at the head after the wording fix. Nothing is cut.
- **Scribe font, and the logo images.** `context/lib/scribe.brix` is seated, and it places the first Brix file in `context/lib/` as a ratchet. The logo images wait on a machine with JetBrains Mono and a renderer.
- **The first-hour page.** `docs-geode/tutorials/01-the-first-hour.md` now points at where the checks, the spells, the private room, the rota, and the refusals live.
- **The l spell.** `l` learns the last output's references and their dependencies, then runs `o` and `a`. The spell strand is read by the spellbook, the strands tutorial, the first-hour page, and the Rishi page.
- **The numbered tutorials.** All seven pass the Radha source check, each recorded on its page. The index gives their order.
- **The xy history is scrubbed.** The 19 held paths and the four private session logs are out of every `xy` commit, which was re-signed. The old heads survive in the mirror at `~/20261015-grain-backups/`, and the held files are in the private repo `grain-ww/20261015-grain-private`. `xy` is still private.
- **Body labels.** The body rule is in `context/lib/page-header.md`. `sh construction/body_label_count.sh` counts the stray bold label lines below the header: 4 lines in 3 living pages at seating. The four lines were molted into level-two headings with their text kept, so the count reads 0 in 0 living pages.
- **Page headers.** The one definition is `context/lib/page-header.md`. `sh construction/page_header_check.sh` reports the living pages with no Status line, 47 of 88 at seating. After ten pages were given one, it reads 37 of 90. After ten more, it reads 27 of 90. After ten more again, it reads 17 of 90. The check now accepts an inline Status label, and it reads 12 of 90. Six living pages are labelled since, and six are testimony or quoted text that keep their headers, so the count read 6 of 90. The check now skips dated testimony by its one-clock stamp, and the last living page is labelled, so the count reads 0 of 83. It is a ratchet, lowered when a page is touched.
- **`xy` stays private, by decision.** `xy` keeps the full private record, with its held paths, private logs, and host username removed from history. Forks and caches can keep old copies, and a public repo cannot be recalled, so the public surface is `ww` alone, republished as one snapshot.
- **Glow teaching prose.** The field's two PLEAC chapter-one comments now say input, not sample, in field commit `7180d32`. The chain witness stays green.
- **The ww publish guard.** The publish helper refuses a `yes` push unless a checkpoint row names the ww head it replaces. The row for the next publish is written before the publish, as the ledger rule asks.
- **Ledger placeholders fixed.** Three checkpoint rows had literal placeholders, and they now carry their stamps and heads. The publish guard reads the row for the current ww head.
- **The end-to-end w run.** The checklist and the gates ran once on a real publish, which set `ww` to `4ceb855`. A check that read the first output line reported false zeros because a new line printed first; the line now prints after the snapshot. The snapshot was then read directly: no Asana files, no private-folder files, no PNGs.
- **The w routine.** The one checklist is `.claude/rules/w-routine.md`. It points at the publish helper and the guards witness.
- **Glow division and modulo.** Three options are set out in `active-designing/date/20261018/`. The working choice is option three, the calfour arithmetic in shell, until the owner decides otherwise. Nothing is changed in the field.
- **The body-label count and the shed walk-back.** The count reads its list one line at a time, and the shed walk-back is recorded at the current head.
- **Standfast: the Zig 0.17 Seva build.** Held. The field's toolchain is 0.17.0, and the Seva native build fails on it at a one-sided repeat operator in build-generated Zig. The emitter fault is not yet read. The field's fetch and Glow chain witnesses are green. The resolve control is red and its failing leg is unnamed. The 0.17 release notes and language reference do not document the operator-spacing rule or a libc requirement for getpid, The record is `active-development/date/20261018/20261018-152003_libc-getpid-probe-on-zig-0-17.md`. The test plan for the untested claims is `active-development/date/20261018/20261018-152426_bootstrap-claims-test-plan.md`. The reproducibility witness, `construction/bootstrap_repro_witness.sh`, is red for a stated reason: the bootstrap's source imports modules from outside `rye/src`, such as `parse_int.rye`, so a copy of that folder cannot build on its own. The bootstrap line also points at a `lib` folder that holds no standard library, and the witness uses the toolchain's library in place. The bootstrap's claims are registered in `active-development/date/20261018/20261018-152312_bootstrap-claims-register.md`. A scratch probe settles the libc point for 0.17: the libc getpid symbol refuses to build without -lc and builds with it, so the bootstrap's note still holds on 0.17 for that symbol. The probe was run on the raw system-call wrapper first, which needs no libc, and that result was set aside.
- **Seva and Siya.** The field does not say Siya supersedes Seva. Siya names a person and a fund. Seva still names the viewer, the Brushstroke design system, and the broadcast fold.
- **Push `xy`.** Four commits are waiting, the last being the single-strand helpers.
- **The w and s spells.** `w` publishes `ww` as one snapshot after a checkpoint. `s` draws one study text from the accepted rows of `tablecloth/study/MANIFEST.md`, or continues the last one if `s` was the last command.
- **The o spell pushes.** Since `a768f88`, a bare `o` sends and pushes to `xy` as a fast-forward. It never pushes to `ww` and never force-pushes.

1. **A check for the shared order page.** `context/order.md` is the only strand without a runnable check.
2. **The voice check on style lines.** It confirms pages exist but not that a style line matches its strand line.
3. **A stop before commit.** A red link check does not block a commit in this tree. The Toyota learning note names this gap.
4. **The odd and even journey rule.** Still waiting on the owner.
5. **The rota row order.** Waiting on the owner, since row zero is read as air from the given order.

6. **Packs and integrations.** Planned and deferred in `yonder/packs/README.md`. Their open questions live there.

## Strands and their checks (output measure, 20261018)

- **Output:** four strands named for the single-strand rule: spells, voices, the rota and calfour, and the shared order.
- **Partner indicator:** three of four strands have a runnable check. The shared order page has none yet.
- **Reading:** the link check reads 118 links and 0 broken. The spell and voice checks pass on their real inputs.

## Orbit 8 -- molted to `yonder/project/`.

## Orbit 6 -- molted to `yonder/project/`.

## Orbit 5 -- molted to `yonder/project/`.

## The output measures, with their baselines

Each measure carries its partner indicator. The baseline is read from the command shown, so it can be re-read.

| Measure | Partner | Baseline (date) | Source command |
|---|---|---|---|
| Work closed per round | open defects owned | 69 commits at this round; defects owned not yet counted | `git rev-list --count HEAD` (partner count to be added in round 12) |
| Coverage of checks | false positives | link check: 0 broken in living pages, 20261018 | re-run the link check, as in the Verify step of the round prompt |
| Connections per living page | broken links per page | 0 broken | re-run the link check |

A baseline is a reading, not a promise. Re-read it, do not carry it.

## Instructions for an agent starting here

Start with `construction/BATON.md`, then the steps in `construction/prompts/round.md`. The round steps are not repeated here.
