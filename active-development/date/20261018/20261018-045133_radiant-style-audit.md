# Radiant style audit -- the tree, measured

**Stamp:** `20261018.045133` -- **Style:** Gauge at the Field setting -- **Voice:** Kyri
**Status:** Measured, not edited. The audit names where the prose stands. It changes no page.
**Scope:** every tracked `.md` page except `yonder/`, `tablecloth/private/`, `gratitude/`, and `vendor/`. That is 97 pages.

## What was measured

Radiant's core moves, as `context/styles/lib/shared-register.md` states them, reduce to three
countable things here: how many sentences carry a negation, how often the word *but* appears, and
how much of the prose is passive. Sentence length is a fourth reading, reported beside them.

| Reading | Tree | Target |
|---|---|---|
| Sentences measured | 2,072 | -- |
| Sentences with a negation | 20% | Gauge Field: at or under 30% |
| Uses of *but* | 10 | Radiant: prefer *yet* or *however* |
| Passive, rough reading | 12% | Radiant: only where the actor does not matter |

**Read these figures plainly.** The method is a heuristic, not a parser. A negation counts when a
sentence holds one of a short word list. A passive counts when a form of *to be* sits beside a word
ending in *-ed* or *-en*. Code spans, fenced blocks, and headings are removed first. The figures are
**free**: nothing holds them still, and they move with every page. Run the reading again rather than
trusting this page.

## What the reading says

**The tree sits inside the Gauge ceiling.** At 20% negation against a 30% ceiling, the living prose
has room. The Radiant floor of zero negatives is a different question, and this tree does not
claim it: the working style is Gauge, which buys up to a fifth of its sentences in negation because
a measured page must sometimes say what was refused.

**The *but* count is nearly all literal.** Of the 10 uses, most name a state or a thing, as in
*referenced but not yet carried*, *in `.gitmodules` but never added*, and *no code, but see below*.
Those stay. The rhetorical uses are the ones a Radiant pass would turn:

- `docs-geode/tutorials/the-strands.md` line 34 -- *The spell lookup reads the strand, but it does
  not run a spell.* A candidate for *yet*.
- `expanding-prompts/date/20261018/20261018-030209_glow-rune-core-prompt.md` line 40 -- *but they
  are not planned in full here.* Dated, so it keeps its words.

**The densest pages are the ones a newcomer reads first, or reads least.** The highest negation
shares are a shelf page (`session-logs/date/README-index-20261017.md`, one sentence), the voice
limits page, the shelf-prep list, and the changelog slice. Two of those are short enough that one
sentence moves the figure by tens of points. A lap should read the share together with the sentence
count, never the share alone.

**The longest, most negative living page is `context/TWO_ROOMS.md`**, at 102 sentences and 34%
negation. It is a register page, and its negatives are the subject: it names what a room is not.
Under Gauge that is honest, and it sits just over the Field ceiling. A lap that touches it should
say what it refused, in one sentence, before it rewrites any of them.

**The worst long-sentence pages are a different problem.** Pages whose standard deviation of sentence length runs past 30 words, such as
`context/SPELLBOOK.md`, `context/voices/README.md`, and `construction/SHRED_PREP.md`, mix tables and fragments in with sentences. Those readings are about layout. Radiant's
rule to vary sentence length does not apply to a table cell.

## What this does not claim

- That the prose is good. Four proxies, two of them counted, and the next thing to read is the page.
- That any page needs an edit. The tree's figures are inside the seated ceiling.
- That dated testimony is wrong. Dated pages keep every word they wrote, and two of the items above
  are dated for that reason.

## What waits for a word

- Whether the two rhetorical *but* uses in living pages turn to *yet* now, which is a small Radiant
  pass on `docs-geode/tutorials/the-strands.md` and nothing else.
- Whether `context/TWO_ROOMS.md` should lower its negation share toward the Field ceiling, or keep
  its negatives as the subject of the page.

## The measure, as run

The reading was taken with a short script under the session scratchpad. Its logic, in outline, is the
list above: strip code and headings, split on sentence ends and blank lines, count negations, *but*,
and passive forms per page, and report the tree totals. The script is not carried into the tree. A lap
that needs the figure again writes it again from this outline.

Recommend: check in (Claude) -- the two *but* uses and the `TWO_ROOMS.md` negatives each want a ruling
on wording before a Radiant pass touches them.
