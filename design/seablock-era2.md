# BIOGENESIS: Era 2 — Applied Cultivation

**Status:** DRAFT v5
**Date:** 2026-03-21
**Duration:** 12–16 hours
**Discipline:** Agricultural science, controlled environments, bio-material cultivation
**Tone:** Excited, discovering — "Iron precipitate. Bacteria pulled this from the same seawater that tried to kill you."
**Core Insight:** Biology can produce ANY material. Control the conditions, control the outcome.
**Research Chapter:** "Selective Cultivation"
**Science Pack:** Controlled Environment Dataset

---

## 1. INHERITED STATE

The player enters Era 2 with:
- **Island:** ~80-100 tiles (expanded from ~60 starting via reed mats + biomass blocks)
- **Crops:** Saltmarsh grass (5+ plants), glasswort (3+), kelp (2+), sea-grain (1-2)
- **Materials:** Plant fiber, fiber cord, calcite (stone equiv.), kelp stalk (wood equiv.), dried kelp (fuel), sea salt, brackish water, freshwater, concentrated brine, glasswort ash
- **Machines:** All 12 Era 1 machines operational. Saltwater chain running. Compost producing. Fire pit fueled.
- **Power:** 15 kW from Tidal Generator
- **Science:** Tidal Observation Kit production established
- **Logistics:** Kelp-Stalk Belts (half speed) + Kelp-Stalk Inserters (slow). Functional factory already running.

**What changes:** The player already has kelp-stalk belts and inserters from Era 1 (half vanilla speed). Iron production (hour 2-4) unlocks STANDARD-SPEED belts and inserters — a significant throughput upgrade. The factory gets FASTER, not built from scratch.

---

## 2. TIMELINE (sub-milestones every 2-3 hours)

### Hours 0–2: Scaling + Iron Preparation

**What unlocks:** Kelp-Stalk Pipes, Kelp-Stalk Chests, research toward iron.

**What the player does:**
- The factory is ALREADY running from Era 1 — kelp-stalk belts move materials, inserters load machines, the tidal generator provides power. Era 2 starts by SCALING this foundation.
- Build more Saltwater Basins + Evaporation Trays. Stockpile brackish water — iron vats will need lots of it.
- Build pipes (kelp-stalk: 1 Kelp Stalk → 1 Pipe) for fluid routing.
- Build chests (kelp-stalk: 6 Kelp Stalk + 4 Fiber Cord → 1 Chest) for storage buffers. Bio-cement chests come later once iron→slag→cement is running.
- Expand crop fields — more grass for fiber, more kelp for stalk. The factory's appetite for biological materials grows.
- Research "Bacterial Iron Cultivation" (3 TOK) — the tech that unlocks Era 2's marquee feature.
- **Tip: the player who stockpiles 50+ brackish water BEFORE iron tech completes can start iron production immediately.** Preparation pays off.

**Key recipes unlocked:**
| Recipe | Inputs | Output | Notes |
|--------|--------|--------|-------|
| Kelp-Stalk Pipe | 1 Kelp Stalk | 1 Pipe | Fluid routing. |
| Kelp-Stalk Chest | 6 Kelp Stalk + 4 Fiber Cord | 1 Wooden Chest equiv. | Storage buffers. Replaced by iron/bio-cement chests later. |

**Note:** The player's Era 1 kelp-stalk belts (half speed) still work fine. Iron belts (standard speed) are researched AFTER the first iron plates are produced — you need iron to make iron belts. The upgrade happens naturally around hour 3-4.

### Hours 2–4: Iron From Bacteria

**What unlocks:** Bacterial Culture Vat, Bio-Smelter. Iron plates. Standard-speed belts and inserters.

**What the player does:**
- Research "Bacterial Iron Cultivation" (3 TOK)
- Build Bacterial Culture Vat (requires calcite + kelp stalk + fiber cord)
- Feed brackish water (from Era 1 evaporation, stockpiled) into the vat
- Watch rusty-brown iron precipitate accumulate in the output
- Build Bio-Smelter (calcite + kelp stalk + fiber cord). Smelt precipitate → iron plates + slag
- Slag → bio-cement additive (strengthens construction). Spent culture medium → compost.
- Craft iron-recipe transport belts (standard speed!) and inserters
- Replace kelp-stalk belts with iron belts (standard speed — significant upgrade)

**The trailer scene.** "I grew metal from seawater and bacteria." This is the mod's marquee moment.

**The iron chain (full byproduct flow):**
```
Brackish Water (from Era 1 evaporation, stockpiled)
  → Bacterial Culture Vat (30s cycle)
  → 2 Iron Precipitate + 1 Spent Culture Medium
                │                      │
                ▼                      ▼
          Bio-Smelter (10s)      Compost Heap
          → 1 Iron Plate + 1 Slag     (nitrogen-rich, excellent compost)
                │            │
                ▼            ▼
          Standard belts,  Bio-Cement Mixer
          inserters,       → Reinforced Bio-Cement
          gears, tools     (stronger than Era 1 calcite)
```

