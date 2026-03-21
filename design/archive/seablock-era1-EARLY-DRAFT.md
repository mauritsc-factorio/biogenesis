# Biogenesis: Seablock Era 1 Design Document — TIDAL OBSERVATIONS

**Status:** DRAFT — items, recipes, balance, and core loops need full review before implementation.

---

# ERA 1: TIDAL OBSERVATIONS

**Discipline:** Marine Biology / Survival Bootstrapping / Tidal Zone Ecology
**Duration:** 2–3 hours
**Resolution:** Macro-scale, whole-organism observation (same as overhaul Era 1)
**Tone:** Resourceful, curious, constrained. Every material is precious.
**Core Insight:** Life can synthesize everything. Biology is not just food — it is infrastructure.

---

## 1. STARTING CONDITIONS

### The Platform

The player begins on a **3×3 tile island** surrounded by infinite ocean. There are no biomes, no ores, no trees. Just salt water and sky.

| Property | Value |
|----------|-------|
| Starting land tiles | 9 (3×3 square at world origin) |
| Tile type | grass-1 (standard Factorio land tile) |
| Surrounding terrain | deepwater (infinite, all directions) |
| Pre-placed entities | None (considered placing a Tidal Pool decorative entity, decided against — the ocean IS the tidal pool) |

**Map generation:** All chunks generate as deepwater. The 3×3 island is placed by control.lua when the spawn chunk generates. All vanilla entities (trees, rocks, resources, fish) are destroyed on chunk generation.

### Starting Inventory

| Item | Count | Purpose | Why this amount |
|------|-------|---------|-----------------|
| Saltmarsh Grass Seed | 5 | Primary fiber + biomass source. Halophyte (salt-tolerant). | 5 plants → 15 grass (3 per harvest) + 5 seeds back. Enough fiber for first tools. |
| Glasswort Seed | 3 | Food (edible in recipes) + ash (alkali source). | 3 plants → 6 glasswort + 3 seeds. Sustaining food supply. |
| Kelp Spore Culture | 2 | Aquatic biomass. Wood equivalent. Breaks land dependency. | 2 plants → 6 kelp + 2 spores. Kelp splits into frond + stalk. |
| Woven Reed Mat | 4 | Immediate land expansion. Places as landfill. | 4 mats + 9 starting tiles = 13 tiles. Enough for first crops + 1 machine. |
| Crude Hammer | 1 | Basic tool. | Cannot be crafted until calcite is available (tech 5). |
| Knapping Blade | 1 | Basic tool. | Same — starter tools must last until calcium chain is online. |

**Total starting tiles:** 13 (9 island + 4 mats). This is extremely tight. Every tile placement matters.

### Why These Seeds

**Saltmarsh Grass** is the fiber backbone. Real saltmarsh grasses (Spartina) are halophytes that thrive in coastal saltwater environments. They provide:
- Plant Fiber (→ Fiber Cord, the universal binding material)
- Biomass for land expansion
- Green waste for composting
- Raw material for Woven Reed Mats (more land)

**Glasswort** (Salicornia) is a real edible halophyte. Crunchy, salty, eaten raw in coastal cuisine. It provides:
- Food for recipes and science packs
- Glasswort Ash when burned (alkali — real: glasswort ash was historically used to make soda ash for glass-making, hence "glasswort")
- Seeds for Sea-Grain extraction (mid-era unlock — glasswort is the ancestor crop)

**Kelp** is the keystone organism. It breaks the circular dependency of "need land to grow plants to make land." Kelp provides:
- Kelp Stalk = wood equivalent (structural material)
- Kelp Frond = food (roasted) + fuel (dried) + biomass
- Grows at the water's edge (placed on land tiles adjacent to water, which EVERY starting tile is)

---

## 2. FIRST 30 MINUTES — MINUTE-BY-MINUTE

### Minutes 0–2: Orientation

Player spawns on a 3×3 island. Inventory contains seeds, mats, and two tools. The ocean extends in every direction. No minimap resources. No trees. Nothing.

**Actions:**
1. Place 4 Woven Reed Mats adjacent to the island (expanding to 13 tiles).
2. Plant 3 Saltmarsh Grass Seeds on land tiles.
3. Plant 2 Kelp Spore Cultures on land tiles at the water's edge.
4. Plant 2 Glasswort Seeds on remaining land tiles.
5. Remaining 1 Saltmarsh Grass Seed held in reserve (insurance).

**Player's mental state:** "I need more land. I need materials. Everything comes from these plants."

### Minutes 2–5: First Harvest

Plants are immediately harvestable (growth timers deferred to later implementation — instant for now).

**Harvest yields:**
- 3 Saltmarsh Grass plants → 9 Saltmarsh Grass + 3 Saltmarsh Grass Seeds
- 2 Kelp plants → 6 Kelp + 2 Kelp Spore Cultures
- 2 Glasswort plants → 4 Glasswort + 2 Glasswort Seeds

**Immediate processing (hand-craft, always available):**
- 6 Saltmarsh Grass → 12 Plant Fiber (recipe: 1 grass → 2 fiber)
- 6 Plant Fiber → 3 Fiber Cord (recipe: 2 fiber → 1 cord)
- 6 Kelp → 6 Kelp Frond + 6 Kelp Stalk (recipe: 1 kelp → 1 frond + 1 stalk)

**Replant:** All 3 grass seeds, 2 kelp spores, 2 glasswort seeds. Cycle restarts.

**Player now has:** 3 Saltmarsh Grass (unused), 4 Glasswort, 6 Plant Fiber (unused), 3 Fiber Cord, 6 Kelp Frond, 6 Kelp Stalk, + original tools.

