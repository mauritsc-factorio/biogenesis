# BIOGENESIS: Era 1 — Tidal Observations

**Status:** DRAFT v4
**Date:** 2026-03-21
**Duration:** 1–1.5 hours
**Discipline:** Marine biology, survival bootstrapping, tidal zone ecology
**Tone:** Warm, resourceful, constrained
**Core Insight:** Life can synthesize everything. Biology is not just food — it is infrastructure.
**Research Chapter:** "Tidal Observations"
**Science Pack:** Tidal Observation Kit

---

## 1. STARTING CONDITIONS

### The Platform

| Property | Value |
|----------|-------|
| Starting land | 9 tiles (3×3 square at origin, grass-1) |
| Surrounding | Deepwater (infinite, all directions) |
| Pre-placed entities | None |
| Map generation | All chunks → deepwater. Island placed by control.lua on spawn chunk. All vanilla entities destroyed on chunk generation. |

### Starting Inventory

| Item | Count | Purpose | Rationale |
|------|-------|---------|-----------|
| Saltmarsh Grass Seed | 10 | Fiber + biomass backbone | 10 plants → 30 grass + 10 seeds. Plenty of fiber. |
| Glasswort Seed | 5 | Food + alkali (ash) | 5 plants → 10 glasswort + 5 seeds. Comfortable supply. |
| Kelp Spore Culture | 5 | Wood equivalent. Breaks land dependency. | 5 plants → 15 kelp + 5 spores. Ample stalk + frond. |
| Woven Reed Mat | 50 | Immediate land expansion (landfill) | 50 mats + 9 tiles = ~60 total. Enough for crops + machines + belts. Room to breathe. |
| Tidal Power Generator | 1 | Immediate power (15 kW) | Machines need electricity from minute one. Place at water's edge. |
| Kelp-Stalk Belt | 50 | Immediate factory building | Half vanilla speed. Craftable: 1 Kelp Stalk + 1 Plant Fiber → 2 belts. |
| Kelp-Stalk Inserter | 20 | Immediate automation | Slow but functional. Craftable: 2 Kelp Stalk + 1 Fiber Cord → 1 inserter. |
| Crude Hammer | 1 | Construction component | Consumed when building Biomass Compressor (tech 4). Cannot recraft until calcite (tech 5). |
| Knapping Blade | 1 | Construction component | Consumed when building Drying Rack (tech 3). Cannot recraft until calcite (tech 5). |

**Total starting tiles:** ~60. Enough space to lay out a small factory with crop fields, machine rows, and belt lines. The player starts COMFORTABLE — no claustrophobic survival phase. Expansion comes from reed mats (craftable) and biomass blocks (tech 4).

**Factory from minute one.** The player has belts, inserters, and power from the start. No hand-feeding. No void machines. This is Factorio.

### Seed Rationale

**Saltmarsh Grass** (Spartina): halophyte, thrives in saltwater environments. Fiber backbone → Plant Fiber → Fiber Cord (universal binding). Also: biomass for land expansion, green waste for compost, raw material for reed mats.

**Glasswort** (Salicornia): edible halophyte eaten worldwide. Food ingredient for recipes. Burns to soda ash (real: "glasswort" named because its ash was used to make glass). Mid-era: source of Sea-Grain Seeds.

**Kelp**: the keystone organism. Breaks "need land to grow plants to make land" circularity. Kelp Stalk = wood equivalent. Kelp Frond = food + fuel + biomass. Grows at water's edge (every starting tile is water-adjacent).

---

## 2. COMPLETE ITEM LIST (~53 items)

### Seeds (4)

| # | Internal Name | Display | Stack | Notes |
|---|--------------|---------|-------|-------|
| 1 | saltmarsh-grass-seed | Saltmarsh Grass Seed | 200 | Places Saltmarsh Grass Plant. Starting: 10. |
| 2 | glasswort-seed | Glasswort Seed | 200 | Places Glasswort Plant. Starting: 5. |
| 3 | kelp-spore-culture | Kelp Spore Culture | 200 | Places Kelp Plant. Starting: 5. |
| 4 | sea-grain-seed | Sea-Grain Seed | 200 | Places Sea-Grain Plant. Extracted mid-era (tech 6). |

### Raw Harvested (6)

| # | Internal Name | Display | Stack | Source |
|---|--------------|---------|-------|--------|
| 5 | saltmarsh-grass | Saltmarsh Grass | 100 | Harvest grass plant (3 per harvest + 1 seed) |
| 6 | glasswort | Glasswort | 100 | Harvest glasswort plant (2 per harvest + 1 seed) |
| 7 | kelp | Kelp | 100 | Harvest kelp plant (3 per harvest + 1 spore) |
| 8 | kelp-frond | Kelp Frond | 100 | Split kelp (hand) |
| 9 | kelp-stalk | Kelp Stalk | 100 | Split kelp (hand). Wood equivalent. |
| 10 | sea-grain | Sea-Grain | 100 | Harvest sea-grain plant (3 per harvest + 1 seed). Mid-era. |

### Saltwater Chain (5)

| # | Internal Name | Display | Stack | Source |
|---|--------------|---------|-------|--------|
| 11 | saltwater | Saltwater | 100 | Saltwater Basin (passive, 10s) |
| 12 | sea-salt | Sea Salt | 100 | Solar Evaporation Tray |
| 13 | brackish-water | Brackish Water | 100 | Evaporation byproduct. Preferred by bacteria (Era 2). |
| 14 | freshwater | Freshwater | 100 | Seaweed Desalination Bed (tech 8) |
| 15 | concentrated-brine | Concentrated Brine | 100 | Desalination byproduct. Efficient calcium source. |

