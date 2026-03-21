# BIOGENESIS: Seablock Master Design Document

**Status:** DRAFT v11
**Date:** 2026-03-21

Self-contained. No other document needed to understand the vision.

---

## Design Principles

**1. Biology is the only source.** Every material traces back to a living organism or biological process. No mining, no logging, no phantom resources.

**2. Grounded in real science.** Every biological process should be Google-able. The mod extrapolates from real research, not fantasy.

**3. Meaningful depth, not grind.** 4–8 step recipe chains that branch and interconnect, where each step corresponds to a real process.

**4. Anti-grind from the start.** Tedious tasks automate early. The player makes decisions, not repetitive clicks.

**5. Biotech from minute one.** The player is a biologist from the first seed. Every tooltip, item name, and mechanic reinforces this.

**6. Learn it once, then automate it.** Hand-craft the first time. Automation unlocks within the same era. No chain stays manual for >15 minutes.

**6b. Prove it, don't research it.** Where possible, technologies unlock by DOING, not by waiting at a lab. Harvest your first kelp → saltwater processing unlocks. Smelt your first iron → circuits tech unlocks. The player demonstrates competence and the game responds. Timed research is the fallback, not the default. (Inspired by SeaBlock's action-gated startup techs — the best mechanical idea in that mod.)

**7. Cool from the start.** New unlocks every 10-15 minutes. If the player thinks "when does this get interesting?" we've failed.

**8. The factory is an ecosystem.** Every machine produces byproducts. Every byproduct feeds another chain. Waste becomes input. This is what separates Biogenesis from "Angel's with a biology skin."

---

## The Seablock Identity

**Biogenesis** means "the origin of life." The player starts on a 3×3 island with nothing but seeds and must synthesize everything from biology.

**Why seablock:** The name becomes literal. No phantom resources. Every recipe chain designed for this playstyle. Biology is the ONLY source. Land is narrative — ~60 tiles to a living continent.

**Peaceful world.** No biters. No military. No pollution mechanic. The ocean is empty; the challenge is synthesis, not survival. All vanilla military tech, uranium processing, and nuclear power are disabled. The biological power progression (tidal → wind → biogas → biomass → ethanol → enzymatic → metabolism → symbiotic → arcology) replaces nuclear entirely.

**Factorio 2.0 (Space Age) compatibility.** Biogenesis is a total conversion — it replaces the vanilla game loop entirely. Space platforms, rockets, and off-world content are disabled. The mod uses Space Age engine features (spoilage mechanics, quality system if applicable, rendering APIs) but the CONTENT is terrestrial biology only. The endgame is growing a living world, not leaving this one.

**Origin tooltips:** Every item traces back to seawater. "Iron Plate. Bacterial precipitate, smelted. The iron was dissolved in the ocean." This keeps the seablock identity alive at hour 100.

**Implementation:** Every item prototype's `localised_description` includes an origin line. Format: "[Item description]. Origin: [biological source chain back to seawater]." Examples:
- Green Circuit: "Bio-copper wire on diatom silica substrate. Origin: copper phytomined from seawater minerals, silica from diatom shells grown in brackish water."
- Spider Silk Panel: "Woven from xenocrop silk protein. Origin: designed organism grown in soil composted from ocean biomass."
- Living Symbiont: "Evolved bioelectric organism. Origin: descended from bacteria that once precipitated iron from the same seawater that surrounds this island."
This is a cross-cutting implementation task applied during prototype definition for ALL items. The origin chain should be 1-2 sentences max.

**Crafting menu structure:** One "Biogenesis" item group. Subgroups reinforce biology in their NAMES — every time the player opens the menu, they see biotech:
- Era 1: "Marine Harvests," "Saltwater Processing," "Tidal Materials," "Coastal Science"
- Era 2: "Bacterial Metals," "Diatom Products," "Phytomined Minerals," "Controlled Cultivation"
- Era 3: "Fermentation Products," "Aquaculture," "Fungal Materials," "Microbial Chemistry"
- Era 4: "Stabilized Cultivars," "Bio-Composites," "Enzyme Products," "Genetic Science"
- Era 5: "Genomic Tools," "Tissue Culture," "Bio-Accumulated Metals," "Molecular Science"
- Era 6: "Designed Organisms," "Xenocrop Products," "Synthetic Pathways"
- Era 7: "Evolved Materials," "Industrial Algae," "Mycelium Structures"
- Era 8: "Living Architecture," "Neural Systems," "Vascular Components"
- Era 9: "Arcology Organs," "Chimera Organisms," "Biosphere Components"

The menu itself teaches the player they're doing biology, not generic industry.

---

## Core Systems

### The Genetic Profile

Every organism has hidden trait values (0–100) influencing output, growth, resilience, and interactions.

**7 traits:** Yield, Growth Rate, Hardiness, Nutrient Demand, Flavor/Quality, Symbiotic Affinity, Mutagenic Potential.

**Concrete example:** A saltmarsh grass plant with Yield 72 produces ~1.4x the output of one with Yield 50. That's 4 fiber per harvest instead of 3. Across 20 plants over 50 harvest cycles, the 72-Yield line produces 1,000 more fiber than the 50-Yield line. This is why genetics matters economically — not marginal improvement, but compound advantage over time.

**Visibility progression:**
| Era | What the player sees |
|-----|---------------------|
| 1 | "Natural Variation: Observed" — a hint. |
| 2 | Locked trait slots: "Yield: ???" |
| 3 | Qualitative: "Yield: Above Average." |
| 4 | Inheritance: dominant/recessive. Punnett squares. |
| 5 | Full numeric values. CRISPR edits individual loci. |
| 6 | Expression pathways. Epigenetic layers. |
| 7 | Population statistics across thousands of generations. |
| 8 | System profiles: emergent properties of organism networks. |
| 9 | Blank canvas. Every trait from scratch. |

### The Specimen Archive

Built in Era 1, expanded throughout. Stores anomalous specimens for later analysis. Items gain metadata when new analysis techs are researched.

**Payoff schedule — specific items:**

| Era Found | Item | Analyzed In | Used In | Payoff |
|-----------|------|-------------|---------|--------|
| 1 | Unusual Kelp Specimen | Era 3 (Soil Analyzer) | Era 5 (Genome extraction) | Contains a naturally occurring salt-tolerance gene. Basis for Bio-Accumulator organisms. |
| 1 | Strange Crystalline Deposit | Era 3 (Mineral Analyzer) | Era 4 (Chemistry) | Unusual mineral structure. Becomes a catalyst template for enzyme engineering. |
| 1 | Tidal Deposit (sealed) | Era 5 (Sequencer) | Era 6 (Synthetic Bio) | Ancient marine organism in mineral crust. Contains metabolic pathways for deep-sea chemosynthesis. Basis for the Methane-Eating Methanotroph. |
| 1 | Drift Spore | Era 3 (Culture Analyzer) | Era 4 (Genetics) | The symbiotic organism from grass-kelp pairing. First specimen to show multi-organism genetic interaction. |
| 2 | Iridescent Iron Oxide | Era 4 (Heredity Analysis) | Era 5 (Genome) | Iron precipitate with unusual crystalline structure. Contains an iron-oxidizing gene variant 3x more efficient than standard. Basis for high-yield iron bacteria. |
| 3 | Anomalous Fermentation Byproduct | Era 5 (Sequencer) | Era 6 | Contains a novel enzyme never catalogued. Becomes a gene cassette component for xenocrop design. |
| 3 | Self-Modifying Culture Sample | Era 5 | Era 7 | A bacterial culture that appears to edit its own genome. The discovery that inspires Directed Evolution research. |
| 4 | Spontaneous Hybrid Seedling | Era 5 (Sequencer) | Era 6 (Synthetic Bio) | A seedling expressing traits from NEITHER parent line. Natural horizontal gene transfer. Template for the Organism Fusion system. |
| 5 | Over-Expressed Tissue Fragment | Era 6 | Era 7 | Tissue that grew beyond specification. Contains a growth-regulation bypass — the seed of the Bio-Boat Hull Organism. |
| 6 | Chimeric Biofilm Fragment | Era 7 (Evolution analysis) | Era 8 (Living Systems) | Two engineered species fused into a single colony spontaneously. Template for living architecture's multi-species composites. |
| 7 | Escaped Organism Soil Sample | Era 8 | Era 9 | Soil from the containment breach site. Contains organisms that evolved wild symbioses. Basis for the arcology's self-organizing ecology. |
| 8 | Self-Organizing Tissue Mass | Era 9 (Biosphere analysis) | Era 9 (Arcology) | Tissue from a living system that spontaneously organized into a functional structure without a scaffold. Inspiration for the arcology's self-assembling capability. |
| 9 | Autonomous Variant | Era 9 (Biosphere monitoring) | Era 9 (Omega Organism) | An organism the arcology's ecology produced WITHOUT player input. The first life not descended from the player's designs. Proof that the biosphere is self-generating. |

