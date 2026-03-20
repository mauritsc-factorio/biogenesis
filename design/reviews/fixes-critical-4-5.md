# Biogenesis Mod Design Document: Critical Fixes 4 and 5

## CRITICAL ISSUE 4: Era 9 Arcology Fluid Bootstrapping

### Problem Analysis

The deadlock is circular:
- **Arcology modules** require **Living Architecture Seeds** to construct.
- Seeds require continuous fluid input: **50 Hemolymph/min + 20 ATP Solution/min + 10 Dissolved Mineral Solution/min**.
- Hemolymph comes from the **Aquatic Systems module** (an Arcology module).
- ATP Solution comes from the **Energy Nexus module** (an Arcology module).
- Dissolved Mineral Solution comes from the **Foundation Rhizome** (passive, from ground minerals -- this one is available).

So two of the three fluids are gated behind the very modules they are needed to build. The Foundation Rhizome provides the third fluid passively, so Dissolved Mineral Solution is not part of the deadlock.

### Design: Era 8 Bootstrap Fluid Sources

These are Era 8 "living systems" machines -- intermediate, biological, clearly inferior to the Arcology versions. They use Era 8 materials and produce the needed fluids at roughly 25-30% of the Arcology module rate.

---

#### Bootstrap Source 1: Hemolymph Synthesis Vat

**Theme justification:** Era 8 is about assembling living systems from engineered components. A synthesis vat is a contained bioreactor that produces synthetic hemolymph from cultured tissue, as opposed to the Arcology's Aquatic Systems module which harvests it from a full aquatic ecosystem.

| Property | Value |
|---|---|
| **Machine name** | Hemolymph Synthesis Vat |
| **Era** | 8 (unlocked by "Fluid Biosynthesis" tech, prerequisite: Living System Assembler) |
| **Recipe (to build)** | 4 Biocomposite Frame + 2 Neural Mesh Membrane + 1 Engineered Tissue Culture + 10 Reinforced Bio-Piping |
| **Input** | 20 Nutrient Broth/min + 5 Engineered Cell Paste/min + 2 Saline Solution/min |
| **Output** | 15 Hemolymph/min |
| **Power** | 400 kW |
| **Comparison to Arcology** | Aquatic Systems module produces ~60 Hemolymph/min passively (no input besides water). The Vat produces 25% as much, requires continuous input of three feedstocks, and draws significant power. Clear incentive to transition. |

**Input sourcing:**
- Nutrient Broth: produced in Era 6+ from Peptone + Glucose Solution + Mineral Salts.
- Engineered Cell Paste: Era 8 product from the Living System Assembler.
- Saline Solution: Era 3+ (Water + Salt, trivially available).

To reach the 50 Hemolymph/min needed for seed growth, the player needs **4 Hemolymph Synthesis Vats** (4 x 15 = 60, slight surplus). This is intentionally awkward -- four machines consuming 1.6 MW total, to do what one Arcology module does passively.

---

#### Bootstrap Source 2: ATP Catalytic Fermenter

**Theme justification:** ATP Solution in the Arcology comes from the Energy Nexus module which taps into massive bioelectric metabolic cycles. The Era 8 version is a controlled fermentation process that extracts ATP from engineered yeast cultures -- functional but crude and input-hungry.

| Property | Value |
|---|---|
| **Machine name** | ATP Catalytic Fermenter |
| **Era** | 8 (unlocked by "Fluid Biosynthesis" tech, same as above) |
| **Recipe (to build)** | 4 Biocomposite Frame + 2 Enzymatic Catalyst Array + 1 Engineered Yeast Culture + 8 Reinforced Bio-Piping |
| **Input** | 30 Glucose Solution/min + 5 Phospholipid Extract/min + 2 Enzyme Concentrate/min |
| **Output** | 8 ATP Solution/min |
| **Power** | 500 kW |
| **Comparison to Arcology** | Energy Nexus module produces ~40 ATP Solution/min as part of its energy cycle. The Fermenter produces 20% as much, consumes three inputs including valuable Enzyme Concentrate, and draws heavy power. Clear incentive to transition. |