### Intermediates (11)

| # | Internal Name | Display | Stack | Source | Notes |
|---|--------------|---------|-------|--------|-------|
| 16 | plant-fiber | Plant Fiber | 100 | Strip saltmarsh grass | Universal binding base |
| 17 | fiber-cord | Fiber Cord | 100 | Twist plant fiber | Structural binding. In every machine recipe. |
| 18 | calcium-precipitate | Calcium Precipitate | 100 | Calcium Vat (from saltwater or brine) | Science pack ingredient |
| 19 | calcite | Calcite | 100 | Fire Pit (calcination) | Stone equivalent. Tools + grinding slab. |
| 20 | dried-kelp | Dried Kelp | 100 | Drying Rack | Fuel (2 MJ). Science pack ingredient. |
| 21 | kelp-charcoal | Kelp Charcoal | 100 | Fire Pit (from dried kelp) | Better fuel (4 MJ) |
| 22 | glasswort-ash | Glasswort Ash | 100 | Fire Pit (from glasswort) | Alkali source. Breadcrumb: soda ash for glass (Era 2). |
| 23 | rough-flour | Rough Flour | 100 | Grinding Slab (from sea-grain). Tech 6. | Food intermediate |
| 24 | chaff | Chaff | 100 | Grinding byproduct | Compost input |
| 25 | ash | Ash | 100 | Drying/firing byproduct | Mineral compost supplement |

### Food (3)

| # | Internal Name | Display | Stack | Source | Notes |
|---|--------------|---------|-------|--------|-------|
| 27 | roasted-kelp | Roasted Kelp | 50 | Fire Pit (kelp frond) | First cooked food (~20 min). Growth Medium ingredient (Era 2). |
| 28 | flatbread | Flatbread | 50 | Fire Pit (flour + freshwater). Tech 8. | Carbon source for culture starters (Era 2-3). |
| 29 | grain-porridge | Grain Porridge | 50 | Fire Pit (flour + freshwater). Tech 8. | Carbon source for culture starters (Era 2-3). |

### Composting (4)

| # | Internal Name | Display | Stack | Source |
|---|--------------|---------|-------|--------|
| 30 | green-waste | Green Waste | 100 | Grass, glasswort, kelp frond, chaff |
| 31 | brown-waste | Brown Waste | 100 | Kelp stalk, dried kelp, ash |
| 32 | immature-compost | Immature Compost | 100 | Compost Heap (30s) |
| 33 | finished-compost | Finished Compost | 100 | Compost Heap (30s from immature) |

### Land Expansion (2)

| # | Internal Name | Display | Stack | Source | Notes |
|---|--------------|---------|-------|--------|-------|
| 34 | woven-reed-mat | Woven Reed Mat | 100 | Hand (grass + cord). Starting: 4. | Places as landfill (land tile). |
| 35 | compressed-biomass-block | Compressed Biomass Block | 100 | Biomass Compressor. Tech 4. | Places as landfill. Breaks the land bottleneck. |

### Tools (4)

| # | Internal Name | Display | Stack | Recipe (tech 5) |
|---|--------------|---------|-------|-----------------|
| 36 | crude-hammer | Crude Hammer | 20 | 2 Calcite + 1 Kelp Stalk. Starting: 1. |
| 37 | knapping-blade | Knapping Blade | 20 | 1 Calcite + 1 Kelp Stalk. Starting: 1. |
| 38 | digging-stick | Digging Stick | 20 | 1 Kelp Stalk |
| 39 | pestle | Pestle | 20 | 1 Calcite + 1 Kelp Stalk + 2 Fiber Cord |

### Machine Items (12)

| # | Internal Name | Display | Stack | Entity Type | Size | Unlock |
|---|--------------|---------|-------|-------------|------|--------|
| 40 | saltwater-basin | Saltwater Basin | 20 | assembling-machine (1 kW) | 1×1 | Tech 1 |
| 41 | solar-evaporation-tray | Solar Evaporation Tray | 20 | assembling-machine (1 kW) | 1×1 | Tech 2 |
| 42 | drying-rack | Drying Rack | 20 | assembling-machine (1 kW) | 2×1 | Tech 3 |
| 43 | stone-fire-pit | Stone-Lined Fire Pit | 20 | assembling-machine (burner) | 2×2 | Tech 3 |
| 44 | biomass-compressor | Biomass Compressor | 20 | assembling-machine (2 kW) | 2×1 | Tech 4 |
| 45 | calcium-precipitation-vat | Calcium Precipitation Vat | 20 | assembling-machine (2 kW) | 1×1 | Tech 5 |
| 46 | grinding-slab | Grinding Slab | 20 | assembling-machine (1 kW) | 2×1 | Tech 5 |
| 47 | compost-heap | Compost Heap | 20 | assembling-machine (1 kW) | 2×1 | Always |
| 48 | field-notebook-station | Field Notebook Station | 20 | lab (1 kW) | 2×2 | Always |
| 49 | desalination-bed | Seaweed Desalination Bed | 20 | assembling-machine (2 kW) | 2×1 | Tech 8 |
| 50 | tidal-power-generator | Tidal Power Generator | 20 | electric-energy-interface (produces 15 kW) | 3×1 | Start (1 given) + craftable |

### Logistics (2)

