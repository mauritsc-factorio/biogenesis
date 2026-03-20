---

# BIOGENESIS: SIGNATURE MECHANIC SPECIFICATION

## Biological Web + Organism Drift

**Version:** 1.0 — Reference Specification
**Date:** 2026-03-20
**Status:** Design Complete — Pending Era-Specific Integration

---

## PART 1: THE BIOLOGICAL WEB

### 1.1 Core Concept

Every biological entity placed in the world emits a **biological influence field**. When two or more fields overlap, a **relationship** forms between those entities. The aggregate of all active relationships constitutes the Biological Web: a dynamic, spatial graph that governs the productivity, stability, and evolution of every living component in the player's factory.

The Web is not a UI feature bolted on top of production. It **is** the production system. An organism's output is a function of what surrounds it.

### 1.2 Influence Radius

Each biological entity has an **influence radius** measured in tiles. The radius varies by entity class, not by individual organism, keeping the system predictable at placement time.

| Entity Class | Radius (tiles) | Examples |
|---|---|---|
| Soil Amendment | 6 | Compost bin, worm farm, mulch pile [CORRECTED from 4, see amendments] |
| Crop Plot | 6 | Grain field, tuber bed, algae pond |
| Livestock Pen | 8 | Grazer paddock, insect hive, fish tank |
| Microbial Culture | 5 | Fermenter, bioreactor, culture vat |
| Fungal Colony | 7 | Mycelium bed, mushroom cave, fungal mat |
| Processing Organism | 5 | Bio-assembler, enzymatic processor |
| Synthetic Organism | 6-10 (configurable) | Xenocrop, chimera, designed species |
| Macro Structure | 12 | Living wall, neural mesh node, arcology organ |

**Influence is circular**, measured from the geometric center of the entity's collision box to the geometric center of every other biological entity. If the center-to-center distance is less than or equal to the smaller of the two entities' radii, a relationship exists.

**Design rationale for using the smaller radius:** This prevents a large-radius entity from forcing relationships on distant small entities that "don't reach back." Both entities must be within mutual range. This is a deliberate constraint that rewards tight, intentional placement over sprawl.

### 1.3 Relationship Types

Five fundamental relationship types. Every pair of overlapping biological entities has exactly one relationship type at any given moment.

| Type | Effect on Entity A | Effect on Entity B | Symbol | Color Code |
|---|---|---|---|---|
| **Mutualistic** | Positive | Positive | ++ | Bright Green |
| **Commensal** | Positive | Neutral | +0 | Pale Green |
| **Parasitic** | Positive | Negative | +- | Orange |
| **Competitive** | Negative | Negative | -- | Red |
| **Neutral** | None | None | 00 | Grey (hidden by default) |

### 1.4 Relationship Determination: The Two-Layer System

Relationships are resolved through two layers, checked in order.

**Layer 1 — Species Lookup Table (static baseline)**

A global table defines default relationships between species pairs. This table is authored at mod design time and is the foundation of the system.

```
-- Pseudocode structure
BioWeb.species_relationships = {
    ["grain-wheat"] = {
        ["legume-clover"] = { type = "mutualistic", a_bonus = 0.15, b_bonus = 0.10 },
        ["grain-wheat"]  = { type = "competitive", a_bonus = -0.10, b_bonus = -0.10 },
        ["compost-bin"]  = { type = "commensal",   a_bonus = 0.10, b_bonus = 0.00 },
    },
}
```

Any pair not in the table defaults to **Neutral**.

**Layer 2 — Trait Compatibility Modifier (dynamic overlay)**

Every organism instance carries a set of **biological traits** (see Section 2: Organism Drift). When two organisms form a relationship, the trait system can modify the base relationship:

- **Complementary traits** push toward mutualistic (e.g., one produces nitrogen, the other consumes it).
- **Competing traits** push toward competitive (e.g., both demand the same trace mineral).
- **Drift-altered traits** can shift a formerly neutral pair into a positive or negative relationship.

The trait modifier adjusts the bonus/penalty magnitudes by up to +/-50% of the base value, and can shift relationship type by one step on the spectrum (Mutualistic <-> Commensal <-> Neutral <-> Parasitic/Competitive) if the modifier exceeds a threshold of 0.08 (absolute value).

**Relationship spectrum for type-shifting:**

```
Mutualistic <---> Commensal <---> Neutral <---> Parasitic <---> Competitive
     ++              +0              00             +-              --
```

A mutualistic pair where one organism drifts into incompatible traits can degrade to commensal. A commensal pair where one organism adapts can improve to mutualistic. Type shifts cascade: if Entity A's relationship with Entity B changes, and Entity B's output changes as a result, Entity B's relationships with Entities C, D, E are affected at the next web update.

### 1.5 Bonus/Penalty Application

Adjacency effects are applied as **multipliers** on four output parameters:

| Parameter | Affected Stat | Implementation |
|---|---|---|
| **Yield** | Quantity of primary output per craft | Recipe output count modifier |
| **Speed** | Crafting speed of the entity | Crafting speed modifier on the machine |
| **Efficiency** | Input resource consumption rate | Recipe input count modifier (inverse) |
| **Stability** | Drift rate of the organism (see Part 2) | Drift interval modifier |

Each entity accumulates bonuses from **all** active relationships. The formula:

```
effective_multiplier = 1.0 + sum(all_relationship_bonuses) * diminishing_factor
```

**Diminishing returns:** The `diminishing_factor` prevents infinite stacking.

```
diminishing_factor = 1.0 / (1.0 + 0.1 * max(0, relationship_count - 3))
```

This means:
- 1-3 relationships: full bonus (factor = 1.0)
- 4 relationships: factor = 0.91
- 6 relationships: factor = 0.77
- 10 relationships: factor = 0.59
- 20 relationships: factor = 0.37

This curve rewards having 3-6 well-chosen relationships. Past that, each additional relationship contributes less. The player is steered toward quality of connections over quantity.

**Hard caps:**
- Maximum positive multiplier: 2.5x (150% bonus)
- Maximum negative multiplier: 0.25x (75% penalty)
- An entity cannot be reduced below 25% of its base output by web effects alone.

### 1.6 Specific Relationship Catalogue (20 Relationships)

These are the designed, authored relationships that form the species lookup table backbone. Each is available from the era indicated onward.

**Era 1-2: Foundation Relationships**

1. **Compost Bin + Any Crop** — Commensal (+0)
   - Crop: +10% yield, +5% speed
   - Compost: no change
   - *The first relationship the player encounters.*

2. **Legume Crop + Grain Crop** — Mutualistic (++)
   - Legume: +5% yield (improved soil from grain root structure)
   - Grain: +15% yield (nitrogen fixation from legume)
   - *Classic companion planting. Teaches adjacency matters.*

3. **Worm Farm + Crop Plot** — Commensal (+0)
   - Crop: +8% yield, +5% efficiency
   - Worm Farm: no change
   - *Soil enrichment through vermicomposting.*

4. **Same Crop + Same Crop** — Competitive (--)
   - Both: -10% yield, -5% speed
   - *Monoculture penalty. Forces mixed planting layouts early.*

5. **Flowering Crop + Beehive** — Mutualistic (++)
   - Crop: +25% yield (pollination)
   - Beehive: +15% honey output
   - *High-value synergy. Player must grow flowers to get good honey.*

6. **Irrigation Channel + Any Crop** — Commensal (+0)
   - Crop: +12% speed
   - Irrigation: no change
   - *Water access accelerates growth.*

**Era 3: Microbial Relationships**

7. **Fermenter (Lactobacillus) + Fermenter (Yeast)** — Competitive (--)
   - Both: -20% output
   - *First "why is this broken?" moment. Cultures contaminate each other.*