**Input sourcing:**
- Glucose Solution: Era 4+ (from enzymatic breakdown of starch crops).
- Phospholipid Extract: Era 6+ (from cell membrane processing).
- Enzyme Concentrate: Era 7+ (from Directed Evolution Chamber output).

To reach 20 ATP Solution/min for seed growth, the player needs **3 ATP Catalytic Fermenters** (3 x 8 = 24, slight surplus). Total power draw: 1.5 MW.

---

#### Bootstrap Source 3: Dissolved Mineral Solution (already available)

The Foundation Rhizome is described as passive, extracting minerals from the ground. This is available before the Arcology bootstrap. **No additional design needed.** However, the rate should be verified:

| Property | Value |
|---|---|
| **Machine name** | Foundation Rhizome (existing, passive) |
| **Output** | Must produce at least 10 Dissolved Mineral Solution/min |
| **Note** | If the Rhizome's passive rate is less than 10/min, place multiple Rhizomes. Since this is a ground-extraction structure, placing 2-3 should be straightforward. |

---

### Recommended First Module Construction Order

The goal is to break the deadlock by building modules in an order where each subsequent module reduces dependency on the bootstrap machines.

**Phase 0: Bootstrap Setup (pre-Arcology)**
1. Build the Foundation Rhizome(s) -- provides Dissolved Mineral Solution passively. No deadlock here.
2. Build 4 Hemolymph Synthesis Vats and 3 ATP Catalytic Fermenters.
3. Total bootstrap power draw: 1.6 + 1.5 = **3.1 MW** (from Era 8 power sources, see Issue 5 below).
4. Begin growing Living Architecture Seeds. At 50 Hemolymph + 20 ATP Solution + 10 Dissolved Mineral Solution per minute, the bootstrap sources provide: 60 Hemolymph (sufficient), 24 ATP Solution (sufficient), and 10+ Dissolved Mineral Solution (sufficient).

**Phase 1: Build the Energy Nexus module FIRST**
- **Why first:** ATP Solution is the tightest bottleneck. The Fermenters produce only 8/min each, requiring 3 machines at 500 kW each. The Energy Nexus produces 40/min and also powers the Arcology's internal ATP cycle. Getting it online first frees up 1.5 MW and three machines.
- Once online: Decommission all 3 ATP Catalytic Fermenters. ATP Solution now comes from the Energy Nexus at 2x the rate you need.

**Phase 2: Build the Aquatic Systems module SECOND**
- **Why second:** Hemolymph is the highest-volume fluid (50/min required). The 4 Synthesis Vats draw 1.6 MW combined. Replacing them with the passive Aquatic Systems module frees enormous power and input chains.
- Once online: Decommission all 4 Hemolymph Synthesis Vats. Hemolymph now comes passively at 60/min.

**Phase 3: Build remaining Arcology modules in any order**
- With all three fluids now sourced from Arcology-tier systems (Energy Nexus, Aquatic Systems, Foundation Rhizome), subsequent seed growth is fully supported without bootstrap machines.

**Summary table:**

| Phase | Action | Bootstrap machines active | Bootstrap power draw |
|---|---|---|---|
| 0 | Build bootstrap sources | 4 Vats + 3 Fermenters | 3.1 MW |
| 1 | Build Energy Nexus | 4 Vats | 1.6 MW |
| 2 | Build Aquatic Systems | None | 0 MW |
| 3+ | Build remaining modules | None | 0 MW |

---

### Tech Tree Integration for Bootstrap Sources

**New Technology: "Fluid Biosynthesis"**
- **Era:** 8
- **Prerequisites:** Living System Assembler (Era 8 machine tech), Neural Mesh Cultivation (Era 8)
- **Unlocks:** Hemolymph Synthesis Vat, ATP Catalytic Fermenter
- **Science cost:** Standard Era 8 science (whatever science packs Eras 7-8 use)
- **Position in tree:** Must be researchable BEFORE the "Arcology Foundation" tech that unlocks Era 9 construction. This is the gate that prevents the deadlock -- the player researches bootstrap fluid sources, sets them up, then researches Arcology modules.

