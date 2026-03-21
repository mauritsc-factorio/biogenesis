# BIOGENESIS: Era 5 — The Source Code of Life

**Status:** DRAFT v2
**Date:** 2026-03-21
**Duration:** 18–22 hours
**Discipline:** Genomics, CRISPR, tissue culture, bio-accumulation
**Tone:** Clinical, cautious — "You can rewrite it. Should you?"
**Core Insight:** The rules you learned in Era 4 are written in a molecule. You can now read it, and edit it.
**Research Chapter:** "The Source Code of Life"
**Science Pack:** Genomic Annotation Compendium

---

## 1. INHERITED STATE

The player enters Era 5 with:
- **Island:** ~2,000-5,000 tiles with genetics infrastructure (trial plots, breeding ponds, analysis stations)
- **Materials:** All Era 1-4 materials + bio-composite, PHA bioplastic, red circuits, industrial enzymes, exclusive cultivar products, fractional chemistry intermediates
- **Machines:** ~55 machine types across Eras 1-4. Breeding production lines, fermentation, aquaculture, electrolysis, bio-composite fabrication all running.
- **Power:** ~595-625 kW (tidal + wind + biogas + biomass boiler)
- **Logistics:** Standard + fast + express belts/inserters. Automated Planters handling routine agriculture.
- **Science:** HAF (Hereditary Analysis Folio) production established
- **Genetics:** Full Mendelian breeding. 4 traits visible with numeric values + dominance. 8 exclusive cultivars stabilized.
- **Bio Web:** Visible overlay. Symbiotic Affinity trait affects bonus magnitudes (Era 4).

**What changes:** The Genomic Sequencing Array reveals ALL 7 traits with full numeric values — including the three that were locked since Era 1 (Flavor/Quality, Symbiotic Affinity, Mutagenic Potential). CRISPR editing replaces multi-generational breeding with single-step precision edits. Tissue culture eliminates the need for whole organisms to produce biological materials. Bio-accumulation opens access to trace metals that don't exist dissolved in seawater at useful concentrations — the player ENGINEERS organisms to concentrate them. The island transitions from farm to research campus.

---

## 2. THE GENOMICS MECHANIC — HOW IT WORKS

### Two Tiers of CRISPR