### Minutes 5–8: First Infrastructure

**Build Compost Heap** (always available): 4 Kelp Stalk + 4 Plant Fiber → 1 Compost Heap
**Build Field Notebook Station** (always available): 5 Kelp Stalk + 3 Fiber Cord → 1 Field Notebook Station

**Begin research:** Tech 1 (Saltwater Collection) is free — just takes time in the Field Notebook Station. Start it.

**Craft more Woven Reed Mats:** 4 Saltmarsh Grass + 2 Fiber Cord → 1 Woven Reed Mat. Need second harvest's grass for this.

**Harvest cycle 2** (replanted seeds from cycle 1):
- 9 more grass, 6 more kelp, 4 more glasswort

### Minutes 8–12: Saltwater Chain Online

**Tech 1 completes:** Saltwater Collection. Unlocks Saltwater Basin recipe + collect-saltwater recipe.

**Build Saltwater Basin:** 4 Kelp Stalk + 4 Plant Fiber → 1 Basin. Place it.

The basin passively produces 5 Saltwater every 10 seconds (no input needed — it collects from the adjacent ocean). First passive resource production.

**Start Tech 2:** Solar Evaporation (free).

**Continue expanding land:** Craft Reed Mats from grass + cord. Each mat = 1 new tile. Player expanding island methodically.

### Minutes 12–18: Evaporation + First Salt

**Tech 2 completes:** Solar Evaporation. Unlocks Evaporation Tray recipe + evaporate-saltwater recipe.

**Build Solar Evaporation Tray:** 4 Kelp Stalk + 2 Fiber Cord → 1 Tray.

**First saltwater evaporation:** 5 Saltwater → 2 Sea Salt + 3 Brackish Water. Sea Salt is the first mineral resource. Brackish Water is a byproduct (currently waste — stored players may find later uses).

**Start Tech 3:** Kelp Cultivation (free).

### Minutes 18–25: Kelp Processing + Fire

**Tech 3 completes:** Kelp Cultivation. Unlocks Drying Rack recipe, Fire Pit recipe, dried kelp, roasted kelp, kelp charcoal recipes.

**Build Drying Rack:** 4 Kelp Stalk + 4 Fiber Cord → 1 Drying Rack.
**Dry kelp:** 2 Kelp Frond → 1 Dried Kelp (30s in rack). First fuel source.

**Build Stone-Lined Fire Pit:** 6 Kelp Stalk + 4 Fiber Cord → 1 Fire Pit. Fueled by Dried Kelp.
**Roast kelp:** 1 Kelp Frond → 1 Roasted Kelp. First cooked food.
**Make charcoal:** 2 Dried Kelp → 1 Kelp Charcoal (4MJ, better fuel).

**Start Tech 4:** Biomass Compression (free).

### Minutes 25–35: Land Expansion Unlocked

**Tech 4 completes:** Biomass Compression. Unlocks Biomass Compressor + compression recipes.

**Build Biomass Compressor:** 6 Kelp Stalk + 4 Fiber Cord → 1 Compressor.
**Compress biomass:** 5 Kelp → 1 Compressed Biomass Block. Places as landfill like Reed Mats, but from kelp (infinite water = infinite kelp = infinite land).