| # | Internal Name | Display | Stack | Notes |
|---|--------------|---------|-------|-------|
| 51 | kelp-stalk-belt | Kelp-Stalk Belt | 100 | Half vanilla speed. Recipe: 1 Kelp Stalk + 1 Plant Fiber → 2. Starting: 50. |
| 52 | kelp-stalk-inserter | Kelp-Stalk Inserter | 50 | Slow but functional. Recipe: 2 Kelp Stalk + 1 Fiber Cord → 1. Starting: 20. |

### Bio Web Bonus (1)

| # | Internal Name | Display | Stack | Source |
|---|--------------|---------|-------|--------|
| 52 | drift-spore | Drift Spore | 100 | Bio Web: grass adjacent to kelp. Composting accelerator + archive specimen. |

### Science (1)

| # | Internal Name | Display | Stack | Type |
|---|--------------|---------|-------|------|
| 53 | tidal-observation-kit | Tidal Observation Kit | 200 | tool (durability 1, consumed by lab) |

---

## 3. COMPLETE RECIPE LIST (50 recipes)

### Always Available — Hand-Crafts

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 1 | Strip Grass | crafting | 1s | 1 Saltmarsh Grass | 2 Plant Fiber |
| 2 | Twist Fiber Cord | crafting | 2s | 2 Plant Fiber | 1 Fiber Cord |
| 3 | Split Kelp | crafting | 1.5s | 1 Kelp | 1 Kelp Frond + 1 Kelp Stalk |
| 4 | Weave Reed Mat | crafting | 3s | 4 Saltmarsh Grass + 2 Fiber Cord | 1 Woven Reed Mat |
| 4b | Craft Kelp-Stalk Belt | crafting | 0.5s | 1 Kelp Stalk + 1 Plant Fiber | 2 Kelp-Stalk Belt |
| 4c | Craft Kelp-Stalk Inserter | crafting | 1s | 2 Kelp Stalk + 1 Fiber Cord | 1 Kelp-Stalk Inserter |

### Always Available — Waste Classification (Hand)

| # | Recipe | Time | Input | Output |
|---|--------|------|-------|--------|
| 5 | Classify Grass | 0.5s | 1 Saltmarsh Grass | 1 Green Waste |
| 6 | Classify Glasswort | 0.5s | 1 Glasswort | 1 Green Waste |
| 7 | Classify Kelp Frond | 0.5s | 1 Kelp Frond | 1 Green Waste |
| 8 | Classify Chaff | 0.5s | 1 Chaff | 1 Green Waste |
| 9 | Classify Kelp Stalk | 0.5s | 1 Kelp Stalk | 1 Brown Waste |
| 10 | Classify Dried Kelp | 0.5s | 1 Dried Kelp | 1 Brown Waste |
| 11 | Classify Ash | 0.5s | 1 Ash | 1 Brown Waste |

### Always Available — Machine Recipes

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 12 | Load Compost | composting | 30s | 5 Green Waste + 5 Brown Waste | 1 Immature Compost |
| 13 | Mature Compost | composting | 30s | 1 Immature Compost | 1 Finished Compost |

### Always Available — Infrastructure (Hand)

| # | Recipe | Time | Inputs | Output |
|---|--------|------|--------|--------|
| 14 | Build Compost Heap | 4s | 4 Kelp Stalk + 4 Plant Fiber | 1 Compost Heap |
| 15 | Build Field Notebook Station | 3s | 5 Kelp Stalk + 3 Fiber Cord | 1 Field Notebook Station |

### Always Available — Science (Hand)

| # | Recipe | Time | Inputs | Outputs |
|---|--------|------|--------|---------|
| 16 | Prepare TOK | 5s | 1 Dried Kelp + 1 Plant Fiber + 1 Sea Salt + 1 Calcium Precipitate | 2 Tidal Observation Kit |

### Tech 1: Saltwater Collection

**Action trigger:** Harvest 3 plants (any type).
**Notification:** *"Three specimens harvested. The ocean around you holds dissolved minerals that biology can extract."*

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 17 | Collect Saltwater | saltwater-collection | 10s | — (passive) | 5 Saltwater |
| 18 | Build Saltwater Basin | crafting | 3s | 4 Kelp Stalk + 4 Plant Fiber | 1 Saltwater Basin |

### Tech 2: Solar Evaporation

**Action trigger:** Pick up 5 Saltwater (from basin output).
**Notification:** *"Seawater collected. Solar heat will separate what's dissolved — salt, minerals, potential."*

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 19 | Evaporate Saltwater | evaporation | 15s | 5 Saltwater | 2 Sea Salt + 3 Brackish Water |
| 20 | Build Evaporation Tray | crafting | 4s | 4 Kelp Stalk + 2 Fiber Cord | 1 Solar Evaporation Tray |

### Tech 3: Kelp Cultivation

**Action trigger:** Craft 3 Kelp Stalk (by splitting 3 kelp).
**Notification:** *"Kelp yields more than wood. Drying preserves it. Fire transforms it."*

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 21 | Dry Kelp | drying | 30s | 2 Kelp Frond | 1 Dried Kelp + 1 Ash |
| 22 | Roast Kelp | kiln-firing | 5s | 1 Kelp Frond | 1 Roasted Kelp |
| 23 | Make Charcoal | kiln-firing | 10s | 2 Dried Kelp | 1 Kelp Charcoal + 1 Ash |
| 24 | Build Drying Rack | crafting | 3s | 4 Kelp Stalk + 4 Fiber Cord + 1 Knapping Blade | 1 Drying Rack |
| 25 | Build Fire Pit | crafting | 6s | 6 Kelp Stalk + 4 Fiber Cord | 1 Stone-Lined Fire Pit |