8. **Fermenter (Lactobacillus) + Dairy Livestock** — Mutualistic (++)
   - Fermenter: +20% output (fresh substrate)
   - Livestock: +10% yield (probiotic feedback)
   - *Dairy + fermentation is a designed synergy loop.*

9. **Grazer Livestock + Grass/Pasture Crop** — Mutualistic (++)
   - Livestock: +15% yield, +10% speed
   - Pasture: +5% yield (fertilization from grazing)
   - *Pastoral loop. Animals need pasture.*

10. **Mycelium Bed + Decomposing Organic Source** — Commensal (+0)
    - Mycelium: +20% yield
    - Organic source: no change
    - *Fungi thrive on waste streams.*

11. **Compost Bin + Fermenter** — Parasitic (+-)
    - Compost: +5% speed (heat from fermentation)
    - Fermenter: -10% output (contamination from compost spores)
    - *Teaches that proximity isn't always good.*

**Era 4-5: Genetic and Molecular Relationships**

12. **Breeding Pair (same species, compatible traits)** — Mutualistic (++)
    - Both: +10% offspring quality
    - *Genetic diversity bonus. Two organisms with different trait profiles near each other produce better offspring.*

13. **Gene Sequencer + Any Organism** — Commensal (+0)
    - Organism: -5% drift rate (monitoring stabilizes)
    - Sequencer: no change (produces data regardless)
    - *Observation affects the observed. Monitoring reduces drift.*

14. **Enzymatic Processor + Compatible Substrate Organism** — Mutualistic (++)
    - Processor: +25% speed
    - Substrate Organism: -5% yield (harvested for enzymes)
    - *Actually parasitic in implementation (+/-), but classified as designed industrial symbiosis.*
    - *Correction: this is Parasitic (+/-). Processor gains, organism loses.*

15. **CRISPR Lab + Target Organism** — Parasitic (+-)
    - Lab: +15% success rate on modifications
    - Organism: -10% stability (increased drift vulnerability during editing)
    - *Proximity to the lab makes editing easier but the organism less stable.*

**Era 6-7: Synthetic and Directed Relationships**

16. **Xenocrop A + Xenocrop B (designed pair)** — Mutualistic (++)
    - Both: +30% yield when paired as designed
    - *The first fully authored symbiosis. Player designs both organisms to complement each other.*

17. **Algae Pond + Bioreactor (CO2 exchange)** — Mutualistic (++)
    - Algae: +20% growth (CO2 feed from bioreactor off-gas)
    - Bioreactor: +15% efficiency (O2 feed from algae)
    - *Gas exchange loop. Industrial ecology.*

18. **Directed Evolution Chamber + Adjacent Organism** — Commensal (+0)
    - Organism: +200% drift rate (massively accelerated mutation)
    - Chamber: no change
    - *Deliberate acceleration of drift for exploration.*

**Era 8-9: Living System Relationships**

19. **Neural Mesh Node + Any Biological Entity within range** — Mutualistic (++)
    - Entity: +10% all stats, -50% drift rate
    - Neural Mesh: +5% processing per connected entity
    - *The mesh stabilizes and optimizes everything it connects to.*

20. **Arcology Organ + Arcology Organ (matched set)** — Mutualistic (++)
    - Both: +20% yield, +15% efficiency
    - *If any organ in the set is missing or degraded, remaining organs get -30% penalty (competitive with the gap).*
    - *The Arcology IS the web. Every component depends on every other.*

### 1.7 Visualization System

**Visibility Tiers (unlocked progressively):**

| Era | Visibility Level | What the Player Sees |
|---|---|---|
| 1-2 | **Hidden** | Nothing. Effects are felt, not seen. Tooltips say "This crop seems to grow well here." Vague flavor text only. |
| 3 | **Hints** | Small icons on entities when hovered: a green up-arrow (something nearby helps), red down-arrow (something nearby hurts). No details. |
| 4 | **Ecology Analyzer** (unlocked via research) | New tool. When equipped and entity is clicked: shows list of all active relationships with names, types, and magnitude. Text-based, in a custom GUI panel. |
| 5 | **Web Overlay Toggle** (hotkey: Alt+B) | LuaRendering lines drawn between all related entities. Green = positive, red = negative. Line thickness proportional to magnitude. Can be filtered by relationship type. |
| 6 | **Predictive Overlay** | Before placing an entity, ghost-placement shows projected relationships. "If you place this here, it will form 3 mutualistic and 1 competitive relationship." |
| 7 | **Drift Forecast** | Web overlay shows arrows indicating predicted drift direction based on current relationships. "This organism is trending toward higher yield but lower stability." |
| 8 | **System Dashboard** | Map-level view showing the entire web as a graph. Nodes = entities, edges = relationships. Colored by health. Bottlenecks and vulnerabilities highlighted. |
| 9 | **Arcology Designer** | Blueprint-style tool for designing web layouts from scratch. Drag-and-drop organisms, see projected relationships, simulate drift over time before committing. |

**Rendering Details (LuaRendering):**

- Lines are drawn between entity centers using `rendering.draw_line`.
- Color: RGBA based on relationship type. Alpha scales with magnitude (stronger = more opaque).
- Lines only render when the overlay is active (toggled by hotkey).
- Lines are grouped by chunk and only rendered for visible chunks plus one chunk border.
- Maximum rendered lines: 500 on screen at once. Beyond that, only the strongest relationships render (sorted by absolute magnitude, top 500 drawn).
- Lines update when the web recalculates, not per-frame. They are static between recalculations.

**Entity Indicators:**

- Small colored ring around entity sprite (drawn via `rendering.draw_circle`):
  - Green ring: net positive web effect
  - Red ring: net negative web effect
  - Yellow ring: entity is actively drifting (pulsing animation via periodic alpha change)
  - No ring: neutral or overlay disabled
- Ring visibility toggled with the same hotkey as the web overlay.

---

## PART 2: ORGANISM DRIFT

### 2.1 Core Concept

Every biological entity in the world carries a **genome**: a set of numerical trait values. Over time, these values change. The change is not random noise; it is biased by the organism's environment — specifically, by its position in the Biological Web. Drift is the evolutionary pressure that prevents the factory from being a static solved puzzle. The player must continually observe, adapt, and respond to a living system.

### 2.2 What Organisms Have: The Trait Model

Each biological entity instance stores a trait vector. The traits are:

| Trait | Description | Base Range | Unit |
|---|---|---|---|
| `yield_mod` | Output quantity modifier | 0.50 — 1.50 | Multiplier on recipe output |
| `speed_mod` | Crafting speed modifier | 0.50 — 1.50 | Multiplier on crafting speed |
| `efficiency_mod` | Input consumption modifier | 0.60 — 1.40 | Multiplier on recipe inputs (lower = better) |
| `resilience` | Resistance to negative web effects | 0.0 — 1.0 | Scales down penalties |
| `volatility` | Base drift rate | 0.1 — 2.0 | Multiplier on drift speed |
| `compatibility_bias` | Tendency to drift toward symbiosis | -1.0 — 1.0 | Negative = drifts toward competitive |
| `specialty_1` | Species-specific trait (e.g., nitrogen fixation rate) | varies | Species-dependent |
| `specialty_2` | Species-specific trait (e.g., heat tolerance) | varies | Species-dependent |

When an organism is first placed, all traits are initialized to the **species default** plus a small random offset (uniform, +/-3%). This means two wheat plots placed at the same time are similar but not identical from the start.

### 2.3 Drift Triggers and Timing

Drift is **time-based with crafting acceleration**. An organism drifts whether or not it is producing, but active production accelerates drift (metabolic activity drives mutation).

**Base drift interval:** Every organism has a `drift_interval` measured in real-time seconds:

```
drift_interval = base_interval / (volatility * era_scaling * web_stability_modifier)
```