**The Omega Organism (XR-00, Era 9)** requires one archived specimen from every era (9 total, Eras 1–9) as ingredients. The Era 9 specimen — the Autonomous Variant — only appears once the arcology's biosphere begins self-organizing, meaning the player must have the arcology partially operational before they can complete XR-00. This is the archive's ultimate payoff — hoarding pays off. Every weird thing you stored for 150 hours matters.

### Logistics & Transport

**This is still Factorio.** The player uses standard belts, inserters, pipes, trains, and logistic bots — the full vanilla logistics toolkit. Biology provides the MATERIALS to craft them, not replacement mechanics. The logistics puzzle IS Factorio's logistics puzzle: throughput, ratios, layout, train scheduling. We don't reinvent the wheel. We grow it from kelp.

**Era 1:** Kelp-Stalk Belts (half vanilla speed) + Kelp-Stalk Inserters available immediately. Craftable from kelp stalk + plant fiber. 50 belts + 20 inserters in starting inventory. The player builds a factory from minute one — no manual phase. Tidal Generator (15 kW) in starting inventory provides power. Machines draw 1-2 kW each.

**Era 2:** Standard belts and inserters as soon as bacterial iron is available (hour 2-4). Recipes use bio-iron + kelp stalk + fiber instead of mined iron. Same speeds, same mechanics, biological ingredients. Pipes from kelp stalk or bio-cement. This is the "real Factorio starts" moment.

**Era 3-4:** Fast belts, fast inserters, stack inserters. Recipes add chitin, bacterial cellulose, PHA bioplastic. Standard Factorio tiers, biological materials.

**Era 5-6:** Trains. Bio-composite frames, bio-rubber wheels, PHA components. Standard rail mechanics. The island is large enough that trains make sense.

**Era 6-7:** Logistic bots + roboports. Recipe: logistic/construction bot = PHA housing + green circuit + bio-composite frame + evolved enzyme. Roboport = bio-composite + blue circuit + neural mesh node + spider silk panel. Biological recipes, standard vanilla mechanics. Available from Era 6 (blue circuits + spider silk needed). Bots complement belts/trains, not replace them.

**Era 7:** Boats for offshore logistics (photobioreactor arrays, aquaculture platforms). This extends Factorio's logistics to water, not replaces land logistics.

**Era 8-9:** Vascular conduits as a SPECIALIZED addition inside arcology modules. Standard belts/trains continue everywhere else. Conduits are thematic, not a core logistics replacement.

**Modules and beacons.** Vanilla speed/productivity/efficiency modules are REPLACED by biological equivalents:
- Industrial Enzymes (Era 4) = speed module equivalent. Consumed per recipe cycle. +50% speed (Era 4), +100% speed (Era 6 Enhanced), same +100% but 3x longer lasting (Era 7 Evolved).
- Compost/fertilizer amendments = productivity equivalent. Applied to crop fields and biological machines. +15-50% yield depending on amendment tier.
- Neural Mesh Nodes (Era 8) = beacon equivalent. +5% speed to machines within 5 tiles. Biological, self-repairing.
Vanilla module/beacon prototypes are disabled. The biological equivalents are consumed or placed — no slotting modules into machines.

---

## Starting Conditions

3×3 island (9 tiles) + 50 Woven Reed Mats (~60 starting tiles). Infinite ocean. 20 seeds (10 grass, 5 glasswort, 5 kelp). 2 tools. 1 Tidal Generator (15 kW — immediate power). 50 Kelp-Stalk Belts + 20 Kelp-Stalk Inserters (immediate factory building). This is a FACTORY GAME from minute one — the player places belts and inserters from the first machine they build. No hand-feeding, no survival crafting phase. Details in Era 1 doc.

---

## Era Transitions

Each era ends with a capstone technology. Completing it triggers:

1. **New research chapter** appears in the tech tree with the next era's name and theme.
2. **New item subgroups** become visible in the crafting menu — the player sees new categories of things they can make.
3. **New recipes, entities, and organisms** unlock. The world EXPANDS — new machines to build, new crops to plant, new processes to run.
4. **Notification** with the new era's research chapter name, a thematic quote, and a one-line summary of what just changed. E.g., transitioning to Era 3: *"Chapter: The Invisible Ecosystem. 'The soil is alive.' — You can now analyze the organisms you've been managing blind."*
5. **Existing infrastructure continues working.** Era transitions never break what the player already built. All previous machines, recipes, and organisms remain functional. The new era adds — it never subtracts.

**Capstone techs by era:**
| Era | Capstone Technology | Prerequisite Summary |
|-----|-------------------|---------------------|
| 1 → 2 | Coastal Ecology Hypothesis | All Era 1 free techs + 5 TOK consumed |
| 2 → 3 | Applied Cultivation Thesis | Iron + copper + silica production online + greenhouse + seed classification |
| 3 → 4 | Microbial Ecology Compendium | Soil analysis + fermentation + aquaculture + mycelium cultivation |
| 4 → 5 | Hereditary Mechanism Hypothesis | Stabilized cultivar + exclusive product + Punnett square prediction confirmed |
| 5 → 6 | Genomic Comprehension | Full genome sequenced + CRISPR edit performed + tissue culture operational |
| 6 → 7 | Synthetic Biology Demonstration | Xenocrop designed and validated + chimera produced + containment system built |
| 7 → 8 | Industrial Evolution Mastery | Evolution engine operational + structural mycelium produced + offshore expansion |
| 8 → 9 | Living Systems Integration | Living architecture grown + vascular network operational + neural mesh installed |

---

## Recipe Design Philosophy

**Every biological machine produces ≥2 outputs.** Primary product + byproduct that feeds another chain. No dead ends.

**Rules:** (1) ≥2 outputs per process. (2) Every byproduct has a use in the same era. (3) ≥30% of inputs come from other chains' byproducts. (4) Water quality tracked. (5) All organic waste → nutrient cycle.

**Full Era 2 iron chain (showing interconnection):**
```
Brackish Water ──→ Iron Culture Vat ──→ Iron Precipitate + Spent Culture Medium
(from evaporation)                            │                      │
                                              ▼                      ▼
                                         Bio-Smelter           Compost Heap
                                         → Iron Plate + Slag        │
                                              │                      ▼
                                              ▼              Crop Fields (yield boost)
                                    Bio-Cement additive       Diatom Ponds (nutrient feed)
                                    (strengthens building     Bacterial Vats (culture nutrient)
                                     foundations)
```

**Full Era 3 fermentation chain (showing branching):**
```
Sugar Crop (sea-grain) ──→ Mash Tun ──→ Wort + Spent Grain
                                          │          │
                              ┌───────────┘          └─→ Fish Feed / Compost
                              ▼
                     Fermentation Vat ──→ Crude Ethanol + Yeast Sediment
                              │                              │
                              ▼                         ├─→ Starter Culture (propagate)
                     Distillation Column                └─→ Compost (nitrogen-rich)
                     → Bio-Ethanol (fuel) + Fusel Oils + Stillage
                              │                │            │
                         Power fuel        Solvent       Compost /
                         (Era 3+)       (extraction     Biogas Digester
                                         reagent)       feedstock
```

Seven distinct items from one sugar crop input. Five route to other chains. The player building an ethanol factory is ALSO building a compost operation, a fish feed supply, and a solvent production line.

---

## The Material Chain

### Era 1: Marine Biology Basics