### Tech 4: Biomass Compression

**Action trigger:** Place 2 land tiles (reed mats or biomass blocks).
**Notification:** *"The island grows. With the right pressure, any biomass becomes ground to stand on."*

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 26 | Compress Grass | biomass-compression | 30s | 5 Saltmarsh Grass | 1 Compressed Biomass Block |
| 27 | Compress Kelp | biomass-compression | 30s | 5 Kelp | 1 Compressed Biomass Block |
| 28 | Compress Fiber | biomass-compression | 30s | 10 Plant Fiber | 1 Compressed Biomass Block |
| 29 | Build Compressor | crafting | 5s | 6 Kelp Stalk + 4 Fiber Cord + 1 Crude Hammer | 1 Biomass Compressor |

### Tech 5: Calcium Precipitation

**Action trigger:** Pick up 5 Sea Salt (from evaporation output).
**Notification:** *"Salt from seawater. But seawater holds more than salt — calcium, magnesium, trace metals. Biology can extract them all."*

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 31 | Precipitate Calcium | calcium-precipitation | 20s | 5 Saltwater | 1 Calcium Precipitate + 1 Brackish Water |
| 32 | Calcine | kiln-firing | 10s | 2 Calcium Precipitate | 1 Calcite |
| 33 | Burn Glasswort | kiln-firing | 8s | 2 Glasswort | 1 Glasswort Ash |
| 34 | Build Calcium Vat | crafting | 4s | 4 Kelp Stalk + 4 Fiber Cord | 1 Calcium Precipitation Vat |
| 35 | Build Grinding Slab | crafting | 5s | 5 Calcite | 1 Grinding Slab |
| 36 | Craft Crude Hammer | crafting | 2s | 2 Calcite + 1 Kelp Stalk | 1 Crude Hammer |
| 37 | Craft Knapping Blade | crafting | 2s | 1 Calcite + 1 Kelp Stalk | 1 Knapping Blade |
| 38 | Craft Digging Stick | crafting | 1s | 1 Kelp Stalk | 1 Digging Stick |
| 39 | Craft Pestle | crafting | 2s | 1 Calcite + 1 Kelp Stalk + 2 Fiber Cord | 1 Pestle |

### Tech 6: Halophyte Cultivation (2 TOK)

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 40 | Extract Grass Seed | crafting | 3s | 5 Saltmarsh Grass | 1 Saltmarsh Grass Seed |
| 41 | Extract Glasswort Seed | crafting | 3s | 3 Glasswort | 1 Glasswort Seed |
| 42 | Extract Kelp Spore | crafting | 3s | 5 Kelp | 1 Kelp Spore Culture |
| 43 | Extract Sea-Grain Seed | crafting | 5s | 3 Glasswort + 1 Sea Salt | 1 Sea-Grain Seed |
| 44 | Grind Sea-Grain | grinding | 4s | 3 Sea-Grain | 2 Rough Flour + 1 Chaff |

### Tech 7: Tidal Energy (3 TOK)

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 45 | Build Tidal Generator | crafting | 10s | 8 Kelp Stalk + 6 Fiber Cord + 4 Calcite | 1 Tidal Power Generator |

### Tech 8: Seaweed Desalination (3 TOK)

| # | Recipe | Category | Time | Inputs | Outputs |
|---|--------|----------|------|--------|---------|
| 46 | Desalinate | desalination | 20s | 5 Saltwater | 3 Freshwater + 1 Concentrated Brine |
| 47 | Efficient Calcium | calcium-precipitation | 10s | 3 Concentrated Brine | 2 Calcium Precipitate |
| 48 | Bake Flatbread | kiln-firing | 6s | 1 Rough Flour + 1 Freshwater | 2 Flatbread |
| 49 | Cook Porridge | kiln-firing | 5s | 1 Rough Flour + 1 Freshwater | 2 Grain Porridge |
| 50 | Build Desalination Bed | crafting | 6s | 8 Kelp Stalk + 4 Plant Fiber + 2 Calcite | 1 Seaweed Desalination Bed |

### Tech 9: Coastal Ecology Hypothesis (5 TOK)

No new recipes. Capstone research → Era 2 transition.

---

## 4. MACHINE SPECIFICATIONS

| Machine | Size | Power Draw | Category | Speed | Fuel | Notes |
|---------|------|-----------|----------|-------|------|-------|
| Saltwater Basin | 1×1 | 1 kW | saltwater-collection | 1.0 | — | No input. Produces saltwater from ocean proximity. |
| Solar Evaporation Tray | 1×1 | 1 kW | evaporation | 1.0 | — | Saltwater → salt + brackish water. |
| Drying Rack | 2×1 | 1 kW | drying | 1.0 | — | Kelp frond → dried kelp + ash. |
| Stone-Lined Fire Pit | 2×2 | Burner | kiln-firing | 1.0 | Dried Kelp (2MJ), Kelp Charcoal (4MJ) | Cooking, calcination, charcoal. NOT on electric grid. |
| Biomass Compressor | 2×1 | 2 kW | biomass-compression | 1.0 | — | Any biomass → compressed blocks (landfill). |
| Calcium Precipitation Vat | 1×1 | 2 kW | calcium-precipitation | 1.0 | — | Saltwater/brine → calcium precipitate. |
| Grinding Slab | 2×1 | 1 kW | grinding | 0.5 | — | Sea-grain → flour. Slow. |
| Seaweed Desalination Bed | 2×1 | 2 kW | desalination | 1.0 | — | Saltwater → freshwater + brine. |
| Compost Heap | 2×1 | 1 kW | composting | 1.0 | — | Green + brown waste → finished compost. |
| Tidal Power Generator | 3×1 | Produces 15 kW | — | — | — | Constant power. Land/water boundary. 1 given at start. |
| Field Notebook Station | 2×2 | 1 kW | lab | 1.0 | — | Research. Consumes TOK for techs 6-9. |