**New items introduced:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Iron Precipitate | Bacterial Culture Vat | 100 | Raw bacterial output. Rusty brown. |
| Iron Plate | Bio-Smelter | 100 | Standard Factorio iron plate. From biology. |
| Iron Gear | Crafting (2 Iron Plate) | 100 | Standard recipe. |
| Iron Stick | Crafting (1 Iron Plate) | 100 | Standard recipe. |
| Spent Culture Medium | Vat byproduct | 100 | Nitrogen-rich → compost |
| Smelter Slag | Smelter byproduct | 100 | → Bio-cement additive |
| Reinforced Bio-Cement | Bio-Cement Mixer | 100 | Stronger structural material |

### Hours 4–6: Glass From Diatoms

**What unlocks:** Diatom Pond, Frustule Processor. Silica, glass, first green circuits.

**What the player does:**
- Research "Diatom Cultivation" (4 TOK)
- Build Diatom Pond (iron plate + bio-cement + kelp stalk). Fill with brackish water.
- Diatoms grow in the pond (passive, 20s cycle). Harvest frustules.
- Frustule Processor fuses silica shells → glass / silica substrate
- Build first green circuits: bio-copper wire (need copper, hour 6-8) + diatom silica substrate
- Actually — green circuits need copper, which isn't available yet. The player builds the silica PRODUCTION LINE but can't complete circuits until copper arrives.

**Intermediate step: diatom silica products WITHOUT copper:**
- Glass panes (structural, transparent — greenhouse walls)
- Silica filters (water purification improvement)
- Silica substrate (stockpiled for circuit production once copper arrives)

**The diatom chain:**
```
Brackish Water + Compost (nutrient feed)
  → Diatom Pond (20s cycle)
  → 3 Diatom Frustules + 1 Organic Slurry
              │                    │
              ▼                    ▼
    Frustule Processor (8s)   Compost / Fish Feed (Era 3)
    → 1 Fused Silica
         │
    ┌────┴────────┐
    ▼             ▼
  Glass Pane   Silica Substrate
  (greenhouse   (circuits, once
   walls)        copper arrives)
```

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Diatom Culture | 3 given by Diatom Cultivation tech. Crafting: 2 Brackish Water + 1 Finished Compost + 1 Roasted Kelp → 1 (hand, 5s). | 50 | Living culture. Roasted Kelp provides organic carbon. Self-sustaining: pond output includes 1 Diatom Culture alongside frustules. |
| Diatom Frustules | Diatom Pond harvest | 100 | Microscopic silica shells. |
| Organic Slurry | Pond byproduct | 100 | → compost or fish feed |
| Fused Silica | Frustule Processor | 100 | Glass equivalent |
| Glass Pane | Crafting (4 Fused Silica) | 50 | Structural, transparent |
| Silica Substrate | Crafting (2 Fused Silica) | 100 | Circuit board base |
| Silica Filter | Crafting (3 Fused Silica) | 50 | Water purification medium |

### Hours 6–8: Copper From Plants

**What unlocks:** Phytomining Bed, Metal Extractor. Copper plates. GREEN CIRCUITS.

**What the player does:**
- Research "Phytomining" (5 TOK)
- Build Phytomining Bed (iron plate + bio-cement + enriched soil)
- Plant hyperaccumulator crop (new seed type, unlocked by tech) in enriched soil (compost + brine minerals)
- Harvest metal-rich biomass after growth cycle (45s)
- Metal Extractor processes biomass → copper extract + depleted biomass (→ compost)
- Bio-Smelter processes copper extract → copper plate
- **FIRST GREEN CIRCUITS:** copper wire (from copper plate) + silica substrate (stockpiled from diatoms)

This is the second major milestone. The player now has circuits. Factorio's entire tech tree opens up.

**The copper chain:**
```
Enriched Soil (compost + brine minerals)
  → Phytomining Bed + Hyperaccumulator Seed (45s growth)
  → Harvest → 2 Metal-Rich Biomass + 1 Hyperaccumulator Seed
                    │
                    ▼
            Metal Extractor (15s)
            → 1 Copper Extract + 1 Depleted Biomass (→ compost)
                    │
                    ▼
              Bio-Smelter (10s)
              → 1 Copper Plate + 1 Slag (→ bio-cement)
                    │
                    ▼
            Copper Wire (standard recipe) + Silica Substrate
                    → Green Circuit
```

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Hyperaccumulator Seed | 3 given by Phytomining tech. 1 returned per harvest (sustaining). | 200 | Places hyperaccumulator plant. Extra seeds via extraction: 5 Metal-Rich Biomass → 1 seed. |
| Metal-Rich Biomass | Phytomining harvest | 100 | Copper-concentrated plant matter |
| Copper Extract | Metal Extractor | 100 | Processed from biomass |
| Copper Plate | Bio-Smelter | 100 | Standard Factorio copper plate. From plants. |
| Copper Wire | Crafting (1 Copper Plate) | 200 | Standard recipe. |
| Green Circuit | Crafting (Copper Wire + Silica Substrate) | 200 | Bio-copper + diatom silica. |
| Depleted Biomass | Extractor byproduct | 100 | Carbon-rich → compost |
| Enriched Soil | Crafting (Compost + Brine + Nitrogen) | 50 | Required for phytomining. Tile amendment. |