| Material | Source | Byproduct → Use |
|----------|--------|-----------------|
| Fiber | Saltmarsh grass | Grass residue → compost |
| Wood (kelp stalk) | Kelp | Kelp frond → food / fuel / compost |
| Stone (calcite) | Seawater | Brackish water → bacterial cultures (Era 2) |
| Salt | Seawater evaporation | Brackish water → bacterial cultures (Era 2) |
| Fuel (charcoal) | Kelp frond → dry → char | Ash → alkali / compost mineral |
| Freshwater | Desalination | Brine → calcium vat / iron vat |
| Alkali | Glasswort ash | — |
| Food | Glasswort, kelp, sea-grain | Crop residue → compost |

### Era 2: Applied Cultivation

| Material | Source | Byproduct → Use |
|----------|--------|-----------------|
| Iron | Iron-oxidizing bacteria + brackish water | Spent medium → compost. Slag → bio-cement. |
| Silica/Glass | Diatom cultures + brackish water | Organic slurry → compost / fish feed |
| Copper | Hyperaccumulator phytomining | Depleted biomass → compost |
| Nitrogen | N-fixing bacteria | (Direct soil amendment) |
| Bio-cement | MICP bacteria | Waste water → treated → irrigation |
| Activated carbon | Charcoal activation | CO₂ → algae / greenhouse enrichment |
| Green circuits | Bio-copper wire + diatom silica substrate | Assembly waste → compost |

### Era 3: Microbial Ecology

| Material | Source | Byproduct → Use |
|----------|--------|-----------------|
| Sulfur | Sulfur-reducing bacteria | H₂S → chemical feedstock |
| Phosphorus | PAO organisms | Depleted water → irrigation |
| Bio-oil | Algae lipid extraction | Algal cake → fish feed / ethanol feedstock |
| Biogas | Anaerobic digestion of waste | Digestate → liquid fertilizer |
| Ethanol | Yeast fermentation + distillation | Stillage → fish feed / compost. Fusel oils → solvent. |
| Rubber | Dandelion/guayule latex | Plant residue → compost |
| Bacterial cellulose | Gluconacetobacter | Spent medium → compost |
| Mycelium | Fungal cultures (new in Era 3) | Substrate residue → compost |
| Chlorine + Caustic soda | Salt brine electrolysis | Hydrogen gas → Era 5 fuel cells |
| Chitin | Crustacean processing | Shell waste → calcium supplement / compost |
| Fish oil | Fish processing | Fish meal → compost / animal feed |

### Era 4: Applied Genetics & Chemistry

| Material | Source | Byproduct → Use |
|----------|--------|-----------------|
| Bio-composite (steel equiv.) | Mycelium + bacterial cellulose + mineral | Trim waste → compost |
| PHA bioplastic | Cupriavidus bacteria | Spent biomass → biogas feedstock |
| Industrial enzymes | Fermentation + purification | Residual biomass → compost |
| Exclusive cultivar products | Stabilized trait lines (see Genetics) | Standard harvest → normal chains |
| Distilled compounds | Fractional separation | Still bottoms → biogas feedstock |

### What You Need to Build Things

| Factorio Component | Seablock Equivalent | Era |
|-------------------|---------------------|-----|
| Iron Plate | Bacterial iron precipitate | 2 |
| Copper Plate | Phytomined copper | 2 |
| Green Circuit | Bio-copper wire + diatom silica | 2 |
| Steel Plate | Bio-composite plate (mycelium + cellulose + mineral) | 3–4 |
| Transport Belt | Standard belt. Recipe: bio-iron gear + bio-iron plate | 2 |
| Inserter | Standard inserter. Recipe: bio-iron + bio-circuit + bio-iron gear | 2 |
| Fast Belt / Inserter | Standard fast tier. Recipes add chitin + bacterial cellulose | 3 |
| Express Belt / Stack Inserter | Standard express tier. Recipes add PHA + enzyme treatment | 4 |
| Rail + Train | Standard rail. Bio-composite + bio-iron + bio-rubber | 5-6 |
| Pipe | Kelp-stalk or bio-cement pipe | 2 |
| Glass | Fused diatom silica | 2 |
| Rubber | Dandelion latex | 3 |
| Plastic | PHA bioplastic | 4 |
| Red Circuit | Bio-copper + bio-green + PHA | 4 |
| Blue Circuit | Bio-red + bio-green + bio-sulfuric acid + electronics-grade biosilica wafer | 5 |

### Era 5+: Where Biology Meets Honesty

**Tier 1 — Real bio pathways:** Diatom biosilica for electronics. Enzyme catalysts replacing metal catalysts.

**Tier 2 — Bio-accumulation (Era 5–6):** Engineered organisms concentrate trace metals from seawater.
```
Seawater → Zinc-Accumulating Kelp → Harvest → Dry → Zinc-Rich Ash
  → Leach with Bio-Acid → Zinc Precipitate + Leach Residue (→ compost)
  → Bio-Smelter → Zinc Plate + Slag (→ bio-cement)
```

**Tier 3 — Synthetic biology (Era 6+):** Organism-produced functional equivalents. Enzyme catalysts instead of platinum.

---

## Core Resource Loops

Four loops run from Era 1 through Era 9. Managing them IS the game.

### Water

Four quality tiers cascade through the factory:

```
Ocean → Saltwater Basin → Saltwater
  ├→ Evaporation Tray → Sea Salt + Brackish Water
  │                                    ├→ Iron Culture Vat (2x growth rate vs saltwater)
  │                                    ├→ Diatom Pond (tolerates minerals)
  │                                    └→ Desalination → Freshwater + Concentrated Brine
  │                                                         │              │
  │                                                    Food recipes    Calcium Vat (2x efficient)
  │                                                    Tissue culture  Iron Vat (highest yield)
  │                                                    Brine prep (salt + fresh → electrolysis)
  ├→ Calcium Vat → Calcium Precipitate + Brackish Water (→ bacterial cultures, re-evaporation)
  └→ Direct use (works for most processes but less efficient)
```

**The logistics puzzle:** Iron bacteria grow 2x faster in brackish water than saltwater. Calcium precipitation is 2x efficient from brine. Food needs freshwater. The player cascades water through the factory — evaporate first (get salt + brackish), use brackish for bacteria, desalinate what's left (get fresh + brine), use brine for calcium. Every drop is processed multiple times.

### Nutrients

The factory's metabolic center. Everything grows needs compost. Everything biological produces compost inputs.

```
ALL organic byproducts → COMPOST → ALL growth processes
  Spent culture medium ──┐              ┌──→ Crops
  Diatom slurry ─────────┤              ├──→ Bacterial vats
  Crop residue ──────────┤              ├──→ Diatom ponds
  Fish/shell waste ──────┼→ COMPOST ────┼──→ Phytomining beds
  Fermentation residue ──┤              ├──→ Aquaculture ponds
  Algal cake ────────────┤              ├──→ Mycelium cultivation
  Mycelium substrate ────┘              └──→ Soil enrichment
```

**Why it matters:** Scale iron without scaling compost → crops starve → compost input drops → iron medium isn't replenished. The nutrient cycle is the hidden backbone. Breaking it cascades failures.

### Salt Chemistry

```
Sea Salt ──→ Science packs (Era 1)
         ├─→ Food preservation (Era 2 — salted fish, pickles)
         ├─→ Electrolysis (Era 3) → Chlorine (water purification, PVC precursor)
         │                        → Caustic Soda (soap, pH control, textiles)
         │                        → Hydrogen (fuel cells, Era 5)
         └─→ Mineral supplements (Era 3 — aquaculture)
```

By Era 3, salt branches into 5+ products. Evaporation trays become bottleneck infrastructure.

### Carbon

```
Charcoal ──→ Fuel (Era 1-2)
         ├─→ Activated Carbon (Era 2) → Water/Air filtration → Better yields
         └─→ CO₂ (combustion) → Capture → Algae (carbon fixation, closes the cycle)
                                        → Greenhouse enrichment (faster crops)
                                        → Calcium precipitation (CO₂ + Ca²⁺ → CaCO₃)
```

Era 1–2: CO₂ capture is one-way — greenhouse enrichment only (faster crops). Era 3+: algae arrive and the cycle closes — captured CO₂ feeds algae, algae become bio-oil, bio-oil burns, CO₂ captured again. The carbon loop is OPEN in Era 1–2 and CLOSED from Era 3 onward.

### How They Interconnect