Where:
- `base_interval` = 300 seconds (5 minutes real time) — global constant
- `volatility` = organism's volatility trait (0.1 to 2.0)
- `era_scaling` = scales drift to be meaningful at each era's timescale (see table below)
- `web_stability_modifier` = derived from web relationships (see 2.7)

| Era | era_scaling | Effective Base Interval (volatility=1.0, neutral web) | Design Intent |
|---|---|---|---|
| 1 | 0.3 | ~16.7 min | Very slow. Player barely notices. |
| 2 | 0.5 | 10 min | Slow. Occasional surprise. |
| 3 | 0.7 | ~7.1 min | Noticeable. Player starts seeing drift. |
| 4 | 1.0 | 5 min | Standard rate. Player has tools to respond. |
| 5 | 1.2 | ~4.2 min | Faster. Drift is a constant consideration. |
| 6 | 1.0 | 5 min | Slows slightly (player has stabilization tools). |
| 7 | 1.5 | ~3.3 min | Fast. Directed evolution era. Drift is a resource. |
| 8 | 1.0 | 5 min | Standard. Systems are stabilized by neural mesh. |
| 9 | 0.5 | 10 min | Slow again. Arcology organisms are engineered for stability. |

**Crafting acceleration:** If the organism's entity completed a crafting cycle since the last drift check, the drift interval for that check is halved. Two or more cycles: quartered. Cap at 4x acceleration.

### 2.4 Drift Magnitude: The Tier System

When a drift event fires, its magnitude is determined by a weighted random draw:

| Tier | Probability | Trait Change | Additional Effects |
|---|---|---|---|
| **Minor** | 70% | One random trait shifts by +/-0.01 to 0.05 | None |
| **Moderate** | 22% | One random trait shifts by +/-0.05 to 0.15 | 10% chance: a second trait also shifts (minor) |
| **Major** | 7% | One random trait shifts by +/-0.15 to 0.30 | 30% chance: gains or loses a compatibility tag |
| **Mutation** | 1% | One trait jumps to a random value within its full range | Species-specific special event (see 2.5) |

**Drift direction is NOT uniformly random.** It is biased:

1. **Web bias:** If the organism has net positive relationships, drift on `yield_mod`, `speed_mod`, and `compatibility_bias` is biased positive (60/40 split toward improvement). Net negative relationships bias drift toward degradation (60/40 toward worsening).

2. **Environmental bias:** Organisms drift toward traits that make them better suited to their current relationships. An organism adjacent to a nitrogen-hungry partner will tend to drift toward higher nitrogen fixation (if it has that specialty trait). Implemented as: for each positive relationship partner, there is a 15% chance per drift event that the drift specifically targets the trait most relevant to that relationship, shifting it in the beneficial direction.

3. **Reversion bias:** A weak pull (5% magnitude reduction) toward species defaults. Prevents extreme runaway drift over very long periods. An organism at 1.45 yield_mod has a slight tendency to drift back toward 1.0. This bias is removed by the "Lock" action (Era 6+).

### 2.5 Mutation Events (1% Tier)

When the rare mutation tier triggers, one of the following species-appropriate events occurs (equal probability within applicable set):

**For Crops:**
- **Yield Spike:** yield_mod jumps to 1.3-1.5. But efficiency_mod worsens to 1.2-1.4. High output, high input.
- **Hardy Variant:** resilience jumps to 0.8-1.0. All other traits drift toward species default. A stable but unexceptional organism.
- **Flavor Shift:** Primary output item changes to a variant item (e.g., "wheat" becomes "aromatic wheat"). Different recipe uses. Same entity.
- **Bolting:** speed_mod jumps to 1.4-1.5 but yield_mod drops to 0.6-0.7. Fast but unproductive. Useful as pollination source.

**For Microbial Cultures:**
- **Contamination Resistance:** Competitive relationship penalties from nearby cultures reduced by 50%. But speed_mod drops 15%.
- **Metabolic Shift:** Input requirements change. May now accept a different or additional feedstock. Output composition shifts.
- **Sporulation:** Organism "freezes" for 2 drift intervals (no production, no drift), then resumes with all traits boosted by 10%.

**For Livestock:**
- **Behavioral Shift:** Influence radius increases or decreases by 2 tiles. Changes which entities it relates to.
- **Dietary Adaptation:** Input recipe changes (may accept a cheaper or different feed). Output unchanged.

**For Synthetic Organisms (Era 6+):**
- **Chimeric Expression:** Gains a compatibility tag from a different species. Forms new unexpected relationships.
- **Cascade Failure:** All traits drop by 20%. Recovers 5% per drift interval. Temporary crisis.

### 2.6 Player Response Options

| Action | Available From | Cost | Effect |
|---|---|---|---|
| **Ignore** | Always | None | Drift continues. Outcome uncertain. |
| **Re-inoculate** | Era 2 (Specimen Archive research) | Specimen sample + growth medium | Resets all traits to species default +/-3%. Destroys current trait values. Entity continues producing during reset (1 crafting cycle downtime). |
| **Stabilize** | Era 4 (Genetic Stabilization research) | Stabilizer compound (crafted, ongoing consumption) | Reduces drift rate by 60% while stabilizer is supplied. Applied per-entity via inserter (consumed periodically). |
| **Encourage** | Era 5 (Mutagenesis research) | Mutagen compound (crafted, ongoing) | Increases drift rate by 200%. Increases Mutation tier probability from 1% to 5%. |
| **Direct** | Era 5-7 (CRISPR / Directed Evolution research) | Lab time + gene template | Choose which trait drifts and in which direction for the next 3 drift events. Does not guarantee magnitude. |
| **Lock** | Era 6 (Genomic Locking research) | Lock compound (expensive, one-time) + 30 seconds of processing | Permanently freezes all traits. No further drift. No environmental bias. Removes reversion bias. Organism becomes static. Irreversible without re-inoculation. |
| **Clone** | Era 5 (Cloning research) | Clone medium + growth time | Creates a new entity with identical traits to the source. New entity then drifts independently. |
| **Export Genome** | Era 5 | Gene sequencer + data card | Saves current trait vector to an item. Can be applied to any organism of the same species via re-inoculation to set it to those exact traits. |

### 2.7 Drift-Web Interaction: The Feedback Loop

This is the heart of the emergent system. Drift and the Web are coupled through three feedback channels:

**Channel 1: Web Modifies Drift Rate**

The `web_stability_modifier` in the drift interval formula:

```
web_stability_modifier = 1.0 + (net_negative_bonus * 0.5) - (net_positive_bonus * 0.3)
```

Where `net_positive_bonus` is the sum of all positive relationship magnitudes and `net_negative_bonus` is the sum of all negative relationship magnitudes (as a positive number).

- Organism with strong positive relationships: stability_modifier < 1.0, drift interval increases (slower drift). Symbiosis stabilizes.
- Organism with strong negative relationships: stability_modifier > 1.0, drift interval decreases (faster drift). Stress accelerates mutation.
- Net neutral: stability_modifier = 1.0, standard drift rate.

**Channel 2: Web Biases Drift Direction**

As described in 2.4, positive relationships bias drift toward beneficial traits, and negative relationships bias toward degradation. Specifically:

- For each mutualistic partner: 15% chance per drift event that the drift targets the shared beneficial trait and pushes it in the positive direction.
- For each competitive/parasitic partner: 10% chance per drift event that the drift targets a defensive trait (resilience, efficiency_mod) and pushes it positively — the organism adapts to survive.
- Over many drift events, organisms in positive webs tend to get better at being in that web. Organisms in negative webs tend to either adapt defensively or degrade.

**Channel 3: Drift Modifies the Web**

When drift changes an organism's traits, the Layer 2 trait compatibility calculation changes. This can:

1. **Strengthen existing relationships:** A crop that drifts toward higher nitrogen fixation becomes more beneficial to its grain neighbor. The bonus increases at next web recalculation.
2. **Weaken existing relationships:** An organism that drifts away from its partner's needs provides less benefit.
3. **Shift relationship type:** If drift pushes the trait modifier past the 0.08 threshold, the relationship type shifts one step on the spectrum. A commensal pair can become mutualistic. A neutral pair can become commensal or parasitic.
4. **Cascade:** If Entity A's drift changes its relationship with Entity B, and Entity B's output changes as a result, Entity B's stability changes, which changes Entity B's drift rate, which changes Entity B's future traits, which changes Entity B's relationships with Entities C and D. The cascade propagates at the speed of web recalculation (not instantly).

**Emergent Outcomes:**

- **Stable Equilibria:** A well-designed mutualistic cluster tends toward stability. Positive relationships slow drift; drift bias reinforces the relationships. The cluster self-optimizes and settles into a high-performance steady state. This rewards thoughtful initial placement.

- **Unstable Spirals:** A poorly designed cluster with negative relationships accelerates drift; drift bias degrades performance; worse performance leads to more stress. The cluster spirals downward until the player intervenes or organisms drift into new (possibly unexpected) relationships.

- **Spontaneous Symbiosis:** Two neutral organisms placed near each other can, through random drift, develop complementary traits and shift into a commensal or mutualistic relationship. The player didn't design it. The ecosystem invented it.

- **Ecosystem Collapse Events:** A mutation event in a keystone organism (one with many relationships) can cascade through the web. If a central mutualistic hub degrades, all its partners lose bonuses, drift faster, and may degrade themselves. This creates dramatic "oh no, fix it" moments.

---

## PART 3: IMPLEMENTATION SPECIFICATION (FACTORIO-SPECIFIC)

### 3.1 Data Storage

**Primary data store: `global.bioweb`** — a Lua table in the mod's global state, persisted across save/load.

```lua
global.bioweb = {
    organisms = {}, -- keyed by entity.unit_number
    web_edges = {}, -- keyed by "unitA_unitB" (lower number first)
    chunk_index = {}, -- spatial index: chunk_key -> set of unit_numbers
    drift_queue = {}, -- ordered list of {unit_number, next_drift_tick}
    render_objects = {}, -- active LuaRendering object IDs for cleanup
    stats = {}, -- per-surface aggregate statistics
}

-- Per-organism record:
global.bioweb.organisms[unit_number] = {
    entity = entity,        -- LuaEntity reference
    species = "grain-wheat", -- species key for lookup table
    surface_index = 1,
    position = {x, y},      -- cached for spatial queries
    chunk_key = "3_-7",      -- cached for spatial index
    traits = {
        yield_mod = 1.03,
        speed_mod = 0.98,
        efficiency_mod = 1.01,
        resilience = 0.45,
        volatility = 1.1,
        compatibility_bias = 0.15,
        specialty_1 = 0.7,
        specialty_2 = 0.3,
    },
    trait_defaults = { ... }, -- species defaults, stored at creation for reversion bias
    relationships = {},       -- list of partner unit_numbers
    net_bonus = 0.0,          -- cached net web effect
    drift_interval = 18000,   -- ticks until next drift (recalculated)
    last_drift_tick = 0,
    locked = false,
    stabilized = false,
    encouraged = false,
    directed = nil,           -- {trait = "yield_mod", direction = 1, events_remaining = 3}
    crafts_since_last_drift = 0,
}
```

### 3.2 Spatial Indexing

Entities are indexed by chunk coordinate for efficient neighbor queries.

```lua
-- chunk_key = math.floor(x/32) .. "_" .. math.floor(y/32)
-- When querying neighbors for an entity at position (x, y) with max_radius R:
-- Check chunks within ceil(R/32) chunks in each direction
-- For max radius 12 tiles, that's always the home chunk + 8 adjacent chunks (1 chunk border)
-- Within candidate chunks, filter by actual Euclidean distance
```

This avoids iterating all organisms. For a base with 500 organisms, a neighbor query touches at most 30-50 organisms (those in the 9 nearby chunks), not all 500.

### 3.3 Event Handling

**Entity Creation:**

```lua
-- Events: on_built_entity, on_robot_built_entity, script_raised_built
-- Filter: only for entity prototypes registered as biological
-- Action:
--   1. Create organism record in global.bioweb.organisms
--   2. Add to chunk_index
--   3. Queue initial web recalculation for this entity + neighbors
--   4. Insert into drift_queue with initial drift time
```

**Entity Removal:**

```lua
-- Events: on_player_mined_entity, on_robot_mined_entity, on_entity_died, script_raised_destroy
-- Action:
--   1. Remove from chunk_index
--   2. Remove all web_edges involving this entity
--   3. Queue web recalculation for former neighbors
--   4. Remove from drift_queue
--   5. Clean up render objects
--   6. Remove organism record
```

**Crafting Cycle Completion:**

```lua
-- Event: on_entity_crafting_completed (custom detection via polling, see 3.4)
-- Action:
--   1. Increment crafts_since_last_drift for the entity
--   2. Apply current yield_mod and efficiency_mod to output (via script)
```

### 3.4 Tick Management: The Processing Budget

**Principle:** Never process all organisms in one tick. Spread work across ticks using a round-robin scheduler.

**Three scheduled tasks, each with its own cadence:**

**Task 1: Web Recalculation**
- **Frequency:** Processes 1 organism per tick from a recalculation queue.
- **Trigger:** An organism is added to the recalc queue when: (a) it is placed or removed, (b) its traits change due to drift, (c) a neighbor's traits change.
- **Work per tick:** For the dequeued organism, find all neighbors within radius (spatial index query), compute relationships (species table lookup + trait modifier), update web_edges, compute net_bonus, apply crafting speed modifier to entity.
- **Budget:** ~0.3ms per tick at most. Spatial query on 9 chunks + relationship computation for 6-8 neighbors is well within this.
- **If queue is empty:** No work this tick. Cost = 0.

**Task 2: Drift Processing**
- **Frequency:** Processes organisms from drift_queue when their scheduled tick arrives.
- **Implementation:** drift_queue is a min-heap sorted by next_drift_tick. Each tick, pop all organisms whose next_drift_tick <= current tick (typically 0-3 organisms per tick).
- **Work per organism:** Generate drift tier (weighted random), compute drift magnitude and direction (biases), update trait, schedule web recalc if trait changed significantly (delta > 0.02), compute next drift_interval, re-insert into heap.
- **Budget:** ~0.1ms per organism. At peak (Era 7, 200 organisms, 3.3-minute average interval), roughly 1 organism per tick. Well within budget.

**Task 3: Crafting Monitoring**
- **Frequency:** Every 60 ticks (1 second), check a batch of 10 organisms for crafting progress changes.
- **Implementation:** Round-robin through all organisms. For each checked organism, compare entity.products_finished to last recorded value. If increased, increment crafts_since_last_drift.
- **Budget:** 10 entity lookups per second = negligible.

**Total per-tick budget:** Under 0.5ms in typical operation. Spikes to ~1ms when many entities are placed/removed simultaneously (e.g., blueprint paste). This is acceptable for a modded Factorio experience.

### 3.5 Applying Bonuses to Entities

**Crafting Speed:**

```lua
-- Factorio's LuaEntity supports .crafting_speed for assembling machines.
-- However, direct modification is limited. Instead, use a crafting speed modifier
-- applied through a hidden beacon-like effect or by modifying the entity's
-- speed_modifier through force bonuses scoped to the entity.

-- Recommended approach: Use entity.speed_bonus (a writable property on CraftingMachineEntity)
-- This stacks with other speed bonuses but is set per-entity.
-- On web recalc:
entity.speed_bonus = calculate_web_speed_bonus(organism)
```

**Yield Modification:**

