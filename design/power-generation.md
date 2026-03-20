# BIOGENESIS: POWER GENERATION PROGRESSION

**Version:** 1.0
**Date:** 2026-03-20
**Source:** `reviews/fixes-critical-4-5.md` (Critical Issue 5)
**Status:** New standalone design document — power was not covered in any era document.

---

## DESIGN PRINCIPLES

1. All power is biological in origin — no coal, no solar panels, no nuclear.
2. Each tier outputs roughly 3-4x the previous tier.
3. Fuel comes from byproducts the player is already producing at that era.
4. The power system grows out of the farming/bio infrastructure naturally.
5. Multiple generators of one tier can be placed for scaling within an era.

---

## ERA 1: MECHANICAL WATER WHEEL

| Property | Value |
|---|---|
| **Name** | Water Wheel |
| **Output** | Mechanical only (no kW — drives Era 1 machines via direct shaft connection) |
| **Fuel** | None (water current, placed on water tiles) |
| **Recipe** | 8 Wood + 4 Stone + 2 Rope (from fiber) |
| **Tech unlock** | "Water Power" (Era 1, starting tech tier) |
| **Notes** | Era 1 machines (Grinding Mill, Fermentation Crock) connect directly to the Water Wheel. No electrical grid. One wheel powers 2-3 machines. The player places multiple wheels along a river. |

**Demand check:** Era 1 has no kW demand. Machines are mechanical. The water wheel is a placement constraint (must be on water), not a fuel constraint.

---

## ERA 2: BIO-FIBER WATER TURBINE

| Property | Value |
|---|---|
| **Name** | Bio-Fiber Water Turbine |
| **Output** | **30 kW** |
| **Fuel** | None (water current, placed on water tiles) |
| **Recipe** | 6 Refined Wood Plank + 4 Woven Bio-Fiber + 2 Iron Gear + 1 Basic Axle |
| **Tech unlock** | "Hydro-Mechanical Generation" (Era 2) |
| **Notes** | First electric generator. Bio-fiber reinforced blades. Placed on water. Steady power, no fuel cost. |

**Demand check:** Era 2 total demand is ~10-50 kW. Two Bio-Fiber Water Turbines (60 kW) cover the high end. Zero fuel cost is appropriate — Era 2 is still simple, player should not manage fuel logistics yet.

---

## ERA 3: BIOGAS COMBUSTION ENGINE

| Property | Value |
|---|---|
| **Name** | Biogas Combustion Engine |
| **Output** | **120 kW** |
| **Fuel** | Biogas: 10 units/min |
| **Recipe** | 8 Iron Plate + 4 Copper Pipe + 2 Rubber Gasket + 1 Fermentation Chamber |
| **Tech unlock** | "Anaerobic Power" (Era 3, after Anaerobic Digestion tech) |

**Fuel sourcing:** Biogas is the natural byproduct of anaerobic digestion, which the player is already running in Era 3 for fertilizer production. The Anaerobic Digester processes crop waste and manure into fertilizer + biogas. One Digester produces ~15-20 Biogas/min, enough for one generator with surplus.

**Demand check:** Era 3 total is ~410 kW typical (585 kW if all 30 machines active simultaneously). Need 4 Engines + 1 carried Turbine (510 kW) for comfortable headroom. Requires 4 Digesters running, which is reasonable for an Era 3 farm generating crop waste and manure. The Autoclave (60 kW) and Distillation Column (50 kW) are the heaviest individual loads.

---

## ERA 4: BIOMASS STEAM BOILER

| Property | Value |
|---|---|
| **Name** | Biomass Steam Boiler |
| **Output** | **400 kW** |
| **Fuel** | Compressed Biomass Pellets: 8 units/min |
| **Recipe** | 12 Steel Plate + 6 Copper Pipe + 4 Fire Brick + 2 Pressure Vessel + 1 Boiler Frame |
| **Tech unlock** | "Thermophilic Energy" (Era 4, after Biomass Processing) |

