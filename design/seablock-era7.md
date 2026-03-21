# BIOGENESIS: Era 7 — The Optimization Engine

**Status:** DRAFT v2
**Date:** 2026-03-21
**Duration:** 18–22 hours
**Discipline:** Industrial biotech, evolution as manufacturing, offshore expansion
**Tone:** Industrial, warned — "Evolution found a solution. You may not understand what it found."
**Core Insight:** You've been designing organisms. Now let evolution design FOR you. Set the selection pressure, run millions of generations, screen the results. Some answers are better than anything you could have engineered.
**Research Chapter:** "The Optimization Engine"
**Science Pack:** Evolutionary Dynamics Report

---

## 1. INHERITED STATE

The player enters Era 7 with:
- **Island:** ~10,000-15,000 tiles with synthetic biology campus, containment zones, offshore platforms, rail network
- **Materials:** All Era 1-6 materials + spider silk, chimeric organisms, pharmaceutical compounds, xenocrop products, enhanced enzymes
- **Machines:** ~75 machine types across Eras 1-6. Genome authoring, organism fusion, bio-containment, pharmaceutical production all running.
- **Power:** ~7,100 kW (tidal + wind + biogas + biomass boiler + ethanol fuel cell + enzymatic turbine)
- **Logistics:** Standard through express belts/inserters. Trains on causeway network. Automated Planters.
- **Science:** SOD (Synthetic Organism Dossier) production established
- **Biology:** Full genome authoring (design from scratch). CRISPR editing. Organism fusion. Xenocrops in production. Bio-containment active. Pharmaceutical compounds upgrading factory-wide enzyme efficiency.
- **Archived Gene Templates for Era 7:**
  - Growth-Regulation Bypass Template (Era 5→6) → Bio-Boat Hull Organism
  - Chimeric Biofilm Fragment (Era 6 breadcrumb) → self-organizing genetic principles
  - Self-Modifying Culture Sample (Era 3→5) → already analyzed, inspired CRISPR research. In Era 7: the self-editing mechanism becomes the basis for the Evolution Engine's mutagenic system.

**What changes:** The player stops being the designer and becomes the DIRECTOR. The Continuous Culture Evolution Engine takes a base organism, applies selection pressure, and runs millions of generations in 15-45 minutes of real time. The output isn't what the player designed — it's what EVOLUTION found. Sometimes better than anything the player could have engineered. Sometimes terrifyingly different. Divergent Strains (off-target results) open unexpected possibilities. Bio-boats extend logistics to water. The base becomes an archipelago. And then an evolved organism escapes containment — not an accident, but a revelation.

---

## 2. THE DIRECTED EVOLUTION MECHANIC — HOW IT WORKS

### The Evolution Pipeline

```
BASE ORGANISM (any seed, culture, or xenocrop)
  │
  ▼
CONTINUOUS CULTURE EVOLUTION ENGINE (4×4, 50 kW)
  → Inputs: Base Organism + Selective Medium + Mutagenic Primer + Evolution Nutrient Pack
  → Runs for 15-45 min real time (1,000-5,000 simulated generations)
  → Output: Evolved Biomass (unsorted — contains target organisms + divergent strains)
  │
  ▼
FITNESS ANALYZER (2×2, 10 kW)
  → Input: Evolved Biomass + Fitness Reagent
  → Output: Analyzed Biomass (passed through, not consumed) + Fitness Report
  → Player reads report, decides: screen (if promising) or discard + restart (if clearly missed)
  │
  ▼
STRAIN SCREENING STATION (2×2, 15 kW)
  → Input: Analyzed Biomass
  → Output: High-Fitness Biomass (target met) + Divergent Strain (off-target — unknown properties)
  → ~40-60% of biomass is high-fitness (on target). Rest is divergent.
  │
  ▼
DEPLOYMENT
  → High-Fitness Biomass → culture at scale in standard bioreactors/ponds
  → Divergent Strain → Fitness Analyzer reveals properties → sometimes MORE valuable than the target
```

### Key Difference from Era 6

Era 6: You choose every gene. The organism does exactly what you specified (if it passes validation).
Era 7: You choose the GOAL. Evolution finds a path you didn't specify. The organism does what you asked... plus things you didn't know were possible.

**The Mutagenic Potential trait (visible since Era 5) now matters.** Organisms with high Mutagenic Potential evolve FASTER in the engine — fewer generations needed, more variation. Organisms CRISPR-edited for high Mutagenic Potential (using the Volatility Guide RNA, Era 5) are the best evolution base stock. The player who prepared high-mutability lines in Era 5 has a head start.

### Selective Media

Each medium defines what the Evolution Engine optimizes for. Crafted items.

| Medium | Recipe | Selects For | Used To Evolve |
|--------|--------|-------------|----------------|
| Compressive Strength Medium | 1 Calcium Matrix + 1 Bio-Acid + 1 Purified Water → 2 | Structural integrity | Structural Mycelium XM-12 |
| Enzymatic Efficiency Medium | 1 Enhanced Enzyme + 1 Nucleotide Reagent + 1 Purified Water → 2 | Catalytic performance | Hyper-Evolved Cellulase, evolved industrial enzymes |
| Metabolic Output Medium | 1 Bio-Ethanol + 1 Compost Extract + 1 Purified Water → 2 | Energy-rich metabolic byproducts | Metabolic Substrate Organism (power fuel) |
| Growth Rate Medium | 1 Growth Accelerator + 1 Nutrient Medium + 1 Purified Water → 2 | Reproduction speed | Fast-growing biomass producers |
| Chemical Resistance Medium | 1 Sulfuric Acid + 1 Bio-Acid + 1 Purified Water → 2 | Survival in harsh conditions | Organisms for acid/sulfur zones |
| Bioelectric Medium | 1 Cobalt Compound + 1 Zinc Plate + 1 Purified Water → 2 | Electrical conductivity | Bioelectric organisms (forward: Era 8 neural relay) |

### Mutagenic Primers

Control mutation rate. The player chooses risk vs. reward.