**Power budget (Era 1):**
- Supply: 1 Tidal Generator = 15 kW (given at start)
- Demand (all machines): ~12-13 kW
- Fire Pit is burner-powered (charcoal) — doesn't draw from the grid
- Second Tidal Generator craftable mid-era (8 Kelp Stalk + 6 Fiber Cord + 4 Calcite) for scaling to ~30 kW
- Real power management from minute one. This is Factorio.

**Fire Pit:** Burner-powered. 30 kW fuel consumption. 1 dried kelp (2MJ) lasts ~67 seconds. Fuel-efficient.

**Logistics (Era 1):**
- Kelp-Stalk Belt: half vanilla speed (~7.5 items/sec). Recipe: 1 Kelp Stalk + 1 Plant Fiber → 2 belts. 50 given at start.
- Kelp-Stalk Inserter: slow (~0.5 cycles/sec). Recipe: 2 Kelp Stalk + 1 Fiber Cord → 1 inserter. 20 given at start.
- Both craftable from minute one with no tech required. The player ALWAYS has belts and inserters.

---

## 5. TECH TREE

### Free Techs (Action-Gated, 1–5)

**Sequencing rule:** Free techs trigger in order. Each requires the previous tech to be unlocked before its action counter activates. Placing reed mats at minute 0 does NOT count toward tech 4's trigger until techs 1–3 are complete.

| # | Name | Trigger | Notification | Unlocks |
|---|------|---------|-------------|---------|
| 1 | Saltwater Collection | Harvest 3 plants | "The ocean holds dissolved minerals biology can extract." | Basin recipe, collect-saltwater recipe |
| 2 | Solar Evaporation | Pick up 5 Saltwater | "Solar heat will separate what's dissolved." | Evaporation Tray recipe, evaporation recipe |
| 3 | Kelp Cultivation | Craft 3 Kelp Stalk (split 3 kelp) | "Kelp yields more than wood." | Drying Rack, Fire Pit, dry/roast/charcoal recipes |
| 4 | Biomass Compression | Place 2 land tiles (beyond starting mats) | "Any biomass becomes ground to stand on." | Biomass Compressor, compression recipes |
| 5 | Calcium Precipitation | Pick up 5 Sea Salt | "Seawater holds more than salt." | Calcium Vat, calcite chain, glasswort ash, Grinding Slab, all tool recipes |

### TOK-Consuming Techs (6–9)

| # | Name | Cost | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 6 | Halophyte Cultivation | 2 TOK | Tech 5 | All seed extraction, Sea-Grain Seed, grinding recipe |
| 7 | Tidal Energy | 3 TOK | Tech 5 | Tidal Power Generator |
| 8 | Seaweed Desalination | 3 TOK | Tech 5 + Tech 6 | Desalination Bed, freshwater, brine→calcium, flour foods |
| 9 | Coastal Ecology Hypothesis | 5 TOK | Tech 7 + Tech 8 | **ERA 2 TRANSITION** |

### TOK Bootstrap Verification

TOK requires: Dried Kelp + Plant Fiber + Sea Salt + Calcium Precipitate.

- Dried Kelp: Tech 3 (Kelp Cultivation) → Drying Rack → kelp frond → dried kelp
- Plant Fiber: Always available (saltmarsh grass → fiber)
- Sea Salt: Tech 2 (Solar Evaporation) → Tray → saltwater → sea salt
- Calcium Precipitate: Tech 5 (Calcium Precipitation) → Vat → saltwater → precipitate

All four ingredients available after tech 5 completes. Techs 1–5 are free (action-gated). **No bootstrap deadlock.**

### Total TOK required for Techs 6–9: 2 + 3 + 3 + 5 = 13 TOK

At 2 TOK per recipe (5s craft), that's 7 crafts = 35 seconds of crafting. Bottleneck is ingredient production, not craft time. At ~3 calcium precipitate/min (1 vat), TOK production rate is ~6/min. 13 TOK takes ~2-3 min of dedicated production. Comfortable.

---

## 6. CROP ENTITIES

| Entity | Placed By | Mining Time | Harvest | Seed Return |
|--------|----------|-------------|---------|-------------|
| Saltmarsh Grass Plant | Saltmarsh Grass Seed | 1s | 3 Saltmarsh Grass | 1 Saltmarsh Grass Seed |
| Glasswort Plant | Glasswort Seed | 1s | 2 Glasswort | 1 Glasswort Seed |
| Kelp Plant | Kelp Spore Culture | 1s | 3 Kelp | 1 Kelp Spore Culture |
| Sea-Grain Plant | Sea-Grain Seed | 1s | 3 Sea-Grain | 1 Sea-Grain Seed |

**Growth model:** 60-second base growth cycle. Seed placed → seedling entity (small sprite, not minable for harvest). After 60s, seedling swaps to mature entity (full sprite, minable for harvest + seed return). Growth rate modifiers: finished compost within 3 tiles +25% (→ 48s), freshwater irrigation +15% (→ 51s), greenhouse +30% (→ 42s). Modifiers stack. Implemented via control.lua entity-swap timer.