### Mid-Era Event: The First Bio Web Bonus Item (~hour 6-8)

Around the time the player has iron vats running near compost heaps, the Bio Web mutualistic bonus triggers: **Enriched Iron Oxide** appears as an unexpected output (~10% per iron vat cycle when adjacent to compost). The player receives a notification:

*"Something unexpected appeared in your iron vat output. This precipitate has an unusual iridescent sheen — the crystal structure is different from normal iron oxide. Your Specimen Archive can store unusual items like this. They may prove valuable later."*

This is the player's first encounter with the Bio Web bonus item mechanic AND the Specimen Archive hint. It serves three purposes:
1. **Breaks the hours 8-10 pacing valley** with an unexpected discovery
2. **Teaches Bio Web** — placement matters, bonus items appear from spatial relationships
3. **Introduces the Archive** — the player starts hoarding weird items. 60+ hours from now, this pays off.

### Hours 8–10: Offshore Cultivation

**What unlocks:** Offshore Platform Foundation, new aquatic crops (algae mats, mineral-enriched kelp strains). Activated Carbon. CO₂ Capture.

**What the player does:**
- Research "Offshore Cultivation" (6 TOK)
- Research "Carbon Processing" (4 TOK)
- Build Offshore Platform Foundations: bio-cement pylons placed in water, topped with walkable platforms. The player builds INTO the ocean for the first time.
- Plant new aquatic crops on offshore platforms: algae mats (precursor to Era 3 bio-oil), mineral-enriched kelp (higher yield variant)
- Build Carbon Activator: kelp charcoal → activated carbon (water/air filtration medium)
- Build CO₂ Capture Unit: captures combustion exhaust from bio-smelter and fire pit → CO₂ item
- CO₂ → greenhouse enrichment (Era 2 hour 10-12) or stored for Era 3 algae

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Offshore Platform Foundation | Crafting (Bio-Cement Pylon + Iron Plate + Kelp Stalk) | 20 | Placed in water. Creates buildable surface. |
| Algae Mat Spore | 3 given by Offshore Cultivation tech. 1 returned per harvest. | 200 | Aquatic crop for offshore platforms. Extra via extraction: 5 Algae Mat Harvest → 1 spore. |
| Mineral-Enriched Kelp Spore | 3 given by Offshore Cultivation tech. 1 returned per harvest. | 200 | Higher-yield kelp variant. Extra via extraction: 5 Enriched Kelp → 1 spore. |
| Activated Carbon | Carbon Activator | 100 | Filtration medium. Water/air purification. |
| CO₂ | CO₂ Capture Unit | 100 | Captured from combustion. → greenhouse / algae |
| Purified Water | Carbon Filter + Brackish Water | 100 | Cleaner than raw brackish. Better for cultures. |
| Carbon Filter | Crafting (Activated Carbon + Kelp Stalk frame) | 50 | Used in purification systems. |

### Hours 10–12: Greenhouses + Seed Classification

**What unlocks:** Greenhouse, Phenotypic Seed Classifier, Irrigation System. The Genetic Profile system's first tangible interaction.

**What the player does:**
- Research "Controlled Environment Design" (7 TOK)
- Build Greenhouse: glass panes + iron frame + bio-cement foundation. Enclosed growing structure.
- CO₂ enrichment: pipe captured CO₂ into greenhouse → crops inside grow 30% faster
- Irrigation System: freshwater piped to crop fields → consistent hydration → yield bonus
- Build Phenotypic Seed Classifier: iron + circuits + glass. Sorts seeds by observable size/weight.
- For the first time, the player sees the Genetic Profile system interact with gameplay: classified "Select Seeds" produce noticeably better yields than "Standard Seeds."

**The "Zoom In" moment:** Same crop line grown inside greenhouse (controlled conditions) vs. outside (variable). Greenhouse produces 30% more, consistently. The player realizes: controlling variables produces predictable outcomes. This is not farming. This is experimental design.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Greenhouse | Crafting (Glass Pane + Iron Plate + Bio-Cement) | 10 | Enclosed growing structure. CO₂ injectable. |
| Irrigation Pipe | Crafting (Kelp-Stalk Pipe + Iron Fitting) | 100 | Freshwater delivery to crops. |
| Select Seed Stock | Phenotypic Seed Classifier output | 200 | Per crop type: Select Saltmarsh Seed, Select Kelp Spore, etc. Places same crop entity but with higher base trait values (+15-20 to Yield and Growth Rate). |
| Standard Seed Stock | Classifier byproduct | 200 | Per crop type. Same as unclassified seed — the "reject" pile. Still fully plantable. |
| Compost Extract | Crafting: 2 Finished Compost + 1 Freshwater → 1 (hand, 3s) | 100 | Liquid nutrient concentrate. Used in Growth Medium, culture starters, Nutrient Solution (Era 4). |