| Primer | Recipe | Mutation Rate | Effect |
|--------|--------|--------------|--------|
| Low Mutagenic Primer | 1 Nucleotide Reagent + 1 Purified Water → 3 | Low | Higher target hit rate (~60%). Fewer divergent strains. Safe, predictable. |
| High Mutagenic Primer | 1 Nucleotide Reagent + 1 Pharmaceutical Compound + 1 Sulfuric Acid → 2 | High | Lower target hit rate (~40%). MORE divergent strains. Risky, potentially breakthrough discoveries. |

**Evolution Nutrient Pack:** 2 Culture Medium + 1 Compost Extract + 1 Freshwater → 3 (hand, 3s). Standard nutrient supply for the engine. Consumed per run.

### Rapid Evolution Mode (for known targets)

The first evolution run for a new target is always FULL duration (15-45 min) — this is DISCOVERY. But once the player has successfully evolved and screened a target at least once, the engine unlocks a **Rapid Evolution** recipe variant for that specific target:
- Same inputs (base organism + medium + primer + nutrient pack)
- **10 minutes** instead of 30-45 (the engine reuses the evolutionary pathway from the first successful run)
- Same output quality and divergent strain ratios
- Unlocked per target type after first successful screening

This means: first Structural Mycelium run = 30 min (discovery). Subsequent Structural Mycelium production runs = 10 min each. The player masters evolution and gets FASTER — rewarding expertise, reducing late-era tedium when scaling production of known organisms.

### Divergent Strains — Failure Becomes Discovery

Failed evolution runs don't produce waste. They produce UNKNOWN ORGANISMS. The Strain Screening Station separates them from the target biomass. The Fitness Analyzer reveals their properties.

**6 divergent strain types (randomized per off-target output):**

| Strain | Properties | Uses | Feed Back? |
|--------|-----------|------|------------|
| Luminescent Divergent | Bioluminescent. Brighter than Era 6 moss. | Upgraded lighting components. High-intensity bio-lamps for underwater/deep structures. | Yes — evolve for brightness → Ultra-Luminescent organism |
| Rapid-Growth Divergent | Grows 5x faster than normal. Produces no useful product directly. | Bulk biomass feedstock. Compost, biogas, pellet production at massive scale. Solves fuel supply problems. | Yes — evolve for metabolic output → Substrate Organism |
| Adhesive Divergent | Produces strong biological adhesive. | Construction adhesive. Era 8 living architecture bonding agent. Offshore structure reinforcement. | No — already optimized by accident. |
| Conductive Divergent | Bioelectric properties. Carries weak electrical signals. | Era 8 neural relay components. Biological wire precursor. Archive-worthy for late-game. | Yes — evolve for conductivity → Bioelectric Filament organism |
| Pigment Divergent | Produces vivid pigments (blue, green, red variants). | Decorative in Era 7. Era 9 arcology visual identity / biosphere indicators. | No — aesthetic. |
| Corrosion-Resistant Divergent | Survives salt, acid, extreme pH. | Protective coating for offshore structures. Replaces zinc galvanization. More durable. | Yes — evolve for chemical resistance → Industrial Coating Organism |

**Feeding divergent strains back into the Evolution Engine** is a KEY MECHANIC. Using a divergent strain as the base organism for a new run can reach fitness landscapes the original organism couldn't. "Standing on the shoulders of failures." This creates an evolution TREE where off-target discoveries open new branches. The player who keeps and catalogs divergent strains has more options than one who discards them.

---

## 3. TIMELINE

### Hours 0–3: The Evolution Engine + First Runs

**What unlocks:** Continuous Culture Evolution Engine, Selective Media, Mutagenic Primers, Fitness Analyzer.

**What the player does:**
- Research "Directed Evolution" (first Era 7 tech, 5 SOD)
- Build Continuous Culture Evolution Engine (4×4, 50 kW — the hungriest single machine yet. Recipe: 8 Spider Silk Panel + 6 Blue Circuit + 4 Bio-Composite Plate + 2 Enzyme Catalyst Cartridge + 2 Cultured Leather)
- Craft Selective Media: Compressive Strength Medium (for structural mycelium)
- Craft Low Mutagenic Primer (safe first run)
- Load: Mycelium Culture (Era 3 base stock, CRISPR-edited for high Mutagenic Potential in Era 5) + Compressive Strength Medium + Low Mutagenic Primer + Evolution Nutrient Pack
- START FIRST EVOLUTION RUN. Timer: 30 min real time.

**What the player does WHILE the engine runs (30 min is a long time):**
- Build Fitness Analyzer (2×2. Recipe: 4 Bio-Composite Plate + 2 Blue Circuit + 2 Fused Silica)
- Build Strain Screening Station (2×2. Recipe: 4 Bio-Composite Plate + 4 Blue Circuit + 2 Fused Silica + 1 Spider Silk Panel)
- Expand xenocrop production, scale pharmaceutical chain
- Prepare infrastructure for the evolution results
- Plan offshore expansion (bio-boat tech comes later, but causeway extension continues)

**The first run completes.** The engine outputs: Evolved Biomass. The player feeds it to the Fitness Analyzer. Result: *"Fitness Score: 78/100. Compressive strength target partially met. 58% high-fitness biomass. 42% divergent strains detected."*

The player decides to screen. Strain Screening Station separates: High-Fitness Biomass (target mycelium) + 2-3 Divergent Strains (unknown).

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Compressive Strength Medium | Crafting | 50 | Selective medium. Engine input. |
| Enzymatic Efficiency Medium | Crafting | 50 | Selective medium. Engine input. |
| Metabolic Output Medium | Crafting | 50 | Selective medium. Engine input. |
| Growth Rate Medium | Crafting | 50 | Selective medium. Engine input. |
| Chemical Resistance Medium | Crafting | 50 | Selective medium. Engine input. |
| Bioelectric Medium | Crafting | 50 | Selective medium. Engine input. |
| Low Mutagenic Primer | Crafting | 50 | Safe evolution. Higher target hit rate. |
| High Mutagenic Primer | Crafting | 50 | Risky evolution. More divergent strains. |
| Evolution Nutrient Pack | Crafting | 50 | Standard nutrient supply per run. |
| Evolved Biomass | Evolution Engine output | 50 | Unsorted. Needs screening. |
| Fitness Reagent | Crafting: 1 Sequencing Reagent + 1 Purified Water → 2 | 50 | Consumed by Fitness Analyzer. |
| Analyzed Biomass | Fitness Analyzer (pass-through) | 50 | Same biomass, now tagged with fitness data. Input for Screening Station. |
| Fitness Report | Fitness Analyzer output | 20 | Shows fitness score + divergent strain count. |