**Seed economics:** 1:1 seed return (sustaining). To EXPAND crop count, the player uses seed extraction recipes (tech 6), consuming raw materials for extra seeds. Expansion has a real resource cost.

---

## 7. RESOURCE FLOW DIAGRAM

```
                    STARTING CONDITIONS
               5 Grass Seeds | 3 Glasswort Seeds | 2 Kelp Spores
               4 Reed Mats | 1 Hammer | 1 Blade
                              │
                 Place mats, plant seeds on ~60 tiles
                    ┌─────────┼───────────┐
                    ▼         ▼           ▼
              SALTMARSH    GLASSWORT     KELP
              GRASS (×5)   (×3)        (×2)
                │            │            │
           Strip Fiber    Food/Ash    Split (hand)
                │            │       ┌────┴────┐
           Plant Fiber    Glasswort  Kelp     Kelp
                │         (stored)   Frond    Stalk
           Fiber Cord               │        (= wood)
           (binding)          ┌─────┼─────┐
                              ▼     ▼     ▼
                            Dry   Roast  Structure
                             │     │     (machines,
                        Dried    Roasted  mats,
                        Kelp     Kelp     tools)
                       (fuel)   (food)
                              │
         OCEAN ──→ Saltwater Basin [tech 1]
                        │
             ┌──────────┼──────────┐
             ▼          ▼          ▼
        Evaporation  Calcium    Desalination
        Tray [t2]   Vat [t5]    Bed [t8]
             │          │          │
        Sea Salt    Calcium    Freshwater
        + Brackish  Precipitate + Brine
             │      (→ science)    │
             │          │      Efficient
             │     Fire Pit    Calcium [t8]
             │          │
             │       Calcite
             │      (= stone)
             ▼
        ┌────────────────────────┐
        │  TIDAL OBSERVATION KIT │
        │  Dried Kelp + Fiber    │
        │  + Sea Salt + CaPpt    │
        └────────────────────────┘
                    │
              TOK → Techs 6-9
                    │
              ERA 2 TRANSITION
```

---

## 8. BIO WEB (Era 1)

### Known Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Saltmarsh Grass | Kelp Plant | Mutualistic | +35% yield both + **Drift Spore** bonus | Bonus item appears when plants are adjacent |
| Saltmarsh Grass | Glasswort | Commensal | +20% glasswort yield | Glasswort near grass produces more |
| Compost Heap | Any crop (3 tiles) | Commensal | +25% crop yield | Crops near compost are visibly larger |
| Same crop ×5+ | Same crop ×5+ | Competitive | -5% yield per extra beyond 4 | Gradual output decline when crowded |

### Drift Spore

The first Bio Web discovery. When saltmarsh grass and kelp are planted on adjacent tiles, harvesting either plant has a ~5% chance to yield a **Drift Spore** in addition to normal output. Drift Spore is:
- A composting accelerator (add to compost heap → halves composting time for one cycle)
- A Specimen Archive collectible (analyzed in Era 3, used in Era 4)
- The player's first hint that PLACEMENT matters

### Optimal Era 1 Layout (Bio Web exploiting)

```
  [Water] [Water] [Water] [Water] [Water]
  [Water] [Kelp ] [Grass] [Kelp ] [Water]
  [Water] [Grass] [Compo] [Glass] [Water]
  [Water] [Kelp ] [Grass] [Glass] [Water]
  [Water] [Water] [Water] [Water] [Water]

  Kelp adjacent to Grass = +35% both + Drift Spore
  Compost adjacent to all crops = +25% all
  Glasswort near Grass = +20% glasswort
  No crop type exceeds 4 in radius = no penalty
```

This crop layout uses ~10 tiles for the optimal Bio Web arrangement. With ~60 starting tiles, there's plenty of room for machines, belts, and additional crop plots on the remaining ~50 tiles. The player who discovers this arrangement naturally (by noticing output changes when rearranging crops) has a significant advantage over one who plants randomly.

---

## 9. BALANCE ANALYSIS

### Throughput: Saltwater Chain

**1 Basin:** 5 Saltwater / 10s = 30 Saltwater/min.
**1 Evaporation Tray:** 5 Saltwater / 15s = 20 Saltwater/min → 8 Sea Salt/min + 12 Brackish Water/min.
**1 Calcium Vat:** 5 Saltwater / 20s = 15 Saltwater/min → 3 Calcium Precipitate/min.
**1 Desalination Bed:** 5 Saltwater / 20s = 15 Saltwater/min → 9 Freshwater/min + 3 Brine/min.

**Typical late-Era 1 setup:** 2 Basins (60 SW/min) feeding 1 Tray + 1 Calcium Vat + 1 Desalination Bed (50 SW/min). Balanced with 10 surplus.

### Throughput: TOK Production

Recipe: 1 Dried Kelp + 1 Plant Fiber + 1 Sea Salt + 1 Calcium Precipitate → 2 TOK (5s).
**Bottleneck:** Calcium Precipitate at 3/min from 1 vat → 6 TOK/min max.
**Total TOK needed:** 13 for techs 6-9. Takes ~2-3 min of dedicated production. Trivial.

### Fire Pit Fuel Budget

Dried Kelp = 2MJ. Fire Pit = 30kW = 30 kJ/s.
- 1 Dried Kelp lasts: 2,000,000 / 30,000 = **67 seconds**.
- Roasting 1 kelp frond (5s): costs 7.5% of 1 dried kelp.
- Calcining 2 precipitate (10s): costs 15%.
- **A few dried kelp sustain significant Fire Pit use.**

