# Packs -- planned backup packs for settings and integrations (deferred)

**Status:** Planned, deferred. Nothing here is built or wired. Each pack lists its scope as open questions, not as decisions.
**Field sources:** the names below are defined in the field tree's lexicon, `context/LEXICON.md`. Read them there.

## The packs

| Pack | What it would hold | Field name it rests on |
|---|---|---|
| Theme pack | a saved Scribe settings set: how the Kyri voice's home renders and stores its settings | Scribe (the Kyri voice's home, proposed as a settings flagship) |
| Install pack | a saved Brix infuse declaration: the bricks a namespace may hold, applied with `infusion(world') -> world'` | Brix infuse (`context/BRIX.md`) |
| Comlink pubsub pack | the transport paths for sealed facts over Weave, with a publish and subscribe shape | Comlink (transport over Weave) |
| Pond integration | the application module that composes the packs above | Pond (the full application module) |
| Kumara integration | the identity keypair that signs a fact before it enters Weave | Kumara (identity) |
| Realidream and Skate integration | the editor-and-browser surface over one graph, and the Skate surface it would meet | Realidream (horizon, Pond's application face), Skate |

## Open questions

### Theme pack (Scribe)
- What settings does a theme pack hold, and which of them are defaults the voices already declare in `voices.brix`?
- Does a theme pack change how a page renders, or only how its settings are stored?

### Install pack (Brix infuse)
- Which declaration is the first install pack, and which namespace does it describe?
- How is a pack checked before it is applied, since no witness exists here yet?

### Comlink pubsub pack
- "Pubsub" has no entry in the lexicon. What does a publish and a subscribe mean here, and which Comlink path carries each?
- Does a pack subscribe to facts, or only receive them from a named sender?

### Pond, Kumara, Realidream, and Skate
- Which of these integrations comes first, and what does each one need from the others?
- Kumara signs a fact before Weave. Does an install pack need a signature before it is applied?
- Realidream is Pond's application face. Does Skate render it, or does Skate sit beside it?

## Scope, as open questions for the project

1. Which pack is the first to be built, if any, and what would its witness check?
2. Does the tree carry any of these integrations, or only name them as designs in `yonder/`?
3. Who decides each open question above: the owner, or a reviewer for the scripture-adjacent packs?
