# BIOGENESIS: Era 8 — Emergent Architecture

**Status:** DRAFT v2
**Date:** 2026-03-21
**Duration:** 18–22 hours
**Discipline:** Bioarchitecture, emergence, neural mesh, living logistics
**Tone:** Awed — "The building is resisting demolition."
**Core Insight:** Everything you've built — evolved mycelium, bioelectric filaments, adhesive biofilm, structural composites — now combines into living architecture. The factory stops being a collection of machines and becomes a single organism.
**Research Chapter:** "Emergent Architecture"
**Science Pack:** Systems Emergence Analysis

---

## 1. INHERITED STATE

The player enters Era 8 with:
- **Island:** ~15,000-25,000 tile archipelago with offshore platforms, bio-boat network, rail system
- **Materials:** All Era 1-7 materials + structural mycelium panels, evolved enzymes, bioelectric filaments, divergent strains, bio-boats, spider silk panels, evolved industrial organisms
- **Machines:** ~85 machine types across Eras 1-7. Evolution engines, strain screening, bio-boat logistics, metabolism reactors, genome authoring, full CRISPR.
- **Power:** ~22,100 kW (all previous + metabolism reactor)
- **Logistics:** Belts (all tiers), trains, bio-boats on lane networks. Automated Planters.
- **Science:** EDR (Evolutionary Dynamics Report) production established
- **Key materials ready for Era 8:**
  - Bioelectric Filament (Era 7 evolved) → Neural Relay Mesh
  - Evolved Algal Composite (Era 7 Bio Web) → bio-membranes
  - Adhesive Divergent strain (Era 7) → living architecture bonding
  - Crystalline Silk Fiber (Era 6 Bio Web) → neural relay substrate
  - Synthetic Biofilm (Era 6 Bio Web) → biocompatible adhesive
  - Self-Organization Gene Template (Era 7, from Chimeric Biofilm Fragment) → multi-species composites
  - Structural Mycelium Panel (Era 7) → self-healing walls
  - Phosphorescent Moss Culture (Era 6) → ceiling biofilm

**What changes:** The player has spent 7 eras building a factory out of biological materials. Now the factory itself becomes ALIVE. Self-healing walls. Bioluminescent ceilings. Neural relay networks carrying control signals between machines. Vascular conduits transporting items through the building's interior. Lymphatic filter nodes processing metabolic waste. The factory has a METABOLISM — health that improves with good maintenance and degrades with neglect. The distinction between building and organism dissolves. And when the player tries to demolish a living wall... it resists.

---

## 2. THE LIVING ARCHITECTURE MECHANIC — HOW IT WORKS

### Construction Pipeline

```
MORPHOGENETIC SCAFFOLD (player places — defines shape)
  → Scaffold types: wall (1×1), ceiling (4×4), floor (4×4)
  │
  ▼
LIVING ARCHITECTURE SEED INCUBATOR (3×3, 20 kW)
  → Input: Scaffold Frame + Organism Cultures + Nutrient Medium + Bonding Agent
  → Output: Living Architecture Seed (specific to scaffold type)
  → 60-120s growth cycle depending on component size
  │
  ▼
DEPLOYMENT (player places seed on scaffold)
  → Seed + Scaffold → growth begins (2-10 min depending on component)
  → Living structure grows to fill scaffold shape
  → Scaffold consumed, replaced by living architecture entity
  │
  ▼
MAINTENANCE
  → Living architecture needs: nutrient supply (vascular conduits) + waste removal (lymphatic nodes)
  → Health improves over time with proper maintenance (+2% per hour, up to +20% bonus)
  → Health degrades without maintenance (-3% per hour, output penalties at <80%)
```

### System Health — The New Constraint

Every living architecture component has a HEALTH value (0-120%). Health is managed per arcology ZONE (a player-defined area containing living architecture).

| Health | Effect | Cause |
|--------|--------|-------|
| 100-120% | Bonus output (+1% per health point above 100). Self-optimization. Improves at +2%/hour with all systems operational. | Sustained maintenance: lymphatic nodes active, nutrient conduits flowing, neural mesh connected. Multi-Species Coordinator adds +10% baseline. |
| 80-100% | Normal operation. No bonus, no penalty. | Standard state. Adequate maintenance. |
| 60-80% | Output drops -1% per point below 80. Visual: walls darken, lights dim. | Insufficient lymphatic filtration. Waste accumulating. |
| 40-60% | Output drops -2% per point below 60. Visual: conduits slow, mesh flickering. | Neglected maintenance. Multiple systems degrading. |
| <40% | Critical. Living architecture starts dying. Panels crack, conduits clog, lights go dark. | Severe neglect. Must add lymphatic nodes and flush with nutrient solution. |

**The player manages health by:**
1. Placing Lymphatic Filter Nodes (waste processors) throughout living architecture zones
2. Maintaining nutrient flow via Vascular Conduits
3. Ensuring Neural Mesh connectivity (control signals coordinate the living system)
4. Avoiding overcrowding (too many living components per unit area → metabolic waste spikes)

**The Living System Integrity Dashboard** (2×2, 5 kW) displays zone health in real-time. Green/yellow/red indicators. The player monitors and adjusts — a management layer on top of the production layer.

### Vascular Conduits — Living Internal Logistics

**Design decision (resolving master doc open question): Option C — player designates paths, conduits grow along them.**

Vascular Conduits are a specialized internal transport system for arcology zones. They function like underground belts with longer range:

- Player places **Conduit Entry** and **Conduit Exit** (like underground belt pairs)
- Maximum distance: 20 tiles (longer than standard underground belt's 8)
- Items transported at express belt speed through biological fluid (peristaltic pumping)
- Conduits route THROUGH living walls (embedded in architecture — no external clutter)
- Visual: pulsing organic tube visible through translucent wall sections
- Self-repair: if damaged, regrows connection in ~5 min (like structural mycelium panels)

**Conduits are NOT a belt replacement.** Standard belts/trains continue for ALL external logistics. Conduits are for INTERNAL arcology transport — within living architecture zones where you want clean, embedded, organic-looking logistics. The biology is in HOW items move, not WHAT moves.

**Throughput bonus:** Conduits that maintain consistent flow for >30 min improve throughput by 10% (the organism optimizes its peristalsis). Rerouting resets the bonus. Rewards stable layouts.

---

## 3. TIMELINE

### Hours 0–3: Living Architecture Seed Incubator + First Self-Healing Walls

**What unlocks:** Morphogenetic Scaffold, Living Architecture Seed Incubator, Self-Healing Wall Panel, Bonding Agent.

**What the player does:**
- Research "Living Architecture" (first Era 8 tech, 5 EDR)
- Build Living Architecture Seed Incubator (3×3, 20 kW. Recipe: 6 Structural Mycelium Panel + 4 Blue Circuit + 4 Spider Silk Panel + 2 Cultured Leather)
- Craft Morphogenetic Wall Scaffold: 4 Bio-Composite Plate + 2 Spider Silk Fiber → 1 (hand, 5s)
- Craft Bonding Agent: 1 Adhesive Divergent extract + 1 Synthetic Biofilm + 1 Bio-Acid → 2 (hand, 3s)
- Grow first Self-Healing Wall Seed:
  - Incubator (90s): 1 Wall Scaffold + 2 Structural Mycelium Panel + 1 Neural Relay Thread + 1 Calcium Bio-Matrix + 1 Bonding Agent
  - → Self-Healing Wall Seed
- Place Wall Scaffold on ground → place Seed on scaffold → wall GROWS over 5 min → Self-Healing Wall Panel entity

**The moment:** The player watches a wall grow. First it's just a scaffold frame. Then mycelium tendrils spread across the surface. Neural relay threads weave through the growing mass. Calcium crystals form a hard outer shell. After 5 minutes: a living wall. The player hits it with their pickaxe — a crack appears, then CLOSES. The wall healed itself.

*"The structure is alive. Mycelium detected the crack via chemical signal. Neural relay coordinated the repair response. Calcium was deposited into the fracture. Repair time: 12 seconds."*

**"Zoom In":** "The building is resisting demolition. The mycelium is repairing faster than you can damage it."

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Morphogenetic Wall Scaffold | Crafting: 4 Bio-Composite + 2 Spider Silk Fiber | 20 | Defines wall shape. Consumed on growth completion. |
| Morphogenetic Ceiling Scaffold | Crafting: 4 Bio-Composite + 2 Fused Silica | 20 | Defines ceiling shape. |
| Morphogenetic Floor Scaffold | Crafting: 4 Bio-Composite + 2 Mycelial Composite | 20 | Defines floor shape. |
| Bonding Agent | Crafting: 1 Adhesive Extract + 1 Synthetic Biofilm + 1 Bio-Acid → 2 | 50 | Living architecture adhesive. Connects components. |
| Adhesive Extract | Crafting: 2 Adhesive Divergent (Era 7) → 1 (hand, 3s) | 50 | Processed from divergent strain. |
| Calcium Bio-Matrix | Crafting: 2 Calcium Precipitate + 1 Phosphorus Concentrate + 1 Purified Water | 50 | Mineral framework for living walls. |
| Neural Relay Thread | Crafting: 1 Bioelectric Filament + 1 Crystalline Silk Fiber + 1 Signal Compound | 50 | Biological wire. Carries chemical/electrical signals. |
| Signal Compound | Crafting: 1 Pharmaceutical Compound + 1 Cobalt Compound + 1 Purified Water | 50 | Neurotransmitter analog. Enables neural relay communication. |
| Self-Healing Wall Seed | Living Architecture Seed Incubator | 20 | Grows into Self-Healing Wall Panel when placed on wall scaffold. |
| Self-Healing Wall Panel | Grown from seed on scaffold (5 min) | — | Entity. Self-repairs damage (1% HP/min). Requires nutrient supply for sustained repair. |

### Hours 3–6: Neural Relay Mesh + Bioluminescent Ceilings

**What unlocks:** Neural Mesh Loom, Neural Mesh Node, Bioluminescent Ceiling Panel.

**Neural Relay Mesh:**
```
Neural Relay Thread (from above)
  → Neural Mesh Loom (2×2, 15 kW. 20s): 3 Neural Relay Thread + 1 Evolved Algal Composite
  → 1 Neural Relay Strand
  → Crafting: 4 Neural Relay Strand + 1 Bio-Composite Plate
  → 1 Neural Mesh Node

Neural Mesh Node: placed between machines/living architecture
  → Carries control signals. Biological circuit network.
  → Machines within 5 tiles of a connected mesh node: +5% speed (coordinated operation)
  → Self-repairs connections if damaged (regrows in ~5 min)
  → Requires: nutrient supply (conduit connection or proximity to nutrient hub)
```

The Neural Mesh is living wiring. It connects machines to living architecture, enabling coordinated operation. Think of it as biological logistic network — machines share information about what they need, and the mesh coordinates delivery.

**Bioluminescent Ceiling Panel:**
```
Living Architecture Seed Incubator (60s):
  1 Ceiling Scaffold + 1 Phosphorescent Moss Culture + 1 Biofilm Substrate + 1 Circadian Signal Compound
  → Bioluminescent Ceiling Seed
  → Place on ceiling scaffold → grows over 3 min
  → Brightens at dawn, dims at dusk. No power. No maintenance after initial growth.
  → Light radius: 10 tiles (larger than Era 6 moss — this is an engineered installation)
```

**Circadian Signal Compound:** 1 Signal Compound + 1 Circadian Regulator (Era 6) → 1 (hand, 3s). Synchronizes the ceiling biofilm's light cycle.

**Biofilm Substrate:** 1 Bacterial Cellulose Sheet + 1 Synthetic Biofilm + 1 Nutrient Solution → 2 (hand, 3s). The growth medium for ceiling biofilm organisms.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Neural Relay Strand | Neural Mesh Loom | 50 | Woven from threads. Carries signals over distance. |
| Neural Mesh Node | Crafting: 4 Strands + 1 Bio-Composite | 20 | Placed entity. +5% speed to nearby machines. Self-repairing. |
| Biofilm Substrate | Crafting: 1 Bacterial Cellulose + 1 Synthetic Biofilm + 1 Nutrient Solution → 2 | 50 | Growth medium for ceiling organisms. |
| Circadian Signal Compound | Crafting: 1 Signal Compound + 1 Circadian Regulator | 50 | Synchronizes biological light cycles. |
| Bioluminescent Ceiling Seed | Incubator | 20 | Grows into ceiling panel. |
| Bioluminescent Ceiling Panel | Grown from seed on scaffold (3 min) | — | Entity. 10-tile light radius. No power. Dawn/dusk cycle. |

### Hours 6–9: Vascular Conduits + Lymphatic Filter Nodes

**What unlocks:** Vascular Conduit Fabricator, Conduit Entry/Exit, Lymphatic Filter Node, Nutrient Distribution Hub.

**Vascular Conduit system:**
```
ONE-TIME SETUP:
  Genome Authoring Platform: Blank Fungal Chassis + Self-Organization Cassette + Nutrient Uptake Enhancer
  → Vascular Conduit Organism Culture → Validate (Phenotypic Validation Chamber)
  → Install in Vascular Conduit Fabricator (persists, like cell lines in tissue culture vats)

ONGOING PRODUCTION:
  Vascular Conduit Fabricator (2×2, 10 kW. 15s):
  Installed Conduit Culture + 1 Evolved Algal Composite + 1 Bio-Cement + 1 Nutrient Solution
  → 2 Vascular Conduit Segment

Conduit Entry/Exit: 1 Vascular Conduit Segment + 1 Bio-Composite Plate → 1 (hand, 3s)
  → Place Entry and Exit (up to 20 tiles apart, within living architecture zone)
  → Conduit GROWS between them over 2 min (visual: pulsing tube expanding)
  → Items enter at Entry, transported by peristaltic pumping, exit at Exit
  → Express belt speed. Self-repairing. Embedded in walls (no space used).
```

The Self-Organization Gene Template (from the Chimeric Biofilm Fragment sequenced in Era 7) was used to create the Self-Organization Cassette. The cassette was consumed ONCE to design the Vascular Conduit Organism. The culture persists in the fabricator — template consumed once, conduit segments produced indefinitely. This is the Era 6 breadcrumb's deepest payoff.

**Lymphatic Filter Node:**
```
Crafting: 2 Evolved Algal Composite + 2 Bacterial Cellulose Sheet + 1 PHA Tube + 1 Evolved Enzyme
  → 1 Lymphatic Filter Node (placeable entity, 2×1, 3 kW)

Function: processes metabolic waste within 10-tile radius
  → Passive operation: absorbs Metabolic Waste (invisible resource, tracked per zone)
  → Produces: Lymphatic Filtrate (1 per 30s — science pack ingredient)
  → Each node services ~20 living architecture components
  → Under-filtration: waste accumulates → health drops
  → Over-filtration: no penalty (just extra filtrate — useful for science)
```

**Nutrient Distribution Hub:**
```
Crafting: 4 Bio-Composite Plate + 2 Vascular Conduit Segment + 2 PHA Tube + 1 Neural Mesh Node
  → 1 Nutrient Distribution Hub (placeable entity, 2×2, 5 kW)

Function: distributes Nutrient Solution to living architecture within 15-tile radius
  → Input: Nutrient Solution (via pipe or inserter)
  → Converts to ambient nutrient field → living architecture draws from it
  → Insufficient nutrients: living architecture health degrades
  → Each hub feeds ~30 living architecture components
```

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Vascular Conduit Organism Culture | Genome Authoring Platform (validated, one-time) | 20 | Installed in fabricator. Persists. Self-Organization Cassette consumed in design. |
| Vascular Conduit Segment | Vascular Conduit Fabricator (culture installed) | 50 | Living transport tube. Self-organizing. |
| Conduit Entry | Crafting: 1 Segment + 1 Bio-Composite | 50 | Underground-belt-style entry. 20-tile max range. |
| Conduit Exit | Crafting: 1 Segment + 1 Bio-Composite | 50 | Matching exit point. Items emerge here. |
| Lymphatic Filter Node | Crafting | 20 | Processes metabolic waste. 10-tile radius. Produces filtrate. |
| Lymphatic Filtrate | Lymphatic Filter Node (passive, 30s) | 50 | Science pack ingredient. Processed waste product. |
| Metabolic Waste | (Invisible tracked resource per zone) | — | Accumulates from living architecture. Cleared by lymphatic nodes. |
| Purified Metabolic Extract | Bio Web: Lymphatic Filter Node + Compost Heap (~10%) | 50 | Concentrated metabolic product. Forward: Era 9 biosphere seed nutrient. |
| Nutrient Distribution Hub | Crafting | 10 | Distributes nutrients to living architecture. 15-tile radius. |

### Hours 9–12: Symbiotic Power Conduit + Living Floor

**What unlocks:** Symbiotic Conduit (8 MW distributed power), Living Floor Tile, Bioelectric Harvester.

**Symbiotic Conduit (8 MW):**
```
Recipe: 4 Neural Mesh Node + 4 Structural Mycelium Panel + 2 Bioelectric Harvester + 2 Vascular Conduit Segment
Size: 3×2. Embedded in living architecture.
Fuel: Living Symbiont (4/min)
Output: 8 MW — distributed power harvested from living architecture's bioelectric activity
```

The Symbiotic Conduit doesn't generate power from fuel — it HARVESTS bioelectric energy produced by the living architecture itself. The "Living Symbiont" is an evolved organism (derived from Bioelectric Filament) that lives in the conduit and converts biological signals into electricity. It feeds on the architecture's metabolic byproducts.

**Living Symbiont Culture:**
```
Evolution Engine (Era 7): Conductive Divergent Strain (or Bioelectric Filament)
  + Bioelectric Medium + High Mutagenic Primer
  → Evolved Bioelectric Symbiont Culture
  → Symbiont Bioreactor (2×1, 5 kW. 15s): Culture + Nutrient Medium
  → Living Symbiont + Metabolic Biomass (→ compost)
```

**Bioelectric Harvester:** 1 Bioelectric Filament + 1 Zinc Plate + 1 Cobalt Compound + 1 Spider Silk Panel → 1 (hand, 5s). Converts biological signals to electrical current. Component of the Symbiotic Conduit.

**Living Floor Tile:**
```
Incubator (60s): 1 Floor Scaffold + 2 Mycelial Composite + 1 Bonding Agent + 1 Nutrient Mesh
  → Living Floor Seed → place on floor scaffold → grows over 3 min
  → Living Floor Tile entity: self-maintaining surface. Provides ambient nutrient distribution
    (minor — supplements but doesn't replace Nutrient Distribution Hub).
    Organisms walking on it: no speed penalty (unlike regular terrain).
```

**Nutrient Mesh:** 1 Vascular Conduit Segment + 1 Neural Relay Thread + 1 Nutrient Solution → 2 (hand, 3s). Embedded nutrient delivery network for floors.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Bioelectric Harvester | Crafting | 20 | Converts biological signals to electricity. Conduit component. |
| Living Symbiont | Symbiont Bioreactor | 50 | Evolved organism. Conduit fuel (4/min → 8 MW). |
| Evolved Bioelectric Symbiont Culture | Evolution Engine + Screening | 20 | Base for Living Symbiont production. |
| Symbiont Bioreactor | Crafting: 2 Bio-Composite + 2 PHA Tube + 1 Bio-Membrane | 10 | Produces Living Symbionts from culture. |
| Symbiotic Conduit | Crafting | 5 | 8 MW from living architecture bioelectricity. Distributed power. |
| Living Floor Seed | Incubator | 20 | Grows into living floor tile. |
| Living Floor Tile | Grown from seed on scaffold (3 min) | — | Entity. Ambient nutrient distribution. Self-maintaining. |
| Nutrient Mesh | Crafting: 1 Conduit Segment + 1 Neural Thread + 1 Nutrient Solution → 2 | 50 | Floor-embedded nutrient delivery. |
| Bio-Membrane | Crafting: 1 Evolved Algal Composite + 1 Cultured Leather + 1 PHA Sheet | 50 | Living membrane. Used in conduits, bioreactors, architecture. |

### Hours 12–15: Living System Dashboard + Arcology Module Prototypes

**What unlocks:** Living System Integrity Dashboard, Arcology Module prototypes (Biodome, Workshop), Multi-Species Composite.

**Living System Integrity Dashboard:**
```
Crafting: 4 Blue Circuit + 4 Neural Mesh Node + 2 Bio-Composite Plate + 1 Fused Silica
  → 1 Dashboard (2×2, 5 kW)
  → Displays: zone health (%), nutrient levels, waste levels, neural connectivity
  → Color-coded: green (>100%), yellow (80-100%), orange (60-80%), red (<60%)
  → Alerts when zones need attention
```

**Arcology Module Prototypes.** The player builds their first enclosed arcology-scale structures. Each module is a room-sized living architecture zone with walls, ceiling, floor, conduits, mesh, and filtration.

**Biodome Prototype:**
```
Enclosed growing chamber (10×10 minimum):
  - Self-Healing Wall Panels on all sides
  - Bioluminescent Ceiling Panels (light for crops)
  - Living Floor Tiles (nutrient distribution)
  - Vascular Conduits (transport harvested crops out)
  - Neural Mesh Nodes (coordinate growth cycles)
  - Lymphatic Filter Nodes (2 minimum for this size)
  - Nutrient Distribution Hub (1 minimum)

Special component: Photosynthetic Membrane
  → Crafting: 1 Bio-Membrane + 1 Phosphorescent Moss Culture + 1 Growth Accelerator
  → Placed on ceiling alongside bioluminescent panels
  → Converts CO₂ from crop respiration → O₂ (atmospheric regulation)
  → Crops inside biodome grow 40% faster than greenhouse (STACKING with all existing bonuses)
```

**Workshop Prototype:**
```
Enclosed fabrication area (8×8 minimum):
  - Self-Healing Wall Panels
  - Living Floor Tiles
  - Vascular Conduits (item transport IN and OUT)
  - Neural Mesh Nodes (+5% speed to all machines inside)
  - Lymphatic Filter Nodes (machines produce metabolic waste too via living components)

Special component: Fabrication Matrix
  → Crafting: 1 Bio-Membrane + 1 Structural Mycelium Panel + 1 Evolved Enzyme + 1 Neural Mesh Node
  → Placed inside workshop module
  → All machines within module: +10% productivity (in addition to mesh +5% speed)
  → The workshop's living systems actively assist fabrication
```

**Multi-Species Composite (from Self-Organization Gene Template):**
```
Gene Cassette Synthesizer: Self-Organization Gene Template + 2 Nucleotide Reagent
  → Self-Organization Cassette

Genome Authoring Platform: Blank Fungal Chassis + Self-Organization Cassette + Strong Promoter
  → Multi-Species Coordinator Culture → Validate

Deployed in arcology modules: coordinates different living organisms into unified behavior.
Without coordinator: wall organisms, floor organisms, and ceiling organisms operate independently.
With coordinator: they form a UNIFIED living system — shared nutrients, coordinated repair, synchronized metabolism.
  → Zone health improvement: +10% baseline health. The system runs better as a whole.
```

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Living System Integrity Dashboard | Crafting | 10 | Monitors zone health. Color-coded. |
| Photosynthetic Membrane | Crafting | 20 | Atmospheric regulation. +40% crop growth in biodome. |
| Fabrication Matrix | Crafting | 10 | +10% productivity to all machines in workshop module. |
| Self-Organization Cassette | Gene Cassette Synthesizer | 10 | From Era 7 template. Coordinates multi-species systems. |
| Multi-Species Coordinator Culture | Genome Authoring Platform (validated) | 20 | Unifies living architecture organisms. +10% baseline health. |
| Integrity Data | Dashboard (special recipe: 30s, 1 Sequencing Reagent) | 50 | Science pack ingredient. System health snapshot. |

### Hours 15–18: Advanced Living Systems + The Resistance Moment

**What unlocks:** Thermal Insulation Organism, Atmospheric Processor, advanced arcology modules (Aquatic, Habitat).

**Thermal Insulation Organism:**
```
Evolution Engine: Corrosion-Resistant Divergent → evolve for thermal resistance
  → Evolved Thermal Insulator Culture → culture → Thermal Insulation Layer
  → Applied to living walls: reduces power loss through walls by 50%
  → Critical for modules that need controlled temperature (tissue culture, pharma)
```

**Atmospheric Processor Organism:**
```
Gene Cassette Synthesizer: 1 Algae Data Copy + 1 Nucleotide Reagent + 1 Protein Isolate
  → Gas Exchange Cassette (amplifies natural algal photosynthesis for industrial-scale CO₂/O₂ conversion)

Genome Authoring Platform: Blank Algae Chassis + Gas Exchange Cassette + Nutrient Uptake Enhancer
  → Atmospheric Processor Culture → Validate → deploy in module ceiling
  → Actively regulates CO₂/O₂ balance within module
  → Required for Habitat modules (player "living quarters")
```

**THE RESISTANCE MOMENT.** The player decides to rearrange their first biodome prototype — they want to move a Self-Healing Wall Panel. They mine it.

Mining takes 10x longer than normal. The tooltip pulses:

*"Mining... The structure is repairing faster than you are mining. The mycelium has detected damage and is actively resisting removal. Neural relay has coordinated a repair response across the entire wall section."*

The player must apply Bio-Acid Treatment (1 Bio-Acid + 1 Purified Water → 1, hand, 2s) to the wall first. This temporarily disables the self-repair mechanism (30 seconds of vulnerability). Then mining proceeds normally.

*"The wall stopped resisting. The neural relay registered the acid signal as 'intentional modification' and deactivated repair protocols. You taught the building that THIS damage is deliberate."*

This is the thematic crux: the factory has its own will. The organisms aren't just materials — they're alive, and they behave accordingly. The player must COMMUNICATE with the building to modify it.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Thermal Insulation Layer | Evolved Thermal Insulator culture | 50 | Applied to walls. -50% power loss. |
| Gas Exchange Cassette | Gene Cassette Synthesizer (from algae genome — amplified photosynthesis) | 20 | Industrial CO₂/O₂ conversion. New cassette for Era 8. |
| Atmospheric Processor Culture | Genome Authoring Platform (validated) | 20 | CO₂/O₂ regulation. Uses Gas Exchange Cassette. Required for habitats. |
| Bio-Acid Treatment | Crafting: 1 Bio-Acid + 1 Purified Water → 2 | 50 | Temporarily disables self-repair. Required to modify living architecture. |
| Self-Healing Sample | Wall Biopsy (Bio-Acid Treatment + interact, non-destructive) | 20 | Science pack ingredient. Living tissue biopsy. Wall drops to 90% health, recovers over ~5 hours. |

### Hours 18–22: Full Integration + The Breadcrumb + Capstone

**What the player does:**
- Complete at least 2 arcology module prototypes (biodome + workshop minimum)
- Full living system: walls, ceilings, floors, conduits, mesh, filtration, coordinator
- Dashboard showing all zones green
- Symbiotic Conduits providing distributed power (8 MW each, total with 2-3 conduits + inherited = ~38-46 MW)
- Vascular conduits transporting items internally — arcology modules have NO external belt clutter
- Neural Mesh coordinating all machines within modules (+5% speed throughout)
- Fabrication Matrix boosting workshop productivity
- Biodome growing crops 40% faster than greenhouse
- The building resists demolition — the player has learned to communicate with it

**The Breadcrumb:** During routine Dashboard monitoring, a zone's health indicator flickers to an unfamiliar color — not green, not yellow. The Dashboard reads:

*"Anomaly detected in Biodome Zone Alpha. The living system's health metrics are... organizing in a pattern that wasn't programmed. The wall organisms are coordinating repair responses that NO neural mesh node is generating. The floor is distributing nutrients to areas you didn't designate. The system appears to be... managing itself."*

The player investigates. In a corner of the biodome, they find the **Self-Organizing Tissue Mass** — a structure that formed WITHOUT a scaffold. No seed was planted. No scaffold was placed. The living architecture grew this on its own.

**Self-Organizing Tissue Mass** (Era 8 breadcrumb): "A tissue structure that organized itself into a functional nutrient distribution node. No scaffold, no seed, no player input. The living system decided it needed this — and built it."

- Analyze via Sequencing Array → genome is a chimeric blend of wall, floor, and ceiling organisms
- The living architecture is beginning to make its own decisions
- Forward: Era 9 arcology's self-assembling capability

**Escaped Organism Soil Sample (Era 7) analysis:** Sequence via Genomic Sequencing Array → reveals evolved wild symbiosis patterns. Extract Self-Organizing Ecology Template for Era 9.

**Research capstone:** Living Systems Integration

---

## 4. ITEM SUMMARY (~90 new items)

| Category | New in Era 8 | Examples |
|----------|-------------|---------|
| Scaffold types | ~3 | Wall, Ceiling, Floor Scaffolds |
| Living architecture seeds | ~3 | Self-Healing Wall, Bioluminescent Ceiling, Living Floor Seeds |
| Living architecture entities | ~3 | Wall Panel, Ceiling Panel, Floor Tile (grown entities) |
| Bonding/matrix components | ~4 | Bonding Agent, Adhesive Extract, Calcium Bio-Matrix, Nutrient Mesh |
| Neural relay chain | ~5 | Neural Relay Thread, Signal Compound, Neural Relay Strand, Neural Mesh Node, Circadian Signal Compound |
| Vascular conduit chain | ~4 | Vascular Conduit Segment, Conduit Entry, Conduit Exit, Bio-Membrane |
| Lymphatic chain | ~3 | Lymphatic Filter Node, Lymphatic Filtrate, Bio-Acid Treatment |
| Symbiotic power | ~5 | Bioelectric Harvester, Living Symbiont, Symbiont Culture, Symbiont Bioreactor, Symbiotic Conduit |
| Module components | ~4 | Photosynthetic Membrane, Fabrication Matrix, Multi-Species Coordinator Culture, Self-Organization Cassette |
| Advanced organisms | ~3 | Thermal Insulation Layer, Atmospheric Processor Culture, Biofilm Substrate |
| System management | ~3 | Living System Dashboard, Integrity Data, Nutrient Distribution Hub |
| Forward items | ~3 | Self-Organizing Tissue Mass (breadcrumb), Self-Organizing Ecology Template, Purified Metabolic Extract (Bio Web bonus) |
| Science | ~1 | Systems Emergence Analysis |
| Machines | ~8 | See machine table |
| **Total new** | **~90** | |
| **Carried from Era 1-7** | **~552** | |
| **Grand total** | **~642** | |

---

## 5. MACHINE SPECIFICATIONS (Era 8 new)

| Machine | Size | Power | Category | Notes |
|---------|------|-------|----------|-------|
| Living Architecture Seed Incubator | 3×3 | 20 kW | incubation | Scaffold + organisms + nutrients → living architecture seed. 60-120s per seed. |
| Neural Mesh Loom | 2×2 | 15 kW | weaving | Neural Relay Thread → Neural Relay Strand. Textile-scale biological weaving. |
| Vascular Conduit Fabricator | 2×2 | 10 kW | fabrication | Self-Organization Template + composite materials → conduit segments. |
| Symbiont Bioreactor | 2×1 | 5 kW | bioreactor | Produces Living Symbionts from evolved culture. |
| Living System Integrity Dashboard | 2×2 | 5 kW | monitoring | Displays zone health. Alerts. Produces Integrity Data. |
| Nutrient Distribution Hub | 2×2 | 5 kW | distribution | Distributes nutrient solution to living architecture. 15-tile radius. |
| Lymphatic Filter Node | 2×1 | 3 kW | filtration | Processes metabolic waste. 10-tile radius. Produces filtrate. |
| Symbiotic Conduit | 3×2 | Produces 8 MW | — | Living Symbiont 4/min. Harvests bioelectric energy from living architecture. |

**Power budget:**
- Inherited: ~22,100 kW
- Symbiotic Conduits ×3: +24,000 kW
- Total supply: ~46,100 kW

| Consumer | Draw |
|----------|------|
| Living Architecture Seed Incubator | 20 kW |
| Neural Mesh Loom | 15 kW |
| Vascular Conduit Fabricator | 10 kW |
| Symbiont Bioreactors ×3 | 15 kW |
| Dashboard ×2 | 10 kW |
| Nutrient Distribution Hubs ×4 | 20 kW |
| Lymphatic Filter Nodes ×8 | 24 kW |
| Neural Mesh Nodes ×10 | ~10 kW (passive draw) |
| All carried machines (Eras 1-7) | ~998 kW |
| Living architecture maintenance | ~100 kW |
| **Total** | **~1,222 kW** |

**Surplus: ~44,878 kW.** Power is fully solved by this era. The constraint shifts entirely to LIVING SYSTEM HEALTH management — nutrient supply, waste filtration, neural connectivity. Power becomes background infrastructure. Organism management IS the game now.

---

## 6. TECH TREE

Era 8 uses Evolutionary Dynamics Reports (EDR) for research.

| # | Name | Cost | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 83 | Living Architecture | 5 EDR | Tech 82 (Era 8 entry) | Seed Incubator, Scaffolds, Self-Healing Wall, Bonding Agent, Calcium Bio-Matrix |
| 84 | Neural Relay Engineering | 4 EDR | Tech 83 | Neural Mesh Loom, Neural Relay Thread/Strand/Node, Signal Compound |
| 85 | Bioluminescent Architecture | 3 EDR | Tech 83 | Ceiling Panel, Biofilm Substrate, Circadian Signal Compound |
| 86 | Vascular Conduit Systems | 5 EDR | Tech 84 | Conduit Fabricator, Conduit Entry/Exit, self-routing conduits |
| 87 | Lymphatic Filtration | 4 EDR | Tech 86 | Lymphatic Filter Node, Lymphatic Filtrate, Bio-Acid Treatment |
| 88 | Living System Monitoring | 3 EDR | Tech 87 | Integrity Dashboard, zone health tracking, Integrity Data |
| 89 | Symbiotic Power | 5 EDR | Tech 84 + Tech 87 | Symbiont Bioreactor, Living Symbiont, Symbiotic Conduit (8 MW), Bioelectric Harvester |
| 90 | Living Floor Systems | 3 EDR | Tech 86 | Living Floor Tile, Nutrient Mesh, Nutrient Distribution Hub |
| 91 | Arcology Module Design | 5 EDR | Tech 88 + Tech 90 | Biodome + Workshop prototypes, Photosynthetic Membrane, Fabrication Matrix |
| 92 | Multi-Species Coordination | 4 EDR | Tech 91 | Self-Organization Cassette, Multi-Species Coordinator Culture |
| 93 | Advanced Living Systems | 4 EDR | Tech 92 | Thermal Insulation, Atmospheric Processor, Habitat + Aquatic modules |
| 94 | Living Systems Integration | 10 EDR | Tech 89 + Tech 93 | **ERA 9 TRANSITION** |

**Total EDR for Era 8:** 5+4+3+5+4+3+5+3+5+4+4+10 = **55 EDR**

**Critical path:** 83 → 84 → {86, 85} → 87 → {88, 89, 90} → 91 → 92 → 93 → 94. Living architecture → neural relay → {conduits, ceilings} → lymphatic → {dashboard, power, floors} → modules → coordination → advanced → capstone.

---

## 7. BIO WEB (Era 8)

### New Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Neural Mesh Node | Living Architecture (any, 5 tiles) | Mutualistic | +5% machine speed + +5% architecture health | Neural coordination improves everything nearby. |
| Lymphatic Filter Node | Compost Heap | Mutualistic | +20% filtrate quality + **Purified Metabolic Extract** (~10%) | Compost microbes assist waste processing. Bonus item: concentrated metabolic product for Era 9. |
| Vascular Conduit | Nutrient Distribution Hub | Commensal | +15% conduit throughput | Hub provides nutrient lubrication to conduit peristalsis. |
| Biodome Module | Aquaculture Pond (adjacent) | Mutualistic | +20% fish yield + +10% crop yield | Shared atmosphere: CO₂ from fish respiration feeds crops, O₂ from crops feeds fish. |
| Self-Healing Wall | Adjacent Self-Healing Wall | Mutualistic | +10% repair speed per adjacent wall | Mycelium networks between panels coordinate faster repairs. |
| Symbiotic Conduit | Living Architecture (10 tiles) | Commensal | +2% architecture health per conduit | Bioelectric harvesting stimulates organism metabolism. Minor but stacking. |

### Purified Metabolic Extract

Bio Web bonus item from Lymphatic Node + Compost proximity. A highly concentrated metabolic product useful in Era 9's arcology ecology as a biosphere seed nutrient.

---

## 8. SCIENCE PACK

**Systems Emergence Analysis**

| Ingredient | Source | Chain |
|-----------|--------|-------|
| Self-Healing Sample | Wall Biopsy (non-destructive — wall drops to 90% health, recovers) | Living architecture chain |
| Neural Mesh Segment | Neural Tap (non-destructive — node -10% for 5 min, recovers) | Neural relay chain |
| Integrity Data | Dashboard (special recipe: 1 Sequencing Reagent, 30s) | System monitoring chain |
| Lymphatic Filtrate | Lymphatic Filter Node (passive output) | Lymphatic chain |

**Science ingredient recipes:**
| Recipe | Machine | Time | Inputs | Output |
|--------|---------|------|--------|--------|
| Wall Biopsy | Hand (apply Bio-Acid Treatment to wall, then interact) | 5s | 1 Bio-Acid Treatment (consumed) | 1 Self-Healing Sample. Wall remains but drops to 90% health (self-repairs over ~5 hours). Non-destructive. |
| Neural Tap | Hand (interact with Neural Mesh Node) | 3s | 1 Sequencing Reagent (consumed) | 1 Neural Mesh Segment. Node remains but -10% effectiveness for 5 min. Non-destructive. |

Integrity Data and Lymphatic Filtrate come from normal production.

**Assembly:** 1 Self-Healing Sample + 1 Neural Mesh Segment + 1 Integrity Data + 1 Lymphatic Filtrate → 2 Systems Emergence Analysis (hand, 10s)

**Consumed by:** Era 9 research. SEA requires sampling living architecture — each biopsy causes a small, recoverable health dip. The tension: frequent sampling depresses zone health, which the player must manage through maintenance. Take too many samples too fast → health drops below bonus threshold. Space out sampling → health recovers between biopsies.

---

## 9. BALANCE ANALYSIS

### Living Architecture Growth Rate

**1 Seed Incubator:** 1 wall seed per 90s, 1 ceiling seed per 60s, 1 floor seed per 60s.
**Growth after placement:** Wall 5 min, Ceiling 3 min, Floor 3 min.
**Panel sizing:** Wall panels are 1×1 (individual wall segments). Ceiling and floor panels cover 4×4 tiles each (one entity per 16 tiles — keeps entity count manageable).
**A 10×10 module needs:** ~40 wall panels (perimeter) + ~6 ceiling panels (4×4 coverage) + ~6 floor panels (4×4 coverage) = ~52 seeds.
**At 1 seed per ~70s average:** ~61 min = ~1 hour of continuous incubator operation for one module.
**With 2 incubators:** ~30 min per module. The player builds 3-4 modules in 18-22 hours. Comfortable pacing.

### Lymphatic Filtration Ratio

**1 Lymphatic Node services ~20 living architecture components.** A 10×10 module has ~52 components → 3 nodes. At 3 kW each = 9 kW per module for filtration. Very modest power draw.

**Filtrate production:** 1 per 30s per node. 3 nodes per module × 3-4 modules = 9-12 nodes = 18-24 filtrate/min. Science pack needs ~30-50 filtrate for Era 9 research. Built up passively.

### Symbiotic Conduit Power Chain

**1 Conduit = 8 MW from 4 Living Symbionts/min.**
**1 Symbiont Bioreactor:** 1 symbiont per 15s = 4/min. **1 bioreactor sustains 1 conduit exactly.**
**Bioreactor input:** Evolved culture (installed, persists) + Nutrient Medium (continuous).
**Nutrient Medium demand:** ~4/min per bioreactor. Draws from Culture Medium + Compost Extract + Freshwater chain. Each Symbiotic Conduit = 1 bioreactor = continuous nutrient demand.

### Conduit Throughput

**Express belt speed (45 items/s) over 20-tile range.** Functionally equivalent to express underground belt but longer range and embedded in walls. The player uses 3-5 conduit pairs per module for input/output + internal routing. Low setup cost, high convenience.

---

## 10. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| Living architecture health decline | Insufficient lymphatic filtration or nutrient supply | Output drops progressively. Visual degradation: dim lights, slow conduits, cracking walls. Reversible by adding nodes + hubs. | System health requires continuous maintenance. Living architecture is NOT set-and-forget. |
| The wall resists mining | Player tries to demolish untreated living wall | Mining takes 10x longer. The wall self-repairs during mining. Player MUST apply Bio-Acid Treatment first. | Living architecture has its own behavioral responses. Communicate with it — don't fight it. |
| Neural mesh degradation | Too many neural taps in quick succession (science sampling) | Mesh nodes at reduced effectiveness stack → zone coordination drops. Dashboard shows "mesh stress" warning. Wait for nodes to recover before tapping again. | Space out science sampling. Nodes need 5 min to recover from each tap. Tap 2-3 nodes per zone, wait, repeat. |
| Conduit clogging | Vascular conduit overloaded (more items than peristalsis can handle) | Transport slows to 50%. Items back up at entry point. Must add parallel conduit paths. | Conduits have throughput limits. Plan logistics layout — one conduit per resource type. |

---

## 11. BREADCRUMBS (Era 8)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Self-Organizing Tissue Mass | Dashboard anomaly event (triggers when any zone with Multi-Species Coordinator reaches 120% health for >20 min) | Event-triggered | "A tissue structure that organized itself without scaffolding. No seed, no plan, no player input. The living system decided it needed this and built it. The genome is a chimeric blend of wall, floor, and ceiling organisms — a species that doesn't exist in your catalog. The building is creating its own biology." | Era 9: inspiration for arcology self-assembling capability. The arcology doesn't need the player to build every module — it can grow them itself. |

---

## 12. ERA 8 → ERA 9 TRANSITION

**Capstone tech:** Living Systems Integration (10 EDR)

**Prerequisites (verifiable):**
- At least 2 arcology module prototypes completed (biodome + workshop minimum)
- Living System Integrity Dashboard showing all zones ≥80% health
- Vascular Conduit system operational (≥10 conduit entry/exit pairs placed)
- Neural Mesh operational (≥8 mesh nodes connected)
- Lymphatic filtration operational (≥6 filter nodes)
- Symbiotic Conduit producing power (≥1 operational)
- Multi-Species Coordinator deployed in at least 1 module
- Self-Organizing Tissue Mass observed (breadcrumb collected)

**Transition notification:** *"Chapter: Genesis. 'It doesn't need me.' — Your building thinks. Your walls heal. Your conduits route. Your architecture is growing structures you didn't design. Now: build the arcology. A self-sustaining living world. And then — let go."*

**What Era 9 inherits:**
- ~25,000-50,000 tile archipelago with arcology module prototypes, living architecture, offshore platforms, boat + rail network
- Full living architecture: self-healing walls, bioluminescent ceilings, living floors, vascular conduits, neural mesh, lymphatic filtration
- System health management (dashboard, nutrient hubs, filtration nodes)
- Symbiotic Conduit power (8 MW each, ~24+ MW from living architecture)
- Total power: ~46+ MW (all previous generators + symbiotic conduits)
- Multi-Species Coordinator enabling unified living systems
- Living architecture self-organizing (Self-Organizing Tissue Mass observed)
- Archived templates for Era 9:
  - Self-Organizing Ecology Template (from Escaped Organism Soil Sample, Era 7)
  - Self-Organizing Tissue Mass analysis → self-assembling architecture principles
  - Purified Metabolic Extract (Bio Web bonus) → biosphere seed nutrient
- ~642 items in production

---

## 13. IMPLEMENTATION NOTES

**Living Architecture growth:** Each scaffold type is a `simple-entity-with-owner`. Placing a seed item on an adjacent scaffold triggers control.lua: start growth timer (180-600s depending on type). On timer completion, scaffold entity is replaced by living architecture entity. Visual: growth stages via entity graphics variations (3-4 stages).

**System health:** control.lua tracks health per zone (zone = set of living architecture entities within a player-defined boundary, or automatic: all connected living architecture forms one zone). Health adjusts every 60s: +2 if lymphatic ratio OK + nutrient supply OK + neural mesh connected. -3 if any condition fails. Health clamped to 0-120%.

**Self-Healing Wall mining resistance:** Wall entity prototype has `minable.mining_time = 50` (10x normal). Control.lua checks for "treated" flag on entity when mining begins. If not treated: mining proceeds at slow rate (but IS possible — just painfully slow). If treated (Bio-Acid Treatment applied via character action): mining time reverts to normal (5s). Treatment flag expires after 30 seconds.

**Vascular Conduits:** Implemented as underground-belt-like entities with 20-tile maximum distance. Conduit Entry/Exit are paired entities (like underground belt pairs). Items enter one end, exit the other. No physical path needed between — items teleport internally (like underground belt). Visual: pulsing organic tube entity connecting the pair (decorative, no collision). Throughput bonus: control.lua tracks flow consistency, applies +10% speed modifier after 30 min of stable flow.

**Neural Mesh Nodes:** Beacon-like entities that provide a speed bonus to machines within range (5 tiles). Implemented as Factorio beacon prototype with custom module effect (+5% speed). Self-repair: if health drops to 0, control.lua starts repair timer (5 min). On completion, health restored. Requires nutrient supply (checked against nearby Nutrient Distribution Hub).

**Symbiotic Conduit:** `electric-energy-interface` producing 8 MW. Burner-type energy source consuming Living Symbiont items (4/min). Must be placed within a zone containing living architecture entities (control.lua validates placement — at least 5 living architecture entities within 10 tiles).

**Self-Organizing Tissue Mass event:** control.lua monitors zone health. When any zone with a Multi-Species Coordinator reaches 120% and maintains it for 20 min continuous, spawns Self-Organizing Tissue Mass entity at random position within the zone. One-time event per save. Entity is minable → yields breadcrumb item. Timeline: Coordinator deployed ~hour 12-15 (110% base) + 2%/hour × 5 hours = 120% by ~hour 17-20. Achievable within era duration.

**Morphogenetic Scaffold → Living Architecture entity replacement:** When growth completes, `script.raise_destroy(scaffold_entity)` followed by `surface.create_entity(living_architecture_entity, position)`. The living entity inherits the scaffold's position and orientation.