### Hours 3–6: Structural Mycelium + Divergent Strain Discovery

**What unlocks:** Mycelium Press, Structural Mycelium Panel. First divergent strain identifications.

**Structural Mycelium XM-12:**
```
High-Fitness Biomass (from compressive strength evolution)
  → Culture at scale: standard Mycelium Cultivation Bed (Era 3 machine, new recipe. 90s cycle)
  → 2 Evolved Mycelium Sheet + 1 Substrate Residue (→ compost)
  → Mycelium Press (2×2, 15 kW. 20s): 3 Evolved Mycelium Sheet
  → 1 Structural Mycelium Panel + 1 Press Waste (→ compost)
```

**Structural Mycelium Panel** is stronger than bio-composite AND self-repairs minor cracks. Implementation: placed as a wall/floor entity that slowly regenerates health if damaged (control.lua timer, 1% HP per minute). This material is for Era 8's living architecture — but in Era 7 it's already useful for heavy-duty construction, machine housings, and pressure vessels.

**Divergent Strain identification.** The player feeds each Divergent Strain to the Fitness Analyzer:
*"Strain analysis complete. This organism was evolving toward compressive strength but diverged at generation ~800. It developed [Luminescent / Rapid-Growth / Adhesive / Conductive / Pigment / Corrosion-Resistant] properties instead. Classification: [type]."*

The player now has a CATALOG of divergent strains. Some are immediately useful. Some are stockpiled for Era 8-9. All can potentially be fed back into the Evolution Engine.

**"Zoom In":** "This organism solved a problem you didn't ask. Evolution doesn't follow your brief — it follows thermodynamics."

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| High-Fitness Biomass | Strain Screening Station | 50 | Target organism separated from divergent strains. |
| Divergent Strain (6 types) | Strain Screening Station | 20 | Off-target organisms. Each type has unique properties. |
| Evolved Mycelium Sheet | Mycelium Cultivation Bed (evolved recipe) | 100 | From XM-12 culture. Stronger than standard mycelium. |
| Structural Mycelium Panel | Mycelium Press | 50 | Self-repairing structural material. Stronger than bio-composite. |
| Press Waste | Mycelium Press byproduct | 100 | → compost. |
| Mycelial Composite | Crafting: 2 Structural Mycelium Panel + 1 Spider Silk Fiber + 1 Bio-Composite Plate | 50 | Premium composite. Science pack ingredient. Combines evolved + designed materials. |

### Hours 6–9: Cellulase Producer + The Ethanol Revolution

**What unlocks:** Hyper-Evolved Cellulase Producer. Fermentable Sugar from cellulose waste. Ethanol economy transformed.

**Hyper-Evolved Cellulase Producer:**
```
Evolution Engine: Cellulase-producing bacteria (from Era 3 Gluconacetobacter line)
  + Enzymatic Efficiency Medium + Low Mutagenic Primer + Evolution Nutrient Pack
  → 30 min run → Evolved Biomass → Screen → High-Fitness Cellulase Culture

High-Fitness Cellulase Culture → Cellulase Bioreactor (new machine, 2×2, 10 kW)
  → Input: ANY cellulose source (crop residue, kelp trim, mycelium waste, deproteinized hull)
  → Cellulase Bioreactor (15s): 3 Cellulose Waste + 1 Evolved Cellulase Culture (installed, persists)
  → 2 Fermentable Sugar + 1 Residual Biomass (→ compost)
```

**THE TRANSFORMATION.** Cellulose waste has been going to compost or biogas throughout the game. Now it becomes Fermentable Sugar — premium ethanol feedstock. The fermentation chain gets a SECOND input stream alongside sea-grain. Ethanol production potentially DOUBLES without planting a single new crop.

| Before Cellulase | After Cellulase |
|-----------------|-----------------|
| Sea-grain → mash → ferment → distill → ethanol | Sea-grain → ethanol (unchanged) |
| Kelp trim → compost | Kelp trim → fermentable sugar → ethanol |
| Crop residue → compost | Crop residue → fermentable sugar → ethanol |
| Mycelium waste → compost | Mycelium waste → fermentable sugar → ethanol |
| Deproteinized hull → compost/ethanol (marginal) | Deproteinized hull → fermentable sugar → ethanol (3.4x more) |

**Fermentable Sugar → ethanol recipe (bypasses Mash Tun):**
```
2 Fermentable Sugar + Yeast Starter Culture → Fermentation Vat (30s, faster than 45s wort cycle)
  → 1 Crude Ethanol + 1 Yeast Sediment
```
Sugar is pre-processed — no mashing needed. Shorter cycle = more ethanol per vat per minute. The player either redirects waste to cellulase bioreactors (new ethanol from waste) or maintains sea-grain fermentation and ADDS sugar fermentation alongside it. Either way, ethanol supply goes from "barely enough" to "abundant."

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| High-Fitness Cellulase Culture | Strain Screening Station (from enzymatic evolution) | 50 | Installed in Cellulase Bioreactor (persists). |
| Cellulose Waste | Conversion recipes (hand, 1s each): 5 Brown Waste → 3 Cellulose Waste. 3 Deproteinized Hull → 2. 5 Kelp Stalk → 2. 3 Substrate Residue → 1. | 100 | Generic cellulose input. Multiple sources feed into one bioreactor recipe. Unlocked by Evolved Cellulase tech. |
| Fermentable Sugar | Cellulase Bioreactor | 100 | Premium ethanol feedstock. 3.4x more efficient than raw grain. |
| Residual Biomass | Cellulase Bioreactor byproduct | 100 | → compost. |

### Hours 9–12: Bio-Boat Hull + Offshore Expansion

**What unlocks:** Bio-Boat Hull Organism, Bio-Boat Assembly Dock, Industrial Photobioreactor. Water logistics.