**Fuel sourcing:** Compressed Biomass Pellets are a new intermediate. Recipe: 10 Dried Plant Matter + 2 Binding Agent (starch paste) = 5 Compressed Biomass Pellets in a Pellet Press (new machine, 10 kW). Player has large crop operations by Era 4 — pelletizing excess waste for fuel is natural waste valorization.

**Demand check:** Era 4 total ~300-500 kW. One Boiler (400 kW) covers most needs; two (800 kW) provide headroom. 400 kW is 3.3x the Era 3 generator's 120 kW.

**Scaling note:** Era 3 Biogas Engines remain useful as supplementary power. Typical Era 4 base: 1 Boiler + 1-2 Biogas Engines.

**New machine:** Pellet Press (Era 4, 10 kW) — compresses dried plant matter into fuel pellets.

**New item:** Compressed Biomass Pellets (fuel, Era 4).

---

## ERA 5: BIO-ETHANOL FUEL CELL ARRAY

| Property | Value |
|---|---|
| **Name** | Bio-Ethanol Fuel Cell Array |
| **Output** | **1.5 MW** (1,500 kW) |
| **Fuel** | Bio-Ethanol: 12 units/min |
| **Recipe** | 10 Advanced Circuit + 8 Stainless Steel Plate + 4 Proton Exchange Membrane + 2 Platinum Catalyst + 1 Fuel Cell Housing |
| **Tech unlock** | "Electrobiochemical Power" (Era 5, after Bioethanol Distillation + Advanced Materials) |

**Fuel sourcing:** Bio-Ethanol distilled from fermented sugarcane/corn mash in Distillation Column (Era 3-4 machine). Player already produces ethanol for solvent use in Era 5 labs. Scaling up = adding fermenters and distillation columns (expanding existing infrastructure).

**Demand check:** Era 5 total ~3-4 MW. Need 2-3 Fuel Cell Arrays (3.0-4.5 MW). CRISPR Lab (600 kW) + Sequencing Array (500 kW) = 1.1 MW. Two Arrays at 3.0 MW cover these plus the rest. 1,500 kW is 3.75x Era 4's 400 kW.

**Ethanol supply check:** 2-3 generators need 24-36 ethanol/min. Distillation Column produces ~15-20 ethanol/min, so 2-3 Columns dedicated to fuel ethanol. Proportionate to Era 5 infrastructure scale.

---

## ERA 6: ENZYMATIC BIOREACTOR TURBINE

| Property | Value |
|---|---|
| **Name** | Enzymatic Bioreactor Turbine |
| **Output** | **5 MW** (5,000 kW) |
| **Fuel** | Enriched Bio-Oil: 8 units/min |
| **Recipe** | 12 Advanced Circuit + 8 Titanium Alloy Plate + 4 Engineered Enzyme Cartridge + 2 High-Pressure Turbine Blade + 1 Bioreactor Core |
| **Tech unlock** | "Metabolic Power Engineering" (Era 6, after Enzyme Engineering + Advanced Bioprocessing) |

**Fuel sourcing:** Enriched Bio-Oil — lipid extraction from engineered algae or oilseed crops, enzymatically enriched. Recipe: 10 Crude Bio-Oil (oil-crop pressing, Era 4+) + 2 Lipase Enzyme (Era 6) = 8 Enriched Bio-Oil. Connects existing oil-crop chain to enzyme lab output.

**Demand check:** Era 6 machines at 200-800 kW each, Genome Compilation Engine at 800 kW. Total ~4-6 MW. One Turbine (5 MW) covers core demand; a second gives expansion room. 5 MW is 3.3x Era 5's 1.5 MW.

**New item:** Enriched Bio-Oil (fuel, Era 6).

---

## ERA 7: SYNTHETIC METABOLISM REACTOR