```lua
-- Factorio 2.0 supports quality and productivity bonuses per-entity.
-- Use entity.productivity_bonus for yield modification.
-- This directly multiplies output quantity.
entity.productivity_bonus = organism.traits.yield_mod * web_yield_multiplier - 1.0
-- (productivity_bonus is additive: 0.0 = no bonus, 0.5 = 50% more output)
```

**Efficiency (Input Consumption):**

```lua
-- No direct per-entity input modifier in vanilla Factorio.
-- Implement via recipe swapping: create variant recipes with different input counts.
-- E.g., "wheat-farming" recipe normally takes 10 water + 5 soil.
-- "wheat-farming-efficient" variant takes 8 water + 4 soil.
-- Swap the entity's recipe when efficiency crosses thresholds.
-- Thresholds: 0.60-0.79 (very efficient), 0.80-0.94 (efficient), 0.95-1.05 (normal),
--             1.06-1.20 (inefficient), 1.21-1.40 (very inefficient)
-- 5 recipe variants per base recipe. This is a data-stage concern (prototype definitions).
```

### 3.6 Rendering the Web Overlay

```lua
-- Toggle handler:
script.on_event("biogenesis-toggle-web", function(event)
    local player = game.get_player(event.player_index)
    global.bioweb.overlay_active[event.player_index] =
        not global.bioweb.overlay_active[event.player_index]
    if global.bioweb.overlay_active[event.player_index] then
        render_web_for_player(player)
    else
        clear_web_render_for_player(player)
    end
end)

function render_web_for_player(player)
    -- Get all web_edges on the player's current surface
    -- For each edge within the player's viewport (+ 1 chunk margin):
    --   Draw line from entity A center to entity B center
    --   Color based on relationship type
    --   Width based on magnitude (1 to 3 pixels)
    --   Alpha based on magnitude (0.3 to 0.9)
    -- Store render IDs for cleanup
    -- Limit: 500 lines max. Sort by magnitude descending, draw top 500.
end

-- Re-render when player moves to new chunk area:
script.on_event(defines.events.on_player_changed_position, function(event)
    -- Only act if player crossed a chunk boundary
    -- Clear old renders, draw new ones for current viewport
end)
```

### 3.7 Performance Scaling

| Tracked Organisms | Web Edges (est.) | Drift Events/sec | Recalc Queue/sec | Estimated UPS Impact |
|---|---|---|---|---|
| 50 | 75 | 0.2 | 0.5 | Undetectable |
| 200 | 400 | 1.0 | 3.0 | < 0.5 UPS |
| 500 | 1,200 | 2.5 | 8.0 | ~1 UPS |
| 1,000 | 3,000 | 5.0 | 18.0 | ~2-3 UPS (acceptable) |
| 2,000 | 7,000 | 10.0 | 40.0 | ~5 UPS (concerning) |
| 5,000+ | 20,000+ | 25.0 | 100+ | Degraded. Cap needed. |

**Recommended hard cap:** 2,000 tracked biological entities per surface. Entities beyond this limit are placed but do not participate in the web or drift (they function as vanilla assembling machines). A warning is shown to the player at 1,500 entities.

**Optimization strategies if approaching cap:**
- Entities that have been locked (no drift, stable relationships) can be "frozen" — removed from active processing and only reconsidered if a neighbor changes.
- Distant organisms with no relationships can be put in a dormant list checked less frequently.
- Chunk-based LOD: organisms more than 5 chunks from any player are processed at 1/4 rate.

### 3.8 Save/Load Compatibility

- All organism data is in `global.bioweb`, which Factorio serializes automatically.
- Entity references (`organism.entity`) are LuaEntity objects that Factorio handles across save/load.
- On load, validate all entity references (some may have been destroyed by other mods or engine changes). Remove invalid entries.
- Render objects are NOT persisted. Re-render on load for any player with overlay active.
- Drift queue (min-heap) is rebuilt on load from organism records.

---

## PART 4: PER-ERA MANIFESTATION

### ERA 1 — Field Biology (1-1.5 hours)

**Entities in Web:** Wild plants (foraged, not placed by player). Compost pile (first craftable biological entity, late Era 1).

**Relationships Available:** None explicitly. Wild plants have hidden relationships with each other that the player cannot observe or interact with. This is seeds being planted for later.

**Web Visibility:** Completely hidden. No UI, no hints.

**Drift Rate:** era_scaling = 0.3. Wild plants drift on a 16-minute cycle. The player will not notice.

**Player Tools:** None. Observation only. The player is learning what organisms exist.

**Scenario:** The player forages wild berries. They notice some berry bushes seem to have more berries than others (these are bushes that happen to have positive relationships with nearby wild plants, reflected in their yield_mod). The player cannot explain this yet. It is filed away subconsciously.

---

### ERA 2 — Cultivation (14-18 hours)

**Entities in Web:** Crop plots (wheat, legumes, tubers, flax), compost bins, worm farms, irrigation channels, beehives.

**Relationships Available:** Relationships 1-6 from the catalogue. Compost+crop, legume+grain, worm+crop, same-crop penalty, flower+beehive, irrigation+crop.

**Web Visibility:** Hidden. But the player now places entities deliberately and will notice patterns. Tooltips on production entities show current output rate. A player who places legumes next to wheat will notice wheat output is higher than expected. No explanation is given.

**Drift Rate:** era_scaling = 0.5. Drift every 10 minutes. Over 14-18 hours of Era 2, each organism drifts 84-108 times. Mostly minor (70%), so total trait shift is modest: typically +/-0.15 to 0.30 on any given trait by end of era. Noticeable if the player checks output rates over time, but easy to miss.

**Player Tools:** **Specimen Archive** (late Era 2 research). Allows storing a "snapshot" of any organism. Used for re-inoculation. This is positioned as a farming tool ("save your best seeds") rather than a drift-management tool. The player won't understand its full significance yet.

**Scenario:** The player builds a farm with wheat and legume plots side by side, a compost bin nearby, and irrigation. Wheat output is 1.25x base (15% from legume + 10% from compost, some overlap). They expand by placing a second wheat field on the other side of the farm, far from legumes. That wheat field produces noticeably less. The player thinks: "Maybe I should put legumes near all my wheat?" The spatial puzzle begins. Later, they place two mushroom farms next to each other and notice output is lower than one mushroom farm alone. The monoculture penalty is teaching them.

---

### ERA 3 — Microbial Ecology (14-18 hours)

**Entities in Web:** Everything from Era 2, plus: fermenters (lactobacillus, yeast, acetobacter), dairy livestock, grazers, mycelium beds, decomposition vats.

**Relationships Available:** Relationships 7-11 added. Fermenter competition, dairy+lactobacillus, grazer+pasture, mycelium+organics, compost+fermenter interference.

**Web Visibility:** **Hints unlocked** (Era 3 research "Ecological Observation"). Small arrows on hovered entities. The player can now see "something helps/hurts" but not what or why.

**Drift Rate:** era_scaling = 0.7. Drift every ~7 minutes. More noticeable. The player will see output rates changing over play sessions. A fermenter that was producing well starts producing slightly less. Or slightly more.

**Player Tools:** The hint arrows. And the Specimen Archive from Era 2. The player can re-inoculate a drifting organism back to stored spec if drift has degraded it.