---

## CRITICAL ISSUE 5: Power Generation Progression

### Design Principles Applied

1. All power is biological in origin -- no coal, no solar panels, no nuclear.
2. Each tier outputs roughly 3-4x the previous tier.
3. Fuel comes from byproducts the player is already producing at that era.
4. The power system grows out of the farming/bio infrastructure naturally.
5. Multiple generators of one tier can be placed for scaling within an era.

---

### Era 1: Mechanical Water Wheel

| Property | Value |
|---|---|
| **Name** | Water Wheel |
| **Output** | Mechanical only (no kW -- drives Era 1 machines via direct shaft connection) |
| **Fuel** | None (water current, placed on water tiles) |
| **Recipe** | 8 Wood + 4 Stone + 2 Rope (from fiber) |
| **Tech unlock** | "Water Power" (Era 1, starting tech tier) |
| **Notes** | Era 1 machines (Grinding Mill, Fermentation Crock) connect directly to the Water Wheel. No electrical grid. One wheel powers 2-3 machines. The player places multiple wheels along a river. |

**Demand check:** Era 1 has no kW demand. Machines are mechanical. The water wheel is a placement constraint (must be on water), not a fuel constraint. This is correct for the primitive era.

---

### Era 2: Improved Water Wheel (Generator)

| Property | Value |
|---|---|
| **Name** | Bio-Fiber Water Turbine |
| **Output** | **30 kW** |
| **Fuel** | None (water current, placed on water tiles) |
| **Recipe** | 6 Refined Wood Plank + 4 Woven Bio-Fiber + 2 Iron Gear + 1 Basic Axle |
| **Tech unlock** | "Hydro-Mechanical Generation" (Era 2) |
| **Notes** | First electric generator. Uses improved bio-fiber reinforced blades. Placed on water. Produces low but steady power with no fuel cost. |

**Demand check:** Era 2 total demand is ~10-50 kW. Two Bio-Fiber Water Turbines (60 kW) cover the high end. The zero-fuel-cost is appropriate -- Era 2 is still simple and the player shouldn't be managing fuel logistics yet.

---

### Era 3: Biogas Combustion Generator

| Property | Value |
|---|---|
| **Name** | Biogas Combustion Engine |
| **Output** | **120 kW** |
| **Fuel** | Biogas: 10 units/min |
| **Recipe** | 8 Iron Plate + 4 Copper Pipe + 2 Rubber Gasket + 1 Fermentation Chamber |
| **Tech unlock** | "Anaerobic Power" (Era 3, after Anaerobic Digestion tech) |

**Fuel sourcing:** Biogas is the natural byproduct of anaerobic digestion, which the player is already running in Era 3 for fertilizer production. The Anaerobic Digester processes crop waste and manure into fertilizer + biogas. Currently the biogas may be vented or unused -- now it has a purpose. One Anaerobic Digester produces roughly 15-20 Biogas/min, enough to fuel one generator with surplus.

**Demand check:** Era 3 total is ~200-400 kW. Need 2-4 Biogas Combustion Engines (240-480 kW). This requires 2-4 Anaerobic Digesters running, which is reasonable for an Era 3 farm producing crop waste. The Autoclave alone (60 kW) and Distillation Column (50 kW) take half a generator, leaving room for the smaller machines.

---

### Era 4: Biomass Steam Boiler

| Property | Value |
|---|---|
| **Name** | Biomass Steam Boiler |
| **Output** | **400 kW** |
| **Fuel** | Compressed Biomass Pellets: 8 units/min |
| **Recipe** | 12 Steel Plate + 6 Copper Pipe + 4 Fire Brick + 2 Pressure Vessel + 1 Boiler Frame |
| **Tech unlock** | "Thermophilic Energy" (Era 4, after Biomass Processing) |