All four loops touch each other. Water quality affects nutrient uptake. Salt electrolysis needs freshwater. Carbon capture feeds algae that need nutrients. Optimizing one requires balancing all four.

---

## Bio Web — Known Relationships

Discovery-based: the player finds these through experimentation. This table is designer-reference, NOT exposed to the player.

### Era 1 Pairs
| Entity A | Entity B | Type | Effect | How Discovered |
|----------|----------|------|--------|---------------|
| Saltmarsh Grass | Kelp | Mutualistic | +35% yield both + Drift Spore byproduct | Bonus item appears when adjacent |
| Saltmarsh Grass | Glasswort | Commensal | +20% glasswort yield | Glasswort output jumps near grass |
| Compost Heap | Any crop (3 tiles) | Commensal | +25% crop yield | Crops near compost visibly larger |
| Same crop ×5+ | Same crop ×5+ | Competitive | -5% per extra | Gradual output decline |

### Era 2 Pairs
| Entity A | Entity B | Type | Effect | Notes |
|----------|----------|------|--------|-------|
| Iron Culture Vat | Diatom Pond | Competitive | -10% both | Both consume dissolved minerals from water input |
| Iron Culture Vat | Compost Heap | Mutualistic | +30% iron yield + occasional **Enriched Iron Oxide** bonus item | Nitrogen-rich compost feeds bacterial growth. Bonus item: higher-purity precipitate for advanced recipes. |
| Diatom Pond | Greenhouse (crops) | Commensal | +20% diatom silica quality | CO₂ from greenhouse ventilation feeds diatoms |
| Phytomining Bed | Compost Heap | Mutualistic | +40% metal uptake | Compost-enriched soil boosts phytoextraction |

### Era 3 Pairs
| Entity A | Entity B | Type | Effect | Notes |
|----------|----------|------|--------|-------|
| Aquaculture Pond | Algae Tank | Mutualistic | +25% both + **Symbiotic Biofilm** bonus item | Fish waste feeds algae; algae oxygenate water. Bonus: a composite material only produced by the pair. |
| Aquaculture Pond | Excess Nutrients | Competitive | Algae bloom → fish crash | Over-enrichment creates harmful algae bloom |
| Fermentation Vat | Biogas Digester | Commensal | +15% biogas yield | Fermentation waste is ideal digester input |
| Mycelium Bed | Bacterial Culture | Mutualistic | +20% mycelium growth | Bacteria break down substrate, fungi colonize |
| Fungal Culture | Crop Field | Mutualistic | +30% crop yield (mycorrhizal) | Fungal networks extend crop root access |

Relationships get more complex each era. By Era 5+, organisms the player DESIGNS can have designer-specified Bio Web relationships — synthetic symbioses.

---

## The Land Progression

| Era | Island | Soil Quality | What Land Means |
|-----|--------|-------------|----------------|
| 1 | ~60 → ~100 tiles | Basic landfill | Factory from minute one. Room to breathe. Expansion via mats + biomass blocks. |
| 2 | ~50 → ~500 | Enriched (+30% yield) | Expansion. Soil types matter. |
| 3 | ~500 → ~2,000 | Bacterial substrate / coral offshore | Zoned districts. Underwater building begins. |
| 4–6 | ~2,000 → ~10,000 | Living soil (self-maintaining) | Quality replaces scarcity as constraint. |
| 7–8 | ~10,000+ | Mycelium-networked terrain | The ground is alive. Offshore expansion. |
| 9 | The whole island | Root-maintained | Island IS the arcology. Remove life, land dissolves. |

---

## Animals

Era 3: Aquaculture ponds — fish, crustaceans, shellfish. Fish waste → compost. Fish oil → soap (caustic soda + oil). Chitin → inserter components.

Era 4: Genetics via plants (primary) + fish (secondary).

Era 5: In vitro tissue culture — cultured meat, leather, dairy proteins.

**No terrestrial animals ever.**

---

## Power Progression

| Era | Source | Output | Fuel | Recipe Uses |
|-----|--------|--------|------|-------------|
| 1 | Tidal Generator | 15 kW | Tidal (constant) | 1 given at start. More craftable: kelp stalk + fiber + calcite. Machines draw 1-2 kW each. |
| 2 | Wind Turbine | 30 kW | Wind | Kelp stalk + bio-fiber + iron gear |
| 3 | Biogas Engine | 120 kW | Biogas 10/min | Iron plate + copper pipe + rubber |
| 4 | Biomass Boiler | 400 kW | Pellets 8/min | Bio-composite + copper pipe + bio-cement |
| 5 | Ethanol Fuel Cell | 1.5 MW | Ethanol 12/min | Bio-circuit + bio-composite + enzyme catalyst |
| 6 | Enzymatic Turbine | 5 MW | Bio-Oil 8/min | Bio-circuit + bio-composite + enzyme cartridge |
| 7 | Metabolism Reactor | 15 MW | Synth. Substrate 6/min | Adv bio-circuit + biocomposite + synth organelle |
| 8 | Symbiotic Conduit | 8 MW | Living Symbiont 4/min | Neural mesh + biocomposite + bioelectric harvester |
| 9 | Arcology Core | Self-sustaining | Internal ATP | Built into modules |

~3-4x per tier. All fuels from existing byproducts. Biogas from anaerobic digestion (compost overflow + fish waste). Pellets from dried crop waste. Ethanol from fermented sugars. Each fuel connects to a core resource loop.

**Fuel verification:** Era 3 biogas engine needs rubber gaskets. Rubber (dandelion latex) is an Era 3 material. Sequence: early Era 3 research unlocks dandelion cultivation → rubber processing → engine construction at mid-Era 3. Initial Era 3 power comes from carried Era 2 wind turbines (2x30 = 60 kW covers early machines).

---

## Breadcrumbs

Anomalies encountered during normal play. Experiential, not achievement-based.

- **A plant that grows wrong.** Visibly different. ~2% per harvest. Yields unusual specimen.
- **A machine produces something unexpected.** ~1% per evaporation/culture cycle.
- **Something washes ashore.** ~0.5% when placing new land tiles.

Stored in Specimen Archive. See payoff schedule in Core Systems section.

---

## Signature Mechanics

### Bio Web
Reward-first. Mutualistic: +30–50%. Commensal: +15–25%. Competitive: -10%. Monoculture: -5% per extra. Discovery-based — no menus reveal pairs. See relationship table above.

**Bio Web creates THINGS, not just stats.** The best interactions produce NEW ITEMS that only exist because of placement. Era 1: grass + kelp → Drift Spore. Era 2: iron vat + compost → occasional **Enriched Iron Oxide** (~10% chance per cycle, higher-purity precipitate for advanced recipes). Era 3: aquaculture + algae → **Symbiotic Biofilm** (~15% chance per harvest, a composite material neither organism produces alone). Bio Web bonus items are probability-based additional outputs — not guaranteed every cycle, but frequent enough that the player notices and investigates. The player discovers the Bio Web by seeing new things APPEAR, not by reading numbers. This is the design pattern for all Bio Web relationships going forward.

### Organism Drift
±10% yield variation. Vigorous specimens +1 output (5%). Anomalies (2%). Small population = fast drift. Expanding stabilizes.

---

## Era-by-Era Overview

### Era 1: Tidal Observations (1–1.5 hours)

**Discipline:** Marine biology, survival bootstrapping.

**Pacing — new unlock every 8-10 minutes:**
- Min 0–10: Place 50 mats (expand to ~60 tiles). Plant seeds. Place Tidal Generator. Build first machines with belts and inserters connecting them. Automated saltwater collection within 10 minutes.
- Min 10–20: Evaporation Tray running. First salt + brackish water flowing on belts. Drift Spore discovery.
- Min 20–30: Drying Rack + Fire Pit. Fuel economy automated — belts move dried kelp to fire pit.
- Min 30–45: Biomass Compressor + Calcium Vat. Stone from seawater. Island expansion beyond starting mats.
- Min 45–60: Grinding Slab, tools, first science packs. Second Tidal Generator for more power.
- Min 60–90: Desalination, seed extraction. → Era 2.

**Factory snapshot:** A small but real factory on ~60+ tiles. Belts connect 10 machines. Inserters load and unload. The tidal generator hums at the water's edge. Crops grow in organized rows between production lines. It looks like a tiny Factorio base — because it IS one.