**The bottleneck breaks.** Before this, land expansion required Saltmarsh Grass (limited by land tiles to grow it on — circular). Now kelp (grown at water's edge) produces infinite land expansion material. The player is no longer stuck.

**Start Tech 5:** Calcium Precipitation (free).

### Minutes 35–50: Stone From the Sea

**Tech 5 completes:** Calcium Precipitation. Unlocks Calcium Vat, calcite chain, tool recipes, glasswort ash, grinding slab.

**Build Calcium Precipitation Vat:** 4 Kelp Stalk + 4 Fiber Cord → 1 Vat.
**Precipitate calcium:** 5 Saltwater → 1 Calcium Precipitate (20s). Slow but steady.
**Calcine:** 2 Calcium Precipitate → 1 Calcite (Fire Pit, 10s). Calcite = stone equivalent.

**The player now has "stone."** They can craft replacement tools, build a Grinding Slab (5 Calcite), and process glasswort into ash.

**Craft Tidal Observation Kit:** 1 Dried Kelp + 1 Plant Fiber + 1 Sea Salt + 1 Calcium Precipitate → 2 TOK. The first science packs. Research can now consume TOK for advanced techs.

### Minutes 50–90: Advanced Techs + Stabilization

**Tech 6:** Halophyte Cultivation (2 TOK) — seed extraction recipes, sea-grain seeds, grinding.
**Tech 7:** Tidal Energy (3 TOK) — Tidal Power Generator (15 kW constant power).
**Tech 8:** Seaweed Desalination (3 TOK) — freshwater production, flatbread, porridge, brine→calcium efficiency.
**Tech 9:** Coastal Ecology Hypothesis (5 TOK) — Era 2 transition.

By ~90 minutes the player has a self-sustaining island with:
- Renewable crops (grass, glasswort, kelp, sea-grain)
- Passive saltwater collection → salt, calcium, freshwater
- Land expansion (unlimited via kelp → biomass blocks)
- Power (15 kW tidal)
- Stone equivalent (calcite from seawater calcium)
- Wood equivalent (kelp stalk)
- Food variety (raw glasswort, roasted kelp, flatbread, porridge)
- Functioning science production (TOK)

---

## 3. COMPLETE ITEM LIST

### Raw Harvested Materials (6 items)

| # | Internal Name | Display Name | Source | Stack | Notes |
|---|--------------|-------------|--------|-------|-------|
| 1 | bio-era1-saltmarsh-grass | Saltmarsh Grass | Harvest Saltmarsh Grass Plant | 100 | Primary fiber source. Halophyte. |
| 2 | bio-era1-glasswort | Glasswort | Harvest Glasswort Plant | 100 | Edible halophyte. Burns to alkali ash. |
| 3 | bio-era1-kelp | Kelp | Harvest Kelp Plant | 100 | Raw kelp, must be split before use. |
| 4 | bio-era1-kelp-frond | Kelp Frond | Split Kelp (hand-craft) | 100 | Soft tissue. Food, fuel, biomass. |
| 5 | bio-era1-kelp-stalk | Kelp Stalk | Split Kelp (hand-craft) | 100 | Woody core. Wood equivalent. |
| 6 | bio-era1-sea-grain | Sea-Grain | Harvest Sea-Grain Plant | 100 | Mid-era crop for flour. Descended from glasswort. |

### Saltwater Chain (5 items)

| # | Internal Name | Display Name | Source | Stack | Notes |
|---|--------------|-------------|--------|-------|-------|
| 7 | bio-era1-saltwater | Saltwater | Saltwater Basin (passive) | 100 | Raw ocean water. Input for all saltwater recipes. |
| 8 | bio-era1-sea-salt | Sea Salt | Solar Evaporation Tray | 100 | First mineral. Used in science pack + recipes. |
| 9 | bio-era1-brackish-water | Brackish Water | Evaporation byproduct | 100 | Partially desalinated. Currently low-value. Future: crop irrigation at 50% efficiency. |
| 10 | bio-era1-freshwater | Freshwater | Seaweed Desalination Bed | 100 | Pure water. Needed for flour-based food. Late Era 1 unlock. |
| 11 | bio-era1-mineral-rich-brine | Mineral-Rich Brine | Desalination byproduct | 100 | Concentrated minerals. Efficient calcium source. |

### Processed Intermediates (9 items)

| # | Internal Name | Display Name | Source | Stack | Notes |
|---|--------------|-------------|--------|-------|-------|
| 12 | bio-era1-plant-fiber | Plant Fiber | Saltmarsh Grass processing | 100 | Universal binding base. |
| 13 | bio-era1-fiber-cord | Fiber Cord | Twisted plant fiber | 100 | Structural binding. Used in every machine recipe. |
| 14 | bio-era1-calcium-precipitate | Calcium Precipitate | Calcium Vat (from saltwater or brine) | 100 | Raw calcium carbonate. Needs calcination. Science pack ingredient. |
| 15 | bio-era1-calcite | Calcite | Fire Pit (calcination of precipitate) | 100 | Stone equivalent. Tools, grinding slab, construction. |
| 16 | bio-era1-dried-kelp | Dried Kelp | Drying Rack (from kelp frond) | 100 | Fuel (2 MJ). Science pack ingredient. |
| 17 | bio-era1-kelp-charcoal | Kelp Charcoal | Fire Pit (from dried kelp) | 100 | Better fuel (4 MJ). Charcoal from kelp. |
| 18 | bio-era1-glasswort-ash | Glasswort Ash | Fire Pit (from glasswort) | 100 | Alkali source. Breadcrumb: soda ash for glass in Era 2. |
| 19 | bio-era1-rough-flour | Rough Flour | Grinding Slab (from sea-grain) | 100 | Coarse-ground grain. Food intermediate. |
| 20 | bio-era1-chaff | Chaff | Grinding byproduct | 100 | Waste. Composting input. |

### Tools (4 items)

| # | Internal Name | Display Name | Recipe Materials | Stack | Notes |
|---|--------------|-------------|-----------------|-------|-------|
| 21 | bio-era1-crude-hammer | Crude Hammer | 2 Calcite + 1 Kelp Stalk | 20 | General purpose. Starter item. |
| 22 | bio-era1-knapping-blade | Knapping Blade | 1 Calcite + 1 Kelp Stalk | 20 | Cutting tool. Starter item. |
| 23 | bio-era1-digging-stick | Digging Stick | 1 Kelp Stalk | 20 | Soil work. Simple tool. |
| 24 | bio-era1-pestle | Pestle | 1 Calcite + 1 Kelp Stalk + 2 Fiber Cord | 20 | Used with Grinding Slab. |

**Note:** Tools are non-consumable items in Factorio (no durability). The player starts with Hammer + Blade. Crafting recipes unlock with tech 5 (calcium precipitation) since they require calcite. The starting tools must last ~35 minutes.

### Food (3 items)

| # | Internal Name | Display Name | Source | Stack | Notes |
|---|--------------|-------------|--------|-------|-------|
| 25 | bio-era1-roasted-kelp | Roasted Kelp | Fire Pit (kelp frond) | 50 | First cooked food. Available ~20 min. |
| 26 | bio-era1-flatbread | Flatbread | Fire Pit (flour + freshwater) | 50 | Late Era 1. Requires flour + freshwater. |
| 27 | bio-era1-grain-porridge | Grain Porridge | Fire Pit (flour + freshwater) | 50 | Alternative flour food. |

**Design note:** Food has no hunger mechanic. Food is a crafting ingredient used in science packs and recipes. Glasswort is also "food" but is the raw plant item itself (used directly in recipes where food is needed).

### Composting Chain (4 items)

| # | Internal Name | Display Name | Source | Stack | Notes |
|---|--------------|-------------|--------|-------|-------|
| 28 | bio-era1-green-waste | Green Waste | Grass, glasswort, kelp frond, chaff | 100 | Nitrogen-rich. |
| 29 | bio-era1-brown-waste | Brown Waste | Kelp stalk, dried kelp | 100 | Carbon-rich. |
| 30 | bio-era1-immature-compost | Immature Compost | Compost Heap (30s) | 100 | First stage. |
| 31 | bio-era1-finished-compost | Finished Compost | Compost Heap (30s) | 100 | Final product. Future use: soil enrichment in Era 2. |

### Seeds (4 items)

| # | Internal Name | Display Name | Starting Count | Harvest Return | Stack | Notes |
|---|--------------|-------------|---------------|---------------|-------|-------|
| 32 | bio-era1-saltmarsh-grass-seed | Saltmarsh Grass Seed | 5 | 1 per harvest (sustaining) | 200 | Places Saltmarsh Grass Plant. |
| 33 | bio-era1-glasswort-seed | Glasswort Seed | 3 | 1 per harvest (sustaining) | 200 | Places Glasswort Plant. |
| 34 | bio-era1-kelp-spore-culture | Kelp Spore Culture | 2 | 1 per harvest (sustaining) | 200 | Places Kelp Plant. |
| 35 | bio-era1-sea-grain-seed | Sea-Grain Seed | 0 (extracted mid-era) | 1 per harvest (sustaining) | 200 | Places Sea-Grain Plant. Unlocked via tech 6. |

**Seed economics:** Each harvest returns exactly 1 seed. The player maintains their crop count but cannot expand without seed extraction recipes (tech 6). Extraction costs raw materials (e.g., 5 grass → 1 extra seed), so expansion has a real resource cost.

### Land Expansion (2 items)

| # | Internal Name | Display Name | Source | Stack | Notes |
|---|--------------|-------------|--------|-------|-------|
| 36 | bio-era1-woven-reed-mat | Woven Reed Mat | 4 Saltmarsh Grass + 2 Fiber Cord | 100 | Early landfill. Starting item (4). Craftable. |
| 37 | bio-era1-compressed-biomass-block | Compressed Biomass Block | Biomass Compressor (various inputs) | 100 | Main landfill. Breaks the land bottleneck. |

Both items use Factorio's `place_as_tile` mechanic — click on water to place a land tile.

**Land expansion math:**
- **Reed Mat:** 4 Grass + 2 Cord = 4 Grass + 4 Fiber = 4 Grass + 2 Grass = **6 Saltmarsh Grass per tile.**
  - From 1 plant (3 grass): 0.5 tiles. From 5 plants: 2.5 tiles per harvest cycle.
- **Biomass Block:** 5 Kelp per tile (Compressor recipe).
  - From 2 kelp plants (6 kelp): 1.2 tiles. From 4 kelp plants: 2.4 tiles per cycle.
  - Kelp is the better expansion material — grows at water's edge (always adjacent to water).

### Machine Items (11 items)

| # | Internal Name | Display Name | Entity Type | Size | Unlock |
|---|--------------|-------------|-------------|------|--------|
| 38 | bio-era1-saltwater-basin | Saltwater Basin | assembling-machine | 1×1 | Tech 1 |
| 39 | bio-era1-solar-evaporation-tray | Solar Evaporation Tray | assembling-machine | 1×1 | Tech 2 |
| 40 | bio-era1-drying-rack-frame | Drying Rack | assembling-machine | 2×1 | Tech 3 |
| 41 | bio-era1-stone-fire-pit | Stone-Lined Fire Pit | assembling-machine (burner) | 2×2 | Tech 3 |
| 42 | bio-era1-biomass-compressor | Biomass Compressor | assembling-machine | 2×1 | Tech 4 |
| 43 | bio-era1-calcium-precipitation-vat | Calcium Precipitation Vat | assembling-machine | 1×1 | Tech 5 |
| 44 | bio-era1-grinding-slab | Grinding Slab | assembling-machine | 2×1 | Tech 5 |
| 45 | bio-era1-tidal-power-generator | Tidal Power Generator | electric-energy-interface | 3×1 | Tech 7 |
| 46 | bio-era1-seaweed-desalination-bed | Seaweed Desalination Bed | assembling-machine | 2×1 | Tech 8 |
| 47 | bio-era1-compost-heap | Compost Heap | assembling-machine | 3×2 | Always |
| 48 | bio-era1-field-notebook-station | Field Notebook Station | lab | 2×2 | Always |

### Science Pack (1 item)

| # | Internal Name | Display Name | Type | Stack | Notes |
|---|--------------|-------------|------|-------|-------|
| 49 | bio-era1-tidal-observation-kit | Tidal Observation Kit | tool (durability 1) | 200 | Consumed by lab. |

**Total: 49 items.**

---

## 4. COMPLETE RECIPE LIST

### Always Available (no tech needed)

These recipes are enabled from game start. They form the minimum viable bootstrap.

```
PLANT PROCESSING
  1. Saltmarsh Grass → 2 Plant Fiber                    [hand, 1s]
  2. 2 Plant Fiber → 1 Fiber Cord                       [hand, 2s]
  3. 1 Kelp → 1 Kelp Frond + 1 Kelp Stalk              [hand, 1.5s]

LAND EXPANSION
  4. 4 Saltmarsh Grass + 2 Fiber Cord → 1 Woven Reed Mat  [hand, 3s]

WASTE CLASSIFICATION
  5. 1 Saltmarsh Grass → 1 Green Waste                  [hand, 0.5s]
  6. 1 Glasswort → 1 Green Waste                        [hand, 0.5s]
  7. 1 Kelp Frond → 1 Green Waste                       [hand, 0.5s]
  8. 1 Chaff → 1 Green Waste                            [hand, 0.5s]
  9. 1 Kelp Stalk → 1 Brown Waste                       [hand, 0.5s]
  10. 1 Dried Kelp → 1 Brown Waste                      [hand, 0.5s]

COMPOSTING (Compost Heap machine)
  11. 5 Green Waste + 5 Brown Waste → 1 Immature Compost  [composting, 30s]
  12. 1 Immature Compost → 1 Finished Compost            [composting, 30s]

INFRASTRUCTURE (always craftable)
  13. 4 Kelp Stalk + 4 Plant Fiber → 1 Compost Heap     [hand, 4s]
  14. 5 Kelp Stalk + 3 Fiber Cord → 1 Field Notebook Station  [hand, 3s]

SCIENCE
  15. 1 Dried Kelp + 1 Plant Fiber + 1 Sea Salt + 1 Calcium Precipitate → 2 TOK  [hand, 5s]
```

### Tech 1: Saltwater Collection (free research)

```
  16. (nothing) → 5 Saltwater                            [basin, 10s, passive]
  17. 4 Kelp Stalk + 4 Plant Fiber → 1 Saltwater Basin  [hand, 3s]
```

### Tech 2: Solar Evaporation (free research)

```
  18. 5 Saltwater → 2 Sea Salt + 3 Brackish Water       [evaporation, 15s]
  19. 4 Kelp Stalk + 2 Fiber Cord → 1 Solar Evaporation Tray  [hand, 4s]
```

### Tech 3: Kelp Cultivation (free research)

```
  20. 2 Kelp Frond → 1 Dried Kelp                       [drying, 30s]
  21. 1 Kelp Frond → 1 Roasted Kelp                     [kiln-firing, 5s]
  22. 2 Dried Kelp → 1 Kelp Charcoal                    [kiln-firing, 10s]
  23. 4 Kelp Stalk + 4 Fiber Cord → 1 Drying Rack       [hand, 3s]
  24. 6 Kelp Stalk + 4 Fiber Cord → 1 Stone-Lined Fire Pit  [hand, 6s]
```

### Tech 4: Biomass Compression (free research)

```
  25. 5 Saltmarsh Grass → 1 Compressed Biomass Block     [compressor, 30s]
  26. 5 Kelp → 1 Compressed Biomass Block                [compressor, 30s]
  27. 10 Plant Fiber → 1 Compressed Biomass Block        [compressor, 30s]
  28. 6 Kelp Stalk + 4 Fiber Cord → 1 Biomass Compressor  [hand, 5s]
```

### Tech 5: Calcium Precipitation (free research)

```
  29. 5 Saltwater → 1 Calcium Precipitate                [calcium-vat, 20s]
  30. 2 Calcium Precipitate → 1 Calcite                  [kiln-firing, 10s]
  31. 2 Glasswort → 1 Glasswort Ash                      [kiln-firing, 8s]
  32. 4 Kelp Stalk + 4 Fiber Cord → 1 Calcium Precipitation Vat  [hand, 4s]
  33. 5 Calcite → 1 Grinding Slab                        [hand, 5s]

TOOL RECIPES (need calcite, unlocked here)
  34. 2 Calcite + 1 Kelp Stalk → 1 Crude Hammer         [hand, 2s]
  35. 1 Calcite + 1 Kelp Stalk → 1 Knapping Blade       [hand, 2s]
  36. 1 Kelp Stalk → 1 Digging Stick                    [hand, 1s]
  37. 1 Calcite + 1 Kelp Stalk + 2 Fiber Cord → 1 Pestle  [hand, 2s]
```

### Tech 6: Halophyte Cultivation (2 TOK)

```
SEED EXTRACTION
  38. 5 Saltmarsh Grass → 1 Saltmarsh Grass Seed         [hand, 3s]
  39. 3 Glasswort → 1 Glasswort Seed                     [hand, 3s]
  40. 5 Kelp → 1 Kelp Spore Culture                      [hand, 3s]
  41. 3 Glasswort + 1 Sea Salt → 1 Sea-Grain Seed        [hand, 5s]

SEA-GRAIN PROCESSING
  42. 3 Sea-Grain → 2 Rough Flour + 1 Chaff              [grinding, 4s]
```

### Tech 7: Tidal Energy (3 TOK)

```
  43. 8 Kelp Stalk + 6 Fiber Cord + 4 Calcite → 1 Tidal Power Generator  [hand, 10s]
```

### Tech 8: Seaweed Desalination (3 TOK)

```
  44. 5 Saltwater → 3 Freshwater + 1 Mineral-Rich Brine  [desalination, 20s]
  45. 3 Mineral-Rich Brine → 2 Calcium Precipitate       [calcium-vat, 10s]
  46. 1 Rough Flour + 1 Freshwater → 2 Flatbread         [kiln-firing, 6s]
  47. 1 Rough Flour + 1 Freshwater → 2 Grain Porridge    [kiln-firing, 5s]
  48. 8 Kelp Stalk + 4 Plant Fiber + 2 Calcite → 1 Seaweed Desalination Bed  [hand, 6s]
```

### Tech 9: Coastal Ecology Hypothesis (5 TOK)

No new recipes. Era 2 transition technology.

**Total: 48 recipes.**

---

## 5. MACHINES / WORKSTATIONS

| # | Name | Size | Power | Category | Speed | Purpose |
|---|------|------|-------|----------|-------|---------|
| 1 | Saltwater Basin | 1×1 | Void (free) | saltwater-collection | 1.0 | Passive saltwater from ocean. |
| 2 | Solar Evaporation Tray | 1×1 | Void | evaporation | 1.0 | Saltwater → salt + brackish water. |
| 3 | Biomass Compressor | 2×1 | Void | biomass-compression | 1.0 | Biomass → land expansion blocks. |
| 4 | Seaweed Desalination Bed | 2×1 | Void | desalination | 1.0 | Saltwater → freshwater + brine. |
| 5 | Calcium Precipitation Vat | 1×1 | Void | calcium-precipitation | 1.0 | Saltwater/brine → calcium precipitate. |
| 6 | Grinding Slab | 2×1 | Void | grinding | 0.5 | Sea-grain → flour. Slow (manual era). |
| 7 | Drying Rack | 2×1 | Void | drying | 1.0 | Kelp frond → dried kelp. Passive. |
| 8 | Stone-Lined Fire Pit | 2×2 | Burner (chemical) | kiln-firing | 1.0 | Cooking, calcination, charcoal. Fueled by dried kelp/charcoal. |
| 9 | Compost Heap | 3×2 | Void | composting | 1.0 | Waste → compost. |
| 10 | Tidal Power Generator | 3×1 | Produces 15 kW | N/A | N/A | First real power source. Constant output. |
| 11 | Field Notebook Station | 2×2 | Void | lab | 1.0 | Research. Consumes TOK. |

**Power model:**
- **Era 1 early:** All machines are void-powered (free). This represents the manual era — the "power" is the player's labor.
- **Fire Pit exception:** Burner-powered. Requires Dried Kelp (2MJ) or Kelp Charcoal (4MJ) as fuel. This is the one machine that consumes a resource to run.
- **Tidal Power Generator (late Era 1):** Produces 15 kW constant. First electric power. Sets up the infrastructure for Era 2 machines that will require electricity.

**Void energy rationale:** In the real world, these are manual or passive processes. A drying rack uses wind/sun. An evaporation tray uses solar heat. A leaching vat uses gravity and water. Representing these as "free" is accurate. The cost is in the materials and time, not in fuel.

---

## 6. TECH TREE

### Free Techs (1–5): No science pack cost

These are gated by time only. They represent "figuring things out" through experimentation, not formal research. In the future, these could be gated by actions (e.g., "harvest 10 plants" triggers tech 1) but for now they are simple timed research in the Field Notebook Station.

| # | Name | Time | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 1 | Saltwater Collection | 30s | None | Basin recipe, saltwater collection |
| 2 | Solar Evaporation | 45s | Tech 1 | Evaporation Tray recipe, evaporation recipe |
| 3 | Kelp Cultivation | 60s | Tech 1 | Drying Rack, Fire Pit, dried/roasted kelp, charcoal |
| 4 | Biomass Compression | 60s | Tech 2 | Biomass Compressor, compression recipes |
| 5 | Calcium Precipitation | 90s | Tech 3 | Calcium Vat, calcite, glasswort ash, tools, Grinding Slab |

### TOK-Consuming Techs (6–9)

| # | Name | TOK Cost | Prerequisites | Unlocks |
|---|------|---------|--------------|---------|
| 6 | Halophyte Cultivation | 2 TOK | Tech 5 | All seed extraction, sea-grain seed, grain processing |
| 7 | Tidal Energy | 3 TOK | Tech 5 | Tidal Power Generator |
| 8 | Seaweed Desalination | 3 TOK | Tech 5 + Tech 6 | Desalination Bed, freshwater, brine→calcium, flour food |
| 9 | Coastal Ecology Hypothesis | 5 TOK | Tech 7 + Tech 8 | **ERA 2 TRANSITION** |

### TOK Bootstrap Verification

To craft TOK, the player needs: Dried Kelp + Plant Fiber + Sea Salt + Calcium Precipitate.

- **Dried Kelp** requires: Tech 3 (Kelp Cultivation) → Drying Rack + kelp
- **Plant Fiber** requires: nothing (always available from saltmarsh grass)
- **Sea Salt** requires: Tech 2 (Solar Evaporation) → Tray + saltwater
- **Calcium Precipitate** requires: Tech 5 (Calcium Precipitation) → Vat + saltwater

All four ingredients are available after tech 5 completes. Techs 1–5 are all free. **No bootstrap deadlock.** The player can produce TOK after ~35 minutes of gameplay without needing TOK.

### Science Pack Rationale

**Tidal Observation Kit** = Dried Kelp + Plant Fiber + Sea Salt + Calcium Precipitate

This requires products from four different chains:
1. **Kelp chain:** Kelp → Frond → Dried Kelp (drying rack processing)
2. **Grass chain:** Saltmarsh Grass → Plant Fiber (basic processing)
3. **Evaporation chain:** Saltwater → Sea Salt (solar evaporation)
4. **Mineral chain:** Saltwater → Calcium Precipitate (chemical precipitation)

The player must have engaged with plant cultivation, kelp processing, saltwater collection, and mineral extraction. This ensures breadth before advancing — same design principle as the old OAK.

---

## 7. CROP PLANT ENTITIES

Each seed item places a simple-entity-with-owner that can be mined for harvest.

| Plant Entity | Placed By | Mining Time | Harvest | Seed Return | Sprite (placeholder) |
|-------------|----------|-------------|---------|-------------|---------------------|
| Saltmarsh Grass Plant | Saltmarsh Grass Seed | 1s | 3 Saltmarsh Grass | 1 Saltmarsh Grass Seed | wild-grass.png |
| Glasswort Plant | Glasswort Seed | 1s | 2 Glasswort | 1 Glasswort Seed | clover.png |
| Kelp Plant | Kelp Spore Culture | 1s | 3 Kelp | 1 Kelp Spore Culture | cattail.png |
| Sea-Grain Plant | Sea-Grain Seed | 1s | 3 Sea-Grain | 1 Sea-Grain Seed | wild-grain.png |

**Growth model (current):** Instant. Plant a seed, immediately get a harvestable entity. This is a placeholder.

**Growth model (future):** 60-second growth cycle. Seeds place a "seedling" entity. After 60s (via control.lua timer), the seedling converts to a "mature" entity that can be harvested. This creates the intended rhythm: plant → wait → harvest → process → plant again. Never idle because you stagger multiple crops.

**Seed sustainability:** Each harvest returns exactly 1 seed = 1:1 replacement. To expand crop count, the player uses seed extraction recipes (tech 6), which consume raw materials for extra seeds.

---

## 8. CORE RESOURCE LOOPS

### The Water Loop
```
  Ocean (infinite)
    │
    ▼
  Saltwater Basin [passive, 10s]
    │
    ├───→ Solar Evaporation Tray ───→ Sea Salt + Brackish Water
    │
    ├───→ Calcium Precipitation Vat ──→ Calcium Precipitate
    │                                       │
    │                                  Fire Pit (calcination)
    │                                       │
    │                                       ▼
    │                                    Calcite (stone equivalent)
    │
    └───→ Seaweed Desalination Bed ──→ Freshwater + Mineral-Rich Brine
                                                        │
                                              Calcium Vat (efficient)
                                                        │
                                                        ▼
                                              Calcium Precipitate (×2)
```

### The Plant Loop
```
  Seeds ──→ Plant Entities ──→ Harvest
    ▲                              │
    │                    ┌─────────┼──────────┐
    │                    ▼         ▼          ▼
    │              Saltmarsh    Glasswort    Kelp
    │              Grass                      │
    │                │            │       Split (hand)
    │            Process       Food /     ┌────┴────┐
    │                │          Ash       ▼         ▼
    │           Plant Fiber          Kelp Frond  Kelp Stalk
    │                │                   │     (wood equiv)
    │           Fiber Cord          Dry / Roast
    │           (binding)               │
    │                              Dried Kelp
    │                              (fuel + science)
    └──── Seed Extraction (tech 6) ◄── raw materials
```

### The Land Loop
```
  Starting Island (9 + 4 mats = 13 tiles)
    │
    ├── Woven Reed Mat (Saltmarsh Grass + Fiber Cord) ──→ +1 land tile
    │   Cost: ~6 Saltmarsh Grass per tile
    │   Available: immediate (always craftable)
    │   Bottleneck: needs grass → needs land to grow grass (circular!)
    │
    └── Compressed Biomass Block (Kelp or Grass or Fiber) ──→ +1 land tile
        Cost: 5 Kelp per tile (from Kelp plant at water's edge)
        Available: tech 4 (~25 min)
        KEY: Kelp grows at water's edge → always adjacent to ocean → infinite
             This breaks the circular dependency.
```

### The Energy Loop
```
  Era 1 Early:
    All machines void-powered (free). Manual era.
    Fire Pit fueled by Dried Kelp (2MJ) or Kelp Charcoal (4MJ).

  Era 1 Late (tech 7):
    Tidal Power Generator: 15 kW constant.
    Sets up for Era 2 electric machines.
```

---

## 9. BALANCE CONSIDERATIONS

### Throughput Analysis: Saltwater Chain

**One Basin** produces 5 Saltwater per 10s = 30 Saltwater/min.

**Evaporation Tray** consumes 5 Saltwater per 15s = 20 Saltwater/min.
- Output: 8 Sea Salt/min + 12 Brackish Water/min.
- **Ratio: 1 Basin feeds 1.5 Trays.** Player likely runs 1 Basin + 1 Tray initially, with surplus saltwater.

**Calcium Vat** consumes 5 Saltwater per 20s = 15 Saltwater/min.
- Output: 3 Calcium Precipitate/min.
- **Ratio: 1 Basin feeds 2 Vats.** But 3 precipitate/min is plenty early on.

**Desalination Bed** consumes 5 Saltwater per 20s = 15 Saltwater/min.
- Output: 9 Freshwater/min + 3 Brine/min.
- **Ratio: 1 Basin feeds 2 Beds.**

**Late-game typical setup:** 2 Basins feeding 1 Tray + 1 Vat + 1 Desalination Bed = 60 supply vs 50 demand. Balanced.

### Throughput Analysis: TOK Production

TOK recipe: 1 Dried Kelp + 1 Plant Fiber + 1 Sea Salt + 1 Calcium Precipitate → 2 TOK (5s hand-craft).

**Rate:** 24 TOK/min if hand-crafting continuously (unlikely).

**Bottleneck:** Calcium Precipitate at 3/min from one Vat. This limits TOK to ~6/min (3 precipitate × 2 TOK per recipe). Easily sufficient — total TOK needed for techs 6–9 is 2 + 3 + 3 + 5 = 13 TOK.

### Land Expansion Rate

**Reed Mat path:** 6 grass per tile. From 5 saltmarsh plants (15 grass/cycle): 2.5 tiles per harvest cycle. With instant growth, this is very fast. With 60s growth timers (future), it's 2.5 tiles/minute from grass alone.

**Biomass Block path:** 5 kelp per tile. From 4 kelp plants (12 kelp/cycle): 2.4 tiles per cycle. Similar rate.

**Combined:** ~5 tiles per harvest cycle from both paths. The player's island grows rapidly once the compressor is online.

### Fire Pit Fuel Budget

Dried Kelp = 2MJ. Fire Pit uses 30kW = 30 kJ/s.
- 1 Dried Kelp lasts: 2,000,000 / 30,000 = 66.7 seconds.
- Roasting 1 kelp frond (5s) costs 5/67 = 7.5% of a dried kelp.
- Calcining 2 precipitate (10s) costs 15% of a dried kelp.
- **Very fuel-efficient.** A few dried kelp sustain significant Fire Pit use.

Kelp Charcoal = 4MJ → 133s per charcoal. Even more efficient.

---

## 10. OPEN QUESTIONS

### Growth Timers
Currently plants are instant (place seed → harvest immediately). The design calls for 60-second growth cycles. This needs control.lua scripting with seedling/mature entity swapping. **Deferred to implementation.**

### Kelp Water Placement
The design says kelp "grows in water." Current implementation places kelp on land tiles adjacent to water (which all starting tiles are). True water placement requires custom collision masks and tile_buildability_rules. **Deferred — land-adjacent placement works for gameplay purposes.**

### Brackish Water
Currently a waste byproduct of evaporation with no use. Design suggests "crops grow at 50% speed with brackish water, 100% with freshwater." This requires the growth timer system to be implemented first. **Parked until growth timers exist.**

### Biological Web / Organism Drift
The overhaul design had hidden Bio Web relationships and Organism Drift. In seablock, with manually planted crops on a tiny island, these systems need rethinking. Proximity effects between 3–4 plant types on a 13-tile island are trivially triggered. **Needs redesign for seablock scale.**

### Breadcrumb Items
The overhaul had 4 breadcrumb/anomaly items found while foraging. With no foraging, the breadcrumb mechanic needs a new delivery system. Options:
- Rare chance on harvest (e.g., 2% of kelp harvests yield an "Unusual Kelp Specimen")
- Triggered by specific conditions (e.g., grow 50 plants total → anomalous specimen appears)
- Found via a specimen collection mechanic tied to the Tidal Observation Kit

**Not yet designed. Needs its own section.**

### Era 2 Transition
The old transition was gated by "collect all 5 seed types + build Compost Heap + Water Wheel." The seablock transition (tech 9: Coastal Ecology Hypothesis) is gated by completing techs 7 + 8 (Tidal Energy + Desalination). This means the player has power, freshwater, all base materials, and seed extraction before moving to Era 2.

**Era 2 itself needs substantial rethinking for seablock.** The old Era 2 was about irrigation, greenhouses, and farm expansion across biomes. Seablock Era 2 should focus on:
- Iron from iron-oxidizing bacteria
- Silica from diatom cultures
- Copper from hyperaccumulator plants
- Advanced crop breeding (genetic profile system)
- Mechanized farming (greenhouses that use electric power)

This is outside the scope of this document.

---

## 11. REMOVED CONTENT

The following items from the overhaul Era 1 are **removed** in the seablock design:

### Foraged Items (11 — all removed)
Wild Grass, Wild Grain Head, Clover Patch, Forest Nut Cluster, Bracket Fungus, Fallen Fruit, Cattail, Bog Root, Peat Moss, Lichen Scraping, Rock Cress.

**Reason:** No biomes to forage from. All resources are cultivated from seeds or extracted from seawater.

### World Plants System (world-plants.lua — disabled)
All autoplace controls, autoplace specs, and forageable entities.

**Reason:** No world generation produces land with plants. The player's island is barren.

### Removed Intermediates
Cattail Starch, Leached Nut Meat, Dried Fungus, Lichen Paste, Peat Brick, Ash, Root Mash, Fermented Fruit Pulp, Clover Mulch, Bark Strip, Tannin Extract, Cattail Root, Cracked Nut, Shell Fragment, Raw Fungus.

### Removed Food
Nut Cake, Root Porridge (from old recipe), Fungus Broth, Trail Mix.

### Removed Tools
Leaching Basket, Bark Scraper, Drying Rack Frame (exists but adapted recipe).

### Removed Machines
Water Wheel (replaced by Tidal Power Generator), Leaching Basket entity, Collection Basket.

### Removed Seeds
Wild Grass Seed, Wild Grain Seed, Cattail Seed, Bog Root Tuber Eye, Forest Nut Seed (all biome-specific).

### Removed Anomaly Items
Bioluminescent Fungus, Ancient Seed Pod, Anomalous Grass, Unusual Clover (need new seablock-appropriate versions).

---

## 12. FLOW DIAGRAM

```
                        STARTING CONDITIONS
                    ┌──────────┬──────────┐
                    │  3×3     │  4 Reed  │
                    │  Island  │  Mats    │
                    └──────────┴──────────┘
                              │
                    Plant seeds on land tiles
                    ┌─────────┼───────────┐
                    ▼         ▼           ▼
              SALTMARSH    GLASSWORT     KELP
              GRASS                       │
                │            │        Split (hand)
           Strip Fiber    Food /     ┌────┴────┐
                │          Ash       ▼         ▼
           Plant Fiber          Kelp Frond  Kelp Stalk
                │                   │      (= wood)
           Fiber Cord          ┌────┼────┐
           (all machines)      ▼    ▼    ▼
                              Dry  Roast  Brown
                               │    │    Waste
                          Dried   Roasted
                          Kelp    Kelp
                         (fuel)  (food)
                              │
          OCEAN ──→ Saltwater Basin [tech 1]
                         │
              ┌──────────┼──────────┐
              ▼          ▼          ▼
         Evaporation  Calcium   Desalination
         Tray [t2]    Vat [t5]   Bed [t8]
              │          │          │
         Sea Salt    Calcium    Freshwater
              │      Precipitate    │
              │          │       + Brine
              │     Fire Pit        │
              │          │     Efficient
              │       Calcite   Calcium
              │      (= stone)     │
              │                    ▼
              ▼             Flour Foods
         ┌────────────────────────┐
         │  TIDAL OBSERVATION KIT │
         │  (Dried Kelp + Fiber   │
         │   + Sea Salt + CaPpt)  │
         └────────────────────────┘
                    │
              TOK → Research techs 6-9
                    │
              ERA 2 TRANSITION
```