Kelp Charcoal = 4MJ → **133s per charcoal**. Even more efficient.

### Land Expansion Rate

**Reed Mat:** 4 Grass + 2 Fiber Cord = 4 Grass + (2×2 Fiber) = 4 Grass + 2 Grass processed = **~6 Saltmarsh Grass per tile.**
- From 5 grass plants (15 grass/cycle): ~2.5 tiles per cycle.

**Biomass Block:** 5 Kelp per tile (compressor).
- From 2 kelp plants (6 kelp/cycle): 1.2 tiles per cycle.
- From 4 kelp plants (12 kelp/cycle): 2.4 tiles per cycle.

**Combined (post-tech 4):** ~4-5 tiles per harvest cycle. Island grows rapidly.

### Seed Expansion Rate (Tech 6)

- 5 Grass → 1 extra Grass Seed (consuming 5 grass that would otherwise yield 10 fiber)
- 3 Glasswort → 1 extra Glasswort Seed
- 5 Kelp → 1 extra Kelp Spore

Cost: real resource opportunity cost. The player trades production materials for population growth.

---

## 10. MINUTE-BY-MINUTE WALKTHROUGH

### Minutes 0–5: Layout + First Planting

Player spawns on 3×3 island. Ocean everywhere. Inventory: seeds, mats, belts, inserters, power generator, tools.

1. Place ~40 Woven Reed Mats (expand to ~50 tiles). Leave room for expansion. Keep ~10 mats in reserve.
2. Place Tidal Power Generator at water's edge. 15 kW online.
3. Plant 10 Saltmarsh Grass Seeds, 5 Kelp Spore Cultures at water's edge, 5 Glasswort Seeds. Organized rows.
4. Start laying belts between planned machine positions. The factory layout begins NOW.

### Minutes 5–10: First Harvest + First Automated Chain

While seeds grow (60s cycle), the player lays out the factory — placing belts between planned machine positions, building a Compost Heap. This is NOT idle time; it's factory planning time.

First harvest (minute 6):
- 10 grass → 30 Saltmarsh Grass + 10 seeds
- 5 kelp → 15 Kelp + 5 spores
- 5 glasswort → 10 Glasswort + 5 seeds

Process: grass → fiber → cord. Kelp → split → stalk + frond. Replant all seeds.

**Tech 1 triggers** (harvested 3+ plants). Saltwater Collection unlocks.

Build Saltwater Basin. Connect with belt + inserter. First automated chain: saltwater flowing on belts. The factory is running. Next crop cycle matures while the player builds.

**"Zoom In":** "Kelp stalk. It will have to serve as timber. You'll grow something better."

### Minutes 10–15: Saltwater Processing Automated

**Tech 2 triggers** (collected 5 saltwater). Solar Evaporation unlocks.

Build Evaporation Tray. Belt connects basin → tray. Inserters load/unload. Sea Salt + Brackish Water flowing automatically. The player watches their first production chain run without touching it.

Second harvest cycle: more materials for machines and belt expansion.

### Minutes 15–20: Fire + Fuel

**Tech 3 triggers** (crafted 3 kelp stalk from splitting). Kelp Cultivation unlocks.

Build Drying Rack (4 stalk + 4 cord + Knapping Blade — the blade is consumed!). Dry kelp fronds → Dried Kelp (fuel!) + Ash.
Build Fire Pit (6 stalk + 4 cord). Fuel with dried kelp.
Roast Kelp Frond → first cooked food.
Make Kelp Charcoal (better fuel).

### Minutes 20–30: Land Expansion + Compost

Craft and place 2 new reed mats (beyond the starting mats).
**Tech 4 triggers** (placed 2 land tiles after tech 3). Biomass Compression unlocks.

Build Biomass Compressor (6 stalk + 4 cord + Crude Hammer — the hammer is consumed!). Connect with belts. Compress kelp → biomass blocks → LAND.
The bottleneck breaks. Infinite kelp → infinite land.

Compost Heap should already be running (craftable from start). Belt waste products from drying rack and processing into the compost heap. Automated nutrient cycle.

Build Field Notebook Station (5 stalk + 3 cord). Ready for TOK-consuming research.

### Minutes 30–45: Stone From Seawater

**Tech 5 triggers** (collected 5 sea salt). Calcium Precipitation unlocks.

Build Calcium Vat (4 stalk + 4 cord). Saltwater → Calcium Precipitate.
Calcine precipitate in fire pit → Calcite. STONE from seawater!
Build Grinding Slab (5 calcite). Ready for flour (needs sea-grain, tech 6).
Craft replacement tools (calcite + kelp stalk).

**First TOK crafted:** Dried Kelp + Plant Fiber + Sea Salt + Calcium Precipitate → 2 TOK.

### Minutes 45–60: Seed Expansion + Science

Research Tech 6: Halophyte Cultivation (2 TOK). Seed extraction unlocks.
Extract extra seeds. Grow sea-grain from glasswort-derived seeds.
Grind sea-grain → Rough Flour + Chaff.

Research Tech 7: Tidal Energy (3 TOK).
Build Tidal Power Generator (8 stalk + 6 cord + 4 calcite). 15 kW! First electricity.

### Minutes 60–90: Desalination + Era Transition

Research Tech 8: Seaweed Desalination (3 TOK).
Build Desalination Bed. Saltwater → Freshwater + Brine.
Bake Flatbread (flour + freshwater). Cook Porridge.
Brine → Calcium Vat → efficient calcium production.

