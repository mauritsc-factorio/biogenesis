# Biogenesis

**From Seed to Synthesis.**

A Factorio 2.0 total overhaul mod. You start by pulling wheat from the ground. You end by authoring a living world.

> *"This is biogenesis. The origin of life. And you were it."*

## What is this?

Biogenesis is not a farming mod that leads to biotech. It's a **biotech mod that starts with farming.**

Farming IS biotech, the oldest form. Selective breeding IS genetic engineering, just slow. Fermentation IS bioprocessing. Composting IS microbial cultivation. You're doing biotech from minute one. You just don't have the vocabulary yet.

## The Journey

| Era | Name | Hours | You are... |
|-----|------|-------|------------|
| 1 | Observation | 1-2 | ...a field biologist, picking the bigger plants without knowing why |
| 2A | Grain Farming | 6-8 | ...a farmer, selecting seeds and watching green pips appear on your crops |
| 2B | Applied Agriculture | 6-8 | ...an agricultural scientist, fermenting, preserving, weaving |
| 3 | The Invisible Ecosystem | 14-18 | ...a microbiologist, discovering 8.2 billion organisms per gram of soil |
| 4 | The Rules of Inheritance | 16-20 | ...a geneticist, predicting offspring traits with Punnett squares |
| 5 | The Source Code of Life | 20-25 | ...a molecular biologist, reading and editing DNA with CRISPR |
| 6 | Authoring Life | 20-25 | ...a synthetic biologist, designing organisms from scratch |
| 7 | The Optimization Engine | 20-25 | ...directing evolution in bioreactors, growing buildings from mycelium |
| 8 | Emergent Architecture | 20-25 | ...engineering living systems that heal, adapt, and surprise you |
| 9 | Genesis | 30-40 | ...the origin of life, building a self-sustaining biological arcology |

**Total: ~165-215 hours**

## Signature Mechanic: The Biological Web

Every living thing in your factory has relationships with its neighbors. Place nitrogen-fixing beans next to wheat and both thrive. Stack two competing fermenters and both suffer. Your base layout is an **ecosystem design puzzle**.

And everything drifts. Your organisms slowly evolve over time. A well-designed symbiotic cluster self-optimizes. A neglected corner degrades. The factory is alive and never static.

## The Narrative

The mod tells a story entirely through gameplay. No cutscenes. No lore dumps.

**Era 1:** *"You notice some kernels are plumper than others. If you replanted only the best ones..."*

**Era 5:** *"You have been editing this genome since Era 1. Through selective planting. Through patience. Twenty-three changes in 50 hours. The CRISPR lab performs one targeted edit in fifteen seconds."*

**Era 7:** *"The organism solved your problem. But it also did something else. Sequencing analysis cannot determine what."*

**Era 9:** *"The Arcology has sustained itself for 30 minutes without intervention. It is alive."*

## Current Status

**Design: Complete.** 740K of design docs across 9 eras. 4 review rounds + full playthrough simulation. Zero blockers.

**Implementation: Era 1 done.** 61 items, 47 recipes, 7 entities, 9 technologies. Loadable in Factorio 2.0 with placeholder graphics.

| Component | Status |
|-----------|--------|
| Design docs (all 9 eras) | Done |
| Signature mechanic spec | Done |
| Power generation chain | Done |
| Era 1: Observation | Implemented |
| Era 2A/2B: Cultivation | Design done, not yet coded |
| Eras 3-9 | Design done, not yet coded |
| Biological Web system | Specified, not yet coded |
| Organism Drift system | Specified, not yet coded |
| Custom art/sprites | Not started (tinted vanilla placeholders) |

## Design Documents

The `design/` folder contains the complete mod bible:

- `master-redesign.md` - The identity document. Era structure, narrative arc, tone progression.
- `signature-mechanic-spec.md` - Biological Web + Organism Drift. Data structures, algorithms, performance budgets.
- `eras-1-2-final.md` through `era-9-final.md` - Complete item lists, recipe chains, machine specs, tech trees for all 9 eras.
- `power-generation.md` - 8-tier biological power chain from water wheels to arcology metabolism.
- `bootstrap-machines.md` - Era 8 machines that break the Era 9 construction deadlock.

## Numbers

- ~1,000 items across 9 eras
- ~900 recipes with branching at every step
- ~120 fluids (biological, all of them)
- ~150 machines with mk1/mk2/mk3 tiers
- 7 science packs
- 9 research chapters

## Requirements

- Factorio 2.0
- Base mod

## Contributing

Active development. Design is locked. Contributions to implementation, art, and testing are welcome.

## License

TBD
