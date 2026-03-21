# Biogenesis: Art Direction & Visual Design Document

## The Feel

**One-line:** *The factory grows up. Driftwood and kelp-string give way to petri dishes and gene editors, until the whole base is breathing.*

The art tells the same story as the gameplay. Era 1 should look like something a castaway lashed together from beach debris. Era 5 should look like a biotech campus. Era 9 should look alive — pulsing, glowing, self-repairing. A player returning to their Era 1 corner of the base should feel the contrast viscerally.

This isn't a reskin. Factorio's industrial aesthetic (steel, concrete, belts) is replaced with a biological one. Machines are vessels, vats, beds, and chambers. Logistics are fiber and chitin. Power is metabolic. The visual language needs to communicate "biology" at every level.

---

## Palette Progression

The colour story is the clearest way to communicate era transitions. Each era has a dominant palette that bleeds into icons, entity sprites, and UI elements.

| Era | Dominant Palette | Accent | Reference Feeling |
|-----|-----------------|--------|-------------------|
| **1** Observation | Driftwood tan, sage green, grey stone, kelp brown | Salt white, tidal teal | Beachcomber. Survival craft. Wet wood and dried seaweed. |
| **2** Agriculture | Wheat gold, terracotta, soil brown, flax cream | Iron rust, copper verdigris | Settled farm. Warm harvest light. First metals from biology. |
| **3** Microbiology | Petri white, agar amber, culture pink, stain violet | Biogas yellow-green, algae teal | The lab invades the farm. Glass and controlled conditions. |
| **4** Genetics | Parchment ivory, ink blue, pea green, inheritance yellow | Bioluminescent blue-green, enzyme gold | Mendel's garden meets the breeding ledger. Orderly, warm. |
| **5** Molecular | Sterile white, gel blue, sequencer green, helix cyan | Tissue pink, fuel-cell silver | Clean bench science. Precision. Everything is measured. |
| **6** Synthetic Bio | Engineered violet, chassis grey, bioluminescent teal | Xenocrop neon, silk shimmer | Playing god. Designed organisms glow with unnatural beauty. |
| **7** Evolution | Shifting greens, mutation magenta, selection amber | Mycelium white, bioelectric blue | Controlled chaos. Organisms adapting visibly. Pressure marks. |
| **8** Living Architecture | Vascular red, neural blue, mycelium white | Self-healing green pulse, conduit amber | The factory is an organism. Walls have veins. |
| **9** Genesis | Aurora spectrum, deep ocean blue, living light | Arcology warm glow, ecosystem iridescence | Transcendence. The base breathes as one system. |

---

## Icon Strategy (~730 items across 9 eras)

### Three Production Tiers

**Tier 1 — Vanilla Reuse (tinted)**
Factorio ships hundreds of 64x64 item icons. Many map cleanly to biogenesis items with a colour tint. This is fast, free, and visually consistent.

*Best for:* Items that are functional analogues to vanilla (calcite = stone, kelp stalk = wood, fiber cord = wire, charcoal = coal, bio-cement = concrete, iron plate = iron plate).

