# Rota and Calfive -- the reading rota and the round load

**Status:** Living -- the reading rota and the calfour calendar.

The ordering rules this page uses are stated once in [`context/order.md`](../../context/order.md).

Both are read from one count: `git rev-list --count HEAD`.

## Calfour position -- the formulas

A round is 1 to 8 within an orbit, an orbit is 8 rounds, a quest is 4 orbits, a journey is 4 quests, and an equinox is 4 journeys. With `count` as the commit count:

- round = `(count - 1) % 8 + 1`
- orbit in quest = `((count - 1) / 8) % 4 + 1`
- quest in journey = `((count - 1) / 32) % 4 + 1`
- journey in equinox = `((count - 1) / 128) % 4 + 1`
- equinox = `(count - 1) / 512 + 1`

`sh construction/calfour.sh COUNT` prints these from one place, and its boundary values are checked against hand-worked answers.

## The council rota -- pending the eight-theme mapping

**The active rota is the Brix template, `context/lib/rota.brix`:** eight themes, one-indexed, with the row rule `((count - 1) mod 8) + 1`. The four-sense text below is the rota as it stood before that template, and it stays until the owner confirms how the twelve elder signs map onto the eight themes. Where this page and the template disagree, the template wins.

### Earlier four-sense rota (superseded by the template, kept until the mapping)

Each lap deep-reads one row of a four-row rota: lap `N` reads row `N mod 4`, counting rows from zero in the order below.
Aether is no longer a row. The four senses are:

- **Air feels** (row 0) -- the texture, the ergonomics, the friction.
- **Earth breathes in** (row 1) -- the concrete fact at the door, before any argument about it.
- **Fire sees** (row 2) -- the shape, the structure, what stands out.
- **Water tastes** (row 3) -- the flavor, the aesthetics, what is pleasing.

The rota is a meter rather than a ritual: it exists to catch the silent thing. The eight-sign zodiac that will replace
these four rows is not yet mapped, so this rule stays on four senses until that mapping is given.

## Calfour -- the round load

Calfour is the calendar in use. It starts with an orbit of eight rounds, and each larger ring is four times the one before:
quest 32, journey 128, equinox 512. The derivation and the boundary checks are in `context/lib/calendar.md`.

For a commit count `n`, with `n` starting at one:

- round within orbit: `(n - 1) % 8 + 1`
- orbit within quest: `((n - 1) // 8) % 4 + 1`
- quest within journey: `((n - 1) // 32) % 4 + 1`
- journey within equinox: `((n - 1) // 128) % 4 + 1`
- equinox: `(n - 1) // 512 + 1`

The old Calfive formulas are kept in `yonder/calfive/`. The odd and even rule for journeys is still a proposal.