**Bio-Boat Hull Organism:**
```
Genome Authoring Platform (Era 6):
  Blank Fungal Chassis + Growth-Regulation Bypass Cassette + Strong Promoter
  → Hull Organism Culture
  → Validate (Phenotypic Validation Chamber)
  → Bio-Boat Hull Growth Vat (new machine, 3×3, 10 kW):
    Hull Scaffold Frame (bio-composite) + Validated Hull Organism Culture + Evolution Nutrient Pack
    → 30 min growth cycle → Grown Bio-Boat Hull
    → Bio-Boat Assembly Dock (3×2, 10 kW):
      Grown Hull + 4 Bio-Rubber Fitting + 2 Spider Silk Panel + 1 Ethanol Engine
      → Bio-Boat
```

The Growth-Regulation Bypass Cassette comes from the Over-Expressed Tissue Fragment (Era 5→6). The organism IGNORES normal growth limits and keeps growing until it fills the scaffold — forming a boat hull shape. This is the first organism that builds a MACROSCOPIC STRUCTURE on command.

**Hull Scaffold Frame:** 6 Bio-Composite Plate + 4 Iron Plate + 2 Spider Silk Fiber (hand, 10s). Defines the hull shape. The organism grows around it.

**Bio-Boats** are water-based logistics:
- Function like trains on water — the player places Bio-Boat Lanes (water rails) and sets routes between docks
- Navigate between offshore platforms on lane networks, shuttling items
- Fueled by bio-ethanol (same as trains)
- Capacity: similar to cargo wagon
- The player's base becomes an ARCHIPELAGO — mainland connected to offshore platforms via lane + dock networks

**Industrial Photobioreactor:**
```
Recipe: 6 Spider Silk Panel + 4 Blue Circuit + 4 Fused Silica + 2 Bio-Composite Plate
Size: 4×4. Power: 15 kW.
Placed offshore (on platforms or directly in water via anchor pylons).
Production: 5 Raw Algae + 2 Organic Slurry per 20s cycle (3x Era 3 algae tank output)
```
Industrial-scale algae production. Feeds bio-oil production for Enzymatic Turbines, plus algal products for all downstream chains. The offshore array is the factory's photosynthetic engine.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Growth-Regulation Bypass Cassette | Gene Cassette Synthesizer: 1 Growth-Regulation Bypass Template (already extracted in Era 6) + 1 Nucleotide Reagent (15s) | 10 | Template exists from Era 6. Cassette made from it here. Organism ignores growth limits. Hull key ingredient. |
| Hull Organism Culture | Genome Authoring Platform (validated) | 20 | Grows hull on scaffold. |
| Hull Scaffold Frame | Crafting: 6 Bio-Composite + 4 Iron Plate + 2 Spider Silk Fiber | 10 | Defines hull shape. |
| Grown Bio-Boat Hull | Hull Growth Vat (30 min) | 5 | Living hull. Grown on scaffold. |
| Bio-Rubber Fitting | Crafting: 2 Rubber + 1 Iron Plate | 50 | Boat attachment hardware. |
| Bio-Boat | Bio-Boat Assembly Dock | 5 | Water logistics. Routes between docks on boat lanes. Ethanol-fueled. |
| Bio-Boat Lane | Crafting: 2 Bio-Composite Plate + 1 Bio-Rubber Pad → 2 | 100 | Placed on water tiles. Functions as rail for bio-boats. The "water rail." |
| Bio-Boat Dock | Crafting: 8 Bio-Composite + 4 Iron Plate + 2 Bio-Cement | 10 | Water-placed at lane endpoint. Route stop. Item loading/unloading. |
| Industrial Photobioreactor | Crafting | 5 | 4×4. 3x algae output. Offshore placement. |

### Hours 12–15: Metabolism Reactor + Evolved Industrial Organisms

**What unlocks:** Evolved Metabolic Substrate Organism, Metabolism Reactor (15 MW), evolved industrial applications.

**Metabolic Substrate Organism:**
```
Evolution Engine: Enhanced Bio-Oil Algae (Era 6 xenocrop, best metabolic base)
  + Metabolic Output Medium + High Mutagenic Primer + Evolution Nutrient Pack
  → 45 min run (longest, highest reward)
  → Evolved Biomass → Screen → Evolved Metabolic Culture

Evolved Metabolic Culture → Substrate Bioreactor (new machine, 2×2, 10 kW):
  Input: Evolution Nutrient Pack (continuous feed)
  → Synthetic Substrate + Metabolic Biomass (→ compost)
  → 1 Substrate per 10s = 6/min per bioreactor
```

**Metabolism Reactor (15 MW):**
```
Recipe: 8 Spider Silk Panel + 6 Blue Circuit + 4 Structural Mycelium Panel + 2 Evolved Enzyme + 2 Zinc Plate
Output: 15 MW
Fuel: Synthetic Substrate (6/min)
```
The reactor converts evolved metabolic products directly to electricity through a biological reaction chain embedded in the reactor's living membrane. NOT combustion — enzymatic cascade.

**1 Substrate Bioreactor produces 6 substrate/min = exactly 1 reactor's fuel.** Simple 1:1 ratio. But the Substrate Bioreactor needs continuous Evolution Nutrient Pack input (Culture Medium + Compost Extract + Freshwater). The fuel chain is: compost → extract → nutrient pack → bioreactor → substrate → reactor → 15 MW. Every link in the chain must be maintained.

**Evolved Industrial Organisms (additional evolution targets):**

**Evolved Corrosion-Resistant Coating:**
```
Evolution Engine: Corrosion-Resistant Divergent Strain (from earlier runs)
  + Chemical Resistance Medium + Low Mutagenic Primer
  → Evolved Coating Organism → culture → Biological Coating
  → Applied to offshore structures: +100% durability, replaces zinc galvanization
```

**Evolved Bioelectric Filament:**
```
Evolution Engine: Conductive Divergent Strain
  + Bioelectric Medium + High Mutagenic Primer
  → Evolved Bioelectric Culture → culture → Bioelectric Filament
  → Forward: Era 8 Neural Relay Mesh component. Archive-worthy.
```
This organism carries electrical signals through biological tissue. It's a biological WIRE. Not useful in Era 7 for anything except stockpiling — but in Era 8 it becomes the basis for the Neural Relay Mesh.