**Fuel sourcing:** Compressed Biomass Pellets are a new intermediate made from excess crop matter. Recipe: 10 Dried Plant Matter + 2 Binding Agent (starch paste) = 5 Compressed Biomass Pellets in a Pellet Press (new simple machine, 10 kW, trivial). The player has large crop operations by Era 4 and is generating more plant waste than the Digesters can handle -- pelletizing the excess for fuel is natural waste valorization.

**Demand check:** Era 4 total is ~300-500 kW. One Biomass Steam Boiler (400 kW) covers most needs; two (800 kW) provide comfortable headroom. This is correct -- 400 kW is 3.3x the Era 3 generator's 120 kW.

**Scaling note:** The Era 3 Biogas Combustion Engines remain useful as supplementary power. A typical Era 4 base might run 1 Boiler + 1-2 Biogas Engines.

---

### Era 5: Ethanol Fuel Cell Array

| Property | Value |
|---|---|
| **Name** | Bio-Ethanol Fuel Cell Array |
| **Output** | **1.5 MW** (1,500 kW) |
| **Fuel** | Bio-Ethanol: 12 units/min |
| **Recipe** | 10 Advanced Circuit + 8 Stainless Steel Plate + 4 Proton Exchange Membrane + 2 Platinum Catalyst + 1 Fuel Cell Housing |
| **Tech unlock** | "Electrobiochemical Power" (Era 5, after Bioethanol Distillation and Advanced Materials) |

**Fuel sourcing:** Bio-Ethanol is distilled from fermented sugarcane/corn mash in the Distillation Column (already an Era 3-4 machine). The player is likely already producing ethanol for solvent use in Era 5 labs. Scaling up ethanol production for power is a matter of adding more fermenters and distillation columns -- expanding existing infrastructure, not building new chains.

**Demand check:** Era 5 total is ~3-4 MW. Need 2-3 Fuel Cell Arrays (3.0-4.5 MW). The CRISPR Lab alone (600 kW) and Sequencing Array (500 kW) consume 1.1 MW. Two Fuel Cell Arrays at 3.0 MW total provide coverage for these plus the rest. Three gives headroom. Output scaling: 1,500 kW is 3.75x the Era 4 Boiler's 400 kW. Correct ratio.

**Ethanol supply check:** 12 units/min per generator, so 2-3 generators need 24-36 ethanol/min. A Distillation Column processing fermented mash should produce ~15-20 ethanol/min, so 2-3 Distillation Columns dedicated to fuel ethanol. This is a real logistical demand but proportionate to Era 5 infrastructure scale.

---

### Era 6: Enzymatic Bioreactor Turbine

| Property | Value |
|---|---|
| **Name** | Enzymatic Bioreactor Turbine |
| **Output** | **5 MW** (5,000 kW) |
| **Fuel** | Enriched Bio-Oil: 8 units/min |
| **Recipe** | 12 Advanced Circuit + 8 Titanium Alloy Plate + 4 Engineered Enzyme Cartridge + 2 High-Pressure Turbine Blade + 1 Bioreactor Core |
| **Tech unlock** | "Metabolic Power Engineering" (Era 6, after Enzyme Engineering and Advanced Bioprocessing) |

**Fuel sourcing:** Enriched Bio-Oil is a new product made from lipid extraction of engineered algae or oilseed crops, then enzymatically enriched to increase energy density. Recipe: 10 Crude Bio-Oil (from oil-crop pressing, available since Era 4) + 2 Lipase Enzyme (Era 6 enzyme product) = 8 Enriched Bio-Oil. The player's Era 6 enzyme production capabilities make this fuel accessible without a new production chain -- it just connects existing oil-crop processing to the enzyme lab output.

**Demand check:** Era 6 total has machines at 200-800 kW each, with the Genome Compilation Engine at 800 kW. Total is likely 4-6 MW when multiple machines run simultaneously. One Enzymatic Bioreactor Turbine (5 MW) covers the core demand; a second provides generous expansion room. Output scaling: 5 MW is 3.3x the Era 5 array's 1.5 MW. Correct ratio.

---

### Era 7: Synthetic Metabolism Reactor