Research Tech 9: Coastal Ecology Hypothesis (5 TOK).

**Era 2 begins.** Notification: *"Chapter: Selective Cultivation. 'Control the conditions, control the outcome.' — Your biological factory is ready to grow metals."*

---

## 11. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| Slow crop growth | Planting on un-composted soil | 50% growth rate | Compost matters from minute one |
| Kelp wilting | Planting kelp with no adjacent water tiles | Plant wilts (0% yield, wilted sprite). Mining returns the seed. | Organisms have environmental requirements. Lost time, not lost seed. |
| No fuel | Using all kelp fronds for food/compost, none for drying | Fire Pit stops working | Resource allocation — balance food vs. fuel |
None of these are permanent failure states. The player can always recover by adjusting resource allocation. Kelp is the infinite safety valve — it grows at the water's edge and provides everything.

---

## 12. BREADCRUMBS (Era 1)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Unusual Kelp Specimen | Kelp harvest | ~2% | "This frond has an unusual texture. The cell structure seems... different." | Era 3: salt-tolerance gene. Era 5: Bio-Accumulator basis. |
| Strange Crystalline Deposit | Evaporation Tray output | ~1% | "This doesn't look like salt. The crystal structure is wrong." | Era 3: mineral analysis. Era 4: enzyme catalyst template. |
| Tidal Deposit | Placing new land tile | ~0.5% | "Something from the deep ocean, encrusted in mineral growth. Your tools can't open it." | Era 5: sequencing. Era 6: chemosynthesis pathways. |
| Drift Spore | Grass + Kelp adjacency (Bio Web bonus) | ~5% per adjacent harvest | "A tiny organism living in the root zone of both plants. It seems to help both grow." | Era 3: culture analysis. Era 4: multi-organism genetics. Not a rare breadcrumb — a Bio Web discovery item. |

---

## 13. RECIPE CATEGORIES

| Category | Machine | Notes |
|----------|---------|-------|
| crafting | Player (hand) | Default Factorio hand-crafting |
| saltwater-collection | Saltwater Basin | No inputs (passive ocean collection) |
| evaporation | Solar Evaporation Tray | Saltwater processing |
| drying | Drying Rack | Preservation |
| kiln-firing | Stone-Lined Fire Pit | Cooking, calcination, charcoal (requires fuel) |
| biomass-compression | Biomass Compressor | Land expansion blocks |
| calcium-precipitation | Calcium Precipitation Vat | Mineral extraction from saltwater/brine |
| grinding | Grinding Slab | Flour production |
| desalination | Seaweed Desalination Bed | Freshwater production |
| composting | Compost Heap | Nutrient cycling |

---

## 14. IMPLEMENTATION NOTES

**Map generation (control.lua):**
- `on_chunk_generated`: replace all tiles with deepwater, except 3×3 at origin → grass-1.
- Remove all vanilla entities (trees, rocks, resources, fish) on every chunk.
- Place starting island tiles before player spawn.

**Action-gated techs (control.lua):**
- Track item pickups and crafting events via `on_player_crafted_item` and `on_picked_up_item`.
- When trigger condition met, force-research the corresponding hidden technology.
- Technology prototypes: `hidden = true`, `unit = {count = 1, ingredients = {}, time = 1}`.
- Unlocked recipes attached to tech via `effects = {unlock-recipe}`.

**Crop entities (growth timer model):**
- TWO entity prototypes per crop: seedling (e.g., `saltmarsh-grass-seedling`) and mature (e.g., `saltmarsh-grass-mature`).
- Seed item `place_result` → seedling entity. Seedling is NOT minable for harvest (mining returns the seed, like kelp wilting recovery).
- control.lua tracks all seedling entities. After 60 seconds (base, modified by compost/water/greenhouse proximity), swap seedling → mature entity at same position.
- Mature entity: `minable.results` = harvest items + 1 seed.
- **Era 1-2 farming is manual:** player hand-plants seeds, hand-mines mature crops. The 60s growth cycle means the player always has something else to do while crops grow (building machines, laying belts, processing materials).
- **Era 2 Greenhouses** are the first farming automation: crops inside the greenhouse footprint are auto-harvested when mature (greenhouse entity has an output inventory).
- **Era 3+ Automated Planter** (new machine): takes seeds from belt, plants in adjacent tiles, auto-harvests mature crops to output belt. Full agricultural automation.

**Kelp-Stalk Belts + Inserters (Era 1 logistics):**
- Kelp-Stalk Belt: custom belt prototype at half vanilla speed (~7.5 items/sec). Recipe: 1 Kelp Stalk + 1 Plant Fiber → 2 belts.
- Kelp-Stalk Inserter: custom inserter prototype, slow (~0.5 cycles/sec). Recipe: 2 Kelp Stalk + 1 Fiber Cord → 1 inserter.
- 50 belts + 20 inserters given at start. Craftable immediately with no tech.
- Era 2 replaces these with STANDARD-SPEED iron belts and inserters once iron is available. Same vanilla prototypes, bio-iron recipes.

**Land expansion:**
- Both Woven Reed Mat and Compressed Biomass Block use `place_as_tile = {result = "landfill", condition_size = 1, condition = {layers = {water_tile = true}}}`.

**Tidal Power Generator:**
- Type: `electric-energy-interface`. `energy_production = "15kW"`. `energy_source = {type = "electric", buffer_capacity = "150kJ", usage_priority = "primary-output"}`.