**Seed classification detail:** The classifier takes 3 seeds of any one type → 1 Select + 2 Standard of that type. Select seeds are separate item prototypes per crop type (Select Saltmarsh Grass Seed, Select Glasswort Seed, etc.). They place crop entities with higher base Genetic Profile values. This means 7 crop types × 2 grades = 14 classified seed items total, but only the Select variants are new items (7). Standard seeds ARE the original seed items returned.
| Growth Medium | Crafting: 1 Compost Extract + 1 Enriched Soil + 1 Freshwater → 2 (hand, 3s) | 50 | Optimized greenhouse growing substrate. Used in Era 3-4 culture recipes. |

### Hours 12–16: Infrastructure Scaling + Era 3 Prep

**What unlocks:** MICP Cementation Bed (industrial bio-cement), N-Fixing Culture Vat, Bio-Fiber Wind Turbine (second). Advanced machine recipes using circuits.

**What the player does:**
- Scale up ALL production chains. More iron vats, more diatom ponds, more phytomining beds.
- Build MICP Cementation Bed: industrial-scale bio-cement from bacterial calcification. Structural material for larger buildings.
- Build N-Fixing Culture Vat: rhizobium bacteria produce nitrogen compounds. Required for enriched soil at scale.
- Build additional Wind Turbines (iron gear + bio-fiber + kelp stalk). More power for more machines.
- Begin stockpiling: brackish water, compost, iron plates, copper plates, circuits. Era 3 machines need these.
- Research capstone: "Applied Cultivation Thesis" (10 TOK). Requires: iron + copper + silica production all online, greenhouse built, seed classification performed.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| N-Fixing Culture | Crafting (2 Finished Compost + 1 Brackish Water + 1 Flatbread) | 50 | Rhizobium bacteria starter. Flatbread provides carbon source for bacterial growth. Naturally present in mature compost. |
| Nitrogen Supplement | N-Fixing Vat output | 100 | Soil/culture amendment. |
| MICP Cementation Block | MICP Bed output | 100 | Industrial-grade bio-cement. |
| Woven Bio-Fiber | Crafting (Plant Fiber + Kelp Fiber) | 100 | Sail material for wind turbine. |

---

## 3. COMPLETE ITEM SUMMARY (~110 items)

| Category | Count | Examples |
|----------|-------|---------|
| Seeds (carried + new) | 7 | Saltmarsh, glasswort, kelp, sea-grain (carried) + hyperaccumulator, algae mat, enriched kelp (new) |
| Raw harvested (carried + new) | 10 | Grass, glasswort, kelp, frond, stalk, sea-grain (carried) + metal-rich biomass, diatom frustules, algae mat harvest, enriched kelp harvest |
| Saltwater chain (carried) | 5 | Saltwater, sea salt, brackish, freshwater, brine |
| Iron chain | 7 | Iron precipitate, iron plate, iron gear, iron stick, spent medium, slag, reinforced bio-cement |
| Silica chain | 7 | Diatom culture, frustules, organic slurry, fused silica, glass pane, silica substrate, silica filter |
| Copper chain | 8 | Hyperaccumulator seed, metal-rich biomass, copper extract, copper plate, copper wire, green circuit, depleted biomass, enriched soil |
| Carbon chain | 4 | Activated carbon, CO₂, purified water, carbon filter |
| Nitrogen chain | 2 | N-fixing culture, nitrogen supplement |
| Bio-cement chain | 3 | MICP culture, MICP cementation block, reinforced bio-cement |
| Offshore | 4 | Platform foundation, algae mat spore, enriched kelp spore, mineral-enriched kelp |
| Greenhouse/Classification | 7 | Greenhouse, irrigation pipe, select seed, standard seed, growth medium, compost extract, kelp-stalk chest |
| Intermediates (carried) | 10 | Plant fiber, fiber cord, calcite, dried kelp, charcoal, ash, glasswort ash, rough flour, chaff, compost |
| Food (carried + new) | 6 | Roasted kelp, flatbread, porridge (carried) + salted fish (1 glasswort + 1 sea salt, hand, 2s), pickled glasswort (2 glasswort + 1 sea salt + 1 freshwater, hand, 3s), dried sea-grain (2 sea-grain → drying rack, 15s). Unlocked by "Bacterial Iron Cultivation" tech (Tech 10, earliest Era 2 tech). |
| Logistics (standard Factorio) | 6 | Belt, inserter, pipe, chest, underground belt, splitter |
| Machines (items) | 15 | See machine table |
| Tools (carried) | 4 | Hammer, blade, digging stick, pestle |
| Science | 2 | TOK (carried), Controlled Environment Dataset (new) |
| Bio Web bonus | 1 | Enriched Iron Oxide (from iron vat + compost proximity) |
| Breadcrumbs | 1 | Iridescent Iron Oxide (archive specimen) |
| Wind power | 3 | Wind turbine, woven bio-fiber, kelp-stalk axle |
| **Total** | **~110** | |

