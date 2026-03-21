# BIOGENESIS: Era 6 — Authoring Life

**Status:** DRAFT v2
**Date:** 2026-03-21
**Duration:** 18–22 hours
**Discipline:** Pathway design, xenocrops, biopharma, organism fusion
**Tone:** Technical, uneasy — "This organism belongs to no kingdom. It belongs to you."
**Core Insight:** What if the organism you need doesn't exist? Design it. Biology is now a programming language.
**Research Chapter:** "Authoring Life"
**Science Pack:** Synthetic Organism Dossier

---

## 1. INHERITED STATE

The player enters Era 6 with:
- **Island:** ~5,000-10,000 tiles with research campus, offshore platforms, rail network
- **Materials:** All Era 1-5 materials + zinc/manganese/cobalt, blue circuits, cultured leather/protein, bio-batteries
- **Machines:** ~65 machine types across Eras 1-5. CRISPR editing, tissue culture, bio-accumulation, precision assembly all running.
- **Power:** ~2,100 kW (tidal + wind + biogas + biomass boiler + ethanol fuel cell)
- **Logistics:** Standard through express belts/inserters. Trains on causeway network.
- **Science:** GAC (Genomic Annotation Compendium) production established
- **Genetics:** Full CRISPR capability (simple + complex + multiplex edits). All 7 traits visible with numeric values.
- **Archived Gene Templates ready for Era 6:**
  - Tidal Deposit (Era 1) → chemosynthesis pathways → Methane-Eating Methanotroph
  - Anomalous Fermentation Byproduct (Era 3) → novel enzyme gene cassette → xenocrop design
  - Spontaneous Hybrid Seedling (Era 4) → horizontal gene transfer → Organism Fusion

**What changes:** Era 5 let the player read and edit existing genomes. Era 6 lets the player WRITE new ones. The Genome Authoring Platform takes blank genome chassis, gene cassettes, and regulatory elements and produces organisms that have never existed. The player becomes an author of life. Also: organism fusion creates chimeras from two parent species. Bio-containment becomes a real concern — synthetic organisms can escape. The tone shifts from excitement to responsibility.

---

## 2. THE SYNTHETIC BIOLOGY MECHANIC — HOW IT WORKS

### The Design Pipeline

```
GENE CASSETTE SYNTHESIZER (2×2, 15 kW)
  → Inputs: Genome Atlas (source organism) + Nucleotide Reagent + Regulatory Element
  → Outputs: Gene Cassette (encodes one specific capability)
  → Also: Blank Chassis production (stripped genome framework from existing organism)
  │
  ▼
GENOME AUTHORING PLATFORM (4×4, 30 kW)
  → Inputs: 1 Blank Chassis + 1-4 Gene Cassettes + 1 Promoter Element
  → Output: Designed Organism Seed/Culture (novel — doesn't exist in nature)
  → More cassettes = more capable organism, but higher validation failure rate
  │
  ▼
PHENOTYPIC VALIDATION CHAMBER (2×2, 15 kW)
  → Input: Designed Organism + Validation Reagent
  → Output: Validated Organism (safe to deploy) OR Rejection Report
  → Rejection rate: ~15% for 1-2 cassettes, ~30% for 3 cassettes, ~45% for 4 cassettes
  → Rejected organisms → Gene Cassette Synthesizer recycling: recovers ~50% of Nucleotide Reagent (1 Rejection Report → 1 Nucleotide Reagent, 10s). Chassis and cassettes lost.
  │
  ▼
DEPLOYMENT (plant/culture the validated organism)
  → Must be within range of a Bio-Containment Lab or risk escape
```

### Gene Cassettes

Each cassette encodes one capability. The player CRAFTS them as items — each cassette type has a specific recipe in the Gene Cassette Synthesizer.

| Cassette | Source | Recipe Inputs | Encodes |
|----------|--------|---------------|---------|
| Spider Silk Protein Cassette | Synthetic design (protein structure data from multiple sequenced organisms) | 2 Genome Data Copy (any) + 2 Nucleotide Reagent + 1 Protein Isolate | Silk protein production in grain seeds |
| Luciferase Cassette | Era 4 Bioluminescent Culture | 1 Bioluminescent Data Copy + 1 Nucleotide Reagent | Light-producing enzyme. Fungal ground cover application. |
| Chemosynthesis Cassette | Tidal Deposit Archived Atlas (Era 1→5→6) | 1 Tidal Deposit Archived Atlas + 2 Nucleotide Reagent | Energy from methane/H₂S. Deep-sea metabolic pathway. Archived Atlas consumed (unique gene, one-time extraction). |
| PHA Pathway Cassette | Cupriavidus Culture (Era 4) | 1 Cupriavidus Data Copy + 1 Nucleotide Reagent | PHA bioplastic production from carbon sources |
| Novel Enzyme Cassette | Anomalous Fermentation Byproduct Atlas (Era 3→5→6) | 1 Fermentation Byproduct Archived Atlas + 2 Nucleotide Reagent | Novel catalytic activity. Archived Atlas consumed (unique gene). |
| Enhanced Lipid Cassette | Oil-Dense Algae (Era 4 exclusive) | 1 Oil-Dense Algae Data Copy + 1 Nucleotide Reagent + 1 Growth Factor | 3x bio-oil production per cycle |
| Cellulose Hyper-Production Cassette | Gluconacetobacter (Era 3) | 1 Gluconacetobacter Data Copy + 1 Nucleotide Reagent | 4x bacterial cellulose output |
| Nitrogen Hyper-Fixation Cassette | N-Fixing Culture (Era 2) | 1 N-Fixing Data Copy + 1 Nucleotide Reagent | 3x nitrogen supplement production |

### Genome Data Copies

Sequencing an organism (Era 5) produces a Genome Atlas — the original full dataset. Chassis production and cassette synthesis consume genome data. To avoid re-sequencing the same organism repeatedly, the player copies data:

**Copy Genome Data:** 1 Genome Atlas → 5 Genome Data Copies (hand, 2s). The original Atlas is NOT consumed — it's a template. Copies are the consumable ingredient for chassis and cassette recipes.

This means: sequence once (expensive), copy cheaply, use copies freely. The Genome Atlas becomes a reusable master template.

### Blank Chassis

