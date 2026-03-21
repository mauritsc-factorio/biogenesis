# BIOGENESIS: Era 3 — The Invisible Ecosystem

**Status:** DRAFT v3
**Date:** 2026-03-21
**Duration:** 12–16 hours
**Discipline:** Microbiology, fermentation, marine aquaculture, fungal cultivation
**Tone:** Revelatory, awed — "8.2 billion organisms per gram. This soil didn't exist last week."
**Core Insight:** The invisible world is where the real work happens. You've been managing ecosystems without seeing them.
**Research Chapter:** "The Invisible Ecosystem"
**Science Pack:** Microbial Culture Dataset

---

## 1. INHERITED STATE

The player enters Era 3 with:
- **Island:** ~500 tiles with distinct zones (iron district, diatom zone, crop fields, offshore platforms)
- **Materials:** All Era 1-2 materials + iron plates, copper plates, green circuits, fused silica, bio-cement
- **Machines:** All Era 1-2 machines. Iron vats, diatom ponds, phytomining beds, greenhouse, smelter running.
- **Power:** ~75-105 kW (tidal + 2-3 wind turbines)
- **Logistics:** Standard Factorio belts, inserters, pipes (iron-recipe). Era 1 kelp-stalk belts likely retired in favor of iron-recipe standard belts.
- **Science:** TOK production established. CED production starting (stockpiling for Era 3 research).
- **Compost:** Central nutrient cycle running. Byproducts from all chains feeding in.

**What changes:** The Soil Composition Analyzer arrives and OPENS the black boxes. Every biological machine the player built in Era 2 is revealed to contain a competing ecosystem. This recontextualizes everything. Also: marine animals, fermentation, rubber, industrial-scale microbiology. Power jumps from ~100 kW to 120+ kW with the Biogas Engine.

---

## 2. TIMELINE

### Hours 0–2: The Revelation

**What unlocks:** Soil Composition Analyzer, Aquaculture Pond, Bio Web visibility overlay.

**The moment that redefines the game:** The player builds the Soil Composition Analyzer and uses it on their Era 2 iron-culture vat. The readout appears:

*"Bacterial population: 47 identified strains. Dominant: Gallionella ferruginea (38%), Leptothrix ochracea (22%), unidentified (14%). Iron precipitation rate correlates with Gallionella dominance. Your most productive vat has been naturally selecting for the most efficient strain. The bacteria you are using now are not the bacteria you started with."*

The player IMMEDIATELY wants to analyze everything. Their compost heap: billions of organisms. Their diatom pond: dozens of algal species competing. Their enriched soil: a microbial civilization. Era 2 was about controlling conditions. Era 3 is about understanding what lives inside those conditions.

**"Zoom In":** "8.2 billion organisms per gram. This soil didn't exist last week."

**Aquaculture begins.** Ocean fish are attracted to the island (spawning mechanic: fish entities appear in water near large islands >200 tiles). The player builds Aquaculture Ponds at the island edge — enclosed water areas with controlled entry. Fish enter, breed, and are harvested.

**Bio Web overlay.** The analyzer unlocks a map overlay showing Bio Web relationship lines between biological entities. For the first time, the player SEES the connections they've been exploiting blind — mutualistic pairs glow green, competitive pairs glow red. This makes layout optimization visual and intuitive.

**New machines:**
| Machine | Size | Power | Notes |
|---------|------|-------|-------|
| Soil Composition Analyzer | 2×2 | 10 kW | Analyzes any biological entity within 5 tiles. Shows internal ecosystem, trait data (qualitative), Bio Web relationships. |
| Aquaculture Pond | 4×3 | 3 kW | Placed at water's edge (spans land/water). Fish production. Aeration + water circulation. Output depends on feed quality. |

### Hours 2–4: Fermentation

**What unlocks:** Fermentation Vat, Distillation Column, Biogas Digester, Mash Tun.