---

## 4. MACHINE SPECIFICATIONS

| Machine | Size | Power | Category | Speed | Era 1 carry? | Notes |
|---------|------|-------|----------|-------|-------------|-------|
| Bacterial Culture Vat | 3×2 | 5 kW | bacterial-cultivation | 1.0 | No | Brackish water → iron precipitate + spent medium |
| Bio-Smelter | 2×2 | Burner (10 kW fuel rate) | smelting | 1.0 | No | Precipitate/extract → plate + slag. Fueled by dried kelp / charcoal. Not on electric grid. |
| Diatom Pond | 3×2 | 3 kW | diatom-cultivation | 1.0 | No | Brackish water + compost → frustules + slurry. Aeration + circulation pumps. |
| Frustule Processor | 2×1 | 5 kW | silica-processing | 1.0 | No | Frustules → fused silica |
| Phytomining Bed | 3×2 | 3 kW | phytomining | 1.0 | No | Enriched soil + seed → metal-rich biomass. Irrigation + monitoring. |
| Metal Extractor | 2×1 | 5 kW | extraction | 1.0 | No | Metal-rich biomass → copper extract + depleted biomass |
| Greenhouse | 4×4 | 5 kW | — | — | No | Enclosed growing chamber. Entities inside get +30% with CO₂. Ventilation + climate control. |
| Irrigation System | 2×1 | 2 kW | — | — | No | Pipes freshwater to adjacent crop fields. +15% yield. Pump-fed. |
| Phenotypic Seed Classifier | 2×2 | 5 kW | classification | 1.0 | No | Seeds → select seed + standard seed |
| Bio-Fiber Wind Turbine | 3×3 | Produces 30 kW | — | — | No | Wind power. No fuel. |
| Carbon Activator | 2×1 | 5 kW | carbon-processing | 1.0 | No | Charcoal → activated carbon + CO₂ |
| CO₂ Capture Unit | 1×1 | 2 kW | — | — | No | Captures CO₂ from adjacent burning machines. Pump + filter. |
| MICP Cementation Bed | 3×2 | 3 kW | bio-cement | 1.0 | No | MICP culture + calcium → industrial bio-cement. Temperature-controlled. |
| N-Fixing Culture Vat | 2×1 | 3 kW | bacterial-cultivation | 1.0 | No | Produces nitrogen supplement. Aeration pump. |
| Bio-Cement Mixer | 1×1 | 5 kW | mixing | 1.0 | No | Slag + bio-cement → reinforced bio-cement |
| All Era 1 machines | various | various | various | various | Yes | Basin, tray, drying rack, fire pit, compressor, calcium vat, grinding slab, desalination bed, compost heap, tidal generator, field notebook station |

**Power budget:**
- Inherited: 15 kW (Tidal Generator)
- First Wind Turbine: +30 kW = 45 kW total
- Total power demand (all Era 2 machines including biological): ~65-75 kW
- Second Wind Turbine: +30 kW = 75 kW total. Tight at full build-out.
- Third Wind Turbine: +30 kW = 105 kW total. Comfortable headroom for scaling.
- Bio-Smelter is BURNER powered (charcoal), not electric. Doesn't count against the grid.
- All biological machines draw real power (aeration, pumps, monitoring) — no void machines.

---

## 5. TECH TREE

Era 2 uses the Field Notebook Station consuming Tidal Observation Kits (TOK) for all research.

| # | Name | Cost | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 10 | Bacterial Iron Cultivation | 3 TOK | Tech 9 (Era 2 entry) | Bacterial Culture Vat, Bio-Smelter, iron chain recipes, pipes, chests |
| 11 | Iron Logistics | 2 TOK | Tech 10 | Standard-speed belt, inserter, underground belt, splitter (iron recipes). Speed upgrade from kelp belts. |
| 12 | Diatom Cultivation | 4 TOK | Tech 10 | Diatom Pond, Frustule Processor, silica chain recipes |
| 13 | Phytomining | 5 TOK | Tech 10 + Tech 12 | Phytomining Bed, Metal Extractor, copper chain, GREEN CIRCUITS |
| 14 | Carbon Processing | 4 TOK | Tech 10 | Carbon Activator, CO₂ Capture, activated carbon chain |
| 15 | Offshore Cultivation | 6 TOK | Tech 13 + Tech 14 | Offshore platforms, algae mats, enriched kelp |
| 16 | Controlled Environment Design | 7 TOK | Tech 13 | Greenhouse, Irrigation, Phenotypic Seed Classifier, select seeds |
| 17 | Industrial Bio-Cement | 3 TOK | Tech 10 | MICP Cementation Bed, reinforced bio-cement |
| 18 | Nitrogen Fixation | 3 TOK | Tech 10 | N-Fixing Culture Vat, nitrogen supplement, enriched soil |
| 19 | Wind Power | 2 TOK | Tech 11 | Bio-Fiber Wind Turbine |
| 20 | Applied Cultivation Thesis | 10 TOK | Tech 15 + Tech 16 | **ERA 3 TRANSITION** |