| Property | Value |
|---|---|
| **Name** | Synthetic Metabolism Reactor |
| **Output** | **15 MW** |
| **Fuel** | Synthetic Metabolic Substrate: 6 units/min |
| **Recipe** | 16 Quantum-Bio Circuit + 10 Reinforced Biocomposite + 6 Synthetic Organelle Cluster + 2 Metabolic Containment Field + 1 Reactor Vessel |
| **Tech unlock** | "Synthetic Metabolic Energy" (Era 7, after Directed Evolution and Synthetic Biology) |

**Fuel sourcing:** Synthetic Metabolic Substrate is an engineered compound that undergoes controlled exothermic metabolic reactions. Recipe: 5 Concentrated Bio-Ethanol + 5 Enriched Bio-Oil + 2 Engineered Catalyst Organism (Era 7 Directed Evolution output) = 8 Synthetic Metabolic Substrate. This fuel combines two previous fuel types (ethanol + bio-oil) with an Era 7 biological catalyst, representing genuine advancement -- the fuel itself is alive and reacting.

**Demand check:** Era 7 total includes multiple Directed Evolution Chambers at 800 kW each, Continuous Culture Engine at 1.2 MW, and Vehicle Assembly Bay at 1 MW. Total is 8-10+ MW. One Synthetic Metabolism Reactor (15 MW) covers the full demand with headroom for expansion. Output scaling: 15 MW is 3x the Era 6 turbine's 5 MW. Correct ratio.

**Note on multiples:** A player running a large Era 7 base with many parallel Directed Evolution Chambers (for different organism strains) might need two Reactors. This is intentional -- the power system should be a consideration in factory layout, not invisible.

---

### Era 8: Bioelectric Harvester Network

| Property | Value |
|---|---|
| **Name** | Bioelectric Harvester (existing, output formalized) + Symbiotic Power Conduit (new) |
| **Output** | Bioelectric Harvester: **500 kW** each (as specified). Symbiotic Power Conduit: **8 MW** each. |
| **Fuel** | Bioelectric Harvester: No fuel -- harvests bioelectricity from living engineered organisms placed nearby. Symbiotic Power Conduit: Living Power Symbiont: 4 units/min. |
| **Recipe (Symbiotic Power Conduit)** | 10 Neural Mesh Membrane + 8 Biocomposite Frame + 4 Bioelectric Harvester + 2 Living System Core + 1 Symbiotic Interface |
| **Tech unlock** | Bioelectric Harvester: "Bioelectric Extraction" (Era 8, early). Symbiotic Power Conduit: "Symbiotic Energy Networks" (Era 8, mid-tier). |

**Rationale for two machines:** The problem statement says Era 8 already has a Bioelectric Harvester at 500 kW. But Era 8 demand is: Bioarchitecture Foundry 1 MW, Neural Mesh Cultivator 800 kW, Ecosystem Compiler 1.2 MW, Living System Assembler 1.5 MW = **4.5 MW minimum**, plus the 3.1 MW for bootstrap fluid sources from Issue 4 = **7.6 MW**. At 500 kW each, you'd need 16 Bioelectric Harvesters. That's too many individual placements.

Instead: the Bioelectric Harvesters serve as components in a larger structure (the Symbiotic Power Conduit) that multiplies their output via neural-mesh-connected living power organisms. Four Harvesters are consumed in the recipe, and the Conduit produces 8 MW -- representing a networked, symbiotic amplification.

**Demand check:** Era 8 total is ~7.6 MW (including bootstrap). One Symbiotic Power Conduit (8 MW) covers the demand. A second provides expansion room as the player scales up for Arcology preparation. Output scaling: 8 MW per Conduit, but the intended primary power source is the Synthetic Metabolism Reactor from Era 7 (15 MW) supplemented by Conduits. Combined: 15 MW Reactor + 8 MW Conduit = 23 MW available. This comfortably covers Era 8's full demand.

**Fuel sourcing for Symbiotic Power Conduit:** Living Power Symbiont is a cultured organism from the Living System Assembler. Recipe: 2 Engineered Tissue Culture + 1 Neural Mesh Strand + 1 Bioelectric Cell Line = 2 Living Power Symbiont. The player is already running the Living System Assembler for Era 8 production, so this is a natural side-production.