**Evolved Enzyme (science pack ingredient):**
```
Evolution Engine: Pharmaceutical Producer Culture (Era 6 xenocrop)
  + Enzymatic Efficiency Medium + Low Mutagenic Primer
  → Evolved Enzyme Biomass → Screen → Evolved Enzyme
  → Same 2x speed boost as Enhanced Enzyme, but lasts 3x as many recipe cycles before being consumed
  → Used in: Metabolism Reactor recipe, science pack, Era 8+ machine recipes. Dramatically reduces ongoing enzyme production demand.
```

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Evolved Metabolic Culture | Strain Screening (from metabolic evolution) | 50 | Installed in Substrate Bioreactor. |
| Synthetic Substrate | Substrate Bioreactor | 100 | Metabolism Reactor fuel. 6/min per bioreactor. |
| Metabolic Biomass | Substrate Bioreactor byproduct | 100 | → compost. |
| Metabolism Reactor | Crafting | 5 | 15 MW. Synthetic Substrate 6/min. Evolved materials in recipe. |
| Biological Coating | Evolved Coating culture (20s) | 100 | Applied to structures. +100% durability. Replaces galvanization. |
| Bioelectric Filament | Evolved Bioelectric culture (30s) | 50 | Biological wire. Forward: Era 8 Neural Relay. |
| Evolved Enzyme | Strain Screening (from enzymatic evolution of pharmaceutical producer) | 50 | Same 2x speed as Enhanced Enzyme, but consumed 3x slower. Efficiency upgrade, not speed upgrade. Science ingredient + recipes. |
| Fitness Data | Strain Screening Station (compiled from screening runs) | 50 | Science pack ingredient. |
| Evolved Algal Composite | Bio Web: Industrial Photobioreactor + Offshore Kelp (~8%) | 50 | Hybrid evolved-algal + natural-kelp material. Forward: Era 8 living architecture bio-membrane components. |
| Escaped Organism Remains | Containment breach event (contain option) | 20 | → compost, or sequence for a basic genome atlas. The contain choice output. |

### Hours 15–18: Multi-Pressure Evolution + Divergent Strain Exploitation

**What unlocks:** Multi-Pressure Evolution (optimize 2 traits simultaneously). Full divergent strain catalog utilization.

**Multi-Pressure Evolution:**
Research "Convergent Selection" (6 SOD). The player can load TWO selective media into the Evolution Engine simultaneously:
- Run takes 45 min (longer — evolution must satisfy TWO fitness criteria)
- Target hit rate drops to ~30% (hard to hit both targets)
- Divergent strains are MORE interesting (evolved under dual pressure, novel combinations)
- Example: Compressive Strength + Chemical Resistance → acid-proof structural panels for underwater construction

**Divergent Strain feedback loops.** By now the player has a collection of divergent strains from 6-10 evolution runs. Some strains fed back into the engine produce SECOND-GENERATION divergents — organisms that are 2 evolutionary steps away from the original base. These can have properties no designed or first-generation evolved organism possesses.

**Example feedback chain:**
```
Mycelium → Evolution (compressive) → Adhesive Divergent
  → Evolution (chemical resistance) → Acid-Proof Adhesive (never designed, never requested — evolution found it)
```

**Trajectory Map (science pack ingredient):**
```
Fitness Analyzer: 3 Fitness Reports (from ANY evolution runs)
  → Fitness Analyzer (30s): Compile trajectory
  → 1 Trajectory Map (comparative evolutionary path analysis)
```
Trajectory Maps compile data from multiple evolution runs — comparing fitness landscapes, divergence points, and breakthrough patterns across different organisms and selection pressures. Science pack ingredient. 3 reports = 3 runs, but runs can be from different organisms/media. No same-lineage requirement.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Trajectory Map | Fitness Analyzer (compiled from 3 Fitness Reports) | 20 | Science pack ingredient. Evolutionary path visualization. |
| Acid-Proof Structural Panel | Mycelium Press (from dual-pressure evolved mycelium) | 50 | Underwater construction. Acid + compressive resistant. |
| Second-Generation Divergent (various) | Strain Screening (from divergent strain re-evolution) | 20 | Two evolutionary steps from original. Novel properties. |

### Hours 18–22: The Containment Breach Event + Capstone