**Total TOK for Era 2:** 3+2+4+5+4+6+7+3+3+2+10 = **49 TOK**

**TOK production rate:** With 1 calcium vat running, ~6 TOK/min. 49 TOK takes ~8 minutes of dedicated production. Not a bottleneck — the real time is spent building infrastructure, not waiting for science.

**Critical path:** Tech 10 → 12 → 13 → 15+16 → 20. Iron → diatoms → copper → offshore+greenhouse → capstone. ~6 sequential techs. The player is gated by BUILD TIME (constructing machines, expanding the island), not research time.

---

## 6. PRODUCTION CHAIN INTERCONNECTION

This is the full byproduct flow across all Era 2 chains. Every arrow is a resource the player must route.

```
                    SALTWATER (from Era 1 basins)
                              │
              ┌───────────────┼───────────────┐
              ▼               ▼               ▼
         Evaporation    Calcium Vat    Desalination
         → Salt         → Ca Precip    → Fresh + Brine
         + Brackish     + Brackish
              │               │               │
              ├───────────────┤               │
              ▼               ▼               ▼
    ┌─── BRACKISH WATER ────────────── BRINE ──────┐
    │         │                          │         │
    │    ┌────┼──────┐              Enriched     Calcium
    │    ▼    ▼      ▼              Soil         Vat
    │  Iron  Diatom  Purified       (+ compost   (efficient)
    │  Vat   Pond    Water          + nitrogen)
    │    │     │      │                 │
    │    ▼     ▼      │                 ▼
    │  Iron  Frustules│           PHYTOMINING
    │  Precip + Slurry│            BED
    │    │      │     │             │
    │    ▼      ▼     │             ▼
    │  Bio-   Frustule│         Metal-Rich
    │  Smelter Proc.  │         Biomass
    │    │      │     │             │
    │    ▼      ▼     │             ▼
    │  Iron   Fused   │         Metal
    │  Plate  Silica  │         Extractor
    │  + Slag  │      │         → Copper Extract
    │    │     │      │           + Depleted Biomass
    │    ▼     ▼      │                │
    │  Gears  Glass   │                ▼
    │  Belts  Panes   │          Bio-Smelter
    │  Inserters      │          → Copper Plate + Slag
    │         │       │                │
    │         ▼       │                ▼
    │    Greenhouse    │           Copper Wire
    │    + CO₂ enrich  │           + Silica Substrate
    │         │       │                │
    │         ▼       │                ▼
    │    Select Seeds  │          GREEN CIRCUIT
    │                  │
    └──── ALL BYPRODUCTS ──→ COMPOST ──→ ALL GROWTH ──┘
         (spent medium,     (central     (crops, bacteria,
          slurry, depleted   nutrient     diatoms, phyto-
          biomass, slag,     cycle)       mining beds)
          chaff, residue)
```

**Key observation:** Brackish water feeds THREE production chains (iron, diatoms, purification). The evaporation tray becomes a critical bottleneck — it produces salt AND brackish water. Scaling iron requires more evaporation. Scaling diatoms requires more evaporation. The player must think about water ALLOCATION.

---

## 7. BIO WEB (Era 2)

### New Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Iron Culture Vat | Diatom Pond | Competitive | -10% both | Both consume dissolved minerals from brackish water. Player notices output drop when placed adjacent. |
| Iron Culture Vat | Compost Heap | Mutualistic | +30% iron yield + **Enriched Iron Oxide** (~10%) | Nitrogen from compost feeds bacteria. Bonus item for advanced recipes. |
| Diatom Pond | Greenhouse | Commensal | +20% diatom silica quality | CO₂ from greenhouse ventilation feeds diatoms. |
| Phytomining Bed | Compost Heap | Mutualistic | +40% metal uptake | Compost-enriched soil dramatically boosts extraction. |
| Offshore Kelp Plot | Offshore Algae Mat | Mutualistic | +25% both | Kelp provides structure, algae provide nutrients. Offshore synergy. |
| Greenhouse | Adjacent Crop Field | Commensal | +15% outdoor crop yield | Greenhouse microclimate benefits nearby outdoor plants. |

### Layout Implications

The player CANNOT place iron vats and diatom ponds adjacent (competition). They SHOULD place iron vats near compost (mutualism). They SHOULD place diatom ponds near greenhouses (CO₂ benefit). This creates ZONING — the island develops distinct districts based on biological compatibility. The factory layout is driven by ecology.

---

## 8. SCIENCE PACK