~50 items. Science: Tidal Observation Kit. Chapter: "Tidal Observations"

---

### Era 2: Applied Cultivation (12–16 hours)

**Discipline:** Agricultural science, controlled environments, growing metals.

**Sub-milestones:**
- Hours 0–2: Scale up Era 1 chains. Stockpile brackish water. Research iron logistics → standard-speed belts (upgrade from Era 1 kelp belts).
- Hours 2–4: **Iron from bacteria.** Brackish water → iron vats → precipitate → bio-smelter → iron plate + slag. Slag → bio-cement. Spent medium → compost. The trailer scene.
- Hours 4–6: **Glass from diatoms.** Diatom ponds → frustule harvest → fuse → glass. Organic slurry → compost/fish feed. First green circuits.
- Hours 6–8: **Copper from plants.** Phytomining beds → metal-rich biomass → extract → copper. Depleted biomass → compost. Full circuit production.
- Hours 8–10: **Offshore cultivation platforms.** NOT just kelp at the waterline (that's Era 1). Floating platforms anchored to bio-cement pylons where NEW aquatic crops grow: algae mats, seaweed varieties, mineral-enriched kelp strains. The ocean becomes farmland. Activated carbon → water filtration → better culture yields.
- Hours 10–12: Greenhouses + Seed Classifier. CO₂ capture → greenhouse enrichment.
- Hours 12–16: Bio-cement scaling. N-fixing bacteria. Prepare Era 3.

**Key machines (est. 15):** Bacterial Culture Vat, Bio-Smelter, Diatom Pond, Frustule Processor, Phytomining Bed, Metal Extractor, Greenhouse, Irrigation System, Phenotypic Seed Classifier, Bio-Fiber Wind Turbine, Carbon Activator, CO₂ Capture Unit, MICP Cementation Bed. Standard iron-recipe belts + inserters replace Era 1 kelp logistics.

**Failure state:** Iron bacteria crash on undiluted saltwater. Teaches water management — use brackish.

**"Zoom In":** Greenhouse yields 30% more than outdoor. Same seeds, controlled variables. "This is experimental design."

**Factory snapshot:** Island tripled. Iron vat district. Diatom pond. Iron belts replacing kelp-stalk originals. Greenhouse on bio-cement. Wind turbine. Offshore kelp. A research station that produces iron.

~100–120 items. Science: Controlled Environment Dataset. Chapter: "Selective Cultivation"

---

### Era 3: Microbial Ecology (12–16 hours)

**Discipline:** Microbiology, fermentation, marine aquaculture, fungal cultivation.

**The revelation:** Soil Analyzer on the iron vat. "The bacteria you're using now are not the ones you started with."

**Major new systems:**

**Fermentation (the branching chain).** Sugar crop → mash → ferment → distill. Produces ethanol (fuel/solvent) + fusel oils (extraction reagent) + stillage (compost/fish feed) + yeast sediment (starter culture propagation). One input, five useful outputs. The player builds an ethanol plant and discovers they're also running a compost operation, a fish farm supply chain, and a chemistry lab.

**Aquaculture (active throughput challenge).** Fish ponds → harvest → fillet (yield depends on feed quality) → oil press → omega-3 concentrate → probiotic culture → enhanced fermentation starter. 7 steps. Bottleneck: press throughput. The player optimizes pond layout, feed composition (combining stillage + diatom slurry + algal cake), and processing ratios. Algae bloom risk if nutrients are imbalanced — the Bio Web enforcing ecological thinking.

**Mycelium cultivation (forward connection to Era 4+).** Fungal cultures grown on crop residue + bacterial cellulose substrate. Produces raw mycelium sheets. In Era 3 this is a specialty material (reinforced belt component, flexible gaskets). By Era 4 it becomes the basis for bio-composites. By Era 7 it's evolved into structural building material. The player starts growing fungi NOW and the payoff compounds across eras.

**Salt electrolysis (the branching process).** Salt brine + electricity → chlorine (water purification) + caustic soda (soap from fish oil, pH control for cultures, textile processing) + hydrogen gas (stored for Era 5 fuel cells). Three products from one process, each feeding different chains.

**Coral reef foundations.** MICP-enhanced coral analogs grow underwater. First sub-surface structures.

**Key machines:** Fermentation Vat, Distillation Column, Aquaculture Pond, Fish Processing Station, Oil Press, Biogas Digester, Mycelium Cultivation Bed, Electrolysis Cell, Soil Composition Analyzer, Algae Cultivation Tank, Coral Seeder. Plus Reinforced Fiber Belt + Chitin Inserter.

**Failure state:** Fermentation contamination. Wrong microbes → toxins instead of product. Teaches containment.

**Era 3 items (~110):**
- Marine animals: ~20 (fish, fillet, oil, roe, shellfish, chitin, eggs, feathers, fish meal)
- Fermentation: ~25 (ethanol, fusel oils, stillage, vinegar, soy-analog, tempeh, starter cultures, yeast extract)
- Algae: ~15 (algal cake, bio-oil, astaxanthin, spirulina, carrageenan, algal protein)
- Fungal: ~10 (raw mycelium, mycelium sheet, mycelium gasket, fungal culture, substrate)
- Chemistry: ~10 (chlorine, caustic soda, hydrogen, soap, bleach, pH solution)
- Microbial: ~15 (bacterial cellulose, enzymes, probiotic cultures, biogas, digestate)
- Machines + research: ~15

**"Zoom In":** "8.2 billion organisms per gram. This soil didn't exist 20 hours ago."

**Factory snapshot:** Zoned island. Bacterial district. Aquaculture wing into the ocean. Fermentation hall. Mycelium beds in shaded structures. Coral foundations underwater. The soil tells history — dark enriched zones near compost, lighter at expanding edges.

Science: Microbial Culture Dataset. Chapter: "The Invisible Ecosystem"

---

### Era 4: Applied Genetics (14–18 hours)

**Discipline:** Genetics, biochemistry, Mendelian inheritance.

**Genetics as a factory puzzle.** Stabilized cultivars with specific trait combinations unlock EXCLUSIVE products that gate downstream chains:

| Exclusive Product | Required Traits | Source Organism | Gates |
|------------------|----------------|-----------------|-------|
| Resilient Bio-Fiber | High Hardiness + High Yield | Saltmarsh Grass | Advanced bio-composite panels |
| Concentrated Fish Extract | High Oil + Slow Growth | Aquaculture Fish | Enzyme purification chain |
| Dense Kelp Stalk | High Yield + High Hardiness | Kelp | Heavy structural frames |
| Aromatic Glasswort | High Flavor + High Yield | Glasswort | Advanced fermentation starters |
| High-Starch Sea-Grain | High Yield + Low Fiber | Sea-Grain | Efficient ethanol production |
| Silica-Rich Diatom | High Yield + High Quality | Diatom Culture | Electronics-grade biosilica |
| Rapid-Growth Mycelium | High Growth Rate + High Yield | Fungal Culture | Fast bio-composite production |
| Oil-Dense Algae | High Yield + High Quality | Algae | Enriched bio-oil for power |

**How it plays:** "I need Resilient Bio-Fiber for my new machine. That needs high-hardiness + high-yield grass. My best grass is high-yield but low-hardiness. I need to breed in hardiness from a different line. But crossing introduces recessive alleles I don't want. The Heredity Analysis Station shows me: if I cross these two lines, 25% of offspring will be high-hardiness + high-yield. I need to grow 20 plants and select the 5 that hit both traits. Then stabilize the line over 3 generations." THIS is 14 hours of content.

**Generational cycling time (balance parameter):** One generation = one full crop cycle (~60s for Era 1 crops, potentially longer for Era 4 advanced cultivars — 90-120s). Stabilizing a line requires 3–5 generations of selective replanting from a 20-plant trial plot. That's ~10–15 minutes per stabilization attempt. The Seed Incubator machine (Era 4) halves generation time, making rapid iteration possible once the player invests in the infrastructure.

**Bioluminescent lighting.** Engineered bioluminescent organisms → functional light panels. Nutrient-fed, no electricity. The island gets its first bio-lights.

**Bio-composite maturation.** Mycelium (from Era 3) + bacterial cellulose + mineral matrix (calcium from seawater). The player's first steel-equivalent material. Recipes: structural frames, machine housings, pressure vessels.

**Key machines:** Heredity Analysis Station, Seed Incubator (accelerates generational cycling), Bio-Composite Fabricator, PHA Bioplastic Polymerizer, Enzyme Purifier, Bioluminescent Culture Vessel.

**Failure state:** Inbreeding depression. Same-line crosses without diversity → gradual yield decline. Teaches genetic diversity management.

**"Zoom In":** Fish breeding prediction matches. Retroactive understanding of Era 1 variation.

**Factory snapshot:** Research campus. Heredity Analysis Station prominent. Organized crop plots by generation. Breeding ponds. Bio-lights along walkways. Distillation column. Bio-composite fabrication wing.

~120 items. Science: Hereditary Analysis Folio. Chapter: "The Rules of Inheritance"

---

### Era 5: Molecular Biology (18–22 hours)

**Discipline:** Genomics, CRISPR, tissue culture, bio-accumulation.

**Marquee organisms and their chains:**

**Bio-Accumulator Kelp** — engineered to concentrate zinc from seawater at 2,000x.
```
Seawater → Bio-Accumulator Kelp Pond (120s growth) → Harvest enriched biomass
  → Kiln → Zinc-Rich Ash + CO₂ (→ algae)
  → Leach with Bio-Acid (from fermentation) → Zinc Precipitate + Leach Residue (→ compost)
  → Bio-Smelter → Zinc Plate + Slag (→ bio-cement)
```
6 steps, 3 byproducts routed elsewhere. The player needs a dedicated kelp-to-metal production line. Different engineered kelp strains for different metals (zinc, manganese, cobalt). Each strain is a separate CRISPR project — the player designs the accumulator gene for each metal target.

**Collagen Fish Cell Line** — cultured leather without animals.
```
Fish Cell Sample (from archive or Era 3 aquaculture) → Cell Line Isolation
  → Tissue Culture Vat + Nutrient Medium + Growth Factors
  → Raw Collagen Sheet + Spent Medium (→ compost)
  → Tanning with Bio-Acid → Cultured Leather
```

**Silicone-Secreting Diatom** — electronics-grade biosilica.
```
Modified Diatom Culture → Enhanced Diatom Pond (controlled conditions)
  → Harvest high-purity frustules + Organic slurry (→ fish feed)
  → Precision Fusing → Electronics-Grade Biosilica Wafer
```

**Living tools.** Chitin-keratin composite seeded with stem cells. Regenerate in Nutrient Bath machine (amino acids + growth factors → restored durability). Tools have a BIOLOGICAL maintenance cycle.

**Key machines:** Genomic Sequencing Array (3×3), CRISPR Editing Station, Guide RNA Synthesizer, Tissue Culture Vat, Nutrient Bath, Bio-Accumulator Pond, Precision Kiln, Cell Line Incubator.

**Failure state:** CRISPR off-target. Edit hits adjacent gene → unintended side effect. Solution: better guide RNA design (improvable recipe).

**The signature moment:** Sequence oldest crop line. 23 diverged loci. "You've been rewriting this genome since the first harvest."

**Factory snapshot:** Labs at center. Sequencing Array humming. Tissue vats producing leather. Bio-accumulator kelp ponds. Living tools on regeneration racks. Less farm, more research facility.

~100 items. Science: Genomic Annotation Compendium. Chapter: "The Source Code of Life"

---

### Era 6: Synthetic Biology (18–22 hours)

**Discipline:** Pathway design, xenocrops, biopharma, organism fusion.

**Marquee organisms and their chains:**

**Spider Silk Grain** — silk protein in grain seeds.
```
Genome Authoring Platform: Blank Grain Chassis + Spider Silk Gene Cassette + Strong Promoter
  → Spider Silk Grain Seed → Plant → Harvest
  → Protein Extraction Vat → Raw Silk Protein + Deproteinized Hull (→ ethanol feedstock)
  → Spinning Frame → Spider Silk Fiber (5x tensile strength of bio-composite)
  → Structural Weaving → Spider Silk Panel (high-performance construction material)
```

**Phosphorescent Moss** — bioluminescent ground cover.
```
Genome Authoring Platform: Fungal Chassis + Luciferase Cassette (from Era 4 Bioluminescent Culture)
  + Circadian Regulator + Nutrient Uptake Enhancer
  → Phosphorescent Moss Culture → Plant on any soil → Spreads slowly
  → Replaces powered lighting across the island
```
The luciferase gene cassette comes from the Era 4 Bioluminescent Culture Genome Atlas — the player transplants an existing gene into a self-spreading fungal ground cover. Self-sustaining: no power, no nutrient feeding.

**Methane-Eating Methanotroph** — converts biogas waste → PHA precursor.
```
Engineered Methanotroph Culture + Biogas input
  → PHA Precursor + CO₂ (→ algae) + Biomass (→ compost)
```
Closes the loop: biogas was a waste product becoming a fuel. Now it's also a plastic feedstock.

**The Genome Authoring Platform.** The era's signature machine. Inputs: blank genome chassis + gene cassettes + regulatory elements. Output: novel organism seed/culture. The player designs organisms in a combinatorial interface — choose a chassis, plug in pathways, set expression levels, synthesize.

**Implementation note:** This is the mod's biggest technical challenge. Ideally: a custom GUI with combinatorial organism design. Fallback: the player crafts gene cassettes as separate items (each a recipe), then combines chassis + cassettes in the Platform as a standard assembling-machine recipe. The fallback is less flashy but mechanically complete and implementable with standard Factorio modding tools.

**Organism fusion.** Combine genetic material from two organisms into a chimera. Traits from each parent, interactions unpredictable until phenotype validation.

**Key machines:** Genome Authoring Platform (4×4), Phenotypic Validation Chamber, Bio-Containment Lab, Protein Extraction Vat, Spinning Frame, Gene Cassette Synthesizer.

**Failure state:** Minor containment breach. Synthetic organism in soil. Bio Web shifts locally.

**Factory snapshot:** Sealed containment labs at center. Phosphorescent moss lighting paths (no more powered lights). Xenocrop plots behind membranes. The factory outputs things that have never existed.

~100 items. Science: Synthetic Organism Dossier. Chapter: "Authoring Life"

---

### Era 7: Directed Evolution (18–22 hours)

**Discipline:** Industrial biotech, evolution as manufacturing.

**Marquee organisms and their chains:**

**Structural Mycelium XM-12** — evolved for compressive strength.
```
Continuous Culture Evolution Engine:
  Input: Mycelium base culture + Selective Medium (pressure: compressive strength)
  + Mutagenic Primer + Nutrients
  → Run 2,000+ generations (30 min real-time)
  → Output: Evolved Biomass → Screening → High-Fitness Biomass
  → Mycelium Press → Structural Panel (self-repairs minor cracks)
```

**Hyper-Evolved Cellulase Producer** — cellulose → sugar at 340% efficiency.
```
Evolution Engine: Cellulase-producing bacteria + Selection: sugar output rate
  → Evolved Cellulase Producer → Culture at scale
  → Process ANY cellulose waste (crop residue, kelp, mycelium trim)
  → Fermentable Sugar (feeds ethanol chain at massively improved efficiency)
```
This organism transforms the entire ethanol economy. Crop waste that was marginal fuel feedstock becomes premium ethanol input.

**Bio-Boat Hull Organism** — grows hull on scaffold.
```
Scaffold Frame (bio-composite) → Dip in Hull Organism Culture Vat (30 min)
  → Extract grown hull → Attach Bio-Rubber fittings → Bio-Boat
```

**The Evolution Engine.** 4×4 machine. Inputs: base organism culture + selective medium (defines which trait to optimize) + mutagenic primer (controls mutation rate) + nutrients. Runs for 15-45 min (real time), simulating 1,000-5,000 generations. Outputs evolved biomass that the player screens for desired traits.

**Failed runs produce unexpected organisms, not wasted inputs.** An evolution run optimizing for compressive strength might fail on that goal but accidentally produce an organism with unusual bioluminescence or chemical resistance. The player receives a random "Divergent Strain" — an organism that doesn't do what they wanted but might be useful elsewhere. Some divergent strains are BETTER than what the player asked for, in unexpected ways. Failure becomes discovery. This is consistent with real directed evolution, where off-target results often prove more valuable than the original objective.

**Offshore expansion.** Photobioreactor arrays on floating platforms. Bio-boats shuttle materials. The player's base is an archipelago.

**Key machines:** Continuous Culture Evolution Engine (4×4), Strain Screening Station, Fitness Analyzer, Mycelium Press, Industrial Photobioreactor, Bio-Boat Assembly Dock, Algal Fractionator.

**Failure state:** Over-competitive evolved organism spreads via spores to adjacent systems.

**The containment breach event.** Escaped organism → soil changes → plant growth changes → Bio Web shifts. NOT a disaster — a revelation and a choice.

**Factory snapshot:** Sprawling complex. Offshore arrays. Evolution Engines churning. Mycelium presses. Bio-boats between platforms. The factory hums with millions of organisms.

~100 items. Science: Evolutionary Dynamics Report. Chapter: "The Optimization Engine"

---

### Era 8: Living Systems (18–22 hours)

**Discipline:** Bioarchitecture, emergence, neural mesh.

**Marquee organisms and their chains:**

**Self-Healing Wall Composite.**
```
Structural Mycelium XM-12 (Era 7) + Neural Relay Thread + Calcium Bio-Matrix
  → Self-Healing Panel Assembly → Place as wall
  → When damaged: mycelium detects crack via chemical signal → grows to fill → repairs in 4h
  → Requires: ambient nutrient supply (vascular conduit connection)
```

**Bioluminescent Ceiling Biofilm.**
```
Phosphorescent Moss (Era 6) + Biofilm Substrate + Circadian Signal Compound
  → Ceiling Panel → Install
  → Brightens at dawn, dims at dusk. No power, no maintenance.
```

**Neural Relay Mesh** — biological wire.
```
Cultured Neuron Line (from Era 5 tissue culture) + Biofilm Substrate + Signal Compound
  → Neural Relay Strand → Install between machines
  → Carries control signals. Biological circuit network.
  → Self-repairs if damaged (regrows connections in ~6h)
```

**Living vascular logistics.**
```
Vascular Conduit Organism + Bio-Cement Channel + Nutrient Solution
  → Vascular Conduit (replaces belt for internal arcology transport)
  → Items suspended in biological fluid, transported by peristaltic pumping
  → Self-routing: conduits grow toward demand (machines requesting items)
```

**The factory's metabolism.** Living systems produce metabolic waste that accumulates. The player must add Lymphatic Filter Nodes (waste-processing organisms) to maintain system health. If waste builds up, output drops. If the player installs proper filtration, the system IMPROVES over time as organisms optimize. The factory gets healthier with good maintenance, sicker without it.

**Key machines:** Living Architecture Seed Incubator, Vascular Conduit Fabricator, Neural Mesh Loom, Lymphatic Filter Node, Living System Integrity Dashboard, Morphogenetic Scaffold (guides living structure growth).

**Failure state:** Metabolic waste accumulation → output drops. Lymphatic nodes fix it. Also: the building that resists demolition.

**Factory snapshot:** The factory IS an organism. Self-healing walls. Bio-luminescent ceilings. Vascular conduits pulse. Dashboard flickers green/yellow. The distinction between building and living system has dissolved.

~100 items. Science: Systems Emergence Analysis. Chapter: "Emergent Architecture"

---

### Era 9: Genesis (25–35 hours)

**Discipline:** Planetary biology, biosphere authorship.

**Arcology modules (what the player builds):**

| Module | Function | Key Organisms |
|--------|----------|---------------|
| Biodome | Crop production, photosynthesis, atmosphere | Photosynthetic Canopy Array, Pollination Chimera XB-91 |
| Aquatic Systems | Water processing, fish, hemolymph | Aquatic Filtration Chimera XB-58, Aquaponic Ring |
| Energy Nexus | ATP production, power distribution | Energy Converter Chimera XB-77, Mitochondrial Cluster |
| Workshop | Material fabrication from biological inputs | Biofabrication Loom, Structural Secretor XB-31 |
| Research Wing | Genesis Transcription Array, final science | Neural Integrator Chimera XB-99 |
| Habitat | Player living quarters (aesthetic) | Thermal Regulator XB-07, Atmospheric Processor XB-19 |
| Ecology Monitor | Biosphere tracking, intervention tools | Sentinel Drone Hive, Soil Architect XB-85 |

Each module grows from a **Living Architecture Seed** (48 min real-time growth, requires continuous fluid feed). Modules connect via vascular conduits. Once all modules are online and interconnected, the arcology becomes self-sustaining.

**What fills 25-35 hours (three major activities):**

**1. Chimera commissioning (~8-12 hours).** The arcology needs 12 chimera organism types (XB-07 through XR-00), each designed in the Genome Authoring Platform, evolved in the Evolution Engine, validated in the Phenotypic Validation Chamber, and produced at scale. Each chimera is a multi-step project: design the genome → evolve for fitness → validate phenotype → culture at production scale → deploy to target module. Some chimeras fail validation and need redesign. Some interact unexpectedly with other chimeras already deployed. The player is commissioning a living ecosystem one organism at a time.

**2. Ecological tuning (~8-12 hours).** Once modules and chimeras are online, the biosphere oscillates. Nutrient flows spike and crash. Populations boom and bust. Waste accumulates in unexpected locations. The player adjusts: redirect vascular conduit flows, add/remove lymphatic filter nodes, adjust chimera population ratios, modify nutrient input schedules. This is active problem-solving — not watching a dashboard, but diagnosing and treating a living system that keeps surprising you. Each adjustment propagates through the ecosystem with delayed consequences. Stabilization is iterative.

**3. The Omega Organism project (~5-8 hours).** Gathering archived specimens from every era (9 total), synthesizing the final organism. Some specimens need re-analysis with Era 9 tools before they can be used. The Omega Organism's genome must be designed to INCORPORATE genetic material from all 9 sources — a final Genome Authoring Platform project that tests everything the player learned. When XR-00 is complete and deployed, it completes the Biosphere Genesis Record — the final science pack — and triggers the endgame sequence.

**The ecology surprises you.** Organisms form relationships never specified. New variants appear. Life is originating life. The Biosphere Equilibrium Index shows the system oscillating, stabilizing, occasionally spiking.

**Failure state:** Ecological instability. Some relationships don't hold. Some organisms drift. The player rebalances. Eventually lets go. Release is the achievement.

**Factory snapshot:** Not a factory. A living world. Biodome canopies. Vascular conduits pulse. Chimera organisms perform atmospheric processing, structural repair. The player watches something they authored evolve beyond their design.

~90 items. Science: Biosphere Genesis Record. Chapter: "Genesis"

---

## Cross-Era Threads

### 1. Selection
| Era | Scale |
|-----|-------|
| 1 | Individual plants, ~60 tiles |
| 2 | Conditions for populations |
| 3 | Invisible organism strains |
| 4 | Multi-generational crosses |
| 5 | Molecular precision (CRISPR) |
| 6 | Systems-level pathway design |
| 7 | Evolutionary trajectories |
| 8 | Emergent network properties |
| 9 | Biosphere-level parameters |

### 2. Land
~60 → ~100 → ~500 → 2,000 → 10,000 → 100,000+ → the island IS the arcology.

### 3. Observation
Naked eye → Measurement → Instruments → Patterns → Molecular → Regulatory → Statistics → Emergence → Biosphere.

### 4. Control → Release
Every seed by hand → Automated → Designed evolution → Emergent → Release.

### 5. Uncertainty
"Why bigger?" → "Conditions matter" → "Microbes" → "Rules" → "The gene" → "I designed this" → "Evolution found something" → "The system is becoming" → "It doesn't need me."

---

## Science Packs

| Era | Name | Key Ingredients | Theme |
|-----|------|----------------|-------|
| 1 | Tidal Observation Kit | Dried Kelp + Plant Fiber + Sea Salt + Calcium Precipitate | Coastal ecology |
| 2 | Controlled Environment Dataset | Select Seed + Bacterial Iron + Diatom Silica + Nutrient Amendment | Controlled cultivation |
| 3 | Microbial Culture Dataset | Soil Sample + Active Culture + Algal Extract + Partial Readout | Invisible life |
| 4 | Hereditary Analysis Folio | Pedigree Doc + Enzyme Isolate + Stabilized Cultivar + Exclusive Product | Inheritance |
| 5 | Genomic Annotation Compendium | Genome Atlas + Guide RNA + Tissue Sample + Bio-Accumulator Extract | Molecular code |
| 6 | Synthetic Organism Dossier | Gene Cassette + Xenocrop Sample + Chimeric Tissue + Containment Report | Authorship |
| 7 | Evolutionary Dynamics Report | Evolved Enzyme + Trajectory Map + Mycelial Composite + Fitness Data | Optimization |
| 8 | Systems Emergence Analysis | Self-Healing Sample + Neural Mesh + Integrity Data + Lymphatic Filtrate | Emergence |
| 9 | Biosphere Genesis Record | De Novo Genome + Equilibrium Data + Repository Entry + Archive Specimen | Creation |

Each pack requires products from 4 chains within its era, enforcing breadth.

**Production pattern:** Each era produces the NEXT era's science pack while consuming the current era's pack for research.
- TOK: produced in Era 1, consumed in Era 1 + Era 2
- CED: produced in Era 2, consumed in Era 3
- MCD: produced in Era 3, consumed in Era 4
- HAF: produced in Era 4, consumed in Era 5
- (Pattern continues for Eras 5-9)

The player must maintain PREVIOUS era infrastructure (to keep producing the current science pack) while building NEW infrastructure (to produce the next pack). Old chains never become obsolete — they feed the current research. This reinforces the ecosystem design: nothing gets torn down, everything stays connected.

**Lab compatibility:** The Field Notebook Station (Era 1 lab) accepts ALL bio-science packs across all eras. One lab type for the whole game. No "build a new lab each era" busywork.

---

## Duration

| Era | Hours | Cumulative |
|-----|-------|-----------|
| 1 | 1–1.5 | 1–1.5 |
| 2 | 12–16 | 13–17.5 |
| 3 | 12–16 | 25–33.5 |
| 4 | 14–18 | 39–51.5 |
| 5 | 18–22 | 57–73.5 |
| 6 | 18–22 | 75–95.5 |
| 7 | 18–22 | 93–117.5 |
| 8 | 18–22 | 111–139.5 |
| 9 | 20–28 | 131–167.5 |

**Total: ~131–168 hours.**

---

## Tone

| Era | Tone | Example |
|-----|------|---------|
| 1 | Warm, resourceful | "Kelp stalk. It will have to serve as timber. You'll grow something better." |
| 2 | Excited, discovering | "Iron precipitate. Bacteria pulled this from the same seawater that tried to kill you." |
| 3 | Revelatory | "8.2 billion organisms per gram. This soil didn't exist last week." |
| 4 | Precise | "Offspring prediction: 75% high yield. Confirmed. Genetics is deterministic." |
| 5 | Clinical, cautious | "You can rewrite it. Should you?" |
| 6 | Technical, uneasy | "This organism belongs to no kingdom. It belongs to you." |
| 7 | Industrial, warned | "Evolution found a solution. You may not understand what it found." |
| 8 | Awed | "The building is resisting demolition." |
| 9 | Transcendent | "This is biogenesis. The origin of life. And you were it." |

---

## Design Notes for Era Docs

Open questions and implementation details that each era doc must resolve:

**Resolved:**
- **No void machines.** Every machine draws real power. Biological processes that are "passive" in reality still need aeration pumps, temperature regulation, circulation motors, or monitoring systems — 1-3 kW for biological machines, 5-15 kW for industrial machines. This is a factory game; power management matters at every scale.
- **Food is a recipe ingredient.** No hunger mechanic. Food items are used in: (a) Growth Medium recipes (compost extract + food items as carbon source), (b) Culture Medium recipes (fermentation starters, bacterial feeds), (c) Science pack sub-recipes where appropriate, (d) Feed recipes for aquaculture. Every food item must have at least one recipe use in the era it's introduced.
- **Crop growth: 60-second base cycle.** Plants are placed as seedling entities, grow to mature entities after 60 seconds (base rate, modified by compost proximity, water quality, greenhouse). Harvestable by hand (mining) or by machine (see automated farming). Growth timer implemented in control.lua via entity swap.
- **Automated farming.** Era 1-2: manual planting and harvesting (hand-mine mature crops, hand-place seeds). Era 2 Greenhouses: crops inside greenhouses are harvested by inserters (greenhouse entities have an output inventory that fills when internal crops mature — the greenhouse IS the automation). Era 3+: Automated Planter machine (2×2, 5 kW, takes seeds from belt input, places crop entities in adjacent tiles, harvests mature crops to output). This is the transition from manual farming to industrial agriculture.
- **Compost Extract.** Defined item: 2 Finished Compost + 1 Freshwater → 1 Compost Extract (hand, 3s). Liquid nutrient concentrate used in Growth Medium, culture starters, Nutrient Solution.
- **Logistics is vanilla Factorio.** Standard belts/inserters/trains/bots with biological recipes. Era 1 has slow kelp-stalk belts + inserters. Era 2 upgrades to standard-speed iron belts. Era 3+ adds fast/express tiers with chitin + PHA. Era 8 vascular conduits are an arcology-specific addition, not a belt replacement. Trains in Era 5-6. Boats in Era 7. The logistics PUZZLE is Factorio; the biology is in WHAT you move, not HOW.

**Open:**
- (none remaining — all resolved)

**Recently Resolved:**
- **Genetic Profile formula — RESOLVED.** Linear model: trait/50 = output multiplier. Trait 50 = 1.0x (baseline). Trait 0 = 0.0x (dead). Trait 100 = 2.0x (maximum). Trait 75 = 1.5x. This applies to Yield (harvest quantity), Growth Rate (growth speed), Hardiness (environmental tolerance), Nutrient Demand (inverted — higher = more demanding), Flavor/Quality (product quality/value), Symbiotic Affinity (Bio Web bonus strength), Mutagenic Potential (mutation rate in evolution). Simple, universal, one formula everywhere.
- **Capstone tech verification — RESOLVED.** All era docs use production milestones (produce ≥X items) and infrastructure milestones (build ≥Y machines) as verifiable capstone prerequisites. No unverifiable conditions remain.
- **Era 5+ trace metal list — RESOLVED.** Three trace metals introduced in Era 5: zinc (electronics, fuel cell electrodes, galvanization), manganese (bio-batteries, enzyme activator), cobalt (magnets, catalysts, hydrogenation). Used through Era 8. No additional metals needed — bio-composite and enzyme catalysts replace most metal requirements.
- **Era 7 Divergent Strains — RESOLVED.** 6 types defined (Luminescent, Rapid-Growth, Adhesive, Conductive, Pigment, Corrosion-Resistant). Each has uses. 4 can be fed back into Evolution Engine. Documented in Era 7 doc.

**Era-specific:**
- **Era 3: Fermentation uses unoptimized sea-grain.** Era 4 genetics (High-Starch Sea-Grain exclusive product) is what makes ethanol economical. Era 3 fermentation works but is intentionally inefficient — creating a clear upgrade path into Era 4.
- **Era 7: Divergent Strain identification.** Failed evolution runs produce unknown organisms. The Strain Screening Station reveals their traits. Some are valuable. Era 7 doc must define: how many possible divergent strain types exist? What are their potential uses? Can they be fed back into the Evolution Engine as inputs?
- **Era 8: Vascular conduit routing — RESOLVED.** Option (c): player places conduit entry/exit pairs (like underground belts), conduit grows between them. 20-tile max range. Express belt speed. Embedded in living architecture walls. +10% throughput bonus after 30 min of stable flow. Standard belts/trains continue for all external logistics. Conduits are internal arcology transport only.
- **Era 9: Chimera count — RESOLVED.** 12 chimera types defined: XB-07 (Thermal Regulator), XB-19 (Atmospheric Processor), XB-31 (Structural Secretor), XB-42 (Soil Architect), XB-58 (Aquatic Filtration), XB-66 (Photosynthetic Canopy), XB-71 (Immune Sentinel), XB-77 (Energy Converter), XB-85 (Nutrient Recycler), XB-91 (Pollination), XB-99 (Neural Integrator), XR-00 (Omega Organism). The 3 Ecology Monitor chimeras (42, 71, 85) serve ecosystem-wide functions. XB-99 connects all neural mesh. XR-00 is the keystone that unifies all chimeras.