**THE EVENT.** Sometime during hours 18-22, a scripted event fires (triggered by the player's first multi-pressure evolution run reaching completion):

*"ALERT: Containment breach detected. An evolved organism has escaped the Evolution Engine and established in the soil 40 tiles east of your research campus. The organism is... different from anything in your catalog. It appears to be metabolizing minerals directly from the substrate. The soil around the breach site is changing composition. Plants within 10 tiles are growing differently."*

**The player has a CHOICE:**

**Option A: Contain.** Mine the organism, scrub the area with Bio-Acid. The soil returns to normal over 10 minutes. The player maintains control. They receive an "Escaped Organism Remains" item (→ compost, or sequence for a basic genome atlas).

**Option B: Study.** Leave the organism. Observe the Bio Web changes. Within 5 minutes, the escaped organism establishes relationships with nearby crops and machines:
- Crops within 10 tiles: +20% growth rate (the organism is enriching the soil with evolved minerals)
- Machines within 5 tiles: -5% efficiency (the organism's metabolic waste interferes slightly)
- New Bio Web relationship lines appear on the overlay

If the player studies it for 10+ minutes without removing it, they receive the **Escaped Organism Soil Sample** — the Era 7 breadcrumb.

*"Soil sample collected from the breach site. The organisms here have formed relationships your designed ecosystems never produced. They're not competing OR cooperating in ways you've seen. They're... improvising. This is what happens when evolution has no designer."*

This is the thematic crux of the era. The player has been directing evolution — setting goals, controlling mutation rates, screening results. But evolution doesn't serve the player's agenda. It serves thermodynamics. And sometimes, uncontrolled evolution produces something more sophisticated than anything designed.

**What the player also does:**
- Scale all evolved organism production
- Bio-boat network connecting offshore photobioreactor arrays
- Metabolism Reactor providing 15 MW (total power ~22 MW)
- Full divergent strain catalog exploited
- Evolved industrial organisms coating offshore structures
- Archive: Chimeric Biofilm Fragment (Era 6) sequenced via Genomic Sequencing Array → reveals self-organizing genetic principles → Self-Organization Gene Template extracted via Gene Cassette Synthesizer for Era 8
- Research capstone: Industrial Evolution Mastery

---

## 4. ITEM SUMMARY (~95 new items)

| Category | New in Era 7 | Examples |
|----------|-------------|---------|
| Selective Media | ~6 | Compressive, Enzymatic, Metabolic, Growth, Chemical, Bioelectric |
| Mutagenic Primers | ~2 | Low, High |
| Evolution inputs | ~2 | Evolution Nutrient Pack, Fitness Reagent |
| Screening outputs | ~5 | Evolved Biomass, Analyzed Biomass, High-Fitness Biomass, Fitness Report, Fitness Data |
| Divergent Strains | ~6 | Luminescent, Rapid-Growth, Adhesive, Conductive, Pigment, Corrosion-Resistant |
| Evolved organisms/cultures | ~6 | Structural Mycelium XM-12, Cellulase, Metabolic, Coating, Bioelectric, Evolved Enzyme |
| Evolved products | ~10 | Structural Mycelium Panel, Mycelial Composite, Fermentable Sugar, Cellulose Waste, Synthetic Substrate, Metabolic Biomass, Biological Coating, Bioelectric Filament, Acid-Proof Panel, Press Waste |
| Bio-boat chain | ~8 | Growth-Regulation Bypass Cassette, Hull Organism Culture, Scaffold Frame, Grown Hull, Bio-Rubber Fitting, Bio-Boat, Bio-Boat Lane, Bio-Boat Dock |
| Photobioreactor | ~1 | Industrial Photobioreactor |
| Power | ~1 | Metabolism Reactor |
| Evolution advanced | ~2 | Trajectory Map, Second-Generation Divergent |
| Breach event | ~2 | Escaped Organism Soil Sample, Escaped Organism Remains |
| Bio Web bonus | ~1 | Evolved Algal Composite |
| Science | ~1 | Evolutionary Dynamics Report |
| Machines | ~9 | See machine table |
| **Total new** | **~100** | |
| **Carried from Era 1-6** | **~452** | |
| **Grand total** | **~552** | |

---

## 5. MACHINE SPECIFICATIONS (Era 7 new)

| Machine | Size | Power | Category | Notes |
|---------|------|-------|----------|-------|
| Continuous Culture Evolution Engine | 4×4 | 50 kW | evolution | The era's signature. 15-45 min runs. Base organism + medium + primer + nutrients → evolved biomass. |
| Fitness Analyzer | 2×2 | 10 kW | analysis | Evolved Biomass + Fitness Reagent → Analyzed Biomass (pass-through) + Fitness Report. Also compiles Trajectory Maps. |
| Strain Screening Station | 2×2 | 15 kW | screening | Analyzed Biomass → High-Fitness Biomass + Divergent Strains. Separates target from off-target. |
| Mycelium Press | 2×2 | 15 kW | pressing | Evolved Mycelium Sheet → Structural Mycelium Panel. Also: Acid-Proof Panel with dual-evolved input. |
| Cellulase Bioreactor | 2×2 | 10 kW | bioreactor | Cellulose waste → Fermentable Sugar. Cellulase culture installed (persists). |
| Substrate Bioreactor | 2×2 | 10 kW | bioreactor | Evolution Nutrient Pack → Synthetic Substrate. Metabolic culture installed (persists). |
| Bio-Boat Hull Growth Vat | 3×3 | 10 kW | growth | Scaffold + Hull Culture + nutrients → Grown Hull (30 min). |
| Bio-Boat Assembly Dock | 3×2 | 10 kW | assembly | Hull + fittings + silk + engine → Bio-Boat. Water-adjacent. |
| Industrial Photobioreactor | 4×4 | 15 kW | algae-cultivation | 3x algae output. Offshore placement. Industrial-scale photosynthesis. |
| Metabolism Reactor | 3×3 | Produces 15 MW | — | Synthetic Substrate 6/min. Enzymatic cascade in living membrane. |

**Power budget:**
- Inherited: ~7,100 kW
- Metabolism Reactor: +15,000 kW
- Total supply: ~22,100 kW

| Consumer | Draw |
|----------|------|
| Evolution Engine ×2 | 100 kW |
| Fitness Analyzer | 10 kW |
| Strain Screening Station | 15 kW |
| Mycelium Press | 15 kW |
| Cellulase Bioreactor ×4 | 40 kW |
| Substrate Bioreactor | 10 kW |
| Hull Growth Vat | 10 kW |
| Bio-Boat Assembly Dock | 10 kW |
| Industrial Photobioreactor ×3 | 45 kW |
| All carried machines (Eras 1-6) | ~693 kW |
| Offshore infrastructure | ~50 kW |
| **Total** | **~998 kW** |

**Surplus: ~21,100 kW.** The Metabolism Reactor is enormously powerful. The constraint is Synthetic Substrate production (1 bioreactor = 1 reactor's fuel) and the evolution pipeline that produces the metabolic culture. Scaling to 2 reactors needs 2 substrate bioreactors + continuous nutrient supply. The power surplus prepares for Era 8's living architecture systems which are power-hungry and continuous.

---

## 6. TECH TREE

Era 7 uses Synthetic Organism Dossiers (SOD) for research.

| # | Name | Cost | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 71 | Directed Evolution | 5 SOD | Tech 70 (Era 7 entry) | Evolution Engine, Selective Media, Mutagenic Primers, Fitness Analyzer |
| 72 | Strain Screening | 3 SOD | Tech 71 | Strain Screening Station, High-Fitness/Divergent separation |
| 73 | Structural Mycelium | 4 SOD | Tech 72 | Mycelium Press, Structural Mycelium Panel, Mycelial Composite |
| 74 | Evolved Cellulase | 5 SOD | Tech 72 | Cellulase Bioreactor, Fermentable Sugar, cellulose waste classification |
| 75 | Bio-Boat Construction | 5 SOD | Tech 72 | Growth-Regulation Bypass Cassette, Hull Organism, Hull Growth Vat, Bio-Boat Assembly Dock, Bio-Boat, Docks |
| 76 | Offshore Photobioreaction | 4 SOD | Tech 75 | Industrial Photobioreactor, offshore placement |
| 77 | Evolved Metabolism | 5 SOD | Tech 74 + Tech 76 | Substrate Bioreactor, Synthetic Substrate, Metabolism Reactor (15 MW) |
| 78 | Divergent Strain Analysis | 4 SOD | Tech 72 | Divergent strain identification + feedback into Evolution Engine |
| 79 | Convergent Selection | 6 SOD | Tech 78 | Multi-pressure evolution (2 selective media per run) |
| 80 | Industrial Evolution | 4 SOD | Tech 78 | Evolved Coating, Evolved Bioelectric Filament, Evolved Enzyme |
| 81 | Evolutionary Trajectory Analysis | 3 SOD | Tech 79 | Trajectory Map compilation, Fitness Data compilation |
| 82 | Industrial Evolution Mastery | 10 SOD | Tech 77 + Tech 81 | **ERA 8 TRANSITION** |

**Total SOD for Era 7:** 5+3+4+5+5+4+5+4+6+4+3+10 = **58 SOD**

**Critical path:** 71 → 72 → {73, 74, 75, 78} → {76, 79} → {77, 81} → 82. Evolution → screening → {mycelium, cellulase, boat, divergent analysis} → {offshore, convergent} → {metabolism reactor, trajectory} → capstone. Many parallel branches — the player has CHOICES about which evolution targets to pursue first.

---

## 7. BIO WEB (Era 7)

### New Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Evolution Engine | Bio-Containment Lab (3 tiles) | Mutualistic | +15% target hit rate + escape prevention | Containment feedback improves evolution consistency. |
| Structural Mycelium Panel (placed) | Adjacent structures | Commensal | +5% structure durability | Mycelium networks reinforce nearby construction. Self-healing spreads. |
| Cellulase Bioreactor | Compost Heap | Mutualistic | +20% fermentable sugar yield | Compost microbes pre-digest cellulose, improving cellulase access. |
| Industrial Photobioreactor | Offshore Kelp/Algae | Mutualistic | +25% photobioreactor output + **Evolved Algal Composite** (~8%) | Offshore kelp provides shelter and nutrient exchange. Bonus item: hybrid algal material. |
| Bio-Boat Dock | Offshore Platform | Commensal | +10% platform production | Better logistics = faster material cycling. |
| Divergent Strain (any, deployed) | Nearby organisms | Variable | Unpredictable per strain type | Each divergent strain has unique Bio Web interactions. Discovered by deployment. Some surprisingly beneficial. |

### Evolved Algal Composite

Bio Web bonus item from photobioreactor + offshore kelp proximity. A hybrid material combining evolved algal properties with natural kelp structural elements. Forward use: Era 8 living architecture bio-membrane components.

---

## 8. SCIENCE PACK

**Evolutionary Dynamics Report**

| Ingredient | Source | Chain |
|-----------|--------|-------|
| Evolved Enzyme | Strain Screening (from enzymatic evolution) | Evolution pipeline |
| Trajectory Map | Fitness Analyzer (compiled from 3 Fitness Reports) | Analysis chain |
| Mycelial Composite | Crafting (Structural Mycelium + Silk + Bio-Composite) | Structural mycelium chain |
| Fitness Data | Strain Screening Station (compiled from screening runs) | Screening chain |

**Science ingredient recipes:**
| Recipe | Machine | Time | Inputs | Output |
|--------|---------|------|--------|--------|
| Compile Fitness Data | Strain Screening Station | 20s | 1 High-Fitness Biomass + 1 Divergent Strain (any) + 1 Sequencing Reagent | 1 Fitness Data |

Evolved Enzyme, Trajectory Map, and Mycelial Composite come from normal production chains.

**Assembly:** 1 Evolved Enzyme + 1 Trajectory Map + 1 Mycelial Composite + 1 Fitness Data → 2 Evolutionary Dynamics Report (hand, 10s)

**Consumed by:** Era 8 research. EDR requires products from evolution pipeline, analysis, structural evolution, AND screening — enforcing engagement with the full directed evolution system.

---

## 9. BALANCE ANALYSIS

### Evolution Engine Throughput

**1 Evolution Engine:** 1 run per 15-45 min. Produces ~10-20 Evolved Biomass per run (scales with run duration).
**Screening:** 10 Evolved Biomass → ~5-6 High-Fitness Biomass + ~4-5 Divergent Strains (15s per biomass = 150s total).
**Engine utilization:** The engine runs continuously — one 30-min run finishes, the player starts the next. 2 engines running staggered = new results every ~15 min. The player ALWAYS has something evolving.

### Cellulase Impact on Ethanol

**Before cellulase:** ~6 fermentation vats for 1 fuel cell (12 ethanol/min, sea-grain only).
**After cellulase:** Cellulose waste from EXISTING production generates ~8 Fermentable Sugar/min (from 4 bioreactors processing various waste streams). Sugar fermentation recipe: 2 sugar → 1 crude ethanol in 30s (faster than 45s wort cycle). 4 sugar/min per vat → 2 crude ethanol/min per vat. With 2 dedicated sugar-fermentation vats: ~4 additional ethanol/min. Reduces sea-grain vat need from 6 to ~3-4. OR: maintain 6 sea-grain vats + add 2 sugar vats → total ~16 ethanol/min → power surplus for a second fuel cell.

### Synthetic Substrate Production

**1 Substrate Bioreactor:** 1 substrate / 10s = 6/min. Needs: continuous Evolution Nutrient Pack.
**Nutrient Pack:** 2 Culture Medium + 1 Compost Extract + 1 Freshwater → 3 packs.
**6 packs/min consumption → 2 Culture Medium/min + 1 Compost Extract/min + 1 Freshwater/min.** Moderate resource draw on the nutrient chain. Compost infrastructure must scale.

### Bio-Boat Logistics

Bio-boats carry items between docks. Speed: ~0.5 tiles/tick (similar to slow train). Capacity: ~20 stacks. The player needs ~3-5 boats for a healthy archipelago with 4-6 offshore platforms. Hull growth takes 30 min per boat — initial fleet build-up is slow, but once built, boats persist indefinitely (living hulls self-repair minor damage).

### Power Budget

15 MW reactor is massive but justified: Era 8's Living Architecture systems involve continuous organism maintenance across potentially hundreds of structural panels, each drawing small amounts of power for self-repair, nutrient circulation, etc. The surplus is pre-positioning for distributed power demands.

---

## 10. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| Evolution run misses target | Low base organism Mutagenic Potential + wrong selective medium | Fitness Report shows <30% score. Mostly divergent strains, few high-fitness. Wasted 30 min. | Use CRISPR-edited high-mutability organisms as base stock. Match medium to organism capabilities. |
| Divergent strain escape | Deploying divergent strain without containment | Divergent spreads to adjacent production areas. Bio Web disruption. More aggressive than designed organisms. | Divergent strains are WILD — always contain when deploying. Their Bio Web effects are unpredictable. |
| Substrate supply interruption | Nutrient pack production dips (compost or freshwater shortage) | Substrate Bioreactor stalls → Metabolism Reactor power drops proportionally → factory brownout. | The nutrient chain is now CRITICAL infrastructure. Compost, freshwater, and culture medium must be continuously supplied. |
| Bio-boat damage | Bio-boat hull exposed to bio-accumulator runoff | Hull organism partially dies. Boat speed drops 50%. Must be repaired at dock (regrowth cycle, 10 min). | Keep shipping lanes away from metal-accumulator ponds. Living hulls are sensitive to heavy metals. |

---

## 11. BREADCRUMBS (Era 7)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Escaped Organism Soil Sample | Containment breach event (study option) or soil near deployed evolved organisms (~0.5% per harvest cycle) | Event-triggered or ~0.5% | "Soil from the breach site. The organisms here formed relationships your designed ecosystems never produced. They're not competing or cooperating — they're improvising. This is what happens when evolution has no designer." | Era 8: analysis reveals self-organizing principles. Era 9: basis for arcology's self-organizing ecology. |

---

## 12. ERA 7 → ERA 8 TRANSITION

**Capstone tech:** Industrial Evolution Mastery (10 SOD)

**Prerequisites (verifiable):**
- Evolution Engine operational (completed ≥5 evolution runs)
- Structural Mycelium Panel produced (≥20)
- Cellulase Bioreactor operational (produced ≥50 Fermentable Sugar)
- Bio-Boat fleet operational (≥2 bio-boats + ≥3 docks)
- Offshore Photobioreactor operational (≥2 deployed)
- Metabolism Reactor built and operational
- At least 3 different divergent strain types identified
- Multi-pressure evolution run completed (≥1)

**Transition notification:** *"Chapter: Emergent Architecture. 'The building is resisting demolition.' — Your evolved organisms self-repair. Your structural mycelium reinforces neighbors. Your bioelectric filaments carry signals. Now build with them. The factory becomes an organism."*

**What Era 8 inherits:**
- ~15,000-25,000 tile archipelago with offshore platforms, bio-boat network, rail system
- Full directed evolution capability (single + multi-pressure, divergent strain feedback)
- Structural Mycelium Panels (self-repairing)
- Cellulase Bioreactor transforming cellulose waste → ethanol feedstock
- Bio-boats connecting offshore infrastructure
- Industrial Photobioreactors (3x algae)
- Metabolism Reactor (15 MW, total power ~22 MW)
- Divergent strain catalog (6+ types, some fed back for second-generation evolution)
- Evolved industrial organisms: coating, bioelectric filament, evolved enzyme
- Bioelectric Filament stockpiled → Era 8 Neural Relay Mesh
- Evolved Algal Composite → Era 8 bio-membrane
- Adhesive Divergent → Era 8 living architecture bonding
- Chimeric Biofilm Fragment sequenced → Self-Organization Gene Template → Era 8 living architecture multi-species composites
- Escaped Organism Soil Sample → Era 9 self-organizing ecology
- ~547 items in production

---

## 13. IMPLEMENTATION NOTES

**Evolution Engine:** 4×4 assembling-machine with LONG recipe times (900-2700 seconds = 15-45 min). Recipe variants per selective medium type. Outputs fixed count of Evolved Biomass items. On recipe completion, control.lua assigns trait profiles to output items based on: base organism traits + selective medium type + mutagenic primer level + random variance. Higher primer level = more variance.

**Fitness Analyzer:** Assembling-machine. Input: Evolved Biomass + Fitness Reagent. Output: Analyzed Biomass (same item, passed through) + Fitness Report (item with metadata showing fitness score). Biomass is NOT consumed — it passes through for screening. Fitness score = how closely the evolved traits match the selective medium's target. Score calculated by control.lua from item tags.

**Strain Screening Station:** Assembling-machine. Input: Evolved Biomass. Output: based on fitness score (stored in item tags) — if above threshold → High-Fitness Biomass, if below → Divergent Strain (type randomized from 6 types). Implementation: control.lua reads item tags on recipe completion and swaps output to appropriate item prototype.

**Divergent Strain feedback:** Divergent Strains are valid inputs for Evolution Engine recipes. Using a divergent strain as base organism changes the fitness landscape — different starting point leads to different evolution outcomes. Implementation: the engine recipe accepts any organism/strain item. The control.lua calculates outcomes based on the specific input's trait profile.

**Bio-Boats:** Custom vehicle entity (like a car/tank) that moves on water tiles. Inventory for cargo. Player sets routes via dock entities (similar to train stops). Implementation challenge: Factorio doesn't natively support water vehicles. Options: (a) Reskinned train that runs on water-placed "rail" (bio-boat lane placed like rail on water). (b) Custom entity with pathfinding on water tiles via control.lua. Option (a) is more implementable — bio-boat lanes are "water rails" and boats are "water trains." Docks are water train stops.

**Containment breach event:** Scripted via control.lua. Triggers on first multi-pressure evolution run completion. Spawns escaped organism entity at random position ~40 tiles from nearest Evolution Engine. 10-minute observation timer. If player mines organism before timer → "Escaped Organism Remains." If timer expires with organism alive → "Escaped Organism Soil Sample" spawns in player inventory. One-time event per save.

**Metabolism Reactor:** `electric-energy-interface` producing 15 MW. Burner-type energy source consuming Synthetic Substrate items (6/min). Living membrane visual — the reactor entity has an animated sprite showing biological activity.

**Industrial Photobioreactor:** 4×4 assembling-machine. Placement requires water-adjacent tiles (like offshore platforms). 3x output of Era 3 Algae Cultivation Tank. Same recipe categories.