---

### Era 9: Arcology Internal Power (ATP Cycle)

| Property | Value |
|---|---|
| **Name** | Arcology Metabolic Core (internal to each Arcology module) |
| **Output** | Self-sustaining -- each module generates its own power through internal ATP metabolism |
| **Fuel** | Internal ATP cycle, fed by the Arcology's own fluid systems (Hemolymph, ATP Solution, etc.) |
| **Tech unlock** | Built into each Arcology module |
| **Notes** | No external power design needed. The bootstrapping phase (building modules) uses Era 8 power. Once modules are online, they self-power. |

**Critical note:** During the bootstrap phase (Issue 4), the player needs Era 8 power to run the Hemolymph Synthesis Vats and ATP Catalytic Fermenters. The 3.1 MW bootstrap draw is well within the Era 8 power budget.

---

### Complete Summary Table

| Era | Power Source | Output | Fuel | Fuel Rate | Scaling Factor | Tech Unlock |
|---|---|---|---|---|---|---|
| 1 | Water Wheel | Mechanical | None (water) | -- | -- | Water Power |
| 2 | Bio-Fiber Water Turbine | 30 kW | None (water) | -- | -- | Hydro-Mechanical Generation |
| 3 | Biogas Combustion Engine | 120 kW | Biogas | 10/min | 4x Era 2 | Anaerobic Power |
| 4 | Biomass Steam Boiler | 400 kW | Compressed Biomass Pellets | 8/min | 3.3x Era 3 | Thermophilic Energy |
| 5 | Bio-Ethanol Fuel Cell Array | 1.5 MW | Bio-Ethanol | 12/min | 3.75x Era 4 | Electrobiochemical Power |
| 6 | Enzymatic Bioreactor Turbine | 5 MW | Enriched Bio-Oil | 8/min | 3.3x Era 5 | Metabolic Power Engineering |
| 7 | Synthetic Metabolism Reactor | 15 MW | Synthetic Metabolic Substrate | 6/min | 3x Era 6 | Synthetic Metabolic Energy |
| 8 | Symbiotic Power Conduit | 8 MW | Living Power Symbiont | 4/min | (supplementary) | Symbiotic Energy Networks |
| 9 | Arcology Metabolic Core | Self-sustaining | Internal ATP | -- | -- | (built into modules) |

---

### Math Verification: Supply vs. Demand at Each Era

| Era | Peak Demand (est.) | Recommended Generators | Total Supply | Surplus |
|---|---|---|---|---|
| 1 | Mechanical | 2-3 Water Wheels | Mechanical | N/A |
| 2 | ~50 kW | 2 Turbines | 60 kW | +10 kW (20%) |
| 3 | ~400 kW | 3 Biogas Engines + 1 Turbine | 390 kW | ~matched (carry 1 Turbine from Era 2) |
| 4 | ~500 kW | 1 Boiler + 1 Biogas Engine | 520 kW | +20 kW (4%) |
| 5 | ~4 MW | 3 Fuel Cell Arrays | 4.5 MW | +500 kW (12.5%) |
| 6 | ~6 MW | 1 Turbine + 1 Fuel Cell Array (kept) | 6.5 MW | +500 kW (8%) |
| 7 | ~10 MW | 1 Reactor | 15 MW | +5 MW (50%) |
| 8 | ~7.6 MW | 1 Reactor (kept) + 1 Conduit | 23 MW | +15.4 MW (headroom for Arcology prep) |
| 9 | Self-sustaining | Arcology Metabolic Cores | Internal | N/A |

**Notes on the math:**

- Era 3 is intentionally tight. The player must actively manage biogas production -- this teaches the fuel logistics pattern early when stakes are low. Adding one more Digester solves any shortfall.
- Era 7 has generous surplus (50%) because the player needs headroom to run many parallel Directed Evolution Chambers. Running 6 chambers at 800 kW each = 4.8 MW just for evolution, plus the other machines.
- Era 8 has large surplus because the Era 7 Reactor carries forward and the Conduit adds to it. This surplus is consumed by Issue 4's bootstrap machines (3.1 MW) and by scaling up Living System Assembler production for Arcology preparation.