**Controlled Environment Dataset**

| Ingredient | Source | Era 2 Chain |
|-----------|--------|-------------|
| Select Seed Stock | Phenotypic Seed Classifier | Greenhouse + classification chain |
| Bacterial Iron Sample | Iron Culture Vat (special recipe) | Iron bacteria chain |
| Diatom Silica Chip | Frustule Processor (special recipe) | Diatom chain |
| Nutrient Amendment | Compost + Nitrogen Supplement + Brine | Nutrient cycle + N-fixing + water management |

Requires products from 4 distinct chains. Forces breadth — the player can't skip diatoms, or skip nitrogen, or skip classification.

**Science ingredient recipes (dedicated production, not normal chain outputs):**
| Recipe | Machine | Time | Inputs | Output |
|--------|---------|------|--------|--------|
| Prepare Iron Sample | Bacterial Culture Vat | 15s | 3 Brackish Water + 1 Finished Compost | 1 Bacterial Iron Sample |
| Prepare Silica Chip | Frustule Processor | 10s | 2 Diatom Frustules + 1 Fused Silica | 1 Diatom Silica Chip |
| Mix Nutrient Amendment | Hand crafting | 3s | 1 Finished Compost + 1 Nitrogen Supplement + 1 Concentrated Brine | 1 Nutrient Amendment |
| Assemble CED | Hand crafting | 8s | 1 Select Seed + 1 Bacterial Iron Sample + 1 Diatom Silica Chip + 1 Nutrient Amendment | 2 Controlled Environment Dataset |

**Consumed by:** Era 3 research technologies. CED is produced and stockpiled during Era 2 — Era 3 techs consume CED instead of TOK. TOK remains the science pack for Era 2 internal research.

**Production rate:** Depends on classifier throughput and iron vat cycle time. Estimated ~2-4 CED/min with a modest setup. Era 3 will need ~50-80 CED total (estimated). Not a bottleneck if the player builds the full Era 2 infrastructure.

---

## 9. BALANCE ANALYSIS

### Iron Throughput

**1 Culture Vat:** 2 Iron Precipitate / 30s = 4 precipitate/min.
**1 Bio-Smelter:** 1 Iron Plate / 10s = 6 plates/min (smelter is faster than vat — not the bottleneck).
**1 vat → ~4 iron plates/min.** Two vats → 8 plates/min. Enough for basic logistics build-out.

**Belt production:** 1 belt = 1 iron gear (2 plates) + 1 iron plate = 3 iron plates per belt pair. At 8 plates/min from 2 vats, that's ~2.7 belts per minute. Adequate for early factory but the player will want 3-4 vats by mid-era.

### Copper Throughput

**1 Phytomining Bed:** 2 Metal-Rich Biomass / 45s = 2.7 biomass/min.
**1 Extractor:** 1 Copper Extract / 15s = 4 extract/min (faster than bed — bed is bottleneck).
**1 bed → ~2.7 copper plates/min.** Copper demand is lower than iron (mainly circuits). 1-2 beds sufficient.

### Green Circuit Production

**1 circuit = 1 copper wire + 1 silica substrate.**
- Copper wire: 1 copper plate → 2 wire. At 2.7 copper/min → 5.4 wire/min.
- Silica substrate: 2 fused silica → 1 substrate. At 3 frustules/20s = 9 frustules/min → ~4.5 silica/min → ~2.25 substrates/min.
- **Bottleneck: silica substrate.** ~2.25 circuits/min from 1 diatom pond. The player needs 2-3 ponds for comfortable circuit production.

### Power Budget

| Source | Output |
|--------|--------|
| Tidal Generator (Era 1) | 15 kW |
| 1st Wind Turbine | 30 kW |
| 2nd Wind Turbine | 30 kW |
| **Total** | **75 kW** |

| Consumer | Draw |
|----------|------|
| Bacterial Culture Vat ×2 | 10 kW |
| Bio-Smelter (burner — charcoal) | 0 kW (not electric) |
| Diatom Pond | 3 kW |
| Frustule Processor | 5 kW |
| Phytomining Bed | 3 kW |
| Metal Extractor | 5 kW |
| Greenhouse | 5 kW |
| Irrigation System | 2 kW |
| Seed Classifier | 5 kW |
| Carbon Activator | 5 kW |
| CO₂ Capture Unit | 2 kW |
| MICP Cementation Bed | 3 kW |
| N-Fixing Culture Vat | 3 kW |
| Bio-Cement Mixer | 5 kW |
| Era 1 machines + inserters | ~15 kW |
| **Total** | **~71 kW** |

**Surplus: ~4 kW at initial build-out with 2 turbines (75 kW).** Third wind turbine is needed early for comfortable scaling — 105 kW total gives ~34 kW headroom. At full mid-era scale (4 iron vats + 3 diatom ponds), demand reaches ~85-90 kW. 105 kW covers this.

### Land Budget