| Property | Value |
|---|---|
| **Name** | Synthetic Metabolism Reactor |
| **Output** | **15 MW** |
| **Fuel** | Synthetic Metabolic Substrate: 6 units/min |
| **Recipe** | 16 Quantum-Bio Circuit + 10 Reinforced Biocomposite + 6 Synthetic Organelle Cluster + 2 Metabolic Containment Field + 1 Reactor Vessel |
| **Tech unlock** | "Synthetic Metabolic Energy" (Era 7, after Directed Evolution + Synthetic Biology) |

**Fuel sourcing:** Synthetic Metabolic Substrate — engineered compound undergoing controlled exothermic metabolic reactions. Recipe: 5 Concentrated Bio-Ethanol + 5 Enriched Bio-Oil + 2 Engineered Catalyst Organism (Era 7 Directed Evolution output) = 8 Synthetic Metabolic Substrate. Combines two previous fuel types with a biological catalyst — the fuel itself is alive and reacting.

**Demand check:** Era 7 includes multiple Directed Evolution Chambers at 800 kW each, Continuous Culture Engine 1.2 MW, Vehicle Assembly Bay 1 MW. Total ~8-10+ MW. One Reactor (15 MW) covers demand with 50% headroom. 15 MW is 3x Era 6's 5 MW.

**Note:** Large Era 7 bases with many parallel Directed Evolution Chambers may need two Reactors. Power should be a layout consideration, not invisible.

**New item:** Synthetic Metabolic Substrate (fuel, Era 7).

---

## ERA 8: BIOELECTRIC HARVESTER NETWORK

**Two machines at this tier:**

| Property | Bioelectric Harvester | Symbiotic Power Conduit |
|---|---|---|
| **Output** | 500 kW each | 8 MW each |
| **Fuel** | None (harvests bioelectricity from nearby organisms) | Living Power Symbiont: 4 units/min |
| **Tech** | "Bioelectric Extraction" (early Era 8) | "Symbiotic Energy Networks" (mid Era 8) |
| **Recipe** | (existing) | 10 Neural Mesh Membrane + 8 Biocomposite Frame + 4 Bioelectric Harvester + 2 Living System Core + 1 Symbiotic Interface |

**Why two machines:** Era 8 demand is ~7.6 MW (4.5 MW for core machines + 3.1 MW for bootstrap fluid sources from Issue 4). At 500 kW, you would need 16 Bioelectric Harvesters — too many placements. The Conduit consumes 4 Harvesters in its recipe and outputs 8 MW via neural-mesh-connected living power organisms.

**Combined supply:** Era 7 Reactor (15 MW, carried forward) + 1 Conduit (8 MW) = 23 MW. Covers Era 8 demand with headroom for Arcology preparation.

**Fuel sourcing:** Living Power Symbiont from Living System Assembler. Recipe: 2 Engineered Tissue Culture + 1 Neural Mesh Strand + 1 Bioelectric Cell Line = 2 Living Power Symbiont. Natural side-production.

**New item:** Living Power Symbiont (fuel, Era 8).

---

## ERA 9: ARCOLOGY METABOLIC CORE

| Property | Value |
|---|---|
| **Name** | Arcology Metabolic Core (internal to each module) |
| **Output** | Self-sustaining — each module generates own power via internal ATP metabolism |
| **Fuel** | Internal ATP cycle, fed by Arcology's own fluid systems |
| **Tech** | Built into each Arcology module |
| **Notes** | No external power design needed. Bootstrap phase uses Era 8 power. Once modules online, they self-power. |

During bootstrap (Issue 4): player needs Era 8 power for Hemolymph Synthesis Vats and ATP Catalytic Fermenters. The 3.1 MW draw is well within Era 8's 23 MW budget.

---

## COMPLETE SUMMARY TABLE

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

## SUPPLY VS. DEMAND VERIFICATION