**Scenario:** The player builds a fermentation wing: three fermenters in a row producing different products. Two use lactobacillus, one uses yeast. The lactobacillus fermenters work great (same species but the specific-culture variant doesn't trigger the same-species competitive penalty — different sub-species are treated as different species). But the yeast fermenter, right next to the lactobacillus, is underperforming. The player hovers over it and sees a red down-arrow. "Something is hurting my yeast." They move the yeast fermenter across the room. Output improves. The player has discovered that microbial cultures interfere with each other. This is the first deliberate "I need to plan my layout around biology" moment.

---

### ERA 4 — Applied Genetics (16-20 hours)

**Entities in Web:** All previous, plus: breeding pens, gene sequencers, trait analyzers, selective breeding chambers.

**Relationships Available:** Relationship 12-13 added. Breeding pair bonus, sequencer stabilization.

**Web Visibility:** **Ecology Analyzer tool unlocked** (major research). The player can now click any organism and see a full panel: all active relationships, their types, magnitudes, and the specific traits driving them. Drift history is shown (a simple graph of trait values over the last 10 drift events). This is the "I can see the Matrix" moment.

**Drift Rate:** era_scaling = 1.0. Standard rate, 5 minutes. The player is now expected to manage drift actively.

**Player Tools:**
- Ecology Analyzer (see the web in detail)
- **Stabilizer compound** (new craftable, ongoing consumption): reduces drift by 60% on target organism
- Selective breeding: place two organisms of the same species near each other, both drift, offspring (new entity produced periodically) inherits traits from both parents with recombination. Player can select for desired traits across generations.

**Scenario:** The player opens the Ecology Analyzer on their best wheat plot. They see: "Mutualistic with Legume-Clover (+15% yield). Commensal with Compost Bin (+10% yield). Competitive with Wheat Plot #7 (-8% yield)." They realize Wheat Plot #7 is too close. They move it. Total wheat yield jumps. They also see the drift graph: yield_mod has been slowly climbing (this wheat is in a positive web, drift is biased upward). They think: "Should I stabilize it to lock in this good state? Or let it keep climbing?" They decide to let it ride. For now.

---

### ERA 5 — Molecular Biology (20-25 hours)

**Entities in Web:** All previous, plus: CRISPR labs, cloning vats, gene printers, PCR amplifiers, cultured tissue arrays.

**Relationships Available:** Relationships 14-15 added. Enzyme processor symbiosis, CRISPR proximity effect.

**Web Visibility:** **Web Overlay Toggle unlocked** (Alt+B). Green and red lines between all related entities. The player can see the entire web at a glance. First time they toggle it on is a revelation: their base is a web of interconnected life. Some areas glow green (healthy clusters). Some areas bleed red (conflict zones).

**Drift Rate:** era_scaling = 1.2. Slightly accelerated. Drift is now a constant background process the player monitors.

**Player Tools:**
- Web overlay visualization
- **CRISPR Direction:** Target a specific trait on a specific organism and push it in a chosen direction for 3 drift events. Costly but precise.
- **Cloning:** Duplicate an organism with identical traits. The clone then drifts independently.
- **Genome Export/Import:** Save an organism's trait vector to an item. Apply it to another organism of the same species. Enables "golden seed" distribution.
- **Mutagenesis compound:** Increase drift rate by 200% and boost mutation probability from 1% to 5%. Deliberate chaos.

**Scenario:** The player has a prized lactobacillus culture with yield_mod 1.38 and speed_mod 1.22 — the result of careful nurturing over two eras. They export its genome. They clone it four times. They place the clones near dairy livestock for the mutualistic bonus. But the clones are now in a different web context than the original. Over the next hour of play, the clones drift in different directions. Clone #2 develops even higher yield (it drifted toward the dairy relationship). Clone #4 develops a metabolic shift mutation — it now accepts a different feedstock. The player didn't plan for that, but it solves a different problem they had.

---

### ERA 6 — Synthetic Biology (20-25 hours)

**Entities in Web:** All previous, plus: xenocrop cultivars, chimera organisms, synthetic microbes, designed symbiont pairs.

**Relationships Available:** Relationship 16 added. Designed xenocrop pairs.

**Web Visibility:** **Predictive Overlay unlocked.** Before placing, ghost-preview shows projected relationships. The player can plan before committing.

**Drift Rate:** era_scaling = 1.0. Returns to standard. The player now has stabilization and locking tools.

**Player Tools:**
- Predictive placement overlay
- **Genomic Lock:** Permanently freeze an organism's traits. No more drift. Expensive (requires rare compounds). Irreversible without re-inoculation.
- **Organism Designer:** A workbench that lets the player specify desired trait ranges for a new synthetic organism. The organism is then "grown" with traits in those ranges. It still drifts after placement unless locked.
- **Designed Symbiont Pairs:** The player specifies two organism designs intended to be mutualistic. If both are placed within range, they get a massive +30% bonus. This is the first time the player engineers the web directly.

**Scenario:** The player is designing a new production wing. They open the Organism Designer and create Xenocrop Alpha (high yield, moderate speed, nitrogen-fixing specialty) and Xenocrop Beta (moderate yield, high speed, phosphorus-cycling specialty). They specify these as a designed symbiont pair. They place them in alternating pattern: Alpha-Beta-Alpha-Beta. The predictive overlay shows a glowing green web. They toggle it on. Every entity is connected to its neighbors by bright green lines. +30% yield on all of them. They lock the most critical organisms. The wing is a designed, stable, high-performance ecosystem. It will not drift. It will not surprise them. It is engineered.

But in the corner of their base, their Era 3 fermentation wing — the one they never locked — has been quietly drifting for 40+ hours of gameplay. The acetobacter culture has mutated. It now produces a novel compound they have never seen before. This is the tension of the mechanic: control vs. emergence.

---

### ERA 7 — Directed Evolution (20-25 hours)

**Entities in Web:** All previous, plus: directed evolution chambers, industrial bioreactors, algae farms, mycelium networks, bioplastic synthesizers.

**Relationships Available:** Relationships 17-18 added. Algae+bioreactor gas exchange, evolution chamber acceleration.

**Web Visibility:** **Drift Forecast unlocked.** Arrows on organisms show predicted drift direction. The player can see where the ecosystem is heading before it gets there.

**Drift Rate:** era_scaling = 1.5. Fastest era. Drift is a resource to be exploited, not a problem to be managed. The directed evolution chamber amplifies this further.

**Player Tools:**
- Drift forecast visualization
- **Directed Evolution Chamber:** Place an organism adjacent. Its drift rate increases by 200%. Its mutation probability increases to 5%. Its drift direction can be biased (but not fully controlled) by setting "selection pressure" parameters: which trait should be maximized? The chamber culls unfavorable drift internally and amplifies favorable drift. Over 10-20 drift events, the organism converges toward the desired trait.
- **Strain Library:** Automated system that clones an organism repeatedly, lets all clones drift independently, and reports which clone developed the best traits. Player selects the winner.

**Scenario:** The player needs an algae strain that produces 50% more biomass than baseline. No existing strain is close. They place an algae pond next to a directed evolution chamber. They set the selection pressure to "maximize yield_mod." They apply mutagen. The algae's drift rate is now absurd: 0.8-minute intervals (era_scaling 1.5 * evolution chamber 3x * mutagen 3x). In 30 minutes of real time, the algae undergoes 37 drift events. yield_mod climbs: 1.03, 1.08, 1.05 (it went backward — drift is stochastic), 1.12, 1.19, 1.14, 1.22, 1.31... After 30 minutes, yield_mod is 1.41. Close to the 1.50 cap. The player locks it. They clone it 12 times for their bioreactor array. Each algae pond is placed next to a bioreactor for the gas exchange mutualistic bonus. The array is a masterpiece of directed evolution and spatial design.

---

### ERA 8 — Living Systems (20-25 hours)

**Entities in Web:** All previous, plus: self-healing structural elements, bioluminescent panels, neural mesh nodes, living insulation, bioelectric generators.

**Relationships Available:** Relationship 19 added. Neural mesh universal stabilization.

**Web Visibility:** **System Dashboard unlocked.** Map-level graph view of the entire web. Nodes = organisms, edges = relationships. Color-coded by health. The player can see the entire ecosystem at once and identify vulnerabilities.

**Drift Rate:** era_scaling = 1.0. Standard. Neural mesh nodes reduce drift on connected organisms by 50%. The player's mature production areas are stable; experimental areas are dynamic.

**Player Tools:**
- System dashboard (holistic web view)
- **Neural Mesh Node:** A biological entity that forms mutualistic relationships with everything within its 12-tile radius. +10% all stats, -50% drift rate. But the mesh node itself drifts. If it degrades, everything connected to it suffers.
- **Self-Healing Architecture:** Building components that are biological entities. They participate in the web. A living wall next to a bioluminescent panel might develop a mutualistic relationship. The building itself is an organism.
- **Ecosystem Optimizer:** An automated system that reads the system dashboard data and suggests layout changes to improve the web. It does not act autonomously; it advises.

**Scenario:** The player builds a new production hall. The walls are living structural tissue. The lighting is bioluminescent panels. The floor is a mycelium network that transports nutrients. A neural mesh node sits in the center. The overlay shows: every entity in the room is connected to the mesh node (green). The walls are mutualistic with the mycelium floor (shared nutrient flow). The bioluminescent panels are commensal with the living walls (light promotes wall growth). The system dashboard shows this room as a single green cluster: healthy, stable, self-reinforcing. Then the player checks their old Era 2 farm on the dashboard. It is a mess of red and yellow. Organisms that have been drifting for 100+ hours are barely recognizable. Some have become uniquely adapted to their specific location. Others have degraded. The contrast between the designed Era 8 system and the emergent Era 2 system is the thematic heart of the mod.

---

### ERA 9 — Genesis (30-40 hours)

**Entities in Web:** Everything. The Arcology itself is a set of biological entities (organs) that must form a complete, self-sustaining web.

**Relationships Available:** Relationship 20 added. Arcology organ interdependence.

**Web Visibility:** **Arcology Designer unlocked.** Blueprint-style tool for designing complete web layouts. Place organisms, see projected relationships, simulate drift over time (fast-forward simulation), optimize before building.

**Drift Rate:** era_scaling = 0.5. Slow. Arcology organisms are engineered for extreme stability. Drift still occurs but on a 10-minute cycle. The Arcology is meant to last.

**Player Tools:**
- Arcology Designer (full web simulation before building)
- **Biosphere Specification:** The player defines the complete relationship graph of the Arcology. Every organism, every connection, every expected bonus. The game validates: is this biosphere self-sustaining? Are there any missing dependencies? Any unresolved competitive relationships?
- **Homeostasis Engine:** A master regulatory system that monitors the entire Arcology web and automatically re-inoculates or stabilizes organisms that drift beyond specified tolerances. The final automation layer: the player designs the system, and the system maintains itself.

**Scenario:** The Arcology requires 15+ organ systems: atmosphere processing, nutrient cycling, waste decomposition, structural maintenance, energy generation, water purification, food production, temperature regulation, light management, communication (neural mesh), immune defense, reproduction (spare organism cloning), data storage (genetic archive), sensory input, and motor function. Each organ is a cluster of biological entities with internal mutualistic relationships. The organs must also have inter-organ relationships that form a single connected web with no isolated components. The player uses the Arcology Designer to lay out the entire system. They simulate 100 drift events. The simulation shows that the atmosphere processing organ tends to drift toward lower output over time (negative relationship with the adjacent energy organ). They redesign: swap the positions of energy and nutrient cycling. Resimulate. Stable. They build it. The Arcology comes alive. The web overlay shows a single, vast, interconnected graph of green lines. Every organism supports every other organism. The factory is alive. It breathes. It adapts. It is genesis.

---

## PART 5: THE "AHA MOMENT" SEQUENCE — DETAILED DESIGN

The signature mechanic's learning curve is deliberately structured as a sequence of revelations. Each revelation is gated by a combination of era progression and player observation. The mechanic teaches itself.

### Revelation 1: "Things grow better in some places." (Era 1-2)

**What happens:** The player places crops and notices output variation. Wheat near legumes outperforms wheat alone. Crops near compost outperform distant crops. The player assumes this is a simple proximity bonus and arranges their farm accordingly.

**What they don't know:** They are designing a Biological Web. They just don't have the vocabulary yet.

**Design intent:** Build spatial reasoning habits before introducing the system's name. The player should already be thinking about layout optimization when the explanation arrives.

### Revelation 2: "Proximity can be BAD." (Era 2-3)

**What happens:** The player places two fermenters near each other. Both underperform. They move one. It improves. The red down-arrow (Era 3 hint system) confirms: something nearby was hurting it.

**What they learn:** Not all adjacency is positive. Some things should be kept apart. The layout puzzle is not just "cluster everything together."

**Key emotion:** Frustration ("why is my fermenter broken?") resolved into understanding ("oh, they interfere"). This frustration-to-insight cycle is addictive.

### Revelation 3: "There are RELATIONSHIPS between organisms." (Era 4)

**What happens:** The Ecology Analyzer unlocks. The player clicks their wheat field and sees the full relationship panel for the first time. Symbiotic, commensal, competitive — with names, numbers, and specific partner organisms listed.

**What they learn:** The implicit system they have been navigating for 30+ hours is an explicit, knowable, designable system. Every placement choice has quantifiable consequences.

**Key emotion:** Revelation. "The game has been doing this the whole time?" This is the signature "aha." The player re-evaluates every layout decision they have ever made.

### Revelation 4: "My organisms are CHANGING." (Era 3-4)

**What happens:** The player notices an organism's output has shifted from what they remember. The Ecology Analyzer shows drift history. Traits have been slowly moving.

**What they learn:** The factory is not static. Every organism is a moving target. Optimization is not a one-time activity.

**Key emotion:** Unease, then fascination. "Nothing stays the same. I have to tend this like a garden, not a factory."

### Revelation 5: "I can SEE the entire web." (Era 5)

**What happens:** Alt+B. Lines appear between every related organism. The base is a web of connections, some green, some red. The player sees the shape of their ecosystem for the first time.

**What they learn:** Their base has emergent structure they didn't fully design. Clusters of mutualism. Pockets of conflict. Dead zones with no connections.

**Key emotion:** Awe. The map-as-ecosystem is visually striking and information-dense.

### Revelation 6: "I can DESIGN the relationships." (Era 6)

**What happens:** The player creates two organisms specifically intended to be mutualistic. They place them together with the predictive overlay. Green lines appear before the entity is even built.

**What they learn:** They are no longer navigating a pre-authored system. They are authoring the system. The web is their creation.

**Key emotion:** Power. Creative agency. "I am the biologist now."

### Revelation 7: "The ecosystem is optimizing ITSELF." (Era 7)

**What happens:** The player checks on an organism they haven't touched in hours. Its traits have shifted to be more compatible with its neighbors. The web around it is stronger than when they last checked. Drift, biased by positive relationships, has improved the organism without player intervention.

**What they learn:** The feedback loop between drift and web means that well-designed systems self-improve. The factory is not just alive — it is learning.

**Key emotion:** Wonder. "It got better on its own. It adapted."

### Revelation 8: "Everything is connected to everything." (Era 8)

**What happens:** The player moves one organism. The system dashboard shows cascading changes across 30+ entities as relationships recalculate and drift rates shift. Moving one thing changed everything.

**What they learn:** At sufficient complexity, the web is a chaotic system. Small changes have large effects. This is both powerful and dangerous.

**Key emotion:** Respect for the system's complexity. "I need to be careful. This is a real ecosystem."

### Revelation 9: "I am designing life from scratch." (Era 9)

**What happens:** The Arcology Designer. The player is specifying every organism, every relationship, every tolerance range, for a complete self-sustaining biosphere. They are simulating evolutionary pressures before committing. They are creating a world.

**What they learn:** The entire 200-hour journey was training for this. Every lesson — proximity matters, relationships can be negative, organisms change, webs have emergent properties, systems self-optimize, complexity cascades — comes together in one final design challenge.

**Key emotion:** Mastery. And then, when the Arcology activates and the web overlay shows a single unified living system: pride.

---

## APPENDIX A: KEY CONSTANTS SUMMARY

| Constant | Value | Notes |
|---|---|---|
| Base drift interval | 300 seconds (5 min) | Before era scaling and modifiers |
| Minor drift probability | 70% | +/- 0.01 to 0.05 on one trait |
| Moderate drift probability | 22% | +/- 0.05 to 0.15, possible second trait |
| Major drift probability | 7% | +/- 0.15 to 0.30, possible tag change |
| Mutation probability | 1% (5% with mutagen) | Full-range jump, special event |
| Diminishing returns threshold | 3 relationships | Full bonus for first 3 |
| Max positive multiplier | 2.5x | Hard cap |
| Max negative multiplier | 0.25x | Hard cap, cannot go below 25% base |
| Type-shift threshold | 0.08 trait modifier | Absolute value |
| Entity hard cap | 2,000 per surface | Warning at 1,500 |
| Web recalc rate | 1 entity per tick | From recalc queue |
| Drift queue processing | All due organisms per tick | Usually 0-3 |
| Crafting monitoring | 10 entities per 60 ticks | Round-robin |
| Max rendered web lines | 500 | Sorted by magnitude |
| Reversion bias strength | 5% magnitude reduction | Toward species default |
| Environmental drift bias | 15% chance/event/partner | Targets relevant trait |
| Stabilizer drift reduction | 60% | While compound is supplied |
| Mutagen drift increase | 200% | While compound is supplied |
| CRISPR direction events | 3 | Per application |
| Neural mesh drift reduction | 50% | Within 12-tile radius |
| Evolution chamber drift increase | 200% | Within adjacency radius |

---

## APPENDIX B: GLOSSARY

- **Biological Web (the Web):** The graph of all active relationships between biological entities. Spatial. Dynamic.
- **Organism Drift (Drift):** The gradual, biased change in an organism's traits over time. Temporal. Stochastic.
- **Trait Vector:** The set of numerical values defining an organism instance's characteristics.
- **Species Lookup Table:** The authored, static table of default relationships between species pairs.
- **Trait Compatibility Modifier:** The dynamic calculation that adjusts relationships based on individual trait values.
- **Influence Radius:** The circular area around an entity within which it can form relationships.
- **Diminishing Returns Factor:** The scaling function that reduces the value of additional relationships past 3.
- **Web Stability Modifier:** The drift rate adjustment derived from an organism's current web context.
- **Recalculation Queue:** The ordered list of organisms needing web edge recomputation.
- **Drift Queue:** The min-heap of organisms sorted by next scheduled drift event.
- **Genomic Lock:** Permanent prevention of all drift on a specific organism.
- **Designed Symbiont Pair:** Two organisms created together with an authored mutualistic bonus.
- **Arcology Organ:** A cluster of organisms functioning as a single subsystem within the Arcology.

---

This specification is complete and self-contained. It defines the rules, the data structures, the performance constraints, the per-era progression, and the player experience arc. All era-specific designs should reference this document for mechanical details. Implementation should begin with the data storage layer (Section 3.1), then the adjacency system (Section 1.2-1.5), then drift (Section 2), then visualization (Section 1.7), then per-era content authoring (Section 4).

---

## DESIGN AMENDMENTS

### Amendments Applied [2026-03-20]

**Source documents:** `reviews/fixes-major-ux.md` (Fixes 4, 5), `reviews/fixes-critical-1-3.md` (cross-reference for Era 2 context)

---

#### Fix UX4: Bio Web Early Visibility — Crop Vigor Pips in Era 2 (from fixes-major-ux.md, Fix 4)

**Problem:** Section 1.7 Visualization System shows Era 1-2 as "Hidden" — effects felt but not seen. This means players built suboptimal layouts for 15-20 hours with zero feedback, then had to tear down in Era 3 when hints appeared.

**What changed in the Visibility Tiers table (Section 1.7):**

| Era | Old Visibility Level | New Visibility Level |
|---|---|---|
| 1 | Hidden | Hidden (unchanged) |
| 2 (early) | Hidden | Hidden (unchanged through tech 4) |
| 2A (from tech 5) | Hidden | **Crop Vigor Pips** (new tier) |
| 3+ | Hints onward | Hints onward (unchanged) |

**New visibility tier inserted between "Hidden" and "Hints":**

| Era | Visibility Level | What the Player Sees |
|---|---|---|
| 2A (tech 5+) | **Crop Vigor Pips** | Small colored pip (8x8 pixel) in top-right corner of each farm plot entity. Green = positive synergy. Yellow = mixed. Red = negative interference. No pip = no significant web interaction. Does NOT show which neighbor, magnitude, full graph, or second-order effects. |

**Unlock:** "Field Observation" tech — 5th tech in Era 2A, costs 20x Era 2A science packs, requires Field Automation (tech 2).

**Pip calculation:** Checks all entities within 3-tile radius for companion relationships every 5 seconds (not per tick). Net score > +0.5: green. Between -0.5 and +0.5: yellow. < -0.5: red. No relationship neighbors: no pip.

**Tooltips:** Green pip: "This crop appears to be thriving." Red pip: "This crop shows signs of stress." Language is biological, not mechanical.

**Impact on Section 4 (Per-Era Manifestation), ERA 2 entry:**
- The ERA 2 section states "Web Visibility: Hidden." This is now partially superseded: web visibility becomes "Crop Vigor Pips" after Field Observation tech (~hour 3-4 of Era 2A). The full relationship detail remains hidden until Era 3's hint system.
- Player scenario update: Around hour 3-4, after Field Observation, the player notices green/red pips. They experiment: "Barley next to wheat = green pips. Barley next to flax = red pip." They start arranging fields deliberately. By Era 3, hints confirm and deepen existing intuition rather than contradicting established layouts.

**Progressive disclosure preserved:** Era 3 arrows ("which specific neighbor"), Era 4 full panel, Era 5 overlay are all still meaningful upgrades. Pips are deliberately vague to encourage experimentation.

---

#### Fix UX5 (cross-reference): Passive Timer Adjustments

**Impact on Section 4 (Per-Era Manifestation), ERA 2 entry:**
- The staged timer rework (see `eras-1-2-final.md` amendments) changes how Era 2 processes interact with drift and web calculations.
- New intermediate items (Soaked Fiber, Steeped Grain, Fresh Curds, etc.) from staged processes are NOT biological entities in the web. They are inert intermediates. Only the final organisms/placed entities participate in web relationships.
- The shorter total process times (e.g., composting 180s -> 105s) mean organisms in compost-adjacent web relationships update their benefit slightly more frequently (more compost cycles per hour = more web-relevant activity near crops). This is a minor positive effect requiring no formula changes.

---

#### Compost Heap Influence Radius Correction

**Problem:** Section 1.2 Influence Radius table lists Soil Amendment radius as 4 tiles. The era-1-2 design document (Section 12, Era 1 Biological Web) specifies Compost Heap influence radius as 6 tiles. Inconsistency.

**What changed:**

| Entity Class | Old Radius | New Radius |
|---|---|---|
| Soil Amendment | 4 tiles | 6 tiles |

The Soil Amendment row in the Section 1.2 table should read:

```
| Soil Amendment | 6 | Compost heap, compost bin, worm farm, mulch pile |
```

This matches the Era 1-2 design document which specifies Compost Heap at 6-tile radius. The era document is authoritative for entity-specific values; this spec provides the class defaults. With a 6-tile radius, the compost-to-crop commensal relationship (+10% yield) remains the first relationship the player encounters, and the larger radius ensures crops within a reasonable farm layout benefit without requiring the compost to be placed dead-center.

---