**Tier 2 — Community Assets**
The [snouz/factorio_free_graphics_for_modders](https://github.com/snouz/factorio_free_graphics_for_modders) repo has MIT-licensed assets from Bio Industries, Food Industry, Artisanal Reskins, and others. Already pixel-art in Factorio style.

*Best for:* Food, seeds, crops, compost, science packs, agricultural items (Eras 1-3).

**Tier 3 — Custom Art**
For items with no vanilla or community analogue. This is where most of the art budget goes.

*Best for:* Biotech equipment, gene cassettes, xenocrop products, living architecture, chimeric organisms, evolved materials (Eras 4-9).

### Era-by-Era Icon Breakdown

#### Era 1: Observation (~45 items)

**Vanilla reuse candidates (tinted) — ~20 items:**

| Item | Vanilla Source | Tint | Notes |
|------|--------------|------|-------|
| Kelp Stalk | `iron-stick.png` | Dark teal | Stick shape reads as stalk |
| Plant Fiber | `copper-cable.png` | Green | Acceptable — cable = fiber |
| Fiber Cord | `rocket-fuel.png` or `green-wire.png` | Brown | Coiled shape better than wire |
| Calcium Precipitate | `sulfur.png` | White | Crystalline powder shape |
| Calcite | `stone-brick.png` | White | Processed stone — brick communicates that |
| Kelp Charcoal | `coal.png` | Dark grey | Charcoal IS coal-like |
| Sea Salt | `sulfur.png` | Salt-white | Crystals, not rounded stones |
| Saltwater | `fluid/water.png` | Teal | Needs layered salt-crystal overlay |
| Brackish Water | `fluid/water.png` | Murky brown | Needs layered sediment overlay |
| Mineral-Rich Brine | `fluid/water.png` | Amber-orange | Needs layered mineral-sparkle overlay |
| Freshwater | `fluid/water.png` | Clear blue | Works as-is |
| Concentrated Brine | `fluid/water.png` | Deep orange | Needs distinct overlay |
| Woven Reed Mat | `landfill.png` | Warm brown | It IS landfill — shape communicates function |
| Compressed Biomass Block | `landfill.png` | Dark green | Same shape, different colour works |
| Glasswort Ash | `explosives.png` | Grey | Powder pile shape |
| Tidal Power Generator (item) | `iron-gear-wheel.png` | Blue | Mechanical gear = water wheel |
| Biomass Compressor (item) | `stone-furnace.png` | Dark green | Furnace = compressor |
| Field Notebook Station (item) | `lab.png` | Teal | Lab = research bench |

**Key problem: The water chain.** Five items (saltwater, brackish, brine, concentrated brine, freshwater) sharing `water.png` with only tint differences. Solution: use Factorio's layered icon system to add small overlay symbols — salt crystals, sediment particles, mineral sparkles, concentration marks. The base shape stays recognizable as "liquid" but each variant has a distinct secondary element.

**Community assets — ~10 items:**

| Item | Source | Status |
|------|--------|--------|
| Saltmarsh Grass | `straw.png` (Food Industry) | Good fit |
| Sea-Grain | `wheat-grains.png` (Food Industry) | Perfect |
| Rough Flour | `flour.png` (Food Industry) | Perfect |
| Flatbread | `flatbread.png` (Sosciencity) | Perfect |
| Grain Porridge | `dough.png` (Food Industry) | Passable |
| Seeds (4 types) | `seed-*.png` (Bio Industries) | Good colour coding |
| Compost (2 stages) | `compost.png` (Food Industry) | Good |
| Green/Brown Waste | `food-waste.png` (Sosciencity) | Need tint differentiation — green tint vs brown tint |
| Chaff | `wheat-seeds.png` (Food Industry) | Better than sharing straw.png with grass |

**Custom art needed — ~15 items:**

| Item | Why Custom | Art Direction |
|------|-----------|--------------|
| Glasswort | No vanilla succulent | Stubby salt-tolerant plant, red-green fleshy tips |
| Kelp (whole) | No vanilla seaweed | Wavy dark-green blade, holdfast visible at base |
| Kelp Frond | Distinct from glasswort | Single broad leaf shape, translucent green |
| Dried Kelp | "Green coal" doesn't work | Flat dried sheet — nori/kombu reference |
| Roasted Kelp | "Brown coal" doesn't work | Curled darkened sheet, slight char |
| Crude Hammer | Repair pack ≠ hammer | Stone head lashed to driftwood handle |
| Knapping Blade | Gear ≠ blade | Chipped obsidian/flint flake, sharp edge |
| Digging Stick | Wood ≠ tool | Pointed hardwood stick, fire-hardened tip |
| Pestle | Plate ≠ pestle | Smooth rounded stone, worn from use |
| Tidal Observation Kit | Generic science flask | Custom: notebook + specimen vial + kelp sample |
| Saltwater Basin (item) | Chest ≠ basin | Open stone basin, water visible |
| Solar Evaporation Tray (item) | Stone brick ≠ tray | Flat shallow tray, salt crust on edges |
| Desalination Bed (item) | Chest ≠ bed | Low wooden frame with kelp filter visible |
| Calcium Precip. Vat (item) | Chest ≠ vat | Small ceramic pot, white residue |
| Drying Rack (item) | Wood ≠ rack | A-frame with hanging items |
| Fire Pit (item) | Stone brick ≠ fire pit | Ring of stones, flame/embers visible |
| Breadcrumb specimens (4) | Unique narrative items | Each needs a distinctive shimmer/glow — these are mystery items |

#### Era 2: Agriculture (~65 new items)

**Vanilla reuse expands significantly** — Era 2 introduces metals and circuits:

| Item | Vanilla Source | Notes |
|------|--------------|-------|
| Iron Precipitate | `iron-ore.png` tinted rusty | Biological iron, slightly organic colour |
| Iron Plate | `iron-plate.png` | Same item, same icon — this IS iron plate |
| Iron Gear | `iron-gear-wheel.png` | Same |
| Iron Stick | `iron-stick.png` | Same |
| Copper Plate | `copper-plate.png` | Same — phytomined copper is still copper |
| Copper Wire | `copper-cable.png` | Same |
| Green Circuit | `electronic-circuit.png` | Same — circuits are circuits |
| Standard Belt | `transport-belt.png` | Same shape, bio-material tint |
| Inserter | `inserter.png` | Same shape |
| Pipes | `pipe.png` | Same — bio-cement pipes still pipe-shaped |
| Chests | `wooden-chest.png` / `iron-chest.png` | Same |
| Glass Pane | `glass.png` (Space Age) or custom | Flat transparent sheet |
| Bio-Cement | `concrete.png` tinted warm grey | Bio-cement = concrete equivalent |
| Slag | `stone.png` tinted dark | Processing waste |

**Community assets for crops, food, farming items.**

**Custom needed:** Diatom Frustules, Silica Substrate, Bacterial Culture items, Greenhouse (item), Hyperaccumulator plants, Bio-Smelter (item), Bio-Fiber Wind Turbine (item), Phenotypic Seed Classifier (item), CED science pack.

#### Era 3: Microbiology (~90 new items)

This is where vanilla reuse drops off sharply. Marine animals, fermentation products, algae, fungal materials, and chemical reagents have few vanilla analogues.

**Vanilla reuse still works for:**
- Fish → `fish.png` (vanilla)
- Sulfuric Acid → `fluid/sulfuric-acid.png` tinted
- Rubber → `plastic-bar.png` tinted dark
- Soap → `plastic-bar.png` tinted white
- Red Circuit → `advanced-circuit.png` (if used)
- Express Belt → `express-transport-belt.png`

**Heavy custom art era.** Cultures in petri dishes, fermentation vats, biogas digesters, algae tanks — all need unique silhouettes. This is the first era where the mod's visual identity really diverges from vanilla.

#### Eras 4-5: Genetics & Molecular (~150 new items)

**Vanilla reuse minimal** — gene templates, guide RNAs, genome atlases, tissue cultures, living tools, bio-batteries — none of these exist in vanilla.

**Pattern:** Use layered icons heavily. A "base shape" (vial, petri dish, plate, cassette) with coloured overlays indicating type/variant. This keeps production manageable when you have 8 guide RNA types that differ only in target gene.

**Key visual language to establish:**
- Gene template = scroll/blueprint shape, coloured by trait
- Guide RNA = small vial with coloured liquid
- Genome Atlas = thick book/codex
- Tissue culture = petri dish with visible growth
- Living tools = organic handles with bioluminescent glow

#### Eras 6-9: Synthetic Bio → Genesis (~280 new items)

**Almost entirely custom.** Gene cassettes, xenocrop organisms, chimeras, evolved strains, living architecture seeds, neural mesh components, vascular conduits, arcology modules — none of this exists anywhere.

**Scaling strategy:** Establish reusable base shapes per category, then differentiate with colour/overlay:
- Gene Cassette → consistent cassette shape, coloured by gene (8 types)
- Blank Chassis → consistent organism outline, coloured by type (4 types)
- Xenocrop Seed → consistent seed shape with engineered glow, coloured per crop (6+ types)
- Evolved Organism → consistent culture-dish shape, coloured per strain (6+ types)
- Living Architecture Seed → consistent "seed pod" shape, coloured per structure (3 types)
- XB-Series Chimeras → consistent organism silhouette with designation number (11 types)

This "base + variant" system means ~30-40 base icon designs can cover 150+ items through colour/overlay permutation.

---

## Entity Sprites

### Machine Aesthetic Progression

The look of machines tells the era story:

| Era Range | Machine Aesthetic | Construction Materials Visible |
|-----------|------------------|-------------------------------|
| 1 | Rough-hewn, lashed together | Stone, kelp, fiber cord, driftwood |
| 2 | Sturdy, agricultural | Wood, bio-cement, iron bands, ceramic |
| 3 | Laboratory-industrial | Glass, copper fittings, rubber gaskets, bacterial cellulose |
| 4 | Precision biological | Bio-composite frames, PHA plastic, bioluminescent panels |
| 5 | Clean biotech | Biosilica wafers, tissue vats, precision instruments |
| 6 | Engineered organisms | Containment chambers, genome platforms, spinning frames |
| 7 | Evolutionary | Evolution engines, screening stations, living material presses |
| 8 | Biomechanical | Self-healing structures, neural looms, vascular fabricators |
| 9 | Living | Self-organizing modules, autonomous cores, breathing architecture |

### Era 1 Machines (11 entities)

| Machine | Tiles | What It Looks Like | Vanilla Reuse? | Custom Priority |
|---------|-------|-------------------|----------------|-----------------|
| Saltwater Basin | 1×1 | Hollow stone bowl, water pooling inside, kelp-rope handles | Tinted `wooden-chest` entity works short-term | Low |
| Solar Evaporation Tray | 1×1 | Flat shallow stone tray, white salt crust forming on edges | Tinted `stone-furnace` top-down could work | Low |
| Biomass Compressor | 2×1 | Heavy stone slab with lever mechanism, compressed block visible | `burner-mining-drill` retextured might work | Medium |
| Seaweed Desalination Bed | 2×1 | Low wooden frame packed with kelp, water dripping through | No good vanilla match | Medium |
| Tidal Power Generator | 3×1 | Wooden water wheel with kelp-rope belt, tidal channel implied | **No vanilla match — must be custom** | **High** |
| Calcium Precipitation Vat | 1×1 | Small ceramic pot with white chalky deposit building up | Tinted `wooden-chest` or `steel-chest` | Low |
| Grinding Slab | 2×1 | Flat stone with visible grinding surface, grain dust | Flat stone texture, could derive from furnace | Medium |
| Drying Rack | 2×1 | A-frame wooden rack with items hanging (kelp, herbs) | **No vanilla match — must be custom** | **High** |
| Stone-Lined Fire Pit | 2×2 | Circle of stones, visible flames, cooking surface | Stone furnace + vanilla fire overlay composite | Medium |
| Compost Heap | 2×1 | Mounded organic pile, steam wisps, earthworms implied | **No vanilla match — must be custom** | **High** |
| Field Notebook Station | 2×2 | Wooden desk with notebook, specimen jars, pressed plants | Tinted `lab` entity, add desk overlay long-term | Low |

**Custom sprite priority order:**
1. Tidal Power Generator — first power source, 3 tiles wide, highly visible
2. Drying Rack — unique structure, no analogue
3. Compost Heap — core mechanic, needs to read as "organic pile"
4. Fire Pit — stone furnace composite works but custom is much better
5. Everything else starts as tinted vanilla entities

### Era 2 Machines (15 entities)

Several map to vanilla:

| Machine | Vanilla Entity Reuse |
|---------|---------------------|
| Bio-Smelter | `stone-furnace` retextured with bio-cement look |
| Greenhouse | `assembling-machine-1` shell retextured with glass panels, or custom |
| Bio-Fiber Wind Turbine | **Custom** — spinning blades, fiber construction |
| MICP Cementation Bed | Similar shape to compost heap |
| All culture vats | Variants of a "vat" base sprite |

**New base shape needed:** The "vat" — a cylindrical/rounded container that recurs throughout Eras 2-7. Design one good vat sprite and recolour/resize for: Bacterial Culture Vat, N-Fixing Culture Vat, Fermentation Vat (Era 3), PHA Polymerizer (Era 4), Tissue Culture Vat (Era 5), etc.

### Era 3+ Machines (60+ entities)

**Reusable base shapes to design once:**

| Base Shape | Used By (examples) | Variants |
|-----------|-------------------|----------|
| Vat/Tank (round, top-down) | Culture vats, fermentation vats, tissue vats, bioreactors | Size (1×1 to 3×2), colour, lid style |
| Pond/Pool (open, rectangular) | Aquaculture Pond, Diatom Pond, Bio-Accumulator Pond, Breeding Pond | Size, water colour, organism visible |
| Station/Bench (flat work surface) | Analysis stations, editing stations, authoring platforms | Size, instruments on surface |
| Column/Tower (tall, narrow) | Distillation Column, Fractional Separation Column | Height, pipe connections |
| Press/Compressor (heavy, mechanical) | Biomass Compressor, Mycelium Press, Oil Press, Pellet Press | Size, material in/out |
| Engine/Generator (mechanical output) | Biogas Engine, Steam Boiler, Fuel Cell, Metabolism Reactor | Size, power indicator |

**Six base shapes × era-appropriate texturing** covers ~70% of all machines. The remaining ~30% need unique designs (Greenhouse, Evolution Engine, Living Architecture Incubator, Genesis Transcription Array, Arcology Core).

---

## Signature Visual Systems

### Bio Web Overlay

The mod's defining visual feature. Lines connecting organisms, showing their relationships.

| Era | Visibility | Implementation |
|-----|-----------|---------------|
| 1-2 | Hidden | Tooltip only: "This crop seems vigorous" / "Growth seems stunted" |
| 3 | Hint arrows | Small coloured arrows above entities. Direction shows relationship flow. |
| 4 | Ecology Analyzer tool | Player holds tool → text list of relationships for highlighted entity |
| 5 | Web Overlay toggle | `LuaRendering` lines between entities, colour-coded by relationship type |
| 6+ | Predictive overlay | Ghost placement shows projected relationships before building |

**Line colours:**
- Green = mutualistic (both benefit)
- Pale yellow = commensal (one benefits, other neutral)
- Red = competitive (both harmed)
- Blue = decomposer relationship

**Line style:** Thin, organic (not straight — slight curve like mycelium threads). Pulse animation in later eras showing active nutrient/signal flow.

### Organism Drift Visualization

Organisms visually change over time based on trait drift.

| Era | What's Visible |
|-----|---------------|
| 1 | "Natural Variation: Observed" tooltip — no visual change |
| 2 | Locked trait slots on tooltip: "Yield: ???" |
| 3 | Qualitative labels: "Yield: Above Average" |
| 4 | Punnett square predictions on breeding UI, inheritance arrows |
| 5 | Full numeric trait values, CRISPR targeting UI |
| 6+ | Expression pathways, epigenetic layers, genome visualization |

**Visual differentiation:** High-yield vs low-yield crops should look subtly different — slightly larger sprite, slightly more saturated colour, or small "vigor pips" (like quality stars in Space Age).

### Living Architecture (Era 8-9)

The most visually ambitious system. Buildings that grow, heal, and pulse.

- **Self-Healing Walls:** Visible damage shows cracks → cracks fill with growth → wall restored. Colour shifts from healthy green to stressed yellow to damaged red.
- **Bioluminescent Ceilings:** Gentle glow animation, colour shifts with circadian cycle.
- **Vascular Conduits:** Visible flow of nutrients — peristaltic pulse animation.
- **Neural Mesh:** Faint blue signal lines between nodes, occasional "firing" flash.
- **Arcology Modules:** Multi-stage construction visible — scaffold → walls → ceiling → internal systems → living ecosystem.

### Breadcrumb Specimens

Rare drops that bridge eras. Each needs a "this is special" visual treatment.

- Subtle shimmer/sparkle overlay on icon (1-2 pixel animated highlight)
- Distinct silhouette from anything else in that era
- Consistent "specimen" visual language: glass vial/container with mysterious contents
- Colour hints at future era where specimen becomes useful

---

## Machine Working Animations

Not required for MVP but dramatically improve feel. Priority order:

| Machine | Animation | Frames | Source |
|---------|-----------|--------|--------|
| Fire Pit | Flickering flame | 4 | Derive from vanilla `fire-flame` sprites |
| Water Wheel / Tidal Generator | Rotation | 8 | Custom — wheel turning |
| Compost Heap | Colour shift | 2-3 | Same sprite, palette swap (fresh green → decomposing brown → rich dark) |
| Drying Rack | Items appearing | 2 | Empty rack → rack with hanging items |
| Fermentation Vat (Era 3) | Bubbling | 4 | Bubble particles rising |
| Evolution Engine (Era 7) | Organism shifting | 8 | Contained organism visibly morphing |
| Arcology Core (Era 9) | Breathing pulse | 8 | Entire structure expands/contracts subtly |

### Particle Effects (cheap, high impact)

Factorio's built-in particles require no custom art:

| Machine | Particle | Effect |
|---------|----------|--------|
| Fire Pit | `smoke-fast` | Cooking smoke |
| Compost Heap | `steam` | Decomposition heat |
| Evaporation Tray | `steam` (sparse) | Evaporation shimmer |
| Biogas Digester (Era 3) | `smoke-building` | Gas venting |
| Distillation Column (Era 3) | `steam` | Vapour |
| All generators | `smoke-fast` tinted | Exhaust, tinted to match fuel type |

---

## Technology Icons

### Structure

9 eras × ~10-15 techs per era = ~100 technology icons needed at 256×256.

**Strategy:** Free/hidden techs (auto-granted) don't need icons — player never sees them. Visible techs that cost science packs need readable icons. Era capstone techs need *memorable* icons.

### Capstone Tech Icons (one per era — the most important 9 icons)

| Era | Capstone Tech | Icon Concept |
|-----|--------------|-------------|
| 1 | Cultivation Hypothesis | Hand pressing seed into dark soil, golden light radiating upward |
| 2 | Systematic Selection | Grid of crops in rows, one highlighted/selected, magnifying glass |
| 3 | The Invisible World | Petri dish with magnified organisms visible, "seeing the unseen" |
| 4 | The Rules of Inheritance | Punnett square with pea plants, Mendel reference |
| 5 | The Source Code | DNA double helix unwinding, base pairs visible |
| 6 | Authoring Life | Blank chassis organism with gene cassettes being inserted, "writing" life |
| 7 | The Optimization Engine | Evolution chamber with organism mid-transformation |
| 8 | Emergent Architecture | Building that's half-scaffold, half-living tissue, growing |
| 9 | Genesis | Complete arcology dome, bioluminescent, self-sustaining, viewed from above |

---

## Science Pack Visual Identity

Each era's science pack should be instantly recognizable. They appear in labs constantly.

| Science Pack | Colour | Shape/Silhouette | Visual Reference |
|-------------|--------|-----------------|-----------------|
| Tidal Observation Kit (1) | Sea green | Notebook + specimen vial | Field journal with pressed kelp |
| Controlled Environment Dataset (2) | Amber/gold | Data card + seed sample | Agricultural record card |
| Microbial Culture Dataset (3) | Pink/violet | Petri dish + culture swab | Lab sample kit |
| Hereditary Analysis Folio (4) | Ink blue | Pedigree chart + seed | Breeding ledger |
| Genomic Annotation Compendium (5) | Cyan/white | Genome readout + vial | Sequencing printout |
| Synthetic Organism Dossier (6) | Violet/grey | Organism blueprint + containment seal | Design document |
| Evolutionary Dynamics Report (7) | Amber/green | Fitness graph + evolved sample | Lab report with chart |
| Systems Emergence Analysis (8) | Red/blue | Neural diagram + tissue sample | Systems diagram |
| Biosphere Genesis Record (9) | Iridescent/aurora | Complete ecosystem diagram | Living codex |

---

## Art Production Pipeline

### Volume Estimate

| Category | Count | Custom Needed | Vanilla Reusable | Community Sourceable |
|----------|-------|---------------|-----------------|---------------------|
| Item icons (64×64) | ~730 | ~400 | ~200 | ~130 |
| Machine entities | ~93 | ~35 unique + ~58 from 6 base shapes | ~15 retextures | — |
| Crop/organism entities | ~40 | ~40 (all custom) | — | Some OpenGameArt |
| World plants | ~11 | ~11 | — | Some OpenGameArt |
| Technology icons (256×256) | ~100 | ~60 visible | ~40 hidden/free | — |
| Science pack icons | 9 | 9 | — | Some Artisanal Reskins |

### Prioritized Phases

**Phase 0: Establish Visual Language (before any era is built)**
- Design the 6 reusable machine base shapes (vat, pond, station, column, press, engine)
- Design the icon "base + variant" templates (gene cassette, guide RNA, chassis, etc.)
- Lock down the colour palette per era
- Create a style guide sheet showing correct Factorio icon rendering (lighting, bevel, scale)

**Phase 1: Era 1 Art (playable prototype)**
- ~15 custom item icons (tools, kelp variants, dried kelp, machine items)
- ~20 tinted vanilla icons
- ~10 community-sourced icons
- 4 priority custom entity sprites (Tidal Generator, Drying Rack, Compost Heap, Fire Pit)
- 11 world plant sprites
- 4 crop plant sprites
- 7 machine entities (vanilla retextures)

**Phase 2: Era 2 Art**
- ~30 new icons (heavy vanilla reuse for metals/circuits, custom for bio-unique items)
- 15 machine entities (several from vat/pond base shapes)
- Crop growth stage sprites (seedling → mature, 3-4 stages)
- Greenhouse interior visible

**Phase 3: Era 3 Art (visual identity diverges from vanilla)**
- ~50 new icons (mostly custom — fermentation, algae, marine, chemistry)
- 23 machine entities (vat base shape pays off here)
- Bio Web hint arrows (first overlay visuals)
- Animal sprites (8 types — can source some from community)

**Phase 4: Eras 4-5 Art**
- ~100 new icons (base + variant system for genes, guide RNAs)
- 21 machine entities
- Full Bio Web overlay implementation
- Punnett square / genetics UI elements
- Genome visualization UI

**Phase 5: Eras 6-7 Art**
- ~120 new icons (xenocrops, chimeras, evolved organisms)
- 19 machine entities
- Organism visual morphing (evolution drift visible on sprites)
- Bio-Boat sprites

**Phase 6: Eras 8-9 Art (most ambitious)**
- ~100 new icons (living architecture, neural mesh, arcology)
- 12 machine entities + living architecture entities
- Self-healing wall animation system
- Vascular conduit flow animation
- Neural mesh signal visualization
- Arcology module multi-stage construction sprites
- The Omega Organism

### Tools

- **Icons:** AI-assisted pipeline (see below) + Aseprite/Pixelorama for cleanup
- **Entity Sprites:** AI-assisted for concepts, Aseprite for final pixel-perfect versions
- **Tech Icons:** AI generation works well at 256×256 — less pixel-art constraint
- **Animations:** Aseprite frame-by-frame, Factorio's built-in animation system
- **Overlays (Bio Web, Neural Mesh):** `LuaRendering` API — no sprite assets needed, drawn procedurally

---

## AI-Assisted Art Pipeline

### The Problem

~400 custom icons + ~35 unique entity sprites + ~60 tech icons + ~40 organism sprites. Hand-drawing all of this is months of work. But AI image generation can produce 80% quality drafts that need 20% manual cleanup — flipping the bottleneck from "creation" to "curation."

### Pipeline Overview

```
1. BATCH PROMPT  →  2. AI GENERATE  →  3. CURATE  →  4. CLEANUP  →  5. EXPORT
   (per category)     (bulk runs)       (pick best)   (pixel edit)   (PNG, palette)
```

### Step 1: Batch Prompting by Category

Don't prompt one icon at a time. Group items by visual category and generate in batches of 8-16. Items within a category share a base description, differing only in the specific object.

**Example batch — Era 1 Tools:**
```
Base prompt + "crude stone hammer lashed to driftwood handle"
Base prompt + "chipped flint knapping blade, sharp edge"
Base prompt + "fire-hardened pointed digging stick"
Base prompt + "smooth worn stone pestle"
```

**Example batch — Era 5 Guide RNAs (8 variants):**
```
Base prompt + "small glass vial with bright green liquid, label reads Y"
Base prompt + "small glass vial with blue liquid, label reads G"
Base prompt + "small glass vial with amber liquid, label reads H"
... (same base, 8 colour variants)
```

For variant families, generate one "hero" icon and then do colour swaps in Aseprite — faster and more consistent than generating each variant separately.

### Step 2: AI Generation

#### Model Choice

**For 64×64 item icons:**
Best results come from generating at higher resolution (256×256 or 512×512) and downscaling, rather than trying to generate at 64×64 directly. The downscale naturally creates the chunky pixel-art feel.

Recommended models (as of early 2026):
- **GPT-4o / DALL-E 3** — Good at following specific style constraints, understands "pixel art" well
- **Midjourney** — Strongest aesthetic quality, harder to control exact specs
- **Stable Diffusion (SDXL/SD3) + LoRA** — Best for batch consistency if you train a LoRA on existing Factorio icons. More setup, but the most controllable pipeline for 400+ icons.
- **Claude with image generation** — Good for iterating on specific items with detailed description

#### The Master Prompt

This prompt encodes Factorio's visual conventions. Append item-specific details to it.

**For item icons:**
```
Pixel art game icon, 64x64 pixels on transparent background.
Top-down view of [ITEM DESCRIPTION].
Factorio art style: top-lit from upper-left, subtle 3D shading
with lighter top surface and darker bottom shadow. No black outlines.
Shape defined by internal value contrast, not edges. Clean crisp
pixel edges with no anti-aliasing halo or glow effects. Muted
[ERA PALETTE] colour palette. Simple recognizable silhouette that
reads clearly at small sizes. Slight metallic highlight on any
reflective surfaces. 8-bit pixel art aesthetic.
```

**For entity sprites (machines):**
```
Pixel art game sprite, top-down isometric view (~30 degree angle),
[W]x[H] pixels on transparent background.
[MACHINE DESCRIPTION], made from [ERA MATERIALS].
Factorio art style: top-lit from upper-left, no outlines, shape
reads from shading. [ERA PALETTE] colours. The machine should look
like it belongs in a biology-themed factory game. Worn/handcrafted
appearance for early eras, sleek/engineered for later eras.
Shadow cast to lower-right.
```

**For technology icons (256×256):**
```
Detailed game technology icon, 256x256 pixels on transparent background.
Scene depicting [TECH CONCEPT]. [ERA PALETTE] colour palette.
Factorio art style but more detailed than item icons — can include
environmental context, multiple elements, and narrative scene.
Top-lit, warm lighting. Should communicate the concept of
[WHAT THIS TECH UNLOCKS] at a glance.
```

#### Era-Specific Palette Inserts

Paste these into the `[ERA PALETTE]` slot:

| Era | Palette Insert |
|-----|---------------|
| 1 | "driftwood tan, sage green, grey stone, kelp brown, salt white, tidal teal" |
| 2 | "wheat gold, terracotta, soil brown, flax cream, iron rust, copper verdigris" |
| 3 | "petri-dish white, agar amber, culture pink, stain violet, biogas yellow-green" |
| 4 | "parchment ivory, ink blue, pea green, inheritance yellow, bioluminescent blue" |
| 5 | "sterile white, gel blue, sequencer green, helix cyan, tissue pink, silver" |
| 6 | "engineered violet, chassis grey, bioluminescent teal, xenocrop neon, silk shimmer" |
| 7 | "shifting greens, mutation magenta, selection amber, mycelium white, bioelectric blue" |
| 8 | "vascular red, neural blue, mycelium white, self-healing green, conduit amber" |
| 9 | "aurora spectrum, deep ocean blue, living light, arcology warm glow, iridescent" |

### Step 3: Curation

Generate 4-8 variants per item. Pick the best one based on:

1. **Silhouette readability** — Would you recognize this at 32×32 (belt scale)? Squint test.
2. **Palette consistency** — Does it match other icons in the same era?
3. **Factorio fit** — Does it look like it belongs in the game, or does it scream "AI art"?
4. **Distinctiveness** — Can you tell it apart from every other icon in the same subgroup?

Reject rate will be ~50-70%. This is normal. Generating is cheap, curating is where quality comes from.

### Step 4: Cleanup in Aseprite

Every AI-generated icon needs manual cleanup. Budget 5-15 minutes per icon.

**Common fixes:**
- **Remove anti-aliasing halos.** AI loves smooth edges. Factorio needs crisp pixels. Use pencil tool to clean up edge pixels to fully opaque or fully transparent.
- **Fix transparency.** AI often generates on near-white backgrounds instead of true transparency. Magic-wand select background → delete → manual edge cleanup.
- **Correct lighting direction.** If the highlight landed on the wrong side, flip or manually repaint the shading.
- **Reduce colour count.** AI generates thousands of colours. Posterize or manually reduce to ~50-150 colours for that indexed-palette Factorio feel.
- **Sharpen silhouette.** Remove wishy-washy interior details. Factorio icons are simple shapes with clear internal structure, not noisy texture.
- **Palette match.** Sample colours from existing icons in the same era. Replace off-palette colours.
- **Resize.** If generated at 256×256 or 512×512, downscale with nearest-neighbour interpolation (NOT bilinear — that reintroduces anti-aliasing). Then touch up at 64×64.

**Aseprite workflow:**
1. Open AI output
2. Canvas → Resize to 64×64 (nearest neighbour)
3. Select background → Delete (transparent)
4. Clean edges with pencil tool (1px)
5. Posterize or index colours (Sprite → Color Mode → Indexed, limit palette)
6. Verify against era palette
7. Export PNG

### Step 5: Export

- **Format:** PNG, RGBA, transparent background
- **Size:** Exactly 64×64 for items, 256×256 for tech
- **Naming:** `[item-name].png` matching the prototype name (e.g., `crude-hammer.png`, `guide-rna-yield.png`)
- **Location:** `graphics/icons/era[N]/`

### Batch Efficiency Estimates

| Task | Per-Icon Time | Icons | Total Time |
|------|--------------|-------|------------|
| Prompt writing (batched) | 1 min | 400 | ~7 hours |
| AI generation (4-8 per item) | 2 min | 400 | ~13 hours |
| Curation (pick best) | 2 min | 400 | ~13 hours |
| Cleanup in Aseprite | 10 min | 400 | ~67 hours |
| **Total** | **~15 min avg** | **400** | **~100 hours** |

Compare to fully hand-drawn: ~45-60 min per icon × 400 = ~300-400 hours. The AI pipeline is roughly **3-4x faster** with comparable quality after cleanup.

### LoRA Training Option (Advanced)

For maximum consistency, train a LoRA (Low-Rank Adaptation) on existing Factorio icons:

1. Collect ~100-200 vanilla Factorio icons + community mod icons
2. Caption each with item description + style tags
3. Train SDXL LoRA (~1-2 hours on consumer GPU)
4. Generate all biogenesis icons using the LoRA as style anchor

This front-loads ~4-6 hours of setup but produces dramatically more consistent results — every generated icon inherits Factorio's exact lighting, colour depth, and shading conventions instead of approximating them via prompt. Worth it if doing 400+ icons.

### Entity Sprites: Different Approach

Entity sprites (machines, plants) are harder than icons for AI because:
- They need exact tile dimensions (32px per tile, so a 2×2 machine is exactly 64×64)
- They're isometric top-down, a specific angle AI struggles with
- They need to tile/align with Factorio's grid

**Recommended hybrid approach:**
1. **AI generates concept art** at higher resolution — "what does a drying rack look like top-down?"
2. **Human redraws** the concept as pixel art at correct tile dimensions in Aseprite
3. Budget ~30-60 min per unique machine sprite, ~15-20 min per variant

For the 6 reusable base shapes (vat, pond, station, column, press, engine), invest the time to hand-draw one excellent version of each. Then recolour/modify for variants — that's fast Aseprite work, no AI needed.

### Tech Icons: AI Shines Here

256×256 tech icons are the sweet spot for AI generation. They're high enough resolution that AI's strengths (composition, lighting, scene-setting) shine, and Factorio's pixel-art constraints are relaxed at this size.

Generate → minor colour correction → done. Cleanup time drops to ~5 min per icon. 60 visible tech icons × 7 min = ~7 hours total.

---

## Asset Specifications

### Icons
- **Size:** 64×64 px (Factorio standard)
- **Format:** PNG, RGBA, transparent background
- **Style:** Top-lit (~30° from upper-left), slight bevel/highlight, no hard outlines
- **Mipmap:** Factorio auto-generates from 64px source

### Entity Sprites
- **Scale:** 32 pixels per tile
- **Format:** PNG, RGBA
- **Orientation:** Factorio's ~30° top-down isometric
- **Shadows:** Separate layer, 50% opacity, offset down-right (optional but recommended)
- **Static:** 1 frame. **Animated:** 4-16 frames in horizontal strip.

### Technology Icons
- **Size:** 256×256 px (Factorio 2.0 standard)
- **Format:** PNG, RGBA
- **Style:** More detailed/scenic than item icons, can show context/environment

---

## Licensing

- **Custom art:** MIT (matches mod license, maximizes reuse)
- **Community assets (Bio Industries, Food Industry, Artisanal Reskins):** MIT — no restrictions
- **Sosciencity assets (bread, foraged food, waste):** CC BY-NC-SA 4.0 — fine for free mod, replace if ever commercialized
- **Vanilla Factorio sprites (tint targets):** Wube modding license — derivative use in Factorio mods explicitly permitted
- **OpenGameArt:** Verify per-asset (prefer CC0)