Stripped-down genome frameworks. The organism's essential survival genes, nothing else.

| Chassis | Source | Recipe | Best For |
|---------|--------|--------|----------|
| Blank Grain Chassis | Sea-Grain data | 1 Genome Data Copy + 2 Nucleotide Reagent + 1 Purified Water (30s) | Xenocrops that produce harvestable seeds/grains |
| Blank Algae Chassis | Algae data | 1 Genome Data Copy + 2 Nucleotide Reagent + 1 Purified Water (30s) | Aquatic organisms, bio-oil producers |
| Blank Bacterial Chassis | Iron Culture data | 1 Genome Data Copy + 2 Nucleotide Reagent + 1 Purified Water (30s) | Chemical producers, waste processors |
| Blank Fungal Chassis | Mycelium data | 1 Genome Data Copy + 2 Nucleotide Reagent + 1 Purified Water (30s) | Ground cover, structural materials, slow-growing |

### Regulatory Elements

Control HOW the gene cassettes express. Crafted items.

| Element | Recipe | Effect |
|---------|--------|--------|
| Strong Promoter | 1 Nucleotide Reagent + 1 Protein Isolate → 2 (hand, 3s) | High expression. More product per cycle. Organism consumes more nutrients. |
| Weak Promoter | 1 Nucleotide Reagent + 1 Purified Water → 2 (hand, 2s) | Low expression. Less product but more stable organism. Lower rejection rate (-10%). |
| Circadian Regulator | 1 Nucleotide Reagent + 1 Growth Factor → 1 (hand, 5s) | Time-dependent expression. Day/night cycling. Required for light-producing organisms. |
| Stress-Response Element | 1 Nucleotide Reagent + 1 Sulfuric Acid → 1 (hand, 5s) | Expression triggered by chemical signals. Produces output only when specific input is present. Efficient but conditional. |
| Nutrient Uptake Enhancer | 1 Nucleotide Reagent + 1 Compost Extract + 1 Growth Factor → 1 (hand, 5s) | Organism extracts nutrients from soil autonomously. No external feeding needed. Required for self-sustaining organisms (moss, ground cover). |

---

## 3. TIMELINE

### Hours 0–3: Gene Cassette Synthesizer + Genome Authoring Platform

**What unlocks:** Gene Cassette Synthesizer, Blank Chassis production, first gene cassettes, Genome Authoring Platform.

**What the player does:**
- Research "Gene Cassette Engineering" (first Era 6 tech, 4 GAC)
- Build Gene Cassette Synthesizer (2×2. Recipe: 4 Bio-Composite Plate + 4 Blue Circuit + 2 Fused Silica + 1 Purified Industrial Enzyme)
- Craft first Blank Chassis: Sea-Grain Genome Atlas (from Era 5 sequencing) + 2 Nucleotide Reagent + Purified Water → Blank Grain Chassis
- Synthesize first Gene Cassette: Spider Silk Protein Cassette (from 2 Genome Atlases + 2 Nucleotide Reagent + 1 Protein Isolate)
- Research "Genome Authoring" (5 GAC)
- Build Genome Authoring Platform (4×4 — tied for largest machine with the Sequencing Array. Recipe: 8 Bio-Composite Plate + 6 Blue Circuit + 4 Fused Silica + 2 PHA Housing + 2 Cultured Leather)
- Design first organism: Spider Silk Grain

**The moment:** The player loads a Blank Grain Chassis + Spider Silk Protein Cassette + Strong Promoter into the Genome Authoring Platform. 60 seconds later: *"Organism synthesized. Species: none. Kingdom: none. This genome was authored, not evolved. It belongs to no lineage. It belongs to you."*

The player holds a seed for an organism that has never existed. They plant it. It grows. It produces silk protein in its grain.

**"Zoom In":** "Species: none. Kingdom: none. This genome was authored, not evolved. It belongs to you."

### Hours 3–6: Spider Silk Grain + First Xenocrop Production

**What unlocks:** Protein Extraction Vat, Spinning Frame. Spider silk production chain.