- Start of Era 2: ~80-100 tiles (expanded from ~60 starting)
- End of Era 2: ~500 tiles (~5x expansion)
- Key space consumers: Greenhouse (4×4 = 16 tiles), Diatom Pond (3×2 = 6), Culture Vat (3×2 = 6), Phytomining Bed (3×2 = 6), Offshore platforms (water tiles, not counted)
- With biomass compression running, land expansion is NOT the bottleneck. The player is limited by resource throughput, not space.

---

## 10. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| Iron bacteria crash | Fed undiluted saltwater instead of brackish | Culture dies. Vat needs re-inoculation (new culture starter). Lost production time. | Water quality matters. Bacteria have preferences. Use brackish from evaporation. |
| Diatom starvation | No compost/nutrient feed to diatom pond | Diatoms produce frustules but very slowly (25% rate) | Nutrient cycle feeds EVERYTHING, including mineral production |
| Copper yield collapse | Phytomining bed soil not enriched (no compost + nitrogen) | Plants grow but accumulate almost no metal. Wasted cycles. | Enriched soil is mandatory for phytomining, not optional |
| Circuit deadlock | Built silica line but not copper line (or vice versa) | Half-finished production. Stockpiles of one component, zero of the other. | Both chains must be built in parallel for circuits |

---

## 11. BREADCRUMBS (Era 2)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Iridescent Iron Oxide | Iron Culture Vat output (Bio Web: vat near compost) | ~2% per cycle | "This precipitate has an unusual iridescent sheen. The crystal structure is different from normal iron oxide." | Era 4: contains efficient iron-oxidizing gene variant. Era 5: basis for high-yield iron bacteria strain. |

---

## 12. ERA 2 → ERA 3 TRANSITION

**Capstone tech:** Applied Cultivation Thesis (10 TOK)

**Prerequisites (verifiable):**
- Iron plate production operational (produced ≥50 iron plates)
- Copper plate production operational (produced ≥20 copper plates)
- Green circuit production operational (produced ≥10 green circuits)
- Greenhouse built and operational
- Phenotypic seed classification performed (produced ≥5 select seeds)
- At least 1 offshore platform placed

**Transition notification:** *"Chapter: The Invisible Ecosystem. 'The soil is alive.' — You can now analyze the organisms you've been managing blind. What you find will change how you see everything you've built."*

**What Era 3 inherits:**
- ~500 tile island with distinct zones (iron district, diatom zone, crop fields, offshore platforms)
- Iron + copper + silica production running
- Green circuits available
- Standard Factorio logistics operational (belts, inserters, pipes)
- Power: ~75 kW from tidal + wind
- Compost as central nutrient cycle
- Bio-cement as structural material
- Phenotypic seed classification active
- ~110 items in production

---

## 13. IMPLEMENTATION NOTES

**Standard Factorio logistics:** All belt/inserter/pipe/chest entities are vanilla prototypes with modified recipes (bio-iron instead of mined iron). No custom logistics entities needed beyond the Era 1 kelp-stalk belt and inserter.

**Pre-iron slow logistics (hours 0-2):** Kelp-Stalk Belts (half vanilla speed) and Kelp-Stalk Inserters (slow) from Era 1 are already operational. These are replaced by standard-speed iron versions once iron plates are available (hour 2-4). Implemented as separate entity prototypes with lower belt_speed/rotation_speed values.

**Bacterial Culture Vat:** Assembling-machine with `crafting_categories = {"bacterial-cultivation"}`. Electric energy source (5kW). Recipe: no-input → iron precipitate + spent medium (like the saltwater basin but uses brackish water as input).

**Bio-Smelter:** Assembling-machine with burner energy source. Fueled by dried kelp / charcoal. Category: "smelting" (or custom "bio-smelting"). Takes iron precipitate OR copper extract → plate + slag.

**Greenhouse:** A 4×4 entity with an internal inventory. Crop entities placed INSIDE the greenhouse footprint get a crafting speed modifier (+30%). CO₂ pipe input adds another +20%. Implementation: check adjacent crop entities periodically and apply speed bonus via script, or use a beacon-like effect.

**Offshore platforms:** Large entity placed on water (like an offshore pump but larger, 4×4). Collision box extends into water. Entities can be placed on the platform's surface. Recipe creates a placeable item; placement requires adjacent water tiles. The platform entity has a walkable surface where crop entities and machines can be placed. Implementation: custom entity prototype with `collision_mask` excluding water, placed via item with `place_result`. Connected to mainland via bio-cement causeways (landfill extending from shore).

**Phenotypic Seed Classifier:** Assembling-machine. Input: any seed type. Output: "Select" variant (same seed, flagged with higher Genetic Profile values) + "Standard" variant. Implementation: the select/standard seeds are separate item prototypes that place crop entities with different base trait values.

**Bio-Fiber Wind Turbine:** Electric-energy-interface producing 30kW constant. Similar to Tidal Generator but with different placement rules (land only, no water adjacency needed).