---

### Fuel Sourcing Verification

| Fuel | First Available | Source | Notes |
|---|---|---|---|
| Biogas | Era 3 | Anaerobic Digester (crop waste + manure) | Byproduct of fertilizer production -- already being made |
| Compressed Biomass Pellets | Era 4 | Pellet Press (dried plant matter + binding agent) | New simple machine; input is crop waste, universally abundant by Era 4 |
| Bio-Ethanol | Era 5 | Distillation Column (fermented sugar-crop mash) | Already being produced for lab solvents; scale up existing production |
| Enriched Bio-Oil | Era 6 | Oil-crop pressing + Lipase Enzyme enrichment | Connects existing oil-crop chain to new enzyme capabilities |
| Synthetic Metabolic Substrate | Era 7 | Concentrated Ethanol + Enriched Bio-Oil + Engineered Catalyst Organism | Combines two existing fuels with Era 7 biological catalyst |
| Living Power Symbiont | Era 8 | Living System Assembler (tissue + neural mesh + bioelectric cells) | Produced by the era's signature machine |

Every fuel is either a byproduct of existing production or made from materials the player is already producing at that era. No fuel requires a detour into an unrelated production chain.

---

### Tech Tree Integration

The power techs should form a clear line in the tech tree, with each requiring the previous power tech plus the era's signature capability:

```
Era 1: Water Power
  |
Era 2: Hydro-Mechanical Generation
  |          requires: Water Power + Bio-Fiber Weaving
  |
Era 3: Anaerobic Power
  |          requires: Hydro-Mechanical Generation + Anaerobic Digestion
  |
Era 4: Thermophilic Energy
  |          requires: Anaerobic Power + Biomass Processing
  |
Era 5: Electrobiochemical Power
  |          requires: Thermophilic Energy + Bioethanol Distillation + Advanced Materials
  |
Era 6: Metabolic Power Engineering
  |          requires: Electrobiochemical Power + Enzyme Engineering
  |
Era 7: Synthetic Metabolic Energy
  |          requires: Metabolic Power Engineering + Directed Evolution + Synthetic Biology
  |
Era 8: Bioelectric Extraction (early Era 8)
  |          requires: Synthetic Metabolic Energy + Neural Mesh Cultivation
  |
Era 8: Symbiotic Energy Networks (mid Era 8)
  |          requires: Bioelectric Extraction + Living System Assembly
  |
Era 8: Fluid Biosynthesis (late Era 8, from Issue 4)
  |          requires: Symbiotic Energy Networks + Living System Assembler
  |
Era 9: Arcology Foundation
           requires: Fluid Biosynthesis + all Era 8 capstone techs
```

This ensures the player always has power available before they unlock machines that need it. The power tech for each era unlocks slightly before or simultaneously with the era's main production machines.

---

### New Intermediate Items Required

For implementation, these new items and machines must be added:

**New machines:**
1. Pellet Press (Era 4, 10 kW) -- compresses dried plant matter into fuel pellets
2. Hemolymph Synthesis Vat (Era 8, 400 kW) -- bootstrap fluid source
3. ATP Catalytic Fermenter (Era 8, 500 kW) -- bootstrap fluid source

**New items/fluids:**
1. Compressed Biomass Pellets (fuel, Era 4)
2. Enriched Bio-Oil (fuel, Era 6)
3. Synthetic Metabolic Substrate (fuel, Era 7)
4. Living Power Symbiont (fuel, Era 8)

**New recipe for existing machines:**
1. Enzymatic enrichment recipe for Enriched Bio-Oil (runs in existing Era 6 chemical processing machine)
2. Synthetic Metabolic Substrate recipe (runs in existing Era 7 machine)

All power generators (Eras 2-8) are new entities that must be defined with their recipes, power output, fuel consumption, and pollution/emissions values.

---