**Simple Edits (trait boosting).** Boost an existing trait toward maximum. The organism already HAS the gene — CRISPR just improves its expression.
- Input: 1 Target Seed + 1 Trait-Specific Guide RNA + 1 Sequencing Reagent (for post-edit verification)
- Output: 1 Edited Seed (target trait boosted to 85-95, from Era 4 breeding's ~65-75)
- Time: 30s
- Off-target risk: 10% (a DIFFERENT trait gets modified instead — could be better or worse. Detected by the built-in verification.)
- Cost: Guide RNA synthesis + Sequencing Reagent per edit. Not free — editing your entire crop fleet is a material investment.

**Complex Edits (gene insertion).** Insert a gene from ANOTHER organism. The target organism gains a capability it never had.
- Input: 1 Target Seed + 1 Gene-Specific Guide RNA + 1 Gene Template (extracted from source)
- Output: 1 Edited Seed (gains new capability) + 1 Verification Sample
- Time: 60s
- Off-target risk: 20% (edit lands in wrong location — organism gains an unintended modification)
- Verification REQUIRED: Sequencing Array checks the Verification Sample → confirmed or off-target
- This is how Bio-Accumulator organisms, enhanced diatoms, and tissue-optimized cell lines are made

**The power shift:** Era 4 breeding = probabilistic, multi-generational, slow but safe. Era 5 CRISPR = precise, single-step, fast but risky. The player doesn't ABANDON breeding — stabilized lines are still needed as base stock for CRISPR. But the ceiling goes from ~75 (breeding max) to ~95 (CRISPR max). Organisms the player couldn't breed (combining traits from DIFFERENT species) are now possible.

### The Full Genomics Workflow

```
EXISTING ORGANISM (seed, culture, tissue sample)
  │
  ▼
GENOMIC SEQUENCING ARRAY (3×3, 30 kW)
  → Input: organism + Sequencing Reagent
  → Output: Genome Atlas (item — represents full sequence)
  → Output: Full 7-trait numeric readout visible on all organisms of that species
  │
  ▼
GUIDE RNA SYNTHESIZER (2×2, 15 kW)
  → Input: Genome Atlas + Nucleotide Reagent
  → Output: Guide RNA (trait-specific OR gene-specific)
  → Different recipes for different targets
  │
  ▼
CRISPR EDITING STATION (2×2, 20 kW)
  → Simple: Target Seed + Guide RNA → Edited Seed
  → Complex: Target Seed + Guide RNA + Gene Template → Edited Seed + Verification Sample
  │
  ▼
SEQUENCING ARRAY (verification mode)
  → Input: Verification Sample + Sequencing Reagent
  → Output: Verified Edit (success) OR Off-Target Report (failure)
  → Off-target organisms are NOT wasted — they have unexpected modifications that may be useful
```

### Trait Visibility (Era 5 Upgrade)

ALL seven traits now show full numeric values:

```
Saltmarsh Grass — Generation F47 (descended from starting stock)
  Yield:            92 — Homozygous Dominant [CRISPR-edited Gen F41]
  Growth Rate:      71 — Heterozygous
  Hardiness:        88 — Homozygous Dominant [CRISPR-edited Gen F43]
  Nutrient Demand:  34 — Homozygous Recessive [bred low, Era 4]
  Flavor/Quality:   61 — Heterozygous          ← NEW: previously hidden
  Symbiotic Affinity: 78 — Heterozygous        ← NEW: now a CRISPR target
  Mutagenic Potential: 23 — Homozygous Recessive ← NEW: affects Era 7 evolution
```

**The three newly visible traits create new optimization targets:**
- **Flavor/Quality:** Higher = better food products, better fermentation starters, higher-value algae extracts. Directly upgrades the food→culture medium chain.
- **Symbiotic Affinity:** Higher = stronger Bio Web bonuses. A CRISPR-edited crop with Symbiotic Affinity 95 gets +50% from compost proximity instead of the base +25%. This makes Bio Web layout even more rewarding.
- **Mutagenic Potential:** Low = stable (good for production lines, predictable output). High = volatile (useful in Era 7 Directed Evolution where mutation rate matters). The player must decide: stability now, or mutation potential later?

---

## 3. TIMELINE

### Hours 0–3: Genomic Sequencing + The Revelation

**What unlocks:** Genomic Sequencing Array, full trait visibility, archive specimen analysis.

**What the player does:**
- Research "Genomic Sequencing" (first Era 5 tech, 4 HAF)
- Build Genomic Sequencing Array (3×3 — the largest machine yet. Recipe: 6 Bio-Composite Plate + 4 Red Circuit + 4 Fused Silica + 2 PHA Housing)
- Craft Sequencing Reagent (PHA Tube + Bio-Ethanol + Purified Water → 2 reagents)
- Sequence their oldest crop line — THE SIGNATURE MOMENT

**The moment:** The player feeds their Generation-F47 saltmarsh grass seed into the Sequencing Array. The readout appears:

*"Genome sequenced. 31,847 base pairs mapped. 23 loci diverged from wild-type ancestor. Mutations at positions 4,291 (yield regulator — enhanced), 8,107 (hardiness promoter — duplicated), 12,443 (growth rate — heterozygous variant)... This organism is not what you planted on day one. You have been rewriting this genome since the first harvest. Every selection, every replanting, every environment — they all left marks in the code."*

The player immediately wants to sequence EVERYTHING. Their diatom culture. Their iron bacteria. Their kelp. Every organism in the factory has a story written in its genome.

**"Zoom In":** "31,847 base pairs. 23 diverged loci. You've been rewriting this genome since the first harvest."

**Archive specimen sequencing.** Four specimens from earlier eras can now be sequenced:
| Specimen | Found In | Sequencing Reveals | Forward Use |
|----------|---------|-------------------|-------------|
| Unusual Kelp Specimen (Era 1) | Kelp harvest | Salt-tolerance gene with metal-binding domain. Can be extracted as Gene Template. | Bio-Accumulator organisms (this era) |
| Tidal Deposit (Era 1) | Land placement | Ancient marine organism genome. Chemosynthesis metabolic pathway. | Methane-Eating Methanotroph (Era 6) |
| Iridescent Iron Oxide (Era 2) | Iron vat Bio Web | Iron-oxidizing gene variant 3x more efficient than standard strain. | High-Yield Iron Bacteria (this era) |
| Anomalous Fermentation Byproduct (Era 3) | Fermentation vat | Novel enzyme gene — no match in any known database. | Gene cassette for xenocrop design (Era 6) |
| Self-Modifying Culture Sample (Era 3) | Culture Isolator | Contains a CRISPR-like self-editing mechanism. The organism edits its own genome. | Directed Evolution research (Era 7) |
| Spontaneous Hybrid Seedling (Era 4) | Trial plot breeding | Horizontal gene transfer — genes from a DIFFERENT species integrated naturally. | Organism Fusion system (Era 6) |

The archive pays off. Every weird thing the player stored for 50-80 hours now has a genome to read.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Sequencing Reagent | Crafting: 1 PHA Tube + 1 Bio-Ethanol + 1 Purified Water → 3 | 100 | Consumed per sequencing run. |
| Genome Atlas | Sequencing Array output | 50 | Per species. Represents full genome data. Used in Guide RNA synthesis. |
| Archived Genome Atlas | Sequencing archived specimens | 20 | Per specimen. Contains unique genes not found in cultivated organisms. |

### Hours 3–6: Guide RNA + CRISPR Editing

**What unlocks:** Guide RNA Synthesizer, CRISPR Editing Station, simple trait edits.

**What the player does:**
- Research "Guide RNA Design" (3 HAF). Then "CRISPR Gene Editing" (5 HAF).
- Build Guide RNA Synthesizer (2×2. Recipe: 4 Bio-Composite Plate + 2 Red Circuit + 2 Fused Silica)
- Craft Nucleotide Reagent (1 Algal Protein + 1 Phosphorus Concentrate + 1 Purified Water → 2)
- Synthesize first Guide RNA: Genome Atlas + Nucleotide Reagent → Yield Guide RNA (15s)
- Build CRISPR Editing Station (2×2. Recipe: 4 Bio-Composite Plate + 4 Red Circuit + 2 PHA Housing + 1 Purified Industrial Enzyme)
- Perform first simple edit: take a breeding line at Yield 72, edit with Yield Guide RNA → Yield jumps to 88-95

**The upgrade over breeding:** Era 4 required 3-5 generations (~15 min) to stabilize a dual-trait cultivar at ~65-75 per trait. CRISPR edits ONE trait to 85-95 in 30 seconds. Two edits = 1 minute. The player's exclusive cultivar products get dramatically more productive.

**But CRISPR has costs.** Sequencing Reagent and Nucleotide Reagent require PHA, ethanol, algal protein, and phosphorus — materials from 4 different Era 3-4 chains. A single edit is cheap. Editing your entire crop fleet is expensive. The player must prioritize: which organisms benefit most from CRISPR enhancement?

**Guide RNA types (simple edits):**
| Guide RNA | Target Trait | Typical Result | Era Available |
|-----------|-------------|----------------|---------------|
| Yield Guide RNA | Yield | 85-95 (from ~70) | 5 (immediate) |
| Growth Guide RNA | Growth Rate | 85-95 | 5 (immediate) |
| Hardiness Guide RNA | Hardiness | 85-95 | 5 (immediate) |
| Efficiency Guide RNA | Nutrient Demand | 10-20 (lower = less demanding) | 5 (immediate) |
| Quality Guide RNA | Flavor/Quality | 85-95 | 5 (after sequencing) |
| Symbiosis Guide RNA | Symbiotic Affinity | 85-95 | 5 (after sequencing) |
| Stability Guide RNA | Mutagenic Potential | 5-15 (low = stable) | 5 (after sequencing) |
| Volatility Guide RNA | Mutagenic Potential | 85-95 (high = mutable) | 5 (after sequencing) |

All guide RNAs use the same recipe template (Genome Atlas + Nucleotide Reagent) but as different recipe variants in the Guide RNA Synthesizer. Each targets a specific trait.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Nucleotide Reagent | Crafting: 1 Algal Protein + 1 Phosphorus Concentrate + 1 Purified Water → 2 | 100 | Guide RNA synthesis ingredient. |
| Guide RNA (7 trait variants + gene-specific) | Guide RNA Synthesizer | 50 | Per-trait targeting molecule. Consumed on use. |
| Edited Seed (per organism type) | CRISPR Editing Station | 200 | Enhanced organism. Places crop with CRISPR-modified traits. |
| Verification Sample | Complex CRISPR output | 50 | Must be verified by Sequencing Array before trusting the edit. |
| Off-Target Report | Verification failure | 20 | The edit didn't land where intended. Organism has unexpected modification. |

### Hours 6–9: Bio-Accumulation — New Metals From Engineered Life

**What unlocks:** Bio-Accumulator Pond, Precision Kiln, three new metal chains (zinc, manganese, cobalt). Gene Template extraction.

**What the player does:**
- Research "Bio-Accumulation Engineering" (5 HAF)
- Extract Salt-Tolerance Gene Template from Unusual Kelp Specimen (archived Era 1): Archived Genome Atlas + Nucleotide Reagent → Salt-Tolerance Gene Template (Guide RNA Synthesizer, 30s)
- Perform first COMPLEX CRISPR edit: Standard Kelp Seed + Accumulator Guide RNA + Salt-Tolerance Gene Template → Bio-Accumulator Kelp Seed + Verification Sample
- Verify: Verification Sample → Sequencing Array → confirmed (80%) or off-target (20%)
- Build Bio-Accumulator Pond (3×3. Recipe: 6 Bio-Composite Plate + 4 Iron Plate + 2 PHA Tube + 2 Bio-Cement). Placed at water's edge.
- Plant Bio-Accumulator Kelp → concentrated metal harvest

**Three bio-accumulator chains (each a separate CRISPR project):**

**Zinc** (from zinc-accumulating kelp):
```
Bio-Accumulator Kelp Seed → Bio-Accumulator Pond (120s growth)
  → Harvest: 2 Zinc-Rich Biomass + 1 Bio-Accumulator Kelp Seed (sustaining)
  → Precision Kiln (15s): Zinc-Rich Biomass → Zinc-Rich Ash + CO₂ (→ algae)
  → Bio-Acid Mixer (20s): Zinc-Rich Ash + Bio-Acid → Zinc Precipitate + Leach Residue (→ compost)
  → Bio-Smelter (10s): Zinc Precipitate → Zinc Plate + Slag (→ bio-cement)
```
**Uses:** Enzyme Catalyst Cartridges (fuel cell electrodes), galvanized bio-composite (corrosion resistance for offshore structures), electronics-grade solder.

**Manganese** (from manganese-accumulating algae):
```
Manganese-Accumulating Algae Spore → Algae Cultivation Tank (90s growth)
  → Harvest: 2 Manganese-Rich Biomass + 1 Spore (sustaining)
  → Precision Kiln (15s): → Manganese-Rich Ash + CO₂
  → Bio-Acid Mixer (20s): → Manganese Compound + Leach Residue
```
**Uses:** Bio-battery cathode (energy storage — buffer for fuel cell output fluctuation), enzyme activator (improves enzyme purification yield by 25%).

**Cobalt** (from cobalt-accumulating seaweed):
```
Cobalt-Accumulating Seaweed Spore → Bio-Accumulator Pond (150s growth — slowest)
  → Harvest: 1 Cobalt-Rich Biomass + 1 Spore (sustaining)
  → Precision Kiln (15s): → Cobalt-Rich Ash + CO₂
  → Bio-Acid Mixer (25s): → Cobalt Compound + Leach Residue
```
**Uses:** Magnetic components (train signaling), catalyst for hydrogenation reactions (Era 3 hydrogen finally has a use — hydrogenated bio-oils are more stable for fuel cells).

**Bio-Acid** (the leaching reagent):
```
Fusel Oils (Era 3 distillation byproduct) + Sulfuric Acid (Era 3)
  → Bio-Acid Mixer (10s)
  → Bio-Acid
```
This connects Era 3's fermentation chain (fusel oils) and electrolysis chain (sulfuric acid) to Era 5's metal production. Old infrastructure feeds new chains.

**Gene Template extraction (for each metal):**
Each bio-accumulator organism requires a different Gene Template. Zinc comes from the archived Unusual Kelp Specimen. Manganese and cobalt require extracting accumulator genes from CRISPR-enhanced organisms:
- Manganese: Edit algae with Manganese-Binding Gene Template (extracted from sequenced Iridescent Iron Oxide specimen — the iron-binding gene variant, modified for manganese affinity)
- Cobalt: Edit seaweed with Cobalt-Chelation Gene Template (synthesized from Genome Atlas data — the first purely DESIGNED gene, not extracted from nature)

The cobalt template is significant: it's the first gene the player WRITES rather than copies. A preview of Era 6 synthetic biology.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Salt-Tolerance Gene Template | Guide RNA Synthesizer (from archived specimen) | 20 | Extracted from Unusual Kelp Specimen. Key to bio-accumulation. |
| Manganese-Binding Gene Template | Guide RNA Synthesizer (from Iridescent Iron Oxide) | 20 | Modified from iron-binding variant. |
| Cobalt-Chelation Gene Template | Guide RNA Synthesizer (first synthetic design) | 20 | Player-designed gene. Preview of Era 6. |
| Bio-Accumulator Kelp Seed | CRISPR Editing Station | 200 | CRISPR-engineered. Concentrates zinc 2,000x. |
| Manganese-Accumulating Algae Spore | CRISPR Editing Station | 200 | CRISPR-engineered. Concentrates manganese. |
| Cobalt-Accumulating Seaweed Spore | CRISPR Editing Station | 200 | CRISPR-engineered. Concentrates cobalt. |
| Zinc-Rich Biomass | Bio-Accumulator Pond harvest | 100 | Heavy, metal-laden plant matter. |
| Manganese-Rich Biomass | Algae Tank harvest | 100 | Metal-laden algal mass. |
| Cobalt-Rich Biomass | Bio-Accumulator Pond harvest | 100 | Slowest-growing, highest-value. |
| Zinc-Rich Ash | Precision Kiln | 100 | Concentrated metal oxide. |
| Manganese-Rich Ash | Precision Kiln | 100 | Concentrated metal oxide. |
| Cobalt-Rich Ash | Precision Kiln | 100 | Concentrated metal oxide. |
| Zinc Precipitate | Acid Leaching | 100 | Ready for smelting. |
| Manganese Compound | Acid Leaching | 100 | Direct use in batteries and enzymes. |
| Cobalt Compound | Acid Leaching | 100 | Direct use in magnets and catalysts. |
| Zinc Plate | Bio-Smelter | 100 | New metal. Electronics, galvanization, fuel cell electrodes. |
| Bio-Acid | Bio-Acid Mixer | 100 | Leaching reagent. Fusel oils + sulfuric acid. |
| Leach Residue | Bio-Acid Mixer byproduct | 100 | → compost (mineral-enriched). |
| Metal-Organic Composite | Bio Web: Bio-Accumulator Pond + Algae Tank (~10%) | 50 | Hybrid metal-organic material. Unique structural properties — flexible yet conductive. Used in: Neural Relay substrate (Era 8), advanced sensor components. Archive-worthy for late-game use. |

### Hours 9–12: Tissue Culture + Living Tools

**What unlocks:** Cell Line Incubator, Tissue Culture Vat, Nutrient Bath. Cultured leather, protein, collagen. Living tools.

**What the player does:**
- Research "Tissue Culture" (4 HAF). Then "Living Material Synthesis" (4 HAF).
- Build Cell Line Incubator (2×1. Recipe: 2 Bio-Composite Plate + 2 Red Circuit + 1 Fused Silica)
- Isolate cell line from fish (Fish Cell Sample from Era 3 aquaculture) → Isolated Collagen Cell Line
- Build Tissue Culture Vat (2×2. Recipe: 4 Bio-Composite Plate + 2 PHA Tube + 2 Red Circuit + 1 Purified Industrial Enzyme)
- Feed cell line + Nutrient Medium + Growth Factors → Raw Collagen Sheet + Spent Medium (→ compost)
- Tan with Bio-Acid → Cultured Leather
- Build Nutrient Bath (2×1. Recipe: 2 Bio-Composite Plate + 2 PHA Tube + 1 Fused Silica) for living tool regeneration

**Tissue culture chains:**

**Cultured Leather:**
```
Fish Cell Sample (from aquaculture harvest: 1 Raw Fish → processing → 1 Fish Cell Sample + fillet + waste)
  → Cell Line Incubator (30s): Fish Cell Sample + Nutrient Medium → Isolated Collagen Cell Line
  → Tissue Culture Vat (60s): Nutrient Medium + Growth Factor (cell line is INSTALLED, not consumed)
  → Raw Collagen Sheet + Spent Medium (→ compost)
  → Bio-Acid Tanning (Bio-Acid Mixer, 15s): Raw Collagen Sheet + Bio-Acid → Cultured Leather + Tanning Waste (→ compost)
```
**Cell line persistence:** The Isolated Cell Line is placed INTO the Tissue Culture Vat as a one-time setup (like inserting a module). It stays in the vat and self-replicates. The vat's ongoing recipe consumes only Nutrient Medium + Growth Factors per cycle. To change what the vat produces, the player swaps the cell line. This means: one Fish Cell Sample → one Collagen Cell Line → permanent collagen production from that vat (as long as nutrients flow).
**Uses:** Flexible machine gaskets (replaces rubber in some recipes — more durable), belt reinforcement (Era 5 logistics upgrade), protective equipment.

**Cultured Protein:**
```
Algal Cell Sample (from algae harvest)
  → Cell Line Incubator (30s): → Isolated Protein Cell Line
  → Tissue Culture Vat (45s): → Cultured Protein Block + Spent Medium
  → Processing: → Protein Isolate (concentrated — culture medium ingredient, science pack)
```
**Uses:** Upgraded Culture Medium (replaces grain porridge in the recipe — 2x more effective), Growth Factor production, science pack ingredient.

**Growth Factors** (required for tissue culture):
```
Concentrated Fish Extract (Era 4 exclusive product) + Protein Isolate + Purified Water
  → Cell Line Incubator (20s) — proteins, not nucleic acids
  → Growth Factors
```
This connects Era 4's exclusive fish cultivar to Era 5's tissue culture. The exclusive-product investment pays forward. Growth Factors are proteins — they're produced in the Cell Line Incubator (which handles living cells and protein chemistry), NOT the Guide RNA Synthesizer (which handles nucleic acids).

**Living Tools:**
```
Chitin (Era 3) + Cultured Leather + Stem Cell Culture
  → Living Tool Fabricator recipe (Bio-Composite Fabricator, 20s)
  → Living Tool Blank
  → Shape: Living Pickaxe / Living Axe / Living Hammer (crafting recipes)
```
Living tools have high durability (5x standard) and can be REGENERATED instead of replaced:
```
Damaged Living Tool + Tool Regeneration Cartridge
  → Nutrient Bath (30s)
  → Restored Living Tool (full durability)

Tool Regeneration Cartridge: 1 Growth Factor + 1 Nutrient Solution + 1 Protein Isolate → 2 (hand, 3s)
```
Living tools have a biological maintenance cycle. They're more expensive to make but infinitely renewable. The player never crafts replacement tools again — just regeneration cartridges.

**Stem Cell Culture** (starter for living tools):
```
CRISPR-edited Fish Cell Line (edit for pluripotency — complex CRISPR using Stem Cell Gene Template)
  → Culture in Tissue Culture Vat with specialized medium
  → Stem Cell Culture (item — consumed in living tool fabrication)
```
The Stem Cell Gene Template is extracted from the archived Self-Modifying Culture Sample (Era 3) — the organism that edits its own genome contains genes related to cellular reprogramming.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Fish Cell Sample | Fish Processing Station (ADDITIONAL recipe variant: 1 Raw Fish → 1 Cell Sample + 1 Fish Fillet + 1 Fish Waste. Original Era 3 recipe still available for players who don't need cell samples. Bones folded into Fish Waste for this variant — cell extraction disrupts skeletal tissue.) | 50 | Living cells for culture. |
| Algal Cell Sample | Algal Fractionator (new recipe: 3 Raw Algae → 1 Cell Sample + normal products) | 50 | Living cells for protein culture. |
| Isolated Collagen Cell Line | Cell Line Incubator | 20 | Self-replicating in culture. |
| Isolated Protein Cell Line | Cell Line Incubator | 20 | Self-replicating in culture. |
| Nutrient Medium | Crafting: 1 Culture Medium + 1 Compost Extract + 1 Freshwater → 2 | 100 | Tissue culture feed. Upgraded from basic Culture Medium. |
| Growth Factors | Cell Line Incubator (Concentrated Fish Extract + Protein Isolate + Purified Water, 20s) | 50 | Required for tissue culture. Protein-based — made in Incubator, not RNA Synthesizer. |
| Raw Collagen Sheet | Tissue Culture Vat | 100 | Unprocessed biological leather. |
| Cultured Leather | Bio-Acid Tanning | 100 | Flexible, durable. No animals harmed. |
| Tanning Waste | Tanning byproduct | 100 | → compost. |
| Cultured Protein Block | Tissue Culture Vat | 100 | Raw protein mass. |
| Protein Isolate | Crafting: 2 Cultured Protein Block → 1 Protein Isolate | 100 | Concentrated. Culture medium upgrade + science ingredient. |
| Stem Cell Culture | Tissue Culture Vat (CRISPR cell line) | 20 | Pluripotent cells. Living tool ingredient. |
| Stem Cell Gene Template | Guide RNA Synthesizer (from Self-Modifying Culture Sample) | 10 | Extracted from archived specimen. |
| Living Tool Blank | Bio-Composite Fabricator | 20 | Chitin + cultured leather + stem cells. |
| Living Pickaxe | Crafting: 1 Blank + 2 Calcite + 1 Kelp Stalk | 10 | 5x durability. Regenerable. |
| Living Axe | Crafting: 1 Blank + 1 Bio-Composite Plate + 1 Kelp Stalk | 10 | 5x durability. Regenerable. |
| Living Hammer | Crafting: 1 Blank + 2 Bio-Composite Plate | 10 | 5x durability. Regenerable. |
| Tool Regeneration Cartridge | Crafting: 1 Growth Factor + 1 Nutrient Solution + 1 Protein Isolate → 2 | 50 | Restores living tool durability. |

### Hours 12–15: Blue Circuits + Enhanced Diatoms + Trains

**What unlocks:** Enhanced Diatom cultivation (CRISPR), Electronics-Grade Biosilica Wafer, blue circuits, rail system, Ethanol Fuel Cell.

**What the player does:**
- Research "Precision Biosilica" (5 HAF) — requires CRISPR capability
- CRISPR simple edit on diatom culture: Standard Diatom Culture + Quality Guide RNA → Enhanced Diatom Culture (maxed silica quality)
- Cultivate enhanced diatoms → high-purity frustules → Precision Kiln → Electronics-Grade Biosilica Wafer
- Research "Advanced Circuit Assembly" (4 HAF)
- **BLUE CIRCUITS:** 2 Red Circuit + 4 Green Circuit + 2 Sulfuric Acid + 1 Electronics-Grade Biosilica Wafer → 1 Blue Circuit
- Research "Rail Transport" (5 HAF)
- Build rail system connecting mainland districts to offshore platforms

**Enhanced Diatom chain:**
```
Standard Diatom Culture → CRISPR simple edit (Quality Guide RNA → boosts Flavor/Quality to 90+)
  → Enhanced Diatom Culture (high-purity silica secretion — it's the SAME gene, just maxed out)
  → Enhanced Diatom Pond (same machine, different recipe. 30s cycle)
  → 2 High-Purity Frustules + 1 Organic Slurry (→ compost/feed)
  → Precision Kiln (20s): 3 High-Purity Frustules → 1 Electronics-Grade Biosilica Wafer + 1 CO₂ (→ algae)
```
Diatoms already make silica — they've been doing it since Era 2. CRISPR just turns the quality dial to maximum. This is a simple edit, not a complex gene insertion. No Gene Template needed.

**Blue Circuit recipe:**
```
2 Red Circuit (Era 4) + 4 Green Circuit (Era 2) + 2 Sulfuric Acid (Era 3) + 1 Biosilica Wafer (Era 5)
  → Precision Assembler (2×2, 15 kW, new machine. 15s)
  → 1 Blue Circuit
```
Blue circuits require infrastructure from FOUR previous eras. This is the deepest cross-era dependency yet. The Precision Assembler is a clean-room assembly machine — NOT the CRISPR Station (gene editing ≠ circuit fabrication).

**Rail system:**
| Item | Recipe | Notes |
|------|--------|-------|
| Rail | 2 Bio-Composite Plate + 2 Iron Plate + 1 Bio-Rubber Pad | Standard rail mechanics. Placed on land/causeway. |
| Locomotive | 10 Bio-Composite Plate + 5 Blue Circuit + 3 Bio-Rubber Wheel + 1 Ethanol Engine | Bio-ethanol powered. Standard train behavior. |
| Cargo Wagon | 8 Bio-Composite Plate + 4 Iron Plate + 2 Bio-Rubber Wheel | Standard capacity. |
| Fluid Wagon | 8 Bio-Composite Plate + 4 Iron Plate + 2 PHA Tube | Standard fluid capacity. |
| Train Stop | 4 Iron Plate + 2 Blue Circuit + 2 Bio-Composite Plate | Standard behavior. |
| Rail Signal | 1 Iron Plate + 1 Blue Circuit + 1 Cobalt Compound | Cobalt for magnetic switching. |

**Sub-components:**
| Item | Recipe | Notes |
|------|--------|-------|
| Bio-Rubber Pad | 1 Rubber + 1 Plant Fiber | Rail cushioning. |
| Bio-Rubber Wheel | 2 Rubber + 1 Iron Plate + 1 Bio-Composite Plate | Train wheels. |
| Ethanol Engine | 4 Iron Plate + 2 Bio-Composite Plate + 1 Rubber Gasket + 1 Blue Circuit | Locomotive power unit. Ethanol-fed. |

**Why trains now:** The island at ~5,000+ tiles is getting large. Offshore platforms for bio-accumulator ponds, existing aquaculture, algae farms — they're all far from the mainland research campus. Trains on bio-cement causeways connect districts. The player builds a rail network between:
- Mainland (research, manufacturing)
- Offshore metal district (bio-accumulator ponds)
- Aquaculture platforms (fish, algae)
- Agricultural district (automated farms, greenhouses)

**Ethanol Fuel Cell (the power upgrade):**
```
Recipe: 8 Bio-Composite Plate + 4 Blue Circuit + 2 Enzyme Catalyst Cartridge + 2 Zinc Plate + 1 Fuel Cell Membrane
Output: 1.5 MW
Fuel: Bio-Ethanol (12/min)
```
Enzymatic fuel cell — ethanol converted directly to electricity via enzyme catalysis (no combustion). Biologically real, active research field.

**Sub-components:**
| Item | Recipe | Notes |
|------|--------|-------|
| Enzyme Catalyst Cartridge | 1 Purified Industrial Enzyme + 1 PHA Housing + 1 Zinc Plate | Zinc electrode + enzyme catalyst. Connects Era 4 enzymes to Era 5 zinc. |
| Fuel Cell Membrane | 1 Cultured Leather + 1 PHA Sheet + 1 Hydrogen Gas | Hydrogen from Era 3 electrolysis — stored for 30+ hours, finally used. Biological proton-exchange membrane. |

**The hydrogen payoff.** Era 3 electrolysis produced hydrogen gas that was "stored for Era 5." The Fuel Cell Membrane consumes it. Hydrogen also used in: hydrogenation of bio-oils (cobalt catalyst → more stable fuel-cell-grade ethanol). Old infrastructure feeding new chains.

**Hydrogenated Bio-Ethanol:**
```
Bio-Ethanol + Hydrogen Gas + Cobalt Compound (catalyst)
  → Hydrogenation Reactor recipe (Fractional Separation Column, 15s)
  → Fuel-Cell-Grade Ethanol (burns 20% more efficiently in fuel cells — 14.4 MJ vs 12 MJ)
  + Catalyst recovered (cobalt compound returned)
```
The player can run fuel cells on regular ethanol OR upgrade to hydrogenated ethanol for 20% more power. Optimization choice.

**Hydrogen scaling note:** Hydrogenation at full fuel cell rate (12/min) consumes 12 hydrogen/min. Era 3 electrolysis produces ~3 hydrogen/min per cell. The player needs 4 electrolysis cells dedicated to hydrogen production — a significant scaling of Era 3 infrastructure. Electrolysis also needs salt brine (sea salt + freshwater), so the entire water cascade expands. Players who don't want to invest in hydrogenation can run the fuel cell on regular ethanol at full consumption rate. Hydrogenation is a late-era optimization, not a requirement.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Enhanced Diatom Culture | CRISPR Editing Station | 50 | High-purity silica secretion. |
| High-Purity Frustules | Enhanced Diatom Pond | 100 | Better than standard frustules. |
| Electronics-Grade Biosilica Wafer | Precision Kiln | 100 | Blue circuit substrate. |
| Blue Circuit | Precision Assembler | 200 | Era 5 circuit tier. 4-era dependency. |
| Rail | Standard placement | 100 | Bio-composite + iron + rubber. |
| Locomotive | Crafting | 5 | Ethanol-powered. |
| Cargo Wagon | Crafting | 5 | Standard capacity. |
| Fluid Wagon | Crafting | 5 | Standard fluid. |
| Train Stop | Crafting | 10 | Standard. |
| Rail Signal | Crafting | 50 | Uses cobalt for magnet. |
| Bio-Rubber Pad | Crafting | 100 | Rail cushion. |
| Bio-Rubber Wheel | Crafting | 50 | Train wheel. |
| Ethanol Engine | Crafting | 10 | Locomotive component. |
| Enzyme Catalyst Cartridge | Crafting | 50 | Fuel cell electrode. Zinc + enzyme. |
| Fuel Cell Membrane | Crafting | 20 | Leather + PHA + hydrogen. |
| Ethanol Fuel Cell | Crafting | 5 | 1.5 MW. The power revolution. |
| Fuel-Cell-Grade Ethanol | Fractional Separation Column | 100 | Hydrogenated. +20% efficiency. |

### Hours 15–18: High-Yield Iron + Advanced Genomics

**What unlocks:** High-Yield Iron Bacteria (CRISPR from archived specimen), Bio-Battery, advanced CRISPR techniques.

**The High-Yield Iron payoff.** The Iridescent Iron Oxide specimen (archived Era 2, analyzed Era 4) contains a gene variant that's 3x more efficient at iron precipitation. The player:
1. Extracts High-Yield Iron Gene Template from the Iridescent Iron Oxide Genome Atlas
2. CRISPR-edits standard iron culture: Iron Culture + HY-Iron Guide RNA + HY-Iron Gene Template → High-Yield Iron Culture
3. Replaces old iron vats with High-Yield Iron Culture → 3x iron output per vat
4. This retroactively upgrades the Era 2 iron chain — fewer vats needed, less space, less power

**Bio-Battery:**
```
Manganese Compound + Zinc Plate + Bio-Acid + PHA Housing
  → Bio-Battery Fabrication (Bio-Composite Fabricator, 20s)
  → Bio-Battery
```
Bio-Batteries are energy storage — they charge from the power grid and discharge when needed. This buffers the fuel cell's output and smooths power delivery. Also used as a portable power source in some machine recipes.

**Advanced CRISPR — multi-trait editing:**
Research "Multiplex Gene Editing" (6 HAF). The player can now load MULTIPLE guide RNAs into a single CRISPR session:
- 2 Guide RNAs + Target Seed → Edited Seed with TWO traits modified (45s, 15% off-target risk per trait)
- 3 Guide RNAs + Target Seed → Edited Seed with THREE traits modified (60s, 20% off-target risk per trait)
This dramatically accelerates optimization — instead of running 3 separate edits, the player does one batch. But higher risk means more verification runs.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| High-Yield Iron Culture | CRISPR edit of standard iron culture | 50 | 3x iron precipitation rate. From archived specimen gene. |
| HY-Iron Gene Template | Guide RNA Synthesizer (from Iridescent Iron Oxide Atlas) | 10 | 3x efficient iron-oxidizing gene variant. |
| Bio-Battery | Bio-Composite Fabricator | 50 | Manganese + zinc. Energy storage buffer. |

### Hours 18–22: Integration + Capstone

**What the player does:**
- CRISPR-optimize all production organisms (boost yields, reduce nutrient demand)
- Scale bio-accumulator chains (zinc, manganese, cobalt all in production)
- Tissue culture producing leather, protein, stem cells
- Living tools in use, regeneration automated
- Train network connecting all districts
- Fuel cell providing 1.5 MW (total power ~2.1 MW)
- Blue circuits feeding into advanced machine recipes
- Archive specimens fully analyzed — forward genes extracted for Era 6
- Research capstone: Genomic Comprehension

---

## 4. ITEM SUMMARY (~100 new items)

| Category | New in Era 5 | Examples |
|----------|-------------|---------|
| Genomics reagents | ~6 | Sequencing Reagent, Nucleotide Reagent, Genome Atlas, Archived Genome Atlas, Verification Sample, Off-Target Report |
| Guide RNAs | ~8 | Yield, Growth, Hardiness, Efficiency, Quality, Symbiosis, Stability, Volatility Guide RNAs |
| Gene Templates | ~6 | Salt-Tolerance, Manganese-Binding, Cobalt-Chelation, HY-Iron, Stem Cell, plus Accumulator Guide RNA |
| Bio-accumulator organisms | ~3 | Bio-Accumulator Kelp Seed, Manganese Algae Spore, Cobalt Seaweed Spore |
| Metal chains (zinc/Mn/Co) | ~13 | Rich Biomass ×3, Rich Ash ×3, Precipitate/Compound ×3, Zinc Plate, Bio-Acid, Leach Residue, Metal-Organic Composite |
| Tissue culture | ~12 | Cell Samples ×2, Cell Lines ×2, Nutrient Medium, Growth Factors, Collagen Sheet, Cultured Leather, Tanning Waste, Protein Block, Protein Isolate, Stem Cell Culture |
| Living tools | ~5 | Living Tool Blank, Pickaxe, Axe, Hammer, Regeneration Cartridge |
| Enhanced diatom chain | ~3 | Enhanced Diatom Culture, High-Purity Frustules, Biosilica Wafer |
| Blue circuits | ~1 | Blue Circuit |
| Rail transport | ~9 | Rail, Locomotive, Cargo/Fluid Wagon, Train Stop, Rail Signal, Bio-Rubber Pad, Wheel, Ethanol Engine |
| Power | ~5 | Enzyme Catalyst Cartridge, Fuel Cell Membrane, Ethanol Fuel Cell, Bio-Battery, Fuel-Cell-Grade Ethanol |
| Iron upgrade | ~2 | High-Yield Iron Culture, HY-Iron Gene Template |
| Edited organisms | ~8 | Edited Seeds (one per major crop type: grass, kelp, glasswort, sea-grain, diatom, algae, fish, mycelium) |
| Science | ~4 | Genomic Annotation Compendium, Verified Guide RNA, Tissue Culture Sample, Bio-Accumulator Extract |
| Contaminated Harvest | ~1 | Failure-state item from bio-accumulator contamination |
| Machines | ~11 | See machine table (includes Precision Assembler) |
| **Total new** | **~97** | |
| **Carried from Era 1-4** | **~255** | |
| **Grand total** | **~352** | |

---

## 5. MACHINE SPECIFICATIONS (Era 5 new)

| Machine | Size | Power | Category | Notes |
|---------|------|-------|----------|-------|
| Genomic Sequencing Array | 3×3 | 30 kW | sequencing | Largest machine yet. Sequences organisms + verifies CRISPR edits. Dual-use. |
| Guide RNA Synthesizer | 2×2 | 15 kW | synthesis | Genome Atlas + Nucleotide Reagent → Guide RNA (trait-specific). Also: Gene Template extraction from Archived Genome Atlases. Nucleic acid work only. |
| CRISPR Editing Station | 2×2 | 20 kW | editing | Simple edits (30s) and complex edits (60s). Gene editing only — no secondary uses. |
| Precision Assembler | 2×2 | 15 kW | precision-assembly | Clean-room circuit fabrication. Blue circuits. Future: Era 6+ advanced electronics. |
| Cell Line Incubator | 2×1 | 5 kW | incubation | Cell Sample + Nutrient Medium → Isolated Cell Line. Also: Growth Factor production (fish extract + protein → growth factors). Protein/cell work. |
| Tissue Culture Vat | 2×2 | 10 kW | tissue-culture | Cell Line installed (one-time, persists like a module). Ongoing recipe: Nutrient Medium + Growth Factor → tissue product + spent medium. Temperature + sterility controlled. |
| Nutrient Bath | 2×1 | 3 kW | regeneration | Damaged Living Tool + Regeneration Cartridge → restored tool. Also: stem cell culture maintenance. |
| Bio-Accumulator Pond | 3×3 | 5 kW | bio-accumulation | Water's edge. Engineered kelp/seaweed concentrates metals. Circulation + monitoring. |
| Precision Kiln | 2×2 | 15 kW | precision-firing | Higher-temp, controlled atmosphere. Metal ash from bio-accumulators. Biosilica wafers. |
| Bio-Acid Mixer | 2×1 | 5 kW | acid-processing | Fusel oils + sulfuric acid → bio-acid. Also: acid leaching (ash + bio-acid → precipitate/compound), bio-acid tanning. The era's chemistry workhorse. |
| Ethanol Fuel Cell | 3×3 | Produces 1.5 MW | — | Ethanol 12/min. Enzymatic conversion. The power revolution. |

**Power budget:**
- Inherited: ~595-625 kW (tidal + wind + biogas + biomass boiler)
- Ethanol Fuel Cell: +1,500 kW
- Total supply: ~2,100-2,125 kW

| Consumer | Draw |
|----------|------|
| Genomic Sequencing Array | 30 kW |
| Guide RNA Synthesizer | 15 kW |
| CRISPR Editing Station | 20 kW |
| Tissue Culture Vat ×2 | 20 kW |
| Bio-Accumulator Pond ×3 | 15 kW |
| Precision Kiln ×2 | 30 kW |
| Cell Line Incubator | 5 kW |
| Nutrient Bath | 3 kW |
| Bio-Acid Mixer | 5 kW |
| Precision Assembler | 15 kW |
| All carried machines (Eras 1-4) | ~355 kW |
| Train network (signals, stops) | ~20 kW |
| **Total** | **~533 kW** |

**Surplus: ~1,565 kW.** Massive headroom. But the fuel cell consumes 12 ethanol/min — the fermentation chain becomes a CRITICAL supply chain. If ethanol production dips, the lights go out. Era 4's High-Starch Sea-Grain exclusive product (2x ethanol per batch) is now essential infrastructure, not just a nice optimization.

---

## 6. TECH TREE

Era 5 uses Hereditary Analysis Folios (HAF) for research.

| # | Name | Cost | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 45 | Genomic Sequencing | 4 HAF | Tech 44 (Era 5 entry) | Sequencing Array, Sequencing Reagent, Genome Atlas, full 7-trait visibility |
| 46 | Guide RNA Design | 3 HAF | Tech 45 | Guide RNA Synthesizer, Nucleotide Reagent, all trait-specific Guide RNAs |
| 47 | CRISPR Gene Editing | 5 HAF | Tech 46 | CRISPR Editing Station, simple edits, Gene Template extraction from archives |
| 48 | Bio-Accumulation Engineering | 5 HAF | Tech 47 | Bio-Accumulator Pond, Precision Kiln, Bio-Acid Mixer. Zinc/Mn/Co chains. |
| 49 | Tissue Culture | 4 HAF | Tech 45 | Cell Line Incubator, Tissue Culture Vat, cultured leather + protein chains |
| 50 | Living Material Synthesis | 4 HAF | Tech 47 + Tech 49 | Nutrient Bath, Living Tools, Stem Cell Culture, regeneration chain |
| 51 | Precision Biosilica | 5 HAF | Tech 47 | Enhanced Diatom CRISPR, Electronics-Grade Biosilica Wafer |
| 52 | Advanced Circuit Assembly | 4 HAF | Tech 48 + Tech 51 | Precision Assembler, BLUE CIRCUITS. |
| 53 | Rail Transport | 5 HAF | Tech 52 | Rail, Locomotive, Wagons, Signals, Train Stops |
| 54 | Ethanol Fuel Cell | 5 HAF | Tech 48 + Tech 52 | Fuel Cell, Enzyme Catalyst Cartridge, Fuel Cell Membrane, Bio-Battery |
| 55 | Multiplex Gene Editing | 6 HAF | Tech 47 | Multi-trait CRISPR edits (2-3 traits per session) |
| 56 | High-Yield Strain Engineering | 4 HAF | Tech 55 | HY-Iron Culture (from archived Iridescent Iron Oxide) |
| 57 | Genomic Comprehension | 10 HAF | Tech 54 + Tech 56 | **ERA 6 TRANSITION** |

**Total HAF for Era 5:** 4+3+5+5+4+4+5+4+5+5+6+4+10 = **64 HAF**

**Critical path:** 45 → 46 → 47 → {48, 51} → 52 → {53, 54} → 57. Sequencing → Guide RNA → CRISPR → bio-accumulation + biosilica → blue circuits → trains + fuel cell → capstone. Tissue culture (49, 50) and multiplex editing (55, 56) are parallel branches.

**HAF production rate:** HAF requires Pedigree Doc + Enzyme + Stabilized Seed + Exclusive Product. The genetics infrastructure from Era 4 must keep running. At ~2-4 HAF/min with a mature setup, 64 HAF takes ~16-32 min of dedicated production. Not a bottleneck — infrastructure and CRISPR projects are the real time sinks.

---

## 7. BIO WEB (Era 5)

### New Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Bio-Accumulator Pond | Algae Tank | Mutualistic | +20% metal uptake + **Metal-Organic Composite** (~10%) | Algae process dissolved waste metals into bioavailable forms. Bonus item: hybrid metal-organic material. |
| Tissue Culture Vat | Aquaculture Pond | Commensal | +15% tissue growth rate | Fish waste products contain growth-stimulating compounds. |
| Sequencing Array | CRISPR Station (3 tiles) | Mutualistic | +10% verification success rate | Adjacent placement = faster data transfer = better edit accuracy. |
| Bio-Accumulator Kelp | Standard Kelp | Competitive | -20% standard kelp yield | Bio-accumulators strip minerals from shared water. Separate them. |
| Enhanced Diatom | Standard Diatom | Competitive | -15% standard diatom yield | Enhanced diatoms outcompete standard. Separate ponds recommended. |
| CRISPR-edited organism | Wild-type of same species | Commensal | -5% CRISPR organism yield over time | Genetic drift from proximity to unedited population. Minor but noticeable. Reinforces: keep production lines separate from seed stock. |

### CRISPR + Symbiotic Affinity

CRISPR-editing Symbiotic Affinity to 90+ creates organisms with dramatically stronger Bio Web interactions. A crop with Symbiotic Affinity 95 next to compost gets +45% yield (vs base +25%). This makes Symbiotic Affinity a HIGH-PRIORITY CRISPR target — the player who edits affinity first gets compounding benefits across ALL crop production.

---

## 8. SCIENCE PACK

**Genomic Annotation Compendium**

| Ingredient | Source | Chain |
|-----------|--------|-------|
| Genome Atlas | Sequencing Array (any organism) | Genomics chain |
| Verified Guide RNA | CRISPR Station (craft and verify a guide RNA — sequence + synthesize + verify) | CRISPR chain |
| Tissue Culture Sample | Tissue Culture Vat (special recipe: snapshot of active tissue growth) | Tissue culture chain |
| Bio-Accumulator Extract | Precision Kiln (special recipe: concentrated metal-organic sample from bio-accumulator ash) | Bio-accumulation chain |

**Science ingredient recipes:**
| Recipe | Machine | Time | Inputs | Output |
|--------|---------|------|--------|--------|
| Prepare Verified Guide RNA | CRISPR Station | 20s | 1 Guide RNA (any) + 1 Sequencing Reagent | 1 Verified Guide RNA |
| Snapshot Tissue Culture | Tissue Culture Vat | 15s | 1 Nutrient Medium + 1 Growth Factor | 1 Tissue Culture Sample |
| Extract Metal-Organic Sample | Precision Kiln | 10s | 1 Zinc-Rich Ash + 1 Bio-Acid | 1 Bio-Accumulator Extract |

Genome Atlas comes directly from sequencing (normal production, no special recipe).

**Assembly:** 1 Genome Atlas + 1 Verified Guide RNA + 1 Tissue Culture Sample + 1 Bio-Accumulator Extract → 2 Genomic Annotation Compendium (hand, 10s)

**Consumed by:** Era 6 research technologies. GAC requires products from 4 distinct Era 5 chains (genomics, CRISPR, tissue culture, bio-accumulation), enforcing breadth.

---

## 9. BALANCE ANALYSIS

### Bio-Accumulator Throughput (Zinc)

**1 Bio-Accumulator Pond:** 2 Zinc-Rich Biomass / 120s = 1 biomass/min.
**1 Precision Kiln:** 1 ash / 15s = 4 ash/min (kiln is not the bottleneck).
**1 Bio-Acid Mixer (leaching):** 1 precipitate / 20s = 3 precipitate/min.
**1 Bio-Smelter:** 1 plate / 10s = 6 plates/min.
**Bottleneck: Bio-Accumulator Pond at 1 biomass/min → ~1 zinc plate/min per pond.**

Zinc demand: Enzyme Catalyst Cartridge needs 1 zinc plate each. Fuel cell needs 2 cartridges. Galvanization, solder — ~5-10 plates/min at full scale. Player needs 5-10 bio-accumulator ponds. Significant space commitment → offshore platforms for accumulator farms.

### Tissue Culture Throughput

**1 Tissue Culture Vat:** 1 collagen sheet / 60s = 1 sheet/min. 1 protein block / 45s = 1.3 blocks/min.
**Living Tool fabrication:** ~1 tool per 20s = 3 tools/min. But tools last 5x longer + regeneration. Demand is LOW after initial tool set.
**Primary tissue demand:** Cultured Leather for machine recipes + Fuel Cell Membrane (leather + PHA + hydrogen). ~2-4 leather/min at full scale → 2-4 vats.

### Ethanol Fuel Demand

Fuel Cell consumes 12 ethanol/min. Fermentation chain produces:
- 1 Fermentation Vat: ~1.3 crude ethanol / 45s → distill → ~1 bio-ethanol / 60s total = 1 ethanol/min per vat
- **Need 12+ fermentation vats to sustain 1 fuel cell**

This is a MAJOR scaling challenge. The fermentation chain (sea-grain → mash → ferment → distill) must be industrialized. Era 4's High-Starch Sea-Grain exclusive (2x ethanol per batch) cuts this to ~6 vats. Automated Planters (Era 3) handle sea-grain farming at scale. The entire agricultural → fermentation → power chain becomes the factory's backbone.

### Power Budget Verification

| Source | Output |
|--------|--------|
| Tidal Generator | 15 kW |
| Wind Turbines ×3 | 90 kW |
| Biogas Engine | 120 kW |
| Biomass Boiler | 400 kW |
| Ethanol Fuel Cell | 1,500 kW |
| **Total** | **~2,125 kW** |

Total demand: ~518 kW (see machine table). The surplus is intentional — Era 6 machines will need it, and the player is building power infrastructure ahead of demand.

### CRISPR Reagent Cost

One simple edit requires: 1 Guide RNA (1 Nucleotide Reagent to synthesize) + 1 Sequencing Reagent (verification). Reagent costs:
- Sequencing Reagent: 1 PHA Tube + 1 Bio-Ethanol + 1 Purified Water → 3 reagents
- Nucleotide Reagent: 1 Algal Protein + 1 Phosphorus Concentrate + 1 Purified Water → 2 reagents

Per simple edit: ~0.33 PHA Tube + ~0.33 Bio-Ethanol + ~0.5 Algal Protein + ~0.5 Phosphorus Concentrate + ~0.83 Purified Water. Per complex edit: roughly double (additional Sequencing Reagent for verification + Gene Template cost).

Editing 20 organisms × 2 traits each = 40 simple edits = ~13 PHA Tube + ~13 Bio-Ethanol + ~20 Algal Protein + ~20 Phosphorus Concentrate. This is a meaningful investment that draws from 4 different supply chains. CRISPR is powerful but not free — the player must scale their Era 3-4 infrastructure to support an editing campaign.

---

## 10. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| CRISPR off-target (simple) | 10% base chance per simple edit | Wrong trait modified. Organism might be better or worse in an unexpected way. Must re-edit or use as-is. | Guide RNA design matters. Higher-quality reagents reduce off-target risk. |
| CRISPR off-target (complex) | 20% base chance per gene insertion | Gene lands in wrong location. Organism expresses the new gene but unpredictably — might produce less, might produce something unexpected. Verification catches this BEFORE planting. | Always verify complex edits. The 60s verification step saves wasted cultivation time. |
| Bio-accumulator contamination | Bio-accumulator kelp grown adjacent to food crops | Trace metals leach into food crop soil. Food crops produce "Contaminated Harvest" (→ compost only, not usable as food/feed). | Keep metal production AWAY from food production. Spatial zoning matters more than ever. |
| Fuel cell starvation | Ethanol supply drops below 12/min | Power output drops proportionally. Factory brownout. | Ethanol supply chain is CRITICAL infrastructure. Monitor fermentation throughput. Buffer with Bio-Batteries. |
| Cell line contamination | Tissue Culture Vat too close to Compost Heap (Bio Web: competitive, stray microbes) | Culture produces degraded tissue (50% quality). Must restart with fresh cell line. | Sterile separation. Tissue culture needs clean zones. |

---

## 11. BREADCRUMBS (Era 5)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Over-Expressed Tissue Fragment | Tissue Culture Vat output | ~2% per culture cycle | "This tissue grew beyond the scaffold boundaries. The cells appear to be ignoring their programmed growth limits — they're still dividing, still organizing, forming structures no one designed." | Era 6: growth-regulation bypass gene. Era 7: basis for Bio-Boat Hull Organism (grows hull on scaffold). |

---

## 12. ERA 5 → ERA 6 TRANSITION

**Capstone tech:** Genomic Comprehension (10 HAF)

**Prerequisites (verifiable):**
- Genomic Sequencing Array operational (sequenced ≥5 different species)
- CRISPR edit performed and verified (≥3 successful complex edits)
- Bio-accumulator chain operational (produced ≥20 zinc plates)
- Tissue culture operational (produced ≥10 cultured leather)
- Blue circuits produced (≥10)
- Train network operational (≥1 locomotive + ≥2 stations)
- Ethanol Fuel Cell built and operational
- At least 2 archived specimens analyzed via sequencing

**Transition notification:** *"Chapter: Authoring Life. 'What if the organism you need doesn't exist?' — You've learned to read genomes and edit them. Now design organisms from scratch. Pathway engineering, xenocrops, and chimeras await."*

**What Era 6 inherits:**
- ~5,000-10,000 tile island with research campus, offshore platforms, rail network
- Full CRISPR capability (simple + complex + multiplex edits)
- Three new metals (zinc, manganese, cobalt) in production
- Tissue culture producing leather, protein, stem cells
- Living tools with biological maintenance cycle
- Blue circuits available
- Train logistics connecting districts
- 1.5 MW ethanol fuel cell (total power ~2.1 MW)
- High-yield iron bacteria (3x upgrade to Era 2 chain)
- Bio-batteries for energy storage
- Archived Gene Templates extracted for Era 6 use:
  - Tidal Deposit → chemosynthesis pathways (Methane-Eating Methanotroph)
  - Anomalous Fermentation Byproduct → novel enzyme gene cassette (xenocrop design)
  - Spontaneous Hybrid Seedling → horizontal gene transfer template (Organism Fusion)
- ~340 items in production

---

## 13. IMPLEMENTATION NOTES

**Genomic Sequencing Array:** 3×3 assembling-machine. Dual-purpose recipes: (a) Organism + Sequencing Reagent → Genome Atlas (30s), (b) Verification Sample + Sequencing Reagent → Verified Edit or Off-Target Report (15s). On completion of first recipe per species, control.lua enables full 7-trait readout for all organisms of that species (UI change, not item change).

**CRISPR Editing Station:** Assembling-machine with many recipe variants. Simple edit recipes: one per organism type × per Guide RNA type (e.g., "CRISPR: Grass + Yield Guide RNA → Edited Grass Seed"). Complex edit recipes: one per organism type × per Gene Template type. Output items are separate prototypes with modified trait values stored as entity tags.

**Off-target mechanic:** On CRISPR recipe completion, control.lua rolls probability (10% simple, 20% complex). On failure: output item's traits are randomized instead of targeted. Both simple and complex edits include built-in verification (Sequencing Reagent consumed). On off-target: the Edited Seed output is flagged as "Off-Target Edited Seed" — a different item prototype. The player can still plant it (it has an unexpected modification, possibly useful) or discard it and re-edit. This avoids hidden bad edits.

**Bio-Accumulator Pond:** 3×3 assembling-machine placed at water's edge (same placement logic as aquaculture pond). Long cycle times (120-150s). Output includes sustaining seed/spore return. Different recipe per metal type.

**Trains:** Standard vanilla train prototypes with modified recipes. Rail placement on bio-cement causeways (custom tile type from offshore platforms, expanded in Era 5). Locomotive fuel: bio-ethanol item (same as fuel cell fuel, dual use).

**Living Tools:** Custom tool prototypes with high durability. When durability drops below 20%, tooltip changes to "Damaged — regenerate in Nutrient Bath." Nutrient Bath is an assembling-machine with recipes: Damaged Living Pickaxe + Regeneration Cartridge → Living Pickaxe (full durability). Implementation: separate "damaged" item prototypes that are created when the tool's durability threshold is crossed (control.lua monitors tool durability).

**Ethanol Fuel Cell:** electric-energy-interface producing 1.5 MW. Requires fluid input (bio-ethanol, 12/min). If ethanol supply drops, output scales proportionally. Implementation: burner-type energy source with bio-ethanol as fuel, or fluid-consuming generator entity.

**Trait value storage:** Organism trait values stored as entity tags (Factorio 2.0 `entity.tags`). Seed items carry traits via item tags. CRISPR recipes modify these tags on output. Sequencing Array reads tags and displays them in a custom GUI or rich tooltip.