**The Spider Silk chain (the era's signature production line):**
```
Spider Silk Grain Seed → Plant (60s growth) → Harvest
  → 3 Spider Silk Grain + 1 Spider Silk Grain Seed (sustaining)
  → Protein Extraction Vat (20s): 2 Spider Silk Grain
  → 1 Raw Silk Protein + 1 Deproteinized Hull (→ ethanol feedstock!)
  → Spinning Frame (15s): 2 Raw Silk Protein
  → 1 Spider Silk Fiber (5x tensile strength of bio-composite)
  → Structural Weaving (hand, 5s): 4 Spider Silk Fiber
  → 1 Spider Silk Panel (premium construction material)
```

**Spider Silk Panel** replaces bio-composite in HIGH-STRESS applications: pressure vessels, machine housings for Era 7+ machines, structural frames for large constructions. It doesn't obsolete bio-composite (which remains the workhorse material) but enables things bio-composite can't handle.

**Deproteinized Hull → ethanol feedstock** closes a loop: the grain husks go to fermentation, feeding the fuel cell. Xenocrop waste feeds power production.

**What the player also does:**
- Build Phenotypic Validation Chamber (2×2. Recipe: 4 Bio-Composite Plate + 2 Blue Circuit + 2 Fused Silica + 1 Cultured Leather)
- Validate Spider Silk Grain before large-scale deployment
- Begin validating the second xenocrop design

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Blank Grain Chassis | Gene Cassette Synthesizer | 50 | Stripped sea-grain genome. Foundation for grain xenocrops. |
| Spider Silk Protein Cassette | Gene Cassette Synthesizer | 20 | Synthetic design. Silk production in seeds. |
| Strong Promoter | Hand crafting | 100 | High expression regulatory element. |
| Spider Silk Grain Seed | Genome Authoring Platform (after validation) | 200 | Novel organism. Produces silk protein in grain. |
| Spider Silk Grain | Harvest | 100 | Raw xenocrop output. |
| Raw Silk Protein | Protein Extraction Vat | 100 | Extracted from grain. Needs spinning. |
| Deproteinized Hull | Extraction byproduct | 100 | → ethanol feedstock (fermentation) or compost. |
| Spider Silk Fiber | Spinning Frame | 100 | 5x tensile strength of bio-composite. |
| Spider Silk Panel | Hand crafting | 50 | Premium structural material. High-stress applications. |
| Validation Reagent | Crafting: 1 Sequencing Reagent + 1 Growth Factor + 1 Purified Water → 2 | 50 | Consumed per validation. |
| Rejection Report | Validation Chamber (failed organism) | 20 | → recycle in Gene Cassette Synthesizer for partial Nucleotide Reagent recovery. |

### Hours 6–9: Phosphorescent Moss + Methane Methanotroph

**What unlocks:** Two more xenocrops with very different applications. One aesthetic, one industrial.

**Phosphorescent Moss:**
```
Genome Authoring Platform:
  Blank Fungal Chassis + Luciferase Cassette + Circadian Regulator + Nutrient Uptake Enhancer
  → Phosphorescent Moss Culture
  → Validate → Plant on ANY soil tile
  → Spreads 1 tile per 5 min (slow, manageable)
  → Emits light equivalent to small lamp (no electricity, no maintenance)
  → Brightens at dawn cycle, dims at dusk. Living, breathing illumination.
```

The Luciferase Cassette is extracted from the Era 4 Bioluminescent Culture Genome Atlas — the player already has light-producing organisms, now they transplant the gene into a self-spreading ground cover. Bioluminescent panels (Era 4) require nutrient feeding. Phosphorescent Moss requires NOTHING after planting. The island gets free permanent lighting.

**Methane-Eating Methanotroph:**
```
Genome Authoring Platform:
  Blank Bacterial Chassis + Chemosynthesis Cassette + PHA Pathway Cassette + Stress-Response Element
  → Methanotroph Culture
  → Validate → Install in Methanotroph Bioreactor (new machine, fed biogas)
  → Methanotroph Bioreactor (30s): Biogas input
  → PHA Precursor + CO₂ (→ algae) + Biomass (→ compost)
```

**The waste loop closes.** Biogas was produced by the Biogas Digester (Era 3) from organic waste. Until now it was burned for power (Biogas Engine). Now it's ALSO a feedstock for PHA bioplastic. The player routes biogas to BOTH the engine (power) and the methanotroph reactor (plastic). Waste → fuel AND material.

The Chemosynthesis Cassette comes from the Tidal Deposit specimen (archived Era 1, sequenced Era 5). The PHA Pathway Cassette comes from the Cupriavidus culture (Era 4). Two eras of archives combining in one designed organism. 80+ hours of payoff.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Blank Fungal Chassis | Gene Cassette Synthesizer | 50 | Stripped mycelium genome. Ground cover + structural organisms. |
| Blank Bacterial Chassis | Gene Cassette Synthesizer | 50 | Stripped iron bacteria genome. Chemical/industrial organisms. |
| Luciferase Cassette | Gene Cassette Synthesizer (from Bioluminescent Culture Atlas) | 20 | Light-producing gene. From Era 4 organism. |
| Chemosynthesis Cassette | Gene Cassette Synthesizer (from Tidal Deposit Atlas) | 20 | Energy from methane. From Era 1 archived specimen. |
| PHA Pathway Cassette | Gene Cassette Synthesizer (from Cupriavidus Atlas) | 20 | PHA production from carbon sources. |
| Circadian Regulator | Hand crafting | 50 | Day/night expression cycling. |
| Nutrient Uptake Enhancer | Hand crafting | 50 | Self-sustaining nutrient extraction. |
| Stress-Response Element | Hand crafting | 50 | Conditional expression — produces output only when triggered. |
| Phosphorescent Moss Culture | Genome Authoring Platform (after validation) | 100 | Self-spreading. Free permanent light. Fungal chassis. |
| Methanotroph Culture | Genome Authoring Platform (after validation) | 50 | Biogas → PHA precursor. Bacterial chassis + 2 cassettes. |
| PHA Precursor | Methanotroph Bioreactor | 100 | → PHA Polymerizer (Era 4) for enhanced PHA production. Richer feedstock = 50% more PHA per batch. |

### Hours 9–12: Organism Fusion + Chimeras

**What unlocks:** Fusion Chamber, Horizontal Gene Transfer Reagent. Chimeric organisms.

**The conceptual leap.** CRISPR edits one gene at a time. The Genome Authoring Platform assembles genes into a new chassis. Organism Fusion takes TWO COMPLETE ORGANISMS and merges them. The result has traits from both parents in unpredictable combinations — some synergistic, some conflicting. The chimera must be validated before deployment.

**How fusion works:**
```
FUSION CHAMBER (3×3, 20 kW)
  → Input: Organism A seed/culture + Organism B seed/culture + Horizontal Gene Transfer Reagent
  → Output: Chimeric Organism + Fusion Residue (→ compost)
  → Time: 90s
  → The chimera's traits are a weighted random mix of both parents
  → Must be validated — some chimeras are unstable
```

**Horizontal Gene Transfer Reagent** (the key material):
```
Spontaneous Hybrid Seedling Atlas (archived Era 4, sequenced Era 5)
  + 2 Nucleotide Reagent + 1 Growth Factor
  → Gene Cassette Synthesizer (30s)
  → 2 Horizontal Gene Transfer Reagent
```
Without the Spontaneous Hybrid Seedling's template for natural gene transfer, fusion would fail — the genomes would reject each other. This archived specimen is ESSENTIAL.

**Example chimeras (what the player can fuse):**

| Organism A | Organism B | Chimera Result | Properties |
|-----------|-----------|----------------|------------|
| Saltmarsh Grass | Kelp | Amphibious Grass-Kelp | Grows on land AND water tiles. Produces fiber + stalk. Unprecedented flexibility. |
| Iron Culture | Diatom Culture | Ferro-Silica Culture | Produces iron precipitate coated in silica shell. Pre-assembled composite material. |
| Spider Silk Grain | Sea-Grain | Silk-Starch Grain | Produces silk protein AND starch in same harvest. Dual-output crop. |
| Mycelium | Bacterial Cellulose | Myco-Cellulose Composite | Self-assembling structural material. Stronger than either parent alone. |
| Aquaculture Fish | Algae Culture | Photosynthetic Fish Culture | Fish that partially photosynthesize — 50% reduced feed requirement, same fillet output. Frees up feed chain capacity. |

**Not all chimeras succeed.** Validation rejection rate for chimeras: ~35%. Some combinations are biologically incompatible. But failed chimeras aren't wasted — the Rejection Report can be recycled, and the player learns which combinations work.

**Chimeric Tissue** — harvested from validated chimeras. Each chimera type produces a unique tissue type when processed. Chimeric Tissue is a SCIENCE PACK ingredient (SOD requires it), so the player must successfully fuse AND validate at least one chimera.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Horizontal Gene Transfer Reagent | Gene Cassette Synthesizer (from Hybrid Seedling Atlas) | 50 | Makes fusion possible. Archived specimen payoff. |
| Fusion Residue | Fusion Chamber byproduct | 100 | → compost. |
| Chimeric Organism (per type) | Fusion Chamber → Validation | 50 | Validated chimera. Properties from both parents. |
| Chimeric Tissue | Processing validated chimera harvest | 50 | Science pack ingredient. Unique per chimera type. |
| Amphibious Grass-Kelp Seed | Fusion: Grass + Kelp | 200 | Grows on land or water. Dual-output. |
| Ferro-Silica Culture | Fusion: Iron + Diatom | 50 | Pre-assembled iron-silica composite. |
| Silk-Starch Grain Seed | Fusion: Spider Silk + Sea-Grain | 200 | Dual output: silk protein + starch. |
| Myco-Cellulose Culture | Fusion: Mycelium + Bacterial Cellulose | 50 | Self-assembling structural composite. |
| Photosynthetic Fish Culture | Fusion: Aquaculture Fish + Algae Culture | 50 | Fish that partially photosynthesize. 50% reduced feed requirement. Same fillet output. Frees up feed production capacity. |
| Synthetic Biofilm | Bio Web: Methanotroph Bioreactor + Biogas Digester (~8%) | 50 | Unique metal-free biocompatible adhesive. Forward: Era 8 living architecture bonding agent. |
| Crystalline Silk Fiber | Bio Web: Spider Silk Grain + Greenhouse (~5%) | 50 | Ultra-pure silk variant. Forward: Era 7 evolution engine scaffold + Era 8 neural relay substrate. |

### Hours 12–15: Bio-Containment + Pharmaceutical Production

**What unlocks:** Bio-Containment Lab, pharmaceutical chain, industrial enzyme upgrade.

**Bio-Containment.** Synthetic organisms can escape. Every cycle of the Genome Authoring Platform, Fusion Chamber, or xenocrop cultivation has a small chance of releasing organisms into the environment:
- Authoring Platform / Fusion Chamber: 5% escape chance per cycle WITHOUT containment
- Xenocrop cultivation: 2% per harvest cycle WITHOUT containment
- Bio-Containment Lab within 3 tiles: reduces escape chance by 90% (→ 0.5% / 0.2%)

**What escape means:** An escaped organism appears as a random entity within 20 tiles. It establishes a Bio Web relationship with whatever's nearby — could be mutualistic (free bonus!) or competitive (production disruption). The player must identify and remove it (mining) or accept the Bio Web shift. NOT a disaster — a manageable consequence that teaches containment discipline.

**Containment Report** — produced by the Bio-Containment Lab's monitoring cycle. Records environmental readings around synthetic organism operations. Science pack ingredient.

```
Bio-Containment Lab (2×2, 10 kW)
  → Monitoring recipe (passive, 30s cycle): 1 Purified Water + 1 Sequencing Reagent
  → 1 Containment Report + 1 Environmental Sample (→ compost or archive if anomalous)
```

**Pharmaceutical production (the Novel Enzyme payoff):**
```
Genome Authoring Platform:
  Blank Bacterial Chassis + Novel Enzyme Cassette + Strong Promoter
  → Pharmaceutical Producer Culture
  → Validate → Install in Pharmaceutical Bioreactor (new machine)
  → Pharmaceutical Bioreactor (45s): Culture Medium + Purified Water
  → Pharmaceutical Compound + Spent Medium (→ compost)
```

The Novel Enzyme Cassette comes from the Anomalous Fermentation Byproduct (archived Era 3, sequenced Era 5). The enzyme it encodes catalyzes reactions never seen in nature — the pharmaceutical compounds it produces have unique properties.

**Pharmaceutical Compound uses:**
- **Enhanced Enzyme Catalyst:** Pharmaceutical Compound + Purified Industrial Enzyme → Enhanced Enzyme (2x speed boost instead of Era 4's 1.5x). Upgrades every enzyme-enhanced recipe in the factory.
- **Containment Stabilizer:** Pharmaceutical Compound + PHA Sheet → Stabilizer. Applied to synthetic organisms to reduce escape chance by additional 50%. Stacks with Bio-Containment Lab.
- **Growth Accelerator:** Pharmaceutical Compound + Growth Factor → Accelerator. Halves growth time for any crop/culture. Stacks with greenhouse/compost bonuses.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Containment Report | Bio-Containment Lab (monitoring cycle) | 50 | Science pack ingredient. Environmental safety record. |
| Environmental Sample | Bio-Containment Lab byproduct | 50 | → compost or archive. Occasionally anomalous. |
| Novel Enzyme Cassette | Gene Cassette Synthesizer (from Fermentation Byproduct Atlas) | 20 | Novel catalytic activity. Archived specimen payoff. |
| Pharmaceutical Producer Culture | Genome Authoring Platform (after validation) | 50 | Designed bacterium. Produces novel compounds. |
| Pharmaceutical Compound | Pharmaceutical Bioreactor | 50 | Versatile bioactive. Multiple high-value uses. |
| Enhanced Enzyme Catalyst | Crafting: 1 Pharmaceutical Compound + 1 Purified Industrial Enzyme | 50 | 2x speed boost (up from 1.5x). Universal upgrade. |
| Containment Stabilizer | Crafting: 1 Pharmaceutical Compound + 1 PHA Sheet | 50 | -50% escape chance. Stacks with lab. Applied to organisms. |
| Growth Accelerator | Crafting: 1 Pharmaceutical Compound + 1 Growth Factor | 50 | Halves growth time. Applied to crop/culture fields. |

### Hours 15–18: Enzymatic Turbine + Enhanced Bio-Oil Algae

**What unlocks:** Enzymatic Turbine (5 MW), Enhanced Bio-Oil Algae (xenocrop), upgraded power infrastructure.

**Enhanced Bio-Oil Algae:**
```
Genome Authoring Platform:
  Blank Algae Chassis + Enhanced Lipid Cassette + Strong Promoter
  → Enhanced Bio-Oil Algae Culture
  → Validate → Algae Cultivation Tank (same Era 3 machine, new recipe. 30s cycle)
  → 3 Enhanced Algal Oil + 1 Organic Slurry (→ compost)
```
Compared to standard algae: 3x more bio-oil per cycle. The Oil-Dense Algae exclusive (Era 4) was the stepping stone — this designed organism blows past it. The Enhanced Lipid Cassette was synthesized from the Oil-Dense Algae Genome Atlas. Exclusive cultivar → gene extraction → synthetic enhancement. Three eras of biology compressed into one production line.

**Enzymatic Turbine (5 MW):**
```
Recipe: 8 Bio-Composite Plate + 6 Blue Circuit + 2 Enzyme Catalyst Cartridge + 2 Spider Silk Panel + 2 Zinc Plate
Output: 5 MW
Fuel: Bio-Oil (8/min) — Enhanced Algal Oil preferred
```
Enzymatic conversion — bio-oil broken down by industrial enzymes embedded in the turbine. No combustion. Spider Silk Panel used because the turbine's internal scaffold needs 5x tensile strength to contain the enzymatic reaction pressures.

**Bio-oil supply chain:** Enhanced algae at 3 oil / 30s = 6 oil/min per tank. Turbine needs 8/min. **2 Enhanced Algae tanks sustain 1 turbine.** Dramatically easier than the ethanol fuel cell's 6-12 fermentation vats. This is the reward for investing in synthetic biology — designed organisms make infrastructure more efficient.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Blank Algae Chassis | Gene Cassette Synthesizer | 50 | Stripped algae genome. Aquatic organisms. |
| Enhanced Lipid Cassette | Gene Cassette Synthesizer (from Oil-Dense Algae Atlas) | 20 | 3x bio-oil production. |
| Enhanced Bio-Oil Algae Culture | Genome Authoring Platform (after validation) | 50 | Designed algae. Premium oil producer. |
| Enhanced Algal Oil | Algae Cultivation Tank (enhanced recipe) | 100 | 3x more per cycle than standard. Turbine fuel. |
| Enzymatic Turbine | Crafting | 5 | 5 MW from bio-oil 8/min. Spider silk + blue circuit. |

### Hours 18–22: Advanced Xenocrops + Integration + Capstone

**What the player does:**
- Design remaining xenocrops for industrial optimization:

**Cellulose Hyper-Producer:**
```
Blank Bacterial Chassis + Cellulose Hyper-Production Cassette + Strong Promoter
  → Cellulose Hyper-Producer Culture → 4x bacterial cellulose output
```
Upgrades the entire bio-composite chain — more cellulose feeds Bio-Composite Fabricators faster.

**Nitrogen Hyper-Fixer:**
```
Blank Bacterial Chassis + Nitrogen Hyper-Fixation Cassette + Stress-Response Element
  → Nitrogen Hyper-Fixer Culture → 3x nitrogen supplement, activates only when soil nitrogen is low
```
Conditional expression (Stress-Response Element) means it produces nitrogen ONLY when needed. Efficient.

- Scale xenocrop production across the island
- Experiment with organism fusions — some surprising results
- Sequence the Over-Expressed Tissue Fragment (Era 5 breadcrumb) in the Genomic Sequencing Array → extract Growth-Regulation Bypass Template in the Gene Cassette Synthesizer → forward to Era 7's Bio-Boat Hull Organism
- Enzymatic Turbine providing 5 MW (total power ~7.1 MW)
- Containment infrastructure around all synthetic organism operations
- Pharmaceutical compounds upgrading enzyme efficiency factory-wide
- Research capstone: Synthetic Biology Demonstration

**Additional items introduced:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Cellulose Hyper-Production Cassette | Gene Cassette Synthesizer | 20 | 4x bacterial cellulose. |
| Nitrogen Hyper-Fixation Cassette | Gene Cassette Synthesizer | 20 | 3x nitrogen. Conditional. |
| Cellulose Hyper-Producer Culture | Genome Authoring Platform | 50 | Designed bacterium. Bio-composite supply chain upgrade. |
| Nitrogen Hyper-Fixer Culture | Genome Authoring Platform | 50 | Designed bacterium. Smart nitrogen production. |
| Weak Promoter | Hand crafting | 100 | Low expression. -10% rejection rate. Stable organisms. |
| Growth-Regulation Bypass Template | Gene Cassette Synthesizer (from Over-Expressed Tissue Fragment Atlas) | 10 | Extracted from archived Era 5 specimen. Forward to Era 7. |

---

## 4. ITEM SUMMARY (~95 new items)

| Category | New in Era 6 | Examples |
|----------|-------------|---------|
| Gene Cassettes | ~8 | Spider Silk, Luciferase, Chemosynthesis, PHA Pathway, Novel Enzyme, Enhanced Lipid, Cellulose Hyper, N-Fixation Hyper |
| Regulatory Elements | ~5 | Strong Promoter, Weak Promoter, Circadian Regulator, Stress-Response Element, Nutrient Uptake Enhancer |
| Blank Chassis | ~4 | Grain, Algae, Bacterial, Fungal |
| Genome Data | ~1 | Genome Data Copy (reusable data from Atlas) |
| Xenocrop seeds/cultures | ~6 | Spider Silk Grain, Phosphorescent Moss, Methanotroph, Pharmaceutical Producer, Enhanced Oil Algae, Cellulose/N-Fixation producers |
| Xenocrop products | ~12 | Silk Grain, Silk Protein, Silk Fiber, Silk Panel, Deproteinized Hull, PHA Precursor, Enhanced Algal Oil, Pharmaceutical Compound, Enhanced Enzyme, Containment Stabilizer, Growth Accelerator |
| Fusion/Chimeras | ~9 | HGT Reagent, Fusion Residue, 5 chimera organism types (incl. Photosynthetic Fish), Chimeric Tissue |
| Bio Web bonus items | ~2 | Synthetic Biofilm, Crystalline Silk Fiber |
| Containment | ~4 | Validation Reagent, Rejection Report, Containment Report, Environmental Sample |
| Gene Templates (forward) | ~1 | Growth-Regulation Bypass Template (→ Era 7) |
| Power | ~1 | Enzymatic Turbine |
| Machines | ~10 | See machine table |
| Science | ~2 | Synthetic Organism Dossier, Xenocrop Sample |
| **Total new** | **~100** | |
| **Carried from Era 1-5** | **~352** | |
| **Grand total** | **~452** | |

---

## 5. MACHINE SPECIFICATIONS (Era 6 new)

| Machine | Size | Power | Category | Notes |
|---------|------|-------|----------|-------|
| Gene Cassette Synthesizer | 2×2 | 15 kW | cassette-synthesis | Gene cassettes, blank chassis, HGT reagent. The toolkit machine. |
| Genome Authoring Platform | 4×4 | 30 kW | organism-design | Chassis + cassettes + promoter → novel organism. The era's signature. |
| Phenotypic Validation Chamber | 2×2 | 15 kW | validation | Designed organism + reagent → validated or rejected. Gate before deployment. |
| Bio-Containment Lab | 2×2 | 10 kW | containment | Monitoring cycle → containment report. Reduces escape chance by 90% within 3 tiles. |
| Protein Extraction Vat | 2×2 | 10 kW | extraction | Silk grain → silk protein + hull. General protein extraction for xenocrops. |
| Spinning Frame | 2×1 | 5 kW | spinning | Silk protein → silk fiber. Textile processing. |
| Fusion Chamber | 3×3 | 20 kW | fusion | Two organisms + HGT Reagent → chimera + residue. 90s cycle. |
| Methanotroph Bioreactor | 2×2 | 5 kW | bioreactor | Methanotroph culture + biogas → PHA precursor + CO₂ + biomass. |
| Pharmaceutical Bioreactor | 2×2 | 10 kW | bioreactor | Pharmaceutical culture + medium → pharmaceutical compound. |
| Enzymatic Turbine | 3×3 | Produces 5 MW | — | Bio-oil 8/min. Enzymatic conversion. Silk panel + blue circuit. |

**Power budget:**
- Inherited: ~2,100 kW (tidal + wind + biogas + biomass boiler + ethanol fuel cell)
- Enzymatic Turbine: +5,000 kW
- Total supply: ~7,100 kW

| Consumer | Draw |
|----------|------|
| Gene Cassette Synthesizer | 15 kW |
| Genome Authoring Platform | 30 kW |
| Phenotypic Validation Chamber | 15 kW |
| Bio-Containment Lab ×2 | 20 kW |
| Protein Extraction Vat | 10 kW |
| Spinning Frame | 5 kW |
| Fusion Chamber | 20 kW |
| Methanotroph Bioreactor | 5 kW |
| Pharmaceutical Bioreactor | 10 kW |
| All carried machines (Eras 1-5) | ~533 kW |
| Xenocrop cultivation (planters, ponds) | ~30 kW |
| **Total** | **~693 kW** |

**Surplus: ~6,400 kW.** The Enzymatic Turbine is a massive step up. But bio-oil supply (8/min from 2 enhanced algae tanks) is the real constraint — scaling to 2 turbines requires 4 tanks plus nutrient/CO₂ infrastructure. Era 7's machines will consume much more power (Evolution Engine runs continuously for 15-45 min real-time).

---

## 6. TECH TREE

Era 6 uses Genomic Annotation Compendiums (GAC) for research.

| # | Name | Cost | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 58 | Gene Cassette Engineering | 4 GAC | Tech 57 (Era 6 entry) | Gene Cassette Synthesizer, blank chassis production, regulatory elements |
| 59 | Genome Authoring | 5 GAC | Tech 58 | Genome Authoring Platform, Spider Silk Grain recipes |
| 60 | Xenocrop Validation | 3 GAC | Tech 59 | Phenotypic Validation Chamber, Validation Reagent |
| 61 | Silk Processing | 3 GAC | Tech 60 | Protein Extraction Vat, Spinning Frame, silk product chain |
| 62 | Bioluminescent Design | 3 GAC | Tech 60 | Luciferase Cassette, Phosphorescent Moss Culture |
| 63 | Chemosynthetic Design | 4 GAC | Tech 60 | Chemosynthesis + PHA Pathway Cassettes, Methanotroph, Bioreactor |
| 64 | Organism Fusion | 5 GAC | Tech 60 | Fusion Chamber, HGT Reagent, chimera recipes |
| 65 | Bio-Containment | 4 GAC | Tech 64 | Bio-Containment Lab, Containment Reports, escape reduction |
| 66 | Pharmaceutical Engineering | 5 GAC | Tech 63 + Tech 65 | Novel Enzyme Cassette, Pharmaceutical Bioreactor, pharmaceutical compounds |
| 67 | Enhanced Bio-Oil | 4 GAC | Tech 60 | Enhanced Lipid Cassette, Enhanced Bio-Oil Algae |
| 68 | Enzymatic Power | 5 GAC | Tech 66 + Tech 67 | Enzymatic Turbine (5 MW) |
| 69 | Industrial Xenocrop Design | 4 GAC | Tech 66 | Cellulose Hyper + N-Fixation Hyper Cassettes, industrial xenocrops |
| 70 | Synthetic Biology Demonstration | 10 GAC | Tech 68 + Tech 69 | **ERA 7 TRANSITION** |

**Total GAC for Era 6:** 4+5+3+3+3+4+5+4+5+4+5+4+10 = **59 GAC**

**Critical path:** 58 → 59 → 60 → {63, 64, 67} → {65, 66} → 68 → 70. Gene cassettes → authoring → validation → {chemosynthesis, fusion, enhanced algae} → {containment, pharma} → turbine → capstone. Silk (61, 62) and industrial xenocrops (69) are parallel branches.

---

## 7. BIO WEB (Era 6)

### New Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Phosphorescent Moss | Any crop (3 tiles) | Commensal | +10% growth rate | Extended light hours from moss illumination. |
| Methanotroph Bioreactor | Biogas Digester | Mutualistic | +25% PHA output + **Synthetic Biofilm** (~8%) | Digester waste gas directly feeds methanotroph. Bonus item: novel biofilm material. |
| Xenocrop | Wild-type crop of same family | Competitive | -25% wild-type yield | Designed organisms dramatically outcompete natural relatives. Separate them. |
| Fusion Chamber | Sequencing Array (3 tiles) | Commensal | +10% fusion success rate | Genomic data improves fusion alignment prediction. |
| Chimeric Organism | Any organism | Variable | Unpredictable until observed | Each chimera type has unique Bio Web relationships. Discovered by placement — could be mutualistic, competitive, or neutral. Part of the fun. |
| Spider Silk Grain | Greenhouse | Mutualistic | +30% silk yield + **Crystalline Silk Fiber** (~5%) | Controlled environment optimizes protein folding. Bonus item: ultra-pure silk for Era 7+. |

### Synthetic Biofilm + Crystalline Silk Fiber

Two new Bio Web bonus items. Synthetic Biofilm is a unique material produced only by the methanotroph-digester pair — useful in Era 8 living architecture as a biocompatible adhesive. Crystalline Silk Fiber is an ultra-pure variant useful in Era 7 evolution engine scaffold components.

---

## 8. SCIENCE PACK

**Synthetic Organism Dossier**

| Ingredient | Source | Chain |
|-----------|--------|-------|
| Gene Cassette (any type) | Gene Cassette Synthesizer | Gene engineering chain |
| Xenocrop Sample | Harvest from any validated xenocrop (special recipe: snapshot harvest) | Xenocrop cultivation chain |
| Chimeric Tissue | Process validated chimera harvest | Organism fusion chain |
| Containment Report | Bio-Containment Lab monitoring cycle | Containment chain |

**Science ingredient recipes:**
| Recipe | Machine | Time | Inputs | Output |
|--------|---------|------|--------|--------|
| Collect Xenocrop Sample | Hand | 3s | 1 Spider Silk Grain (or any xenocrop harvest) + 1 Purified Water | 1 Xenocrop Sample |
| Process Chimeric Tissue | Protein Extraction Vat | 15s | 1 Chimeric Organism harvest (any type) + 1 Bio-Acid | 1 Chimeric Tissue |

Gene Cassette and Containment Report come from normal production (no special recipe needed).

**Assembly:** 1 Gene Cassette + 1 Xenocrop Sample + 1 Chimeric Tissue + 1 Containment Report → 2 Synthetic Organism Dossier (hand, 10s)

**Consumed by:** Era 7 research technologies. SOD requires engagement with ALL four Era 6 systems.

---

## 9. BALANCE ANALYSIS

### Xenocrop Throughput (Spider Silk)

**1 Spider Silk Grain plot (10 plants):** 10 × 3 grain per 60s = 30 grain/min.
**Protein Extraction Vat:** 2 grain → 1 protein in 20s = 3 cycles/min = 6 grain consumed, 3 protein produced per vat.
**30 grain/min needs 5 vats → 15 protein/min.**
**Spinning Frame:** 2 protein → 1 fiber in 15s = 4 cycles/min = 8 protein consumed, 4 fiber produced per frame.
**15 protein/min needs 2 frames → 8 fiber/min.**
**Panel:** 4 fiber → 1 panel in 5s = 12 cycles/min. At 8 fiber/min → 2 panels/min.

Spider Silk Panel demand is LOW — it's for premium machine housings and Era 7+ structures. 2 panels/min from a 10-plant plot + 5 vats + 2 frames is comfortable. A smaller setup (5 plants, 2 vats, 1 frame) produces ~1 panel/min, plenty for most needs.

### Organism Fusion Throughput

**1 Fusion Chamber:** 1 chimera / 90s = 0.67 chimera/min.
**Validation:** ~65% success rate (chimeras) → ~0.43 validated chimera/min.
**Chimeric Tissue from validated chimera:** 1 tissue per processing (15s) = 4/min throughput. Bottleneck is fusion + validation, not processing.

Chimeric Tissue demand: SOD science pack. At 2 SOD per assembly, the player needs ~30-50 tissue for Era 7 research. At 0.43 validated/min, that's ~70-115 min of fusion operation. Spread across 18-22 hours, this is intermittent work.

### Bio-Oil Supply for Enzymatic Turbine

Turbine: 8 bio-oil/min.
Enhanced algae: 3 oil / 30s = 6 oil/min per tank. **2 tanks = 12 oil/min (50% surplus).**
Standard algae (Era 3): ~1 oil/min per tank. Not practical for turbine fuel.
Oil-Dense Algae exclusive (Era 4): ~2 oil/min per tank. 4 tanks needed. Viable but inefficient.

**The xenocrop advantage is clear:** 2 designed tanks vs 4-8 standard tanks. Investing in synthetic biology PAYS in infrastructure efficiency.

### Pharmaceutical Compound Production

**1 Pharmaceutical Bioreactor:** 1 compound / 45s = 1.3 compound/min.
**Enhanced Enzyme demand:** Consumed per recipe cycle (same as Era 4 standard enzymes). The player's highest-throughput machines need a continuous supply. At 10 enzyme-boosted machines running, demand is ~5-10 Enhanced Enzymes/min → ~4-8 pharmaceutical compounds/min → 3-6 bioreactors at full scale.
**Growth Accelerator demand:** ~1 per crop field. Applied once, lasts ~50 harvest cycles before reapplication needed.
**Containment Stabilizer:** ~1 per synthetic organism operation. Consumed slowly (~1 per 100 cycles).

Pharmaceutical compounds are HIGH-VALUE with MIXED demand profiles: enzymes are continuous high-volume, accelerators and stabilizers are intermittent. The player needs 3-6 bioreactors for enzyme production at full scale — the pharmaceutical chain becomes a real production line, not a one-off build.

### Power Budget

5 MW from turbine + 2.1 MW inherited = 7.1 MW total.
Demand: ~693 kW. Massive surplus.
**But:** Era 7's Continuous Culture Evolution Engine (4×4 machine) runs for 15-45 minutes continuously and likely draws 50+ kW. Multiple engines running simultaneously could approach 200-300 kW additional. Still well within budget — the surplus is preparing for Era 7-8's industrial scaling.

---

## 10. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| Validation rejection | Designed organism too complex (3-4 cassettes) or incompatible chassis-cassette combination | Organism fails phenotype validation. Rejection Report returned. Recycle: 1 Report → 1 Nucleotide Reagent (50% recovery). Chassis + cassettes lost. 15-45% rejection rate depending on complexity. | Start simple (1-2 cassettes). Use Weak Promoter for stability (-10% rejection). Test before committing rare cassettes (archived specimen cassettes are expensive to replace). |
| Containment breach | Operating Authoring Platform or Fusion Chamber without adjacent Bio-Containment Lab | 5% chance per cycle: designed organism appears as random entity within 20 tiles. Bio Web shifts. Minor disruption. | Build containment FIRST. The Lab is cheap (10 kW). Always place it before starting synthetic work. |
| Chimera instability | Fusing organisms from incompatible biological kingdoms (e.g., bacterial + fungal) | Chimera degrades over time. Output drops 10% per 100 cycles. Must re-fuse periodically. | Some combinations are unstable. Stick to same-kingdom or related organisms for stable chimeras. |
| Bio-oil shortage | Turbine running without sufficient enhanced algae cultivation | Power drops proportionally. Cascading brownout if ethanol fuel cell isn't maintained as backup. | KEEP THE FUEL CELL RUNNING as backup power. Don't decommission old power sources. Redundancy matters. |

---

## 11. BREADCRUMBS (Era 6)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Chimeric Biofilm Fragment | Fusion Chamber output (when fusing organisms with high Symbiotic Affinity) | ~2% per fusion cycle | "Two of your engineered species have spontaneously merged at the cellular level. This isn't fusion — it happened on its own. The colony is a single organism built from two designed genomes cooperating without your intervention." | Era 7: evolution analysis reveals self-organizing genetic principles. Era 8: template for living architecture's multi-species composites. |

---

## 12. ERA 6 → ERA 7 TRANSITION

**Capstone tech:** Synthetic Biology Demonstration (10 GAC)

**Prerequisites (verifiable):**
- Genome Authoring Platform operational (designed ≥3 different xenocrop organisms)
- At least 1 validated chimera organism deployed
- Spider Silk production chain operational (produced ≥20 spider silk fiber)
- Bio-Containment Lab operational (produced ≥10 containment reports)
- Enzymatic Turbine built and operational
- Pharmaceutical compound produced (≥5)
- Methanotroph converting biogas to PHA (PHA Precursor produced ≥20)

**Transition notification:** *"Chapter: The Optimization Engine. 'What if you let evolution run the experiment?' — You've been designing organisms one gene at a time. Now let millions of generations find solutions you can't imagine. Directed evolution, mutagenesis, and emergent fitness await."*

**What Era 7 inherits:**
- ~10,000-15,000 tile island with synthetic biology campus, containment zones, offshore platforms, rail network
- Full genome authoring capability (design organisms from scratch)
- Organism fusion (chimeras with validated traits)
- Bio-containment infrastructure
- 4 chassis types, 8+ gene cassettes, 5+ regulatory elements
- Xenocrop production: spider silk, phosphorescent moss, methanotroph, enhanced algae, pharmaceutical, cellulose hyper, nitrogen hyper
- Chimera organisms in production
- Spider Silk Panel as premium structural material
- Pharmaceutical compounds (enhanced enzymes, growth accelerators, containment stabilizers)
- 5 MW enzymatic turbine (total power ~7.1 MW)
- Archived Gene Templates for Era 7:
  - Growth-Regulation Bypass Template (from Over-Expressed Tissue Fragment, Era 5) → Bio-Boat Hull Organism
  - Chimeric Biofilm Fragment → self-organizing multi-species composite principles
  - Self-Modifying Culture Sample analysis (Era 3→5) → Directed Evolution research
- ~447 items in production

---

## 13. IMPLEMENTATION NOTES

**Gene Cassette Synthesizer:** Assembling-machine with many recipe variants. One recipe per cassette type + one per chassis type. Each recipe consumes specific Genome Atlases (which in turn require Era 5 sequencing). Cassette items are standard item prototypes — no special mechanics.

**Genome Authoring Platform:** 4×4 assembling-machine. One recipe per designed organism type. Each recipe specifies: 1 chassis (specific type) + 1-4 cassettes (specific types) + 1 promoter (any type). Output: designed organism seed/culture. The recipe list grows as the player synthesizes new cassette types. Implementation: each cassette type + chassis combination = one recipe prototype. With 8 cassettes × 4 chassis = 32 possible combinations, but only ~10-15 are useful/intended recipes. The rest either don't make biological sense or aren't interesting gameplay-wise. Unused combinations simply don't have recipes.

**Phenotypic Validation Chamber:** Assembling-machine. Input: designed organism + Validation Reagent. Output: Validated Organism (same item, flagged as validated) or Rejection Report. Rejection probability stored per organism type (in recipe prototype) and rolled via control.lua on recipe completion. Validated organisms are separate item prototypes from unvalidated ones — only validated versions have `place_result` (can be planted/deployed).

**Organism Fusion:** Fusion Chamber is assembling-machine. One recipe per valid organism pair. Output chimera is a unique item prototype per combination. Chimera traits calculated from parent traits via weighted random in control.lua. Chimera validation uses the same Validation Chamber with higher rejection rates.

**Bio-Containment escape mechanic:** control.lua tracks all synthetic organism operations (Authoring Platform, Fusion Chamber, xenocrop harvest). Per cycle, rolls escape probability (5% base without lab, 0.5% with lab within 3 tiles). On escape: spawns a random synthetic organism entity at a random position within 20 tiles. The entity establishes Bio Web relationships with neighbors. Player can mine it to remove. Implementation: `rendering.draw_circle` around containment labs to visualize containment radius.

**Phosphorescent Moss spreading:** Moss is a `simple-entity-with-owner` that, when placed, triggers a control.lua timer. Every 5 minutes, if adjacent tiles are eligible (land, not occupied), a new moss entity spawns on a random adjacent tile. Moss emits light via `light` property on entity prototype. Spreading stops if moss density exceeds threshold (e.g., >8 moss in 5-tile radius).

**Enzymatic Turbine:** `electric-energy-interface` producing 5 MW. Burner-type energy source consuming bio-oil items. If supply drops, output scales proportionally.