**The branching chain (the doc's signature example):**
```
Sea-Grain (from Era 1-2 crops)
  → Mash Tun (8s) → Wort + Spent Grain
       │                    │
       ▼                    └→ Fish Feed OR Compost
  Fermentation Vat (45s)
  → Crude Ethanol + Yeast Sediment
       │                    │
       ▼               ├→ Starter Culture (re-inoculate vats)
  Distillation Column   └→ Compost (nitrogen-rich)
  (15s)
  → Bio-Ethanol + Fusel Oils + Stillage
       │              │           │
  Fuel (Era 3+)   Solvent     ├→ Fish Feed (protein-rich)
  Power fuel      (extraction  ├→ Compost
                   reagent)    └→ Biogas Digester input
```

**Seven outputs from one input.** The player building an ethanol plant is simultaneously building a fish feed supply, a compost operation, a solvent source, and a fuel chain. This is the recipe design philosophy in its purest form.

**Biogas Digester** — the waste-to-energy converter:
```
Organic waste (stillage, crop residue, fish waste, any compost-eligible item)
  → Biogas Digester (60s)
  → Biogas (fuel) + Digestate (liquid fertilizer, direct soil amendment)
```
Biogas is stored for the engine (hour 6-8). Digestate is a DIRECT fertilizer — skips the composting step, faster than compost but less nutrient-rich.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Wort | Mash Tun | 100 | Fermentable sugar liquid |
| Spent Grain | Mash Tun byproduct | 100 | → fish feed or compost |
| Crude Ethanol | Fermentation Vat | 100 | Unrefined — needs distillation |
| Yeast Sediment | Fermentation byproduct | 100 | → starter culture propagation or compost |
| Bio-Ethanol | Distillation Column | 100 | Refined fuel. 4 MJ. Also solvent. |
| Fusel Oils | Distillation byproduct | 100 | Chemical solvent. Extraction reagent for Era 4+. |
| Stillage | Distillation byproduct | 100 | Protein-rich → fish feed, compost, or digester |
| Wild Yeast Culture | 1 provided by Fermentation Science tech as research reward | 50 | Initial inoculant. First fermentation cycle uses wild yeast (slower, 90s instead of 45s). Subsequent cycles use Yeast Sediment for full-speed runs. |
| Culture Medium | Crafting: 1 Growth Medium + 1 Grain Porridge + 1 Freshwater → 2 (hand, 3s) | 100 | Standard bacterial/fungal growth substrate. Porridge provides carbon + nitrogen source. Used in Era 3+ culture recipes. |
| Yeast Starter Culture | Crafting (yeast sediment + growth medium) | 50 | Re-inoculant for faster fermentation cycles |
| Biogas | Biogas Digester | 100 | Fuel (3 MJ). Powers Biogas Engine. |
| Digestate | Digester byproduct | 100 | Liquid fertilizer. Direct soil amendment. |

**New machines:**
| Machine | Size | Power | Notes |
|---------|------|-------|-------|
| Mash Tun | 2×2 | 5 kW | Sea-grain → wort + spent grain |
| Fermentation Vat | 2×2 | 2 kW | Wort + yeast → crude ethanol + sediment. Temperature regulation. |
| Distillation Column | 2×3 | 10 kW | Crude ethanol → bio-ethanol + fusel oils + stillage |
| Biogas Digester | 3×2 | 2 kW | Organic waste → biogas + digestate. Mixing motor + gas collection. |

### Hours 4–6: Marine Animals + Algae

**What unlocks:** Fish Processing Station, Oil Press, expanded Algae Cultivation, Crustacean Trap.

**The aquaculture chain (7-step active throughput challenge):**
```
Aquaculture Pond (passive, fish breed over time)
  → Harvest → Raw Fish + Fish Roe (occasional)
       │
       ▼
  Fish Processing Station (10s)
  → Fish Fillet + Fish Waste + Fish Bones
       │             │            │
       ▼             ▼            ▼
  Oil Press (15s)  Compost    Calcium supplement
  → Fish Oil + Fish Meal              (→ aquaculture feed additive)
       │          │
       ▼          └→ Compost or Fish Feed ingredient
  Further processing:
  → Omega-3 Concentrate (→ probiotic culture ingredient)
  → Soap (fish oil + caustic soda, Era 3 hour 6-8)
```

**Feed quality determines yield.** Fish in ponds produce more fillet per harvest when fed higher-quality feed. Feed recipes combine multiple waste streams:
| Feed Recipe | Inputs | Quality | Effect |
|------------|--------|---------|--------|
| Basic Fish Feed | 2 Spent Grain + 1 Algal Cake | Low | Baseline production |
| Standard Fish Feed | 1 Stillage + 1 Organic Slurry + 1 Fish Meal | Medium | +30% fillet yield |
| Premium Fish Feed | 1 Spirulina Wafer + 1 Omega-3 Concentrate + 1 Fish Meal | High | +60% fillet yield + higher roe chance |

This creates a throughput optimization loop: better feed → more fish → more fish waste → better feed ingredients → even better feed. The player who optimizes this loop gets dramatically more output.

**Algae Cultivation at scale:**
```
Algae Cultivation Tank (CO₂ + Brackish Water + Compost nutrients)
  → Algae Harvest (20s cycle)
  → 3 Raw Algae + 1 Organic Slurry (→ compost)
       │
  Algal Processing (various)
  ├→ Algal Cake (defatted — fish feed, ethanol feedstock)
  ├→ Algal Oil (→ bio-oil chain, Era 3+)
  ├→ Algal Protein Isolate (food ingredient, culture medium)
  ├→ Spirulina Wafer (premium fish feed component)
  ├→ Astaxanthin Concentrate (pigment, high-value — Era 4 science ingredient)
  └→ Carrageenan Gel (culture medium thickener, food additive)
```

**Crustaceans:** Crustacean Traps placed at the water's edge (like aquaculture ponds — one tile on land, body in water). Output chest faces land side for belt access. Harvest → shellfish meat + chitin + shell waste. Chitin is a KEY material — used in fast inserter recipes and pharmaceutical precursors.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Raw Fish | Aquaculture Pond | 50 | Perishable (spoils if not processed within ~5 min game-time) |
| Fish Fillet | Fish Processing Station | 100 | Yield depends on feed quality. Used in: Culture Medium (protein source), Premium Fish Feed, salted fish (food preservation). |
| Fish Waste | Processing byproduct | 100 | → compost or digester |
| Fish Bones | Processing byproduct | 100 | → calcium supplement (aquaculture additive) |
| Fish Oil | Oil Press | 100 | → omega-3, soap, bio-oil chain |
| Fish Meal | Oil Press byproduct | 100 | → feed ingredient or compost |
| Fish Roe | Aquaculture (rare output) | 50 | → re-stock ponds (breeding) or food delicacy |
| Omega-3 Concentrate | Chemical processing (fish oil) | 100 | → probiotic ingredient, premium feed, science |
| Shellfish Meat | Crustacean Trap harvest | 100 | Food ingredient |
| Chitin | Crustacean processing | 100 | Fast inserter component. Pharmaceutical precursor. |
| Shell Waste | Crustacean byproduct | 100 | → calcium supplement or compost |
| Raw Algae | Algae Cultivation Tank | 100 | Unprocessed — needs fractionation |
| Algal Cake | Algal fractionation | 100 | Defatted biomass → feed, ethanol feedstock |
| Algal Oil | Algal fractionation | 100 | → bio-oil chain (Era 3 power fuel precursor) |
| Algal Protein | Algal fractionation | 100 | → food, culture medium |
| Spirulina Wafer | Nutrient press | 50 | Premium feed ingredient |
| Astaxanthin Concentrate | Algal fractionation | 50 | High-value pigment. Science pack ingredient. |
| Carrageenan Gel | Red algae processing | 100 | Culture medium thickener. Food additive. |
| Basic Fish Feed | Feed Blender | 100 | Low-quality aquaculture feed |
| Standard Fish Feed | Feed Blender | 100 | Medium-quality |
| Premium Fish Feed | Feed Blender | 50 | High-quality. Expensive to produce. |

### Hours 6–8: Salt Electrolysis + Power

**What unlocks:** Electrolysis Cell, Biogas Combustion Engine, Dandelion/Guayule cultivation (rubber).

**Salt electrolysis (three products from one process):**
```
Salt Brine (sea salt dissolved in freshwater)
  → Electrolysis Cell (20s, requires 15 kW)
  → Chlorine Gas + Caustic Soda + Hydrogen Gas
       │              │              │
       ▼              ▼              ▼
  Water Purifier   Soap Making    Stored for
  (chlorine +      (fish oil +    Era 5 fuel
   brackish water   NaOH → soap)  cells
   → purified water)
       │              │
       ▼              ▼
  Better culture   pH Control Agent
  yields (+10%)    (optimize bacterial
                    culture conditions)
```

**Rubber cultivation.** Dandelion seeds (provided by Rubber Cultivation tech, 3 starters) → dandelion plants on enriched soil → harvest → latex → process → rubber. Rubber is needed for the Biogas Engine gaskets and later for vehicle components.

**THE BIG POWER JUMP.** Biogas Combustion Engine: 120 kW from biogas fuel. Recipe requires iron plate + copper pipe + RUBBER GASKET. This is the first machine that requires a material from THIS era — rubber must be cultivated and processed before the engine can be built. Sequence: early Era 3 research → rubber cultivation → rubber processing → engine construction at mid-era. Until then, Era 2 wind turbines (75-105 kW) cover early Era 3 machines.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Salt Brine | Crafting (sea salt + freshwater) | 100 | Electrolysis input |
| Chlorine Gas | Electrolysis Cell | 100 | Water purification, bleaching, PVC precursor (Era 4) |
| Caustic Soda | Electrolysis Cell | 100 | Soap, pH control, paper/textile (Era 4) |
| Hydrogen Gas | Electrolysis Cell | 100 | Stored → Era 5 fuel cells |
| Soap | Crafting (fish oil + caustic soda) | 100 | Cleaning agent. Used in culture sterilization. |
| pH Control Agent | Crafting (caustic soda + brackish water) | 100 | Bacterial culture optimizer. +10% vat yields. |
| Purified Water | Water Purifier (chlorine + brackish) | 100 | Higher quality than carbon-filtered. Best for sensitive cultures. |
| Dandelion Seed | 3 given by Rubber Cultivation tech | 200 | Places dandelion plant. 1 returned per harvest. |
| Raw Latex | Dandelion harvest | 100 | Unprocessed rubber precursor |
| Rubber | Latex Processor | 100 | Gaskets, seals, flexible components. Vehicle tires (Era 5+). |
| Rubber Gasket | Crafting (rubber + iron plate) | 100 | Engine component |
| Biogas Combustion Engine | Crafting (see power section) | 10 | 120 kW power source. Fueled by biogas. |

**New machines:**
| Machine | Size | Power | Notes |
|---------|------|-------|-------|
| Electrolysis Cell | 2×2 | 15 kW | Salt brine → chlorine + caustic soda + hydrogen |
| Water Purifier | 1×1 | 5 kW | Chlorine + water → purified water |
| Latex Processor | 2×1 | 5 kW | Raw latex → rubber |
| Feed Blender | 2×1 | 5 kW | Combines feed ingredients → fish feed tiers |
| Biogas Combustion Engine | 3×2 | Produces 120 kW | Fueled by biogas (10/min). First serious power. |

### --- PHASE GATE: Ecological Integration (mid-era milestone) ---

**Before unlocking Phase 3B content, the player must demonstrate mastery of Phase 3A systems:**

Research "Ecological Integration" (5 CED). **Prerequisites (verifiable):**
- Soil Composition Analyzer built and used (≥3 analyses)
- Fermentation chain operational (produced ≥10 bio-ethanol)
- Aquaculture operational (harvested ≥5 fish fillet)
- Biogas Engine built and operational
- Algae Cultivation operational (produced ≥10 raw algae)

**Notification:** *"Phase 3B: Industrial Microbiology. You've learned to see the invisible world and harness its first products. Now: expand. Fungal networks, salt chemistry, structural biology, and advanced cultures await."*

**Why this gate exists:** Phase 3A introduces the analyzer revelation, fermentation, aquaculture, and algae — 4 major systems. The player needs 6-8 hours to learn and stabilize these before encountering mycelium, electrolysis, sulfur, phosphorus, and culture isolation. Without the gate, all 9+ systems hit simultaneously, causing cognitive overload. With the gate, the player masters the first wave before the second arrives.

---

### Hours 8–10: Mycelium + Bacterial Cellulose (Phase 3B)

**What unlocks:** Mycelium Cultivation Bed (scaled), Bacterial Cellulose Vat, fast belts + fast inserters.

**Mycelium cultivation:**
```
Crop Residue + Bacterial Cellulose Substrate
  → Mycelium Cultivation Bed (60s)
  → Raw Mycelium Sheet + Substrate Residue (→ compost)
       │
  Processing:
  ├→ Mycelium Gasket (flexible, chemical-resistant)
  ├→ Mycelium Belt Reinforcement (→ fast belt component)
  └→ Stored for Era 4 bio-composite fabrication
```

**Bacterial cellulose:**
```
Gluconacetobacter Culture + Growth Medium (compost extract + freshwater)
  → Bacterial Cellulose Vat (45s)
  → Bacterial Cellulose Sheet + Spent Medium (→ compost)
```
Bacterial cellulose is a PURE cellulose — stronger than plant fiber, flexible, biocompatible. Used in: fast belt reinforcement, wound dressings (food-grade), bio-composite layering (Era 4).

**Fast logistics unlock.** With chitin (from crustaceans) + bacterial cellulose + mycelium:
- Fast Transport Belt: iron gear + bacterial cellulose reinforcement + chitin coating
- Fast Inserter: iron gear + chitin arm + green circuit

The player's factory speeds up significantly. Throughput bottlenecks from Era 2's slow logistics start to resolve.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Mycelium Culture | Crafting (compost + crop residue + moisture) | 50 | Fungal starter. Placed in cultivation bed. |
| Raw Mycelium Sheet | Cultivation Bed | 100 | Unprocessed fungal mat |
| Mycelium Gasket | Crafting (mycelium sheet) | 100 | Flexible seal. Chemical-resistant. |
| Bacterial Cellulose Sheet | Cellulose Vat | 100 | Pure cellulose. Stronger than plant fiber. |
| Gluconacetobacter Culture | Crafting (1 Culture Medium + 1 Vinegar) | 50 | Bacterial starter for cellulose vat |
| Vinegar | Fermentation (ethanol exposed to air) | 100 | Acetic acid. Culture starter. Food preservative. |

### Hours 10–12: Advanced Microbiology

**What unlocks:** Sulfur-reducing bacteria, Phosphorus-accumulating organisms, Starter Culture Isolator, enhanced compost.

**Sulfur production:**
```
Brackish Water (sulfate-rich)
  → Sulfur-Reducing Culture Vat (30s)
  → Elemental Sulfur + Hydrogen Sulfide (captured → chemical feedstock)
       │
  ├→ Sulfuric Acid (sulfur + purified water) → Era 5 blue circuits
  ├→ Vulcanization Agent (rubber improvement)
  └→ Fungicide (crop protection)
```

**Phosphorus production:**
```
Brackish Water + Compost nutrients
  → PAO Culture Vat (30s)
  → Phosphorus Concentrate + Depleted Culture Water (→ irrigation)
       │
  ├→ Phosphate Fertilizer (strongest soil amendment yet)
  └→ Chemical reagent (Era 4+ biochemistry)
```

**Starter Culture Isolator.** A new machine that takes any biological output (compost, spent medium, fermentation byproduct) and extracts a SPECIFIC microbial culture from it. This is Era 3's signature mechanic — turning "mixed ecosystems" into "controlled monocultures." Each isolated culture has specific properties:
- Thermophilic Culture (heat-resistant bacteria → Era 4 high-temp processing)
- Acidophilic Culture (acid-loving bacteria → improved sulfur production)
- High-Yield Iron Culture (isolated from best-performing iron vat → +25% iron production when re-introduced)

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Elemental Sulfur | Sulfur Culture Vat | 100 | Era 5 blue circuits. Vulcanization. Fungicide. |
| Hydrogen Sulfide | Sulfur Vat byproduct (captured) | 100 | Chemical feedstock → sulfuric acid |
| Sulfuric Acid | Chemical processing | 100 | Era 5 blue circuit ingredient |
| Phosphorus Concentrate | PAO Vat | 100 | Strongest fertilizer. Chemical reagent. |
| Phosphate Fertilizer | Crafting (phosphorus + compost) | 100 | +50% crop yield. Best soil amendment. |
| Thermophilic Culture | Starter Culture Isolator (input: compost) | 50 | Heat-resistant bacteria → Era 4 high-temp processing |
| Acidophilic Culture | Starter Culture Isolator (input: sulfur vat byproduct) | 50 | Acid-loving bacteria → improved sulfur production, probiotic chain |
| High-Yield Iron Culture | Starter Culture Isolator (input: spent iron medium) | 50 | Isolated from best iron vat. +25% iron yield when re-introduced to vat. |

### Hours 12–16: Integration + Era 4 Prep

**What unlocks:** Coral Seeder, industrial bio-cement scaling, probiotic chain completion.

**Coral reef foundations:**
```
MICP Culture + Calcium Precipitate + Coral Seed
  → Coral Seeder (placed underwater, 120s growth)
  → Coral Foundation (underwater buildable surface)

Coral Seed recipe: 1 MICP Culture + 1 Calcium Precipitate + 1 Chitin → 2 Coral Seed (hand, 5s)
  Chitin provides the organic scaffold for coral nucleation — biologically accurate.
```
The player extends underwater: aquaculture infrastructure, tidal energy substations, storage. The ocean is no longer just water — it's three-dimensional building space.

**Probiotic chain (connecting aquaculture to fermentation):**
```
Omega-3 Concentrate + Isolated Acidophilic Culture
  → Probiotic Culture (30s)
  → Enhanced Fermentation Starter (→ +20% ethanol yield when used in vat)
  + Probiotic Supplement (→ Premium Fish Feed ingredient)
```
This chain CONNECTS aquaculture to fermentation — fish oil products improve fermentation efficiency, which produces better stillage for fish feed, which produces more fish oil. The loop tightens.

**Scaling and capstone.** The player scales all chains, builds coral infrastructure, and researches the capstone.

---

## 3. ITEM SUMMARY (~110 new + carried)

| Category | New in Era 3 | Examples |
|----------|-------------|---------|
| Marine animals | ~15 | Raw fish, fillet, fish waste, bones, oil, meal, roe, shellfish, chitin, shell waste, fish feed (3 tiers) |
| Fermentation | ~12 | Wort, spent grain, crude ethanol, bio-ethanol, fusel oils, stillage, yeast sediment, starter culture, vinegar, biogas, digestate |
| Algae | ~8 | Raw algae, algal cake, algal oil, protein, spirulina, astaxanthin, carrageenan |
| Fungal | ~6 | Mycelium culture, raw sheet, gasket, bacterial cellulose, gluconacetobacter culture |
| Chemistry | ~10 | Salt brine, chlorine, caustic soda, hydrogen, soap, pH agent, purified water, sulfuric acid |
| Minerals | ~4 | Elemental sulfur, H₂S, phosphorus concentrate, phosphate fertilizer |
| Rubber | ~5 | Dandelion seed, raw latex, rubber, rubber gasket |
| Cultures | ~6 | Wild yeast culture, thermophilic culture, acidophilic culture, high-yield iron culture, probiotic culture, enhanced fermentation starter |
| Feed | ~4 | Basic/standard/premium fish feed, spirulina wafer |
| Machines | ~21 | See machine list |
| Science | ~2 | Microbial Culture Dataset, partial genetic readout |
| Logistics | ~2 | Fast belt, fast inserter (new tier) |
| **Total new** | **~90** | |
| **Carried from Era 1-2** | **~110** | |
| **Grand total available** | **~200** | |

---

## 4. MACHINE SPECIFICATIONS (Era 3 new)

| Machine | Size | Power | Category | Notes |
|---------|------|-------|----------|-------|
| Soil Composition Analyzer | 2×2 | 10 kW | analysis | Reads internal ecosystems. Shows Bio Web overlay. Qualitative genetic readouts. |
| Aquaculture Pond | 4×3 | 3 kW | aquaculture | Land/water boundary. Fish production. Aeration + water circulation. |
| Mash Tun | 2×2 | 5 kW | fermentation | Sea-grain → wort + spent grain |
| Fermentation Vat | 2×2 | 2 kW | fermentation | Wort + yeast → crude ethanol + sediment. Temperature regulation. |
| Distillation Column | 2×3 | 10 kW | distillation | Crude ethanol → bio-ethanol + fusel oils + stillage |
| Biogas Digester | 3×2 | 2 kW | digestion | Organic waste → biogas + digestate. Mixing motor + gas collection. |
| Fish Processing Station | 2×1 | 5 kW | processing | Raw fish → fillet + waste + bones |
| Oil Press | 2×1 | 5 kW | pressing | Fish/algae → oil + meal/cake |
| Algae Cultivation Tank | 3×2 | 3 kW | algae-cultivation | CO₂ + brackish + nutrients → algae. Aeration + light. |
| Algal Fractionator | 2×2 | 10 kW | fractionation | Raw algae → cake + oil + protein + specialty products |
| Crustacean Trap | 1×1 | 1 kW | aquaculture | Placed in water. Shellfish capture. Bait pump. |
| Electrolysis Cell | 2×2 | 15 kW | electrolysis | Salt brine → chlorine + caustic soda + hydrogen |
| Water Purifier | 1×1 | 5 kW | purification | Chlorine + water → purified water |
| Latex Processor | 2×1 | 5 kW | processing | Raw latex → rubber |
| Feed Blender | 2×1 | 5 kW | blending | Combines ingredients → tiered fish feed |
| Mycelium Cultivation Bed | 3×2 | 2 kW | fungal-cultivation | Residue + cellulose → mycelium sheet. Humidity + temperature control. |
| Bacterial Cellulose Vat | 2×1 | 2 kW | bacterial-cultivation | Culture + medium → cellulose sheet. Aeration pump. |
| Sulfur-Reducing Vat | 2×1 | 2 kW | bacterial-cultivation | Brackish → sulfur + H₂S. Anaerobic seal + gas capture. |
| PAO Culture Vat | 2×1 | 2 kW | bacterial-cultivation | Brackish + nutrients → phosphorus concentrate. Aeration cycling. |
| Starter Culture Isolator | 2×2 | 10 kW | isolation | Biological input → specific monoculture |
| Automated Planter | 2×2 | 5 kW | farming | Takes seeds from belt input, plants in adjacent tiles (3-tile range), auto-harvests mature crops to output belt. Full agricultural automation. |
| Coral Seeder | 2×1 | 1 kW | underwater | Placed underwater. Grows coral foundation (120s). Nutrient drip pump. |
| Biogas Combustion Engine | 3×2 | Produces 120 kW | — | Fueled by biogas (10/min) |

**Power budget:**
- Inherited: ~75-105 kW (tidal + 2-3 wind turbines)
- Biogas Engine: +120 kW
- Total supply: ~195-225 kW
- Era 3 NEW machine demand: ~25 kW (biological: aquaculture 3 + fermentation 2 + digester 2 + algae 3 + crustacean 1 + mycelium 2 + cellulose 2 + sulfur 2 + PAO 2 + coral 1 = 20 kW) + (powered: analyzer 10 + mash 5 + distillation 10 + fractionator 10 + processing 5 + press 5 + electrolysis 15 + purifier 5 + latex 5 + blender 5 + isolator 10 = 90 kW) = ~110 kW new
- Total demand (all eras): ~180-200 kW
- Comfortable surplus with biogas engine. Second engine needed for heavy scaling (~300+ kW total).

---

## 5. TECH TREE

Era 3 uses Controlled Environment Datasets (CED) for research.

| # | Name | Cost | Prerequisites | Unlocks | Phase |
|---|------|------|--------------|---------|-------|
| 22 | Microbial Analysis | 3 CED | Tech 20 (Era 3 entry) | Soil Composition Analyzer, Bio Web overlay | 3A |
| 23 | Aquaculture Fundamentals | 3 CED | Tech 22 | Aquaculture Pond, Crustacean Trap, fish processing | 3A |
| 24 | Fermentation Science | 4 CED | Tech 22 | Mash Tun, Fermentation Vat, Distillation Column, Wild Yeast Culture | 3A |
| 25 | Anaerobic Digestion | 3 CED | Tech 24 | Biogas Digester, biogas recipes | 3A |
| 26 | Algal Cultivation | 4 CED | Tech 23 | Algae Cultivation Tank, Algal Fractionator, algal products | 3A |
| 27 | Rubber Cultivation | 3 CED | Tech 22 | Dandelion seeds, Latex Processor, rubber chain | 3A |
| 28 | Biogas Power | 4 CED | Tech 25 + Tech 27 | Biogas Combustion Engine (requires rubber gaskets) | 3A |
| **28b** | **Ecological Integration** | **5 CED** | **Tech 26 + Tech 28** | **PHASE 3B GATE. Unlocks industrial microbiology.** | **Gate** |
| 29 | Salt Electrolysis | 5 CED | Tech 28b | Electrolysis Cell, chlorine/caustic soda/hydrogen chain | 3B |
| 30 | Fungal Cultivation | 4 CED | Tech 28b | Mycelium Bed, Bacterial Cellulose Vat, fast logistics | 3B |
| 31 | Advanced Microbiology | 5 CED | Tech 29 + Tech 30 | Sulfur/phosphorus vats, Starter Culture Isolator | 3B |
| 32 | Coral Construction | 3 CED | Tech 31 | Coral Seeder, Automated Planter, underwater foundations | 3B |
| 33 | Microbial Ecology Compendium | 8 CED | Tech 31 + Tech 32 | **ERA 4 TRANSITION** | 3B |

**Total CED for Era 3:** 3+3+4+3+4+3+4+5+5+4+5+3+8 = **54 CED**

**Phase 3A (hours 0-8):** Techs 22-28. Revelation + fermentation + aquaculture + algae + rubber + biogas power. The player learns to see the invisible world and harness its first products.

**Phase 3B (hours 8-16):** Techs 29-33. Salt electrolysis + mycelium + advanced micro + coral. Requires mastering 3A systems first. Industrial-scale microbiology.

**Critical path:** 22 → {23, 24, 30} → {25, 26, 27} → 28 → 29 → 31 → {32, 33}. The Biogas Engine (tech 28) is the critical gate — it needs both digestion (25) AND rubber (27), which are independent branches. The player can parallelize 23/24/30 and 25/26/27.

---

## 6. BIO WEB (Era 3)

### New Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Aquaculture Pond | Algae Tank | Mutualistic | +25% both + **Symbiotic Biofilm** (~15%) | Fish waste feeds algae; algae oxygenate water. Bonus item: composite material. |
| Aquaculture Pond | Excess Nutrients | Competitive | Algae bloom → fish population crash | Over-enrichment from too many compost/digestate inputs. Active management required. |
| Fermentation Vat | Biogas Digester | Commensal | +15% biogas yield | Fermentation waste is ideal digester input. |
| Mycelium Bed | Bacterial Cellulose Vat | Mutualistic | +20% mycelium growth | Bacteria pre-digest substrate, fungi colonize more efficiently. |
| Fungal Culture | Crop Field | Mutualistic | +30% crop yield (mycorrhizal) | Fungal networks extend crop root systems. The strongest agricultural synergy. |
| Sulfur Vat | Aquaculture Pond | Competitive | -15% fish health | H₂S emissions toxic to fish. Keep sulfur production AWAY from aquaculture. |

### Algae Bloom Mechanic

If the player pipes too many nutrient inputs (compost, digestate, organic waste) into water near aquaculture ponds, algae grow uncontrolled. This CRASHES fish production (suffocation from oxygen depletion). The player must balance: enough nutrients for good algae yields, not so much that ponds become toxic. This is the Bio Web creating a REAL ecological constraint that affects factory design.

**Visual indicator:** Water near over-enriched areas turns green. Fish production drops to 10%. The player must reduce nutrient input or add a Water Purifier to the pond circuit.

---

## 7. SCIENCE PACK

**Microbial Culture Dataset**

| Ingredient | Source | Chain |
|-----------|--------|-------|
| Soil Microbiome Sample | Soil Composition Analyzer (special recipe: analyze enriched soil) | Analysis chain |
| Active Fermentation Culture | Fermentation Vat (special recipe: culture snapshot during fermentation) | Fermentation chain |
| Algal Extract (Astaxanthin) | Algal Fractionator | Algae chain |
| Partial Genetic Readout | Soil Analyzer (special recipe: deep analysis of any organism) | Analysis + genetics preview |

**Science ingredient recipes:**
| Recipe | Machine | Time | Inputs | Output |
|--------|---------|------|--------|--------|
| Collect Soil Sample | Soil Composition Analyzer | 10s | 1 Enriched Soil + 1 Purified Water | 1 Soil Microbiome Sample |
| Snapshot Fermentation | Fermentation Vat | 5s | 1 Crude Ethanol (consumed during active cycle) | 1 Active Fermentation Culture |
| Deep Analysis | Soil Composition Analyzer | 20s | 1 Any crop seed + 1 Finished Compost | 1 Partial Genetic Readout |

Astaxanthin comes directly from the Algal Fractionator (normal production, no special recipe needed).

**Assembly:** 1 Soil Sample + 1 Active Culture + 1 Astaxanthin + 1 Partial Readout → 2 Microbial Culture Dataset (hand, 10s)

---

## 8. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| Fermentation contamination | Compost Heap or Biogas Digester placed within 3 tiles of Fermentation Vat (Bio Web: competitive, stray microbes enter vat) | Vat produces toxic byproduct instead of ethanol (~20% chance per cycle while adjacent). Must flush and re-inoculate (1 Yeast Starter Culture consumed). | Containment matters. Culture machines need SEPARATION from waste-processing machines. Foreshadows Era 6 bio-containment. |
| Algae bloom | Over-enrichment near aquaculture ponds | Fish population crash. 10% production until corrected. | Ecological balance. Too much of a good thing kills. |
| Sulfur poisoning | Sulfur vat placed near aquaculture | H₂S emissions reduce fish health by 15% per adjacent vat | Toxic byproducts have spatial consequences. Layout = ecology. |
| Rubber shortage deadlock | Researched Biogas Power tech but didn't grow dandelions first | Can't build engine. Stuck at 75-105 kW until rubber chain catches up. | Plan ahead. Check recipe requirements before researching. |

---

## 9. BREADCRUMBS (Era 3)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Anomalous Fermentation Byproduct | Fermentation Vat output | ~2% per cycle | "This doesn't smell like ethanol. The chemical signature is completely unfamiliar." | Era 5: novel enzyme. Era 6: gene cassette for xenocrop design. |
| Self-Modifying Culture Sample | Starter Culture Isolator output | ~1% per isolation | "This culture's genetic markers shifted between the time you isolated it and now. It appears to be... editing itself." | Era 5: inspires Directed Evolution. Era 7: basis for Evolution Engine research. |

---

## 10. ERA 3 → ERA 4 TRANSITION

**Capstone tech:** Microbial Ecology Compendium (8 CED)

**Prerequisites (verifiable):**
- Soil Composition Analyzer built and used (≥5 analyses performed)
- Fermentation chain operational (produced ≥20 bio-ethanol)
- Aquaculture operational (harvested ≥10 fish fillet)
- Mycelium cultivation operational (produced ≥10 mycelium sheet)
- At least 1 coral foundation placed underwater
- Salt electrolysis operational (produced ≥5 each: chlorine, caustic soda, hydrogen)

**Transition notification:** *"Chapter: The Rules of Inheritance. 'Traits follow rules.' — You've watched organisms vary, compete, and evolve. Now learn why. Mendelian genetics unlocks the ability to predict and control inheritance."*

**What Era 4 inherits:**
- ~2,000 tile island with specialized zones + underwater foundations
- Full microbiology infrastructure: fermentation, aquaculture, algae, fungal, electrolysis
- Biogas power (120+ kW)
- Fast belts and inserters (chitin + cellulose)
- Sulfuric acid production (for Era 5 blue circuits)
- Rubber production chain
- Starter culture isolation capability
- ~195 items in production
- The Bio Web is now VISIBLE via the analyzer overlay

---

## 11. IMPLEMENTATION NOTES

**Bio Web overlay:** The map overlay showing relationship lines between biological entities requires Factorio 2.0's rendering APIs (`rendering.draw_line` between entity positions). Lines colored by relationship type (green = mutualistic, red = competitive, pale green = commensal). Updated every ~5 seconds. Toggled on/off by the Soil Composition Analyzer being built. Implementation complexity: moderate. Fallback if rendering is too expensive: tooltip-only relationship display (hover entity → see list of active relationships).

**Aquaculture Pond / Crustacean Trap:** Entities spanning land/water. Same pattern as Factorio's offshore pump — entity placed on land tile adjacent to water, collision box extends into water. 4×3 pond: 1 row on land (output side), 3 rows on water. Crustacean Trap: 1×1, land tile at water's edge, trap body in water.

**Fish spoilage:** Factorio 2.0 (Space Age) has a native spoilage mechanic for items. If available, Raw Fish spoils after 300 ticks (~5 min). If not available, omit spoilage — fish just need prompt processing as a design recommendation.

**Fermentation contamination:** Implemented via Bio Web competitive relationship check. Every ~60 seconds, script checks if a Fermentation Vat has a Compost Heap or Biogas Digester within 3 tiles. If yes, 20% chance the current recipe output is replaced with "Contaminated Wort" (waste item → compost). Player must re-inoculate with a Yeast Starter Culture to resume normal production.

**Starter Culture Isolator:** Assembling machine with multiple recipes selectable (like a chemical plant). Input determines output culture type: compost → Thermophilic, sulfur byproduct → Acidophilic, spent iron medium → High-Yield Iron. Each isolation takes 30s.