| Era | Peak Demand (est.) | Recommended Generators | Total Supply | Surplus |
|---|---|---|---|---|
| 1 | Mechanical | 2-3 Water Wheels | Mechanical | N/A |
| 2 | ~50 kW | 2 Turbines | 60 kW | +10 kW (20%) |
| 3 | ~410-585 kW (typical-peak) | 4 Biogas Engines + 1 Turbine | 510 kW | +100 kW headroom at typical load |
| 4 | ~500 kW | 1 Boiler + 2 Biogas Engines (1 carried from Era 3) | 640 kW | +140 kW (28%) |
| 5 | ~4 MW | 3 Fuel Cell Arrays | 4.5 MW | +500 kW (12.5%) |
| 6 | ~6 MW | 1 Turbine + 1 Fuel Cell Array (kept) | 6.5 MW | +500 kW (8%) |
| 7 | ~10 MW | 1 Reactor | 15 MW | +5 MW (50%) |
| 8 | ~7.6 MW | 1 Reactor (kept) + 1 Conduit | 23 MW | +15.4 MW (headroom for Arcology prep) |
| 9 | Self-sustaining | Arcology Metabolic Cores | Internal | N/A |

**Design notes:**
- Era 3 is intentionally tight. Player must actively manage biogas production — teaches fuel logistics when stakes are low.
- Era 7 has generous surplus (50%) because the player needs headroom for many parallel Directed Evolution Chambers. 6 chambers at 800 kW = 4.8 MW just for evolution.
- Era 8 surplus consumed by Issue 4 bootstrap machines (3.1 MW) and by scaling up Living System Assembler production.

---

## FUEL SOURCING VERIFICATION

| Fuel | First Available | Source | Notes |
|---|---|---|---|
| Biogas | Era 3 | Anaerobic Digester (crop waste + manure) | Byproduct of fertilizer production — already being made |
| Compressed Biomass Pellets | Era 4 | Pellet Press (dried plant matter + binding agent) | New simple machine; input is crop waste, universally abundant |
| Bio-Ethanol | Era 5 | Distillation Column (fermented sugar-crop mash) | Already produced for lab solvents; scale up existing production |
| Enriched Bio-Oil | Era 6 | Oil-crop pressing + Lipase Enzyme enrichment | Connects existing oil-crop chain to new enzyme capabilities |
| Synthetic Metabolic Substrate | Era 7 | Concentrated Ethanol + Enriched Bio-Oil + Engineered Catalyst Organism | Combines two existing fuels with Era 7 biological catalyst |
| Living Power Symbiont | Era 8 | Living System Assembler (tissue + neural mesh + bioelectric cells) | Produced by the era's signature machine |

Every fuel is either a byproduct of existing production or made from materials the player is already producing. No fuel requires a detour into an unrelated chain.

---

## TECH TREE INTEGRATION

Power techs form a clear line, each requiring the previous power tech plus the era's signature capability:

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

Power tech for each era unlocks slightly before or simultaneously with the era's main production machines.

---

## NEW ITEMS AND MACHINES REQUIRED

**New machines:**
1. Pellet Press (Era 4, 10 kW) — compresses dried plant matter into fuel pellets
2. Hemolymph Synthesis Vat (Era 8, 400 kW) — bootstrap fluid source (see `bootstrap-machines.md`)
3. ATP Catalytic Fermenter (Era 8, 500 kW) — bootstrap fluid source (see `bootstrap-machines.md`)

**New items/fluids:**
1. Compressed Biomass Pellets (fuel, Era 4)
2. Enriched Bio-Oil (fuel, Era 6)
3. Synthetic Metabolic Substrate (fuel, Era 7)
4. Living Power Symbiont (fuel, Era 8)

**New recipes for existing machines:**
1. Enzymatic enrichment recipe for Enriched Bio-Oil (runs in existing Era 6 chemical processing machine)
2. Synthetic Metabolic Substrate recipe (runs in existing Era 7 machine)

All power generators (Eras 2-8) are new entities requiring prototype definitions with recipes, power output, fuel consumption, and pollution/emissions values.

---
