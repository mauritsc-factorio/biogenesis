# Biogenesis: Complete Design Document — Eras 1 & 2

---

# ERA 1: OBSERVATION

**Discipline:** Field Biology
**Duration:** 1–1.5 hours
**Resolution:** Macro-scale, whole-organism observation
**Tone:** Warm, curious, observational
**Core Insight:** Living things vary. That variation matters. Picking the bigger plant IS selective breeding.

---

## 1. COMPLETE ITEM LIST (~52 items)

### Raw Foraged Materials (11 wild plants + derivatives)

**Grassland Biome (3 plants):**
1. Wild Grass — abundant, primary fiber source
2. Wild Grain Head — less common, found in grass clusters
3. Clover Patch — nitrogen-fixer (breadcrumb: legume behavior foreshadows Era 2 rotation)

**Forest Biome (3 plants):**
4. Forest Nut Cluster — requires leaching to eat
5. Bracket Fungus — grows on trees, slow respawn
6. Fallen Fruit — seasonal appearance, ferments if stored (breadcrumb)

**Wetland Biome (3 plants):**
7. Cattail — dual-purpose: starchy root + fiber stalk
8. Bog Root — high starch, slow to process
9. Peat Moss — fuel and composting accelerant

**Rocky Biome (2 plants):**
10. Lichen Scraping — slow-growing, dye source + weak food
11. Rock Cress — small yield but hardy; tooltip notes it "grows where nothing else will"

### Stone Tools (8 items)
12. Crude Hammer — general-purpose, crafted from stone + stick
13. Knapping Blade — cutting tool for fiber processing
14. Grinding Slab — flat stone for grain/root milling (placed item, 2x1)
15. Leaching Basket — woven from fiber, used for nut processing
16. Digging Stick — root extraction, increases yield from Bog Root and Cattail
17. Bark Scraper — harvests Bracket Fungus and Lichen without destroying the source
18. Drying Rack Frame — built from sticks + fiber cord, for drying/curing
19. Pestle — used with Grinding Slab, consumed slowly (durability)

### Processed Intermediates (14 items)
20. Plant Fiber — from Wild Grass, Cattail stalk
21. Fiber Cord — twisted fiber, universal binding material
22. Rough Flour — from Wild Grain via Grinding Slab
23. Cattail Starch — from Cattail root via washing + grinding
24. Leached Nut Meat — from Forest Nut after toxin removal
25. Dried Fungus — from Bracket Fungus via Drying Rack
26. Lichen Paste — from Lichen Scraping via grinding + water
27. Peat Brick — from Peat Moss, compressed and dried, fuel source
28. Ash — byproduct of burning Peat Brick (breadcrumb: alkali source in Era 2)
29. Root Mash — from Bog Root via pounding + water
30. Fermented Fruit Pulp — from Fallen Fruit left in storage (passive process, breadcrumb for yeast)
31. Clover Mulch — from Clover, used in composting
32. Bark Strip — from trees, secondary fiber
33. Tannin Extract — from bark soaking in water (breadcrumb: leather-working later)

### Food Items (5 items)
34. Flatbread — from Rough Flour + water, cooked on hot stone
35. Nut Cake — from Leached Nut Meat, pressed and dried
36. Root Porridge — from Root Mash or Cattail Starch + water, cooked
37. Fungus Broth — from Dried Fungus + water, cooked
38. Trail Mix — Leached Nut Meat + Dried Fungus + Rough Flour, no cooking needed

### Composting Chain (4 items)
39. Green Waste — any plant matter flagged as "fresh" (grass, clover, scraps)
40. Brown Waste — dried/carbon-rich matter (bark, dried cattail leaf, peat)
41. Immature Compost — early-stage decomposition (visual: dark, chunky)
42. Finished Compost — completed composting cycle (breadcrumb: tooltip says "teeming with life you cannot see")

### Infrastructure / Placeable Items (5 items)
43. Drying Rack (entity) — 2x1, passive, cures items over time
44. Compost Heap (entity) — 3x2, requires green + brown waste layering
45. Water Wheel (entity) — 3x3, must be placed on water tile, first power source
46. Stone-Lined Fire Pit (entity) — 2x2, fueled cooking station
47. Collection Basket (entity) — 1x1, output buffer for Water Wheel chain

### Seeds (discovered through processing, 5 items)
48. Wild Grass Seed — found when processing Wild Grass (~20% chance per batch)
49. Wild Grain Seed — found when threshing Wild Grain Head (~15% chance)
50. Cattail Seed — found when processing Cattail root (fluffy seeds in the stalk)
51. Bog Root Tuber Eye — found when cutting Bog Root (~10% chance, stores well)
52. Forest Nut Seed — occasionally found inside intact nut shells (~8% chance)

### Breadcrumb / Anomaly Items (4 items, rare)
53. Strange Bioluminescent Fungus — ~3% drop from Bracket Fungus harvest; tooltip: "It pulses faintly. You have no framework to understand why." Cannot be processed. Stores indefinitely. Pays off in Era 5 (Luciferase Gene Extraction — see eras-5-6-final.md amendments).
54. Ancient Seed Pod — ~2% from Rocky Biome foraging; tooltip: "Impossibly old. The outer shell resists every tool you have." Indestructible in Era 1. Pays off in Era 5 (Ancient Genome Recovery — see eras-5-6-final.md amendments).
55. Anomalous Grass Specimen — ~5% when foraging Wild Grass; noticeably taller/different-colored sprite. Tooltip: "This one is... different. Bigger. Healthier. You wonder why." First hint of variation. Pays off conceptually when the player realizes they have been unconsciously selecting for traits.
56. Unusual Clover — ~4% from Clover; has four leaves in the sprite. Tooltip: "Four leaves instead of three. A mutation? Or something more?" Composting this produces slightly better compost (hidden bonus, +5%).

---

## 2. COMPLETE RECIPE LIST (~38 recipes)

### Fiber Processing Chain
```
Wild Grass ──→ [Hand, Knapping Blade] ──→ 2 Plant Fiber + (20% Wild Grass Seed)
Cattail ──→ [Hand, Knapping Blade] ──→ 1 Plant Fiber + 1 Cattail Root (intermediate)
Bark Strip ──→ [Bark Scraper, Tree] ──→ 1 Bark Strip
2 Plant Fiber ──→ [Hand] ──→ 1 Fiber Cord
```

**Recipes:**
1. Wild Grass → 2 Plant Fiber (+ chance Wild Grass Seed) — Hand + Knapping Blade, 1s
2. Cattail → 1 Plant Fiber + 1 Cattail Root — Hand + Knapping Blade, 1.5s
3. 2 Plant Fiber → 1 Fiber Cord — Hand craft, 2s
4. Bark Strip from Tree — Bark Scraper, 3s

### Grain Processing Chain
```
Wild Grain Head ──→ [Hand, Grinding Slab] ──→ Rough Flour + Chaff
                                                        └──→ (15% Wild Grain Seed in Chaff)
Chaff ──→ Green Waste (composting input)
Rough Flour + Water ──→ [Stone-Lined Fire Pit] ──→ Flatbread
```

**Recipes:**
5. 3 Wild Grain Head → 2 Rough Flour + 1 Chaff (+ chance Wild Grain Seed) — Grinding Slab + Pestle, 4s
6. 1 Rough Flour + 10 Water → 2 Flatbread — Stone-Lined Fire Pit, 6s

### Root/Starch Processing Chain
```
Cattail Root ──→ [Water, Grinding Slab] ──→ Cattail Starch
Bog Root ──→ [Digging Stick] ──→ Bog Root (higher yield)
Bog Root ──→ [Crude Hammer, Water] ──→ Root Mash + (10% Bog Root Tuber Eye)
Root Mash / Cattail Starch + Water ──→ [Fire Pit] ──→ Root Porridge
```

**Recipes:**
7. 2 Cattail Root + 10 Water → 2 Cattail Starch + 5 Tannin Water — Grinding Slab, 5s
8. Bog Root → Root Mash (+ chance Bog Root Tuber Eye) — Crude Hammer + Water, 4s
9. 1 Root Mash + 10 Water → 2 Root Porridge — Stone-Lined Fire Pit, 5s
10. 1 Cattail Starch + 10 Water → 2 Root Porridge — Stone-Lined Fire Pit, 5s

### Nut Leaching Chain
```
Forest Nut Cluster ──→ [Crude Hammer] ──→ Cracked Nut + Shell Fragment
Cracked Nut ──→ [Leaching Basket + Water, 30s passive] ──→ Leached Nut Meat + Tannin Water
                                                                                └── (8% Forest Nut Seed)
Leached Nut Meat ──→ [Grinding Slab] ──→ Nut Cake
Shell Fragment ──→ Brown Waste
```

**Recipes:**
11. 3 Forest Nut Cluster → 3 Cracked Nut + 2 Shell Fragment — Crude Hammer, 3s
12. 3 Cracked Nut + 20 Water → 2 Leached Nut Meat + 10 Tannin Water (+ chance Forest Nut Seed) — Leaching Basket, 30s passive
13. 2 Leached Nut Meat → 1 Nut Cake — Grinding Slab, 4s

### Fungus Processing Chain
```
Bracket Fungus ──→ [Bark Scraper] ──→ Raw Fungus (+ 3% Strange Bioluminescent Fungus)
Raw Fungus ──→ [Drying Rack, 60s passive] ──→ Dried Fungus
Dried Fungus + Water ──→ [Fire Pit] ──→ Fungus Broth
```

**Recipes:**
14. Bracket Fungus → 2 Raw Fungus (+ rare Bioluminescent Fungus) — Bark Scraper, 2s
15. 2 Raw Fungus → 1 Dried Fungus — Drying Rack, 60s passive
16. 1 Dried Fungus + 10 Water → 2 Fungus Broth — Stone-Lined Fire Pit, 5s

### Composting Chain
```
Green Waste (grass, clover, chaff, scraps) ─┐
                                             ├──→ [Compost Heap, 120s] ──→ Immature Compost ──→ [120s more] ──→ Finished Compost
Brown Waste (bark, shell, dried leaves, peat)┘
```

**Recipes:**
17. 5 Green Waste + 5 Brown Waste → Compost Heap loading — Hand, 3s
18. Compost Heap (loaded) → Immature Compost — 120s passive
19. Immature Compost → Finished Compost — 120s passive (total cycle: 4 minutes)

### Waste Classification Recipes
20. Chaff → 1 Green Waste — Hand, instant
21. Clover Patch → 2 Clover Mulch (Green Waste) — Hand, 1s
22. Shell Fragment → 1 Brown Waste — Hand, instant
23. Bark Strip → 1 Brown Waste — Hand, instant
24. Dried Cattail Leaf (from Cattail processing) → 1 Brown Waste — Hand, instant
25. Peat Moss → 1 Peat Brick OR 2 Brown Waste — Hand, 2s / instant

### Fuel & Cooking
26. 2 Peat Moss → 1 Peat Brick — Hand press, 3s
27. Peat Brick → Ash (after burning as fuel) — Fire Pit byproduct
28. Trail Mix: 1 Leached Nut Meat + 1 Dried Fungus + 1 Rough Flour → 3 Trail Mix — Hand, 3s

### Tool Crafting
29. 2 Stone + 1 Stick → 1 Crude Hammer — Hand, 2s
30. 1 Stone + 1 Stick → 1 Knapping Blade — Hand, 2s
31. 1 Flat Stone + 4 Stone → 1 Grinding Slab — Hand, 5s (placed)
32. 6 Plant Fiber + 2 Stick → 1 Leaching Basket — Hand, 4s
33. 1 Stick → 1 Digging Stick — Hand, 1s (sharpened)
34. 1 Stone + 1 Stick → 1 Bark Scraper — Hand, 2s
35. 4 Stick + 4 Fiber Cord → 1 Drying Rack Frame — Hand, 3s (placed)
36. 1 Stone + 1 Stick + 2 Fiber Cord → 1 Pestle — Hand, 2s

### Infrastructure
37. 8 Stone + 4 Fiber Cord + 2 Peat Brick → 1 Stone-Lined Fire Pit — Hand, 8s (placed, 2x2)
38. 6 Wood + 4 Fiber Cord + 2 Stone → 1 Water Wheel — Hand, 10s (placed, 3x3, on water)

### Major Flow Diagram: Era 1 Full Chain
```
                    FORAGING (4 biomes)
                         │
        ┌────────┬───────┼───────┬──────────┐
        ▼        ▼       ▼       ▼          ▼
     FIBER    GRAIN    ROOT    NUT       FUNGUS
        │        │       │       │          │
   Knapping  Grinding  Pound  Crack     Bark Scrape
   Blade     Slab+     +Water  +Hammer      │
        │    Pestle      │       │      Drying Rack
        ▼        │       ▼       ▼          │
   Plant      Rough    Root   Cracked      Dried
   Fiber      Flour    Mash    Nut        Fungus
        │        │       │       │          │
   twist     +Water  +Water   Leach      +Water
        ▼        ▼       ▼    Basket        ▼
   Fiber     Flatbread Root   30s pass  Fungus
   Cord              Porridge    │       Broth
        │                    Leached
        │                    Nut Meat      ALL WASTE
        │                        │            │
        ▼                    Nut Cake    ┌────┴────┐
   (binds everything)              Green     Brown
                                   Waste     Waste
                                      │         │
                                      └────┬────┘
                                           ▼
                                     COMPOST HEAP
                                           │
                                    Finished Compost
                                           │
                              ┌─────── SEEDS ──────┐
                              │   (found during     │
                              │    processing)      │
                              ▼                     ▼
                         ERA 1 → ERA 2 TRANSITION
```

---

## 3. MACHINES / WORKSTATIONS

| # | Name | Size | Power | Purpose | Notes |
|---|------|------|-------|---------|-------|
| 1 | Grinding Slab | 2x1 | Manual (player + Pestle) | Grain milling, root grinding, lichen paste | Consumes Pestle durability (50 uses) |
| 2 | Drying Rack | 2x1 | Passive (time) | Cures fungus, dries cattail leaves, dries fibers | 60s cycle, 2 slots |
| 3 | Leaching Basket | 1x1 | Passive (needs water proximity) | Removes tannins from nuts | 30s cycle, must be within 3 tiles of water |
| 4 | Stone-Lined Fire Pit | 2x2 | Peat Brick fuel | Cooking all food items | Burns 1 Peat Brick per 4 recipes, produces Ash |
| 5 | Compost Heap | 3x2 | Passive (time + layering) | Green+Brown waste → Finished Compost | 4 min full cycle. Biological Web participant. |
| 6 | Water Wheel | 3x3 | Water current (placed on river) | First automation: powers Grinding Slab at distance | Must connect via Fiber Cord belt to a Grinding Slab within 8 tiles |
| 7 | Collection Basket | 1x1 | None | Output buffer for automated processes | Holds 20 stacks. Used at Water Wheel output. |

**Water Wheel detail:** At minute ~30, the player builds the Water Wheel and connects it to a Grinding Slab via a Fiber Cord belt. This automates grain milling — the first moment something runs without the player. The player drops Wild Grain Heads into an input basket; the Water Wheel-powered Slab grinds them automatically; output goes to a Collection Basket. This frees the player to forage while flour is produced. It is a tiny moment of automation, but it is the seed of the factory.

---

## 4. FLUIDS

| # | Name | Source | Use |
|---|------|--------|-----|
| 1 | Fresh Water | Rivers, ponds | Cooking, leaching, starch extraction, composting moisture |
| 2 | Tannin Water | Byproduct of nut leaching and cattail starch extraction | Breadcrumb: stored for Era 2 leather tanning. Currently "waste" — tooltip: "Bitter brown water. It stains everything it touches." |

Note: Tannin Water is deliberately presented as waste in Era 1. Players who store it gain an advantage in Era 2. Players who void it lose nothing critical but miss efficiency later. This rewards curiosity without punishing ignorance.

---

## 5. TECH TREE

Era 1 uses a simplified research mechanic: **Field Notebook entries**. The player does not build a lab. Instead, performing actions (foraging, processing, observing) fills notebook entries. Once enough entries are filled, a research "insight" unlocks.

| # | Research Name | Chapter | Prerequisite | Unlock | Notebook Trigger |
|---|-------------|---------|-------------|--------|-----------------|
| 1 | Forager's Eye | Field Observations | None (start) | Highlights nearby wild plants with subtle particle effect | Forage 20 plants of any type |
| 2 | Material Properties | Field Observations | Forager's Eye | Unlocks Knapping Blade, Bark Scraper, Digging Stick | Process 10 items on Grinding Slab |
| 3 | Fiber Arts | Field Observations | Material Properties | Unlocks Fiber Cord, Leaching Basket, Drying Rack | Craft 20 Plant Fiber |
| 4 | Thermal Processing | Field Observations | Material Properties | Unlocks Stone-Lined Fire Pit, all cooked food recipes | Collect 5 Peat Brick |
| 5 | Decomposition Basics | Field Observations | Fiber Arts + Thermal Processing | Unlocks Compost Heap, Green/Brown waste classification | Observe a Fallen Fruit ferment (leave one in inventory 2+ minutes) |
| 6 | Hydraulic Observation | Field Observations | Fiber Arts | Unlocks Water Wheel + automated Grinding Slab | Stand near river for 10 seconds (triggers notebook entry about water force) |
| 7 | Seeds of Potential | Field Observations | Decomposition Basics + 3 seed types collected | Unlocks seed identification, Specimen Log (UI element showing seeds found) | Discover 3 different seed types through processing |
| 8 | Variation Awareness | Field Observations | Seeds of Potential + find 1 anomalous specimen | Tooltip upgrade: wild plants now show "Quality: Variable" label | Find any anomalous/unusual specimen |
| 9 | Cultivation Hypothesis | Field Observations | All 5 seed types + Compost Heap + Water Wheel built | **ERA TRANSITION RESEARCH** — unlocks Era 2 | Collect all 5 seed types, build and operate Compost Heap, build Water Wheel |

---

## 6. SCIENCE PACK: Observational Analysis Kit

**Recipe:** 1 Rough Flour + 1 Dried Fungus + 1 Fiber Cord + 1 Finished Compost → 2 Observational Analysis Kit

**Design rationale:** Requires products from four different chains (grain, fungus, fiber, composting). The player must have engaged with at minimum the grassland (grain), forest (fungus), general foraging (fiber), and waste management (compost) systems. This ensures breadth of exploration before advancing.

**Tooltip:** "A bundle of dried samples, pressed fibers, and soil specimens. Organized observations of the natural world."

**Usage:** Consumed by Field Notebook entries for research items 5-9 (earlier research is free, gated only by actions). This means the player must produce these kits in modest quantity (roughly 15-20 total) to complete Era 1 research.

---

## 7. BIOLOGICAL WEB SPECIFICS (Era 1)

**State:** Completely hidden. No UI. No tooltips. No indication the system exists.

**Active participants:**
- Compost Heap (influence radius: 6 tiles)
- Wild Grass clusters (influence radius: 4 tiles)
- Clover Patch (influence radius: 5 tiles)
- Bracket Fungus spawns (influence radius: 4 tiles)
- Fallen Fruit trees (influence radius: 6 tiles)

**Active relationships (all hidden):**
| Entity A | Entity B | Type | Effect |
|----------|----------|------|--------|
| Clover Patch | Wild Grain Head (nearby) | Mutualistic (++) | +15% grain yield when foraging near clover |
| Compost Heap | Any wild plant within radius | Commensal (+0) | +10% forage yield from plants near compost heap |
| Same wild plant clusters | Same wild plant clusters | Competitive (--) | -10% yield when 3+ same-type plants overlap |
| Bracket Fungus | Fallen Fruit tree | Commensal (+0) | +5% fungus regrowth speed near fruit trees |
| Peat Moss | Cattail | Mutualistic (++) | +8% cattail yield in peat-adjacent wetland |

**What the player observes:** Nothing explicit. But an attentive player may notice: "I get more grain when I forage near that clover patch." "Plants near my compost heap seem to give more." These are small enough to be dismissed as randomness — which is historically accurate to pre-scientific agriculture. The player IS doing field biology. They just do not have the framework to name it yet.

---

## 8. ORGANISM DRIFT SPECIFICS (Era 1)

**State:** Active but extremely slow. era_scaling = 0.3 means the base 5-minute tick becomes effectively a 16.7-minute tick.

**What drifts:**
- Wild plant forage yields (minor: +/- 2%, moderate: +/- 5%)
- Wild plant regrowth timers (minor: +/- 3 seconds)
- Seed discovery probability (minor: +/- 1%)

**Drift bias:** In Era 1, drift is subtly biased toward beneficial when near a Compost Heap (positive web relationship). Plants near the player's base (where compost is) slowly become slightly more productive than distant plants. This creates a gentle, invisible incentive to forage locally — which prepares the player for the "field near base" mentality of farming.

**What the player notices:** Almost nothing, by design. Perhaps over the full 1–1.5 hours, a veteran player might note that one patch of Wild Grass yields 3 fiber instead of 2 occasionally. This is the mod whispering: "variation exists." But the player cannot act on it yet.

**Mutation events (1% tier):** In Era 1, a mutation event on a wild plant produces the Anomalous Grass Specimen or equivalent anomalous item. This is the primary source of these breadcrumb items. The player encounters them and thinks "that's weird." Later, they will understand it was drift.

---

## 9. BREADCRUMB ITEMS

| Item | Drop Source | Drop Rate | Era Payoff | Storage Note |
|------|------------|-----------|------------|-------------|
| Strange Bioluminescent Fungus | Bracket Fungus harvest | ~3% | Era 5 (Luciferase Gene Extraction — yields unique gene template for bioluminescence chain through Era 9) | Doesn't spoil. Glows faintly in inventory. |
| Ancient Seed Pod | Rocky biome foraging | ~2% | Era 5 (Ancient Genome Recovery — extinct trait alleles, see eras-5-6-final.md) | Indestructible. Cannot be planted or processed. |
| Anomalous Grass Specimen | Wild Grass foraging (drift mutation) | ~5% | Era 2-3 (conceptual: player realizes variation = selection) | Tooltip changes retroactively in Era 2 to reveal trait values |
| Unusual Clover | Clover foraging | ~4% | Era 2 (hidden compost bonus teaches "better inputs = better outputs") | Slightly different sprite (four-leaf) |
| Fermented Fruit Pulp | Fallen Fruit left in inventory 2+ min | 100% (passive) | Era 2 (yeast culture precursor, fermentation chain) | Tooltip: "Bubbling slightly. Something is alive in there." |
| Ash (from Peat Brick) | Fire Pit byproduct | 100% | Era 2 (alkali for fiber processing, soap-making) | Tooltip: "White powder. Caustic to the touch." |
| Tannin Water | Nut leaching / cattail processing | 100% | Era 2 (leather tanning, dye mordant) | Fluid. Player may void it or store it. |

---

## 10. KEY ITEMS WITH SCIENTIFIC TOOLTIPS (Era 1)

1. **Wild Grass Seed** — *"Tiny. Almost weightless. Yet it contains instructions for building an entire plant. You found it by accident, tangled in the chaff. How many did you miss before?"*

2. **Finished Compost** — *"Dark, crumbly, warm to the touch. What went in was waste. What came out is... something else. Countless tiny organisms did this work — you just provided the conditions."*

3. **Anomalous Grass Specimen** — *"This one is different from the others. Taller. Thicker stem. More seed heads. Is this random chance, or does this plant know something its neighbors don't?"*

4. **Ancient Seed Pod** — *"The shell is harder than any stone you've found. Whatever is inside has been waiting — patiently, impossibly — for conditions that haven't existed in a very long time."*

5. **Fermented Fruit Pulp** — *"You left it too long and it changed. Bubbles rise from the mash. This isn't rot — rot destroys. Something is building in here. Eating the sugar. Producing... what?"*

6. **Strange Bioluminescent Fungus** — *"A cold, blue-green light pulses from the cap in a rhythm you can almost predict. Bioluminescence — light from life. The chemistry behind this glow is beyond anything you can analyze. For now."*

7. **Leached Nut Meat** — *"Thirty minutes in running water transformed this from bitter and toxic to mild and nourishing. The water carried something away — a chemical defense the tree built to protect its offspring. You undid millennia of evolution with a basket and a stream."*

8. **Fiber Cord** — *"Two weak fibers twisted together become stronger than either alone. The principle is simple. The implications are not."*

9. **Clover Mulch** — *"The roots of this plant are studded with small, pale nodules. You have no idea what they do. But the soil around clover always seems... richer."* (Foreshadows nitrogen fixation.)

10. **Compost Heap** (entity tooltip) — *"Layers of green and brown waste, dampened and left to time. The heat rising from the center tells you something is happening in there — something busy, something hungry, something far too small to see."*

---

## 11. THE "ZOOM IN" MOMENT

**Moment:** Researching "Seeds of Potential" (tech #7).

**What happens:** The player has just discovered their third seed type. They have been processing Wild Grass, threshing grain, pounding roots — and seeds have been appearing as byproducts. The Field Notebook entry reads:

> *"I've been finding seeds in everything I process. They were always there — I was throwing them away with the chaff, losing them in the wash water, grinding them to paste. Every plant I've eaten was once a seed. Every seed I hold could become a plant. The cycle is older than I am. Older than anything."*

**Mechanical consequence:** A new UI element appears: the **Specimen Log**. It shows each seed type discovered, with a silhouette icon and the text: "Origin: Wild. Traits: Unknown. Potential: Unknown." This is the first time the game formally acknowledges that seeds are not identical commodities — they are individuals with hidden properties. The player cannot read the traits yet. But the frame has been placed.

**Why this works:** The player has been doing selective gathering for an hour — choosing which patches to forage, which plants to take, unconsciously favoring productive areas. The Specimen Log recontextualizes this behavior as proto-science. You were already selecting. You just did not have a name for it.

---

## 12. ANTI-GRIND MEASURES

1. **Water Wheel at minute ~30:** Automates grain milling. The single most repetitive action (grinding grain head after grain head) gets automated first. This frees the player to explore, forage new biomes, and experiment with other chains.

2. **Drying Rack is passive:** Place fungus, walk away, come back. No babysitting.

3. **Compost Heap is passive:** Load it, leave it, return in 4 minutes. Encourages the player to do other things while compost cycles.

4. **Leaching Basket is passive:** 30 seconds per batch. Player loads and leaves.

5. **Foraging is mobile:** The player is never standing still grinding a single resource. All four biomes require movement. Different plants in different places keeps the "gather" phase feeling like exploration, not mining.

6. **Multiple food types are equivalent:** Flatbread, Nut Cake, Root Porridge, Fungus Broth, and Trail Mix all satisfy the same hunger need. The player can lean into whichever chain they prefer. No single food is mandatory.

7. **Seed discovery is organic:** Seeds appear as byproducts of processing the player is already doing. There is no separate "seed grinding" step. The player does not need to grind any specific resource — they discover seeds by doing what they were already going to do.

8. **Research triggers are behavioral, not material:** Most Era 1 research unlocks by performing actions (forage X plants, process Y items, stand near a river), not by consuming large quantities of resources. This means the player progresses by playing, not by stockpiling.

---

## 13. CROSS-ERA CONNECTIONS (Era 1 → Era 2)

| Era 1 Element | Era 2 Payoff |
|--------------|-------------|
| 5 seed types discovered | Become the 5 starter crops (Wild Grass → Wheat equivalent, Wild Grain → Barley, Cattail → Flax stand-in until real flax, Bog Root → Potato, Forest Nut → permanent orchard tree) |
| Finished Compost | Required for first farm plots. Directly becomes Soil Quality Tier 1 amendment. |
| Compost Heap | Upgraded to Managed Compost Bin (mk1 machine) in Era 2 |
| Water Wheel | Upgraded to power Era 2 machines. Becomes primary power source for all mk1 equipment. |
| Fiber Cord | Base material for Era 2 textile chain (eventually replaced by flax/hemp cord, but Fiber Cord remains useful for tool handles and bindings) |
| Tannin Water (if stored) | Directly usable in Era 2 leather tanning and dye mordant recipes. Saving it skips ~10 minutes of re-production. |
| Ash (if stored) | Directly usable in Era 2 alkali recipes (fiber retting, soap). Skips ~5 minutes. |
| Fermented Fruit Pulp (if stored) | Can be used to jumpstart yeast culture in Era 2, saving ~15 minutes of barley fermentation waiting. |
| Anomalous specimens (if stored) | Retroactively gain readable trait values in Era 2. Typically above-average, rewarding the player for keeping "weird" items. |
| Grinding Slab | Superseded by Millstone (mk1) but remains functional for emergency manual processing. |
| Field Notebook research | Carries over. All Era 1 insights remain active. |
| Biological Web state | All drift that occurred in Era 1 carries forward. Plants near the old base are slightly better than wild baseline. |

---

## 14. ERA TRANSITION: Era 1 → Era 2

**Trigger:** Research "Cultivation Hypothesis" — requires all 5 seed types collected + Compost Heap built and completed at least one cycle + Water Wheel built and operational.

**Transition sequence:**

1. The final Field Notebook entry reads: *"I have seeds. I have enriched soil. I have water and the means to move it. Everything I need to grow my own food is in my hands. I don't need to wander anymore. I can stay. I can plant. I can choose which seeds go into the ground — and that choice, I suspect, will matter more than I can currently fathom."*

2. **Reward: Cultivation Starter Kit** — the player receives:
   - 5x of each discovered seed type (bonus stock to begin farming)
   - 1x Tilled Soil Plot recipe (the first plantable surface)
   - 1x Simple Planter schematic (Era 2 automation seed)
   - Specimen Log upgrade: seeds now show "Quality: Wild" label
   - Research chapter changes from "Field Observations" to "Selective Cultivation"

3. The Observational Analysis Kit recipe remains craftable but is no longer required for Era 2 research. The new Controlled Environment Dataset takes over.

4. **Visual shift:** Subtle. The research UI background color warms slightly. The Field Notebook gains a new section header. Nothing dramatic — the world is the same. The player's understanding of it has changed.

---

---

# ERA 2: CULTIVATION

**Discipline:** Agricultural Science / Applied Ecology
**Duration:** 14–18 hours
**Resolution:** Population-scale, multi-variable observation
**Tone:** Methodical, encouraging, scientific
**Core Insight:** Growth responds to controlled variables. Seeds carry heritable information you cannot read yet.

---

## 1. COMPLETE ITEM LIST (~128 items)

### Seeds & Planting Material (12 crops + wild carryovers)

**Seed Types (each exists in Wild / Farm / Select quality):**
1. Wheat Seed (from Wild Grain Seed)
2. Potato Tuber (from Bog Root Tuber Eye)
3. Flax Seed (new, found in Era 2 trade/exploration)
4. Bean Seed (new, found growing wild on field edges once farming begins)
5. Cabbage Seed (new, unlocked via research)
6. Beet Seed (new, unlocked via research)
7. Sunflower Seed (new, trade/exploration)
8. Hemp Seed (new, found in wetland once farming is established)
9. Turnip Seed (new, unlocked via research)
10. Herb Seed (mixed herbs, from transplanting wild specimens)
11. Barley Seed (from Wild Grain Seed variant — player discovers some "wheat" seeds produce different plants)
12. Onion Set (new, unlocked via research)

**Seed Quality Tiers:**
- Wild: Base stats. Tooltip: "Collected from untamed stock. Traits: uncontrolled."
- Farm: +10-15% improved yield/growth. Tooltip: "Saved from your best harvest. Slightly more predictable."
- Select: +20-30% improved yield/growth. Tooltip: "Chosen repeatedly for desirable traits. This is what your grandparents called 'good seed.'"

**Quality tooltip on all crops:** "Genetic Profile: [LOCKED] — Yield: ???, Growth Rate: ???, Hardiness: ???, Special: ???"

### Raw Crop Harvests (12 primary + byproducts)
13. Wheat Sheaf
14. Potato (raw)
15. Flax Straw (bundled stems)
16. Bean Pod
17. Cabbage Head
18. Beetroot
19. Sunflower Head
20. Hemp Stalk
21. Turnip
22. Herb Bundle (mixed)
23. Barley Sheaf
24. Onion Bulb

### Grain Processing Products (wheat chain)
25. Wheat Straw (threshing byproduct)
26. Wheat Grain (cleaned)
27. Wheat Chaff (cleaning byproduct)
28. Wheat Flour
29. Wheat Bran (milling byproduct)
30. Wheat Germ (milling byproduct, breadcrumb: nutritional/oil source)
31. Bread Dough
32. Bread Loaf
33. Wheat Starch (secondary extraction from flour + water)

### Barley Processing Products
34. Barley Straw
35. Barley Grain (cleaned)
36. Barley Malt (from controlled germination + drying)
37. Barley Flour
38. Malt Extract (from mashing barley malt + water)
39. Wort (from boiling malt extract)
40. Yeast Culture (from fermenting wort — critical cross-crop dependency)
41. Beer (from wort + yeast + time — luxury/trade good)
42. Spent Grain (fermentation byproduct — animal feed/compost)

### Potato Processing Products
43. Potato Starch (extraction via grating + water)
44. Potato Flour (dried starch)
45. Potato Peel (processing byproduct — compost)
46. Boiled Potato (simple food)

### Root Vegetable Products (beet, turnip, onion)
47. Beet Sugar (from beet pressing + evaporation)
48. Beet Pulp (pressing byproduct — compost/animal feed)
49. Beet Juice (intermediate)
50. Turnip Mash (food)
51. Pickled Turnip (preservation via brine)
52. Onion Flakes (dried)
53. Pickled Onion (preservation)
54. Pickling Brine (salt + water + vinegar, reusable fluid)

### Bean Products
55. Shelled Beans (from pod)
56. Bean Flour (milled)
57. Dried Beans (storage form)
58. Bean Pod Husk (composting material)

### Cabbage Products
59. Cabbage Leaves (outer, processing waste → compost)
60. Cabbage Core (inner, food-grade)
61. Sauerkraut (lacto-fermented cabbage — requires salt only, natural Lactobacillus on cabbage does the work)
62. Cabbage Seed (saved from bolted plants — teaches seed saving)

### Sunflower Products
63. Sunflower Seeds (from head threshing)
64. Sunflower Oil (from pressing seeds)
65. Seed Cake (pressing byproduct — animal feed, compost)
66. Sunflower Husk (threshing byproduct)

### Textile Chain Products (flax + hemp parallel paths)
67. Retted Flax (from flax straw + water retting)
68. Flax Fiber (from breaking retted flax)
69. Flax Tow (short fiber byproduct — rough textile, stuffing)
70. Scutched Flax (cleaned long fiber)
71. Flax Yarn (from spinning scutched flax)
72. Linen Cloth (from weaving flax yarn)
73. Retted Hemp (from hemp stalk + water retting)
74. Hemp Fiber (from breaking retted hemp)
75. Hemp Tow (short fiber byproduct)
76. Scutched Hemp (cleaned long fiber)
77. Hemp Rope (from spinning scutched hemp — stronger than fiber cord)
78. Hemp Canvas (from weaving hemp — coarser than linen)
79. Linseed (flax seed pressed for oil instead of planting)
80. Linseed Oil (preservative, waterproofing, breadcrumb: chemical reagent later)

### Herb Products
81. Dried Herbs (general preservation)
82. Herb Tincture (herbs + alcohol from beer distillation side-path)
83. Medicinal Poultice (herbs + linen cloth — healing item)
84. Herb Seed (saved from flowering herbs)

### Soil & Composting Products
85. Finished Compost (carried from Era 1)
86. Enriched Compost (compost + specific additives: bone meal, ash, clover mulch)
87. Soil Amendment: Calcium (from ground shells/limestone + compost)
88. Soil Amendment: Nitrogen (from clover/bean rotation residue)
89. Soil Amendment: Potassium (from ash + compost)
90. Worm Castings (from worm farm)
91. Green Manure (from plowing under clover/bean cover crop)

### Biological Web Entities (new in Era 2)
92. Beehive (placed entity, interacts with flowers/crops)
93. Worm Farm (placed entity, processes waste into castings)
94. Clover Cover Crop (plantable, nitrogen fixer)
95. Companion Flower Bed (plantable, attracts pollinators)
96. Irrigation Channel (placed entity, water distribution)

### Preservation & Storage
97. Salt (from brine evaporation or rock salt mining)
98. Vinegar (from oxidized beer/fermented fruit)
99. Brine (salt + water fluid)
100. Preserved Vegetables (generic output of pickling)
101. Dried Grain Sack (bulk storage, reduces spoilage)
102. Root Cellar Crate (bulk storage for tubers)

### Prepared Foods (complex recipes)
103. Bread Loaf (flour + yeast + water + fire)
104. Vegetable Stew (3+ different vegetables + water + fire)
105. Potato Bread (potato flour + wheat flour + yeast)
106. Seed Cake (food) (sunflower + grain, pressed)
107. Beet Sugar Candy (beet sugar + heat, luxury)
108. Herb-Crusted Bread (bread + dried herbs)

### Tools & Equipment Components
109. Improved Handle (wood + hemp rope — upgrades tool durability)
110. Linen Filter (linen cloth, used in oil pressing and starch extraction)
111. Wooden Gear (carved, Water Wheel power transmission)
112. Stone Weight (used in pressing operations)
113. Ceramic Pot (fired clay — cooking, fermenting, storage)
114. Copper Fitting (minimal metal — used only in mk2 machines, signaling Era 3)

### Breadcrumb / Anomaly Items
115. Mutant Crop Specimen — ~2% on any harvest. Tooltip: "This plant expressed traits you've never seen before. A yield far above its siblings. Growth pattern unlike its row-mates. If you could understand why..." Visible Genetic Profile shows one stat unlocked (e.g., "Yield: Exceptional, Growth Rate: ???, Hardiness: ???, Special: ???")
116. Soil Worm with Unusual Coloration — ~3% from Worm Farm. Tooltip: "Its body is faintly iridescent. The castings it produces are... different. You lack the tools to determine how." Produces 1.5x worm castings if returned to farm.
117. Crystalline Beet Sugar — ~1% from Beet Sugar processing. Tooltip: "Perfect crystals. Unnaturally pure. As if the beet concentrated something it shouldn't be able to." Breadcrumb for Era 4 bio-crystallography.
118. Self-Seeding Herb — ~4% from herb harvest. Tooltip: "This plant dropped its seeds before you could collect the harvest. Aggressive reproductive strategy. It wants to spread." Foreshadows invasive species mechanics in Era 3.

### Science Pack Components
119. Soil Sample Jar (collected from each soil quality tier)
120. Crop Yield Record (automatically generated per harvest, paper + ink)
121. Seed Comparison Slide (requires 2 seeds of same crop, different quality)
122. Growth Condition Log (paper + ink, generated by monitoring plots)

### Infrastructure / Miscellaneous
123. Paper (from wood pulp or papyrus/cattail fiber)
124. Plant-Based Ink (from beet juice + tannin water)
125. Specimen Archive (placed entity — stores organism snapshots for comparison)
126. Farm Plot Marker (placed entity — defines planting zones, collects data)
127. Seed Sorting Tray (used in Seed Sorter machine)
128. Copper Ingot (minimal amount, smelted from surface copper, used only for mk2 fittings)

---

## 2. COMPLETE RECIPE LIST (~108 recipes)

### Wheat Processing Chain (8 recipes)
```
Wheat Sheaf ──→ [Thresher mk1] ──→ Wheat Grain + Wheat Straw + Wheat Chaff
                                         │              │            │
                                    [Cleaner mk1]  Brown Waste   Green Waste
                                         │                   (or animal bedding)
                                    Cleaned Wheat
                                         │
                                    [Millstone mk1]
                                    ┌────┼────┐
                                    ▼    ▼    ▼
                               Wheat  Wheat  Wheat
                               Flour  Bran   Germ
                                 │      │      │
                            +Yeast   compost  breadcrumb
                            +Water     or     (oil in Era 3)
                                 │   feed
                            [Kneading Table]
                                 │
                            Bread Dough
                                 │
                            [Brick Oven]
                                 │
                            Bread Loaf
```

1. 3 Wheat Sheaf → 2 Wheat Grain + 2 Wheat Straw + 1 Wheat Chaff — Thresher mk1, 4s
2. 3 Wheat Grain → 2 Cleaned Wheat + 1 Wheat Chaff — Cleaner mk1, 3s
3. 2 Cleaned Wheat → 1 Wheat Flour + 1 Wheat Bran + (25% chance) 1 Wheat Germ — Millstone mk1, 5s
4. 1 Wheat Flour + 20 Water → 1 Wheat Starch + residue — Washing Vat, 8s
5. 1 Wheat Flour + 1 Yeast Culture + 10 Water → 2 Bread Dough — Kneading Table, 6s
6. 1 Bread Dough → 1 Bread Loaf — Brick Oven, 10s
7. 1 Bread Loaf + 1 Dried Herbs → 1 Herb-Crusted Bread — Brick Oven, 6s
8. Wheat Straw → 2 Brown Waste — Hand, instant

### Barley Processing Chain (9 recipes)
```
Barley Sheaf ──→ [Thresher] ──→ Barley Grain + Barley Straw
                                      │
                               [Malting Floor] ──→ soak 30s, germinate 120s, dry 60s
                                      │
                                 Barley Malt
                                 ┌────┤
                                 ▼    ▼
                           [Millstone]  [Mash Tun]
                                 │         │
                           Barley Flour  Malt Extract + Spent Grain
                                          │
                                    [Brew Kettle] + Water
                                          │
                                         Wort
                                          │
                                    [Fermenter] + time (180s)
                                     ┌────┤
                                     ▼    ▼
                                   Beer  Yeast Culture ◄── CRITICAL OUTPUT
                                          │
                                    (feeds Bread chain,
                                     Sauerkraut, etc.)
```

9. 3 Barley Sheaf → 2 Barley Grain + 2 Barley Straw — Thresher mk1, 4s
10. 4 Barley Grain + 20 Water → 3 Barley Malt — Malting Floor, 210s (3.5 min passive)
11. 2 Barley Malt → 1 Barley Flour — Millstone mk1, 5s
12. 3 Barley Malt + 30 Water → 2 Malt Extract + 1 Spent Grain — Mash Tun, 15s
13. 2 Malt Extract + 20 Water → 2 Wort — Brew Kettle, 10s
14. 2 Wort → 1 Beer + 1 Yeast Culture — Fermenter, 180s passive
15. Beer (oxidized) → 1 Vinegar — open-air exposure, 120s passive
16. Spent Grain → 2 Green Waste — Hand, instant
17. Barley Straw → 2 Brown Waste — Hand, instant

**Design note on Yeast Culture:** This is the critical cross-crop dependency. The player cannot make Bread (wheat chain) without Yeast (barley chain). This forces engagement with both grain types and teaches that biological systems are interconnected.

### Potato Processing Chain (5 recipes)
18. 3 Potato → 2 Potato + Potato Peel (processing waste) — Peeling Station, 3s
19. 2 Peeled Potato + 20 Water → 1 Potato Starch + Starch Water — Washing Vat, 8s
20. 1 Potato Starch → 1 Potato Flour — Drying Rack mk2, 30s
21. 1 Potato + 10 Water → 2 Boiled Potato — Brick Oven / Cooking Pot, 8s
22. 1 Potato Flour + 1 Wheat Flour + 1 Yeast Culture + 10 Water → 3 Potato Bread Dough → Bread variant — Kneading Table + Oven, 16s total

### Bean Processing Chain (4 recipes)
23. 2 Bean Pod → 2 Shelled Beans + 1 Bean Pod Husk — Shelling Station, 3s
24. 2 Shelled Beans → 1 Bean Flour — Millstone, 4s
25. 3 Shelled Beans → 2 Dried Beans — Drying Rack, 45s
26. Bean Pod Husk → 1 Green Waste — Hand, instant

### Beet Processing Chain (5 recipes)
```
Beetroot ──→ [Slicer] ──→ Beet Slices + Beet Greens (Green Waste)
                               │
                         [Press mk1] + Water
                          ┌────┤
                          ▼    ▼
                     Beet Juice  Beet Pulp (compost)
                          │
                    [Evaporator] (heat)
                          │
                     Beet Sugar
```
27. 3 Beetroot → 3 Beet Slices + 1 Beet Greens — Slicer, 3s
28. 3 Beet Slices + 10 Water → 2 Beet Juice + 1 Beet Pulp — Press mk1, 6s
29. 2 Beet Juice → 1 Beet Sugar — Evaporator, 15s
30. Beet Greens → 1 Green Waste — Hand, instant
31. Beet Juice + Tannin Water → Plant-Based Ink — Mixing Vessel, 5s

### Cabbage Processing Chain (4 recipes)
32. 1 Cabbage Head → 2 Cabbage Core + 1 Cabbage Leaves — Hand/Prep Table, 2s
33. 3 Cabbage Core + 2 Salt → 2 Sauerkraut — Fermentation Crock, 90s passive [CORRECTED: real sauerkraut is lacto-fermented by naturally occurring Lactobacillus on the cabbage, not by yeast. No culture needed — salt + time + anaerobic conditions. Timer reduced per passive timer fix.]
34. Cabbage Leaves → 1 Green Waste — Hand, instant
35. Allow Cabbage to bolt (unharvested, 600s) → 3 Cabbage Seed — field, passive

### Turnip Processing Chain (3 recipes)
36. 2 Turnip → 1 Turnip Mash — Prep Table, 3s
37. 3 Turnip + 20 Brine → 2 Pickled Turnip — Fermenter, 120s passive
38. Turnip Greens (harvest byproduct) → 1 Green Waste — Hand, instant

### Onion Processing Chain (3 recipes)
39. 3 Onion Bulb → 2 Onion Flakes — Drying Rack, 40s
40. 3 Onion Bulb + 20 Brine + 1 Herb Bundle → 2 Pickled Onion — Fermenter, 120s
41. Onion Skin (peeling byproduct) → dye pigment (orange-brown) — Dye Vat, 8s

### Sunflower Processing Chain (4 recipes)
```
Sunflower Head ──→ [Thresher] ──→ Sunflower Seeds + Husk
                                        │
                                   [Oil Press mk1]
                                    ┌────┤
                                    ▼    ▼
                              Sunflower  Seed Cake
                                 Oil     (compost/feed)
```
42. 1 Sunflower Head → 3 Sunflower Seeds + 1 Sunflower Husk — Thresher, 3s
43. 4 Sunflower Seeds → 1 Sunflower Oil + 1 Seed Cake — Oil Press mk1, 8s
44. Sunflower Husk → 1 Brown Waste — Hand, instant
45. Seed Cake → 2 Green Waste — Hand, instant

### Textile Chain — Flax Path (7 recipes)
```
Flax Straw ──→ [Retting Pool] + Water (180s) ──→ Retted Flax
                                                       │
                                                  [Flax Breaker]
                                                   ┌────┤
                                                   ▼    ▼
                                              Flax Fiber  Flax Tow
                                                   │         │
                                              [Scutching    rough
                                               Board]      textile
                                                   │
                                              Scutched Flax
                                                   │
                                              [Spinning Wheel]
                                                   │
                                              Flax Yarn
                                                   │
                                              [Loom mk1]
                                                   │
                                              Linen Cloth
```
46. 3 Flax Straw + 30 Water → 2 Retted Flax + Retting Water — Retting Pool, 180s passive
47. 2 Retted Flax → 1 Flax Fiber + 1 Flax Tow — Flax Breaker, 6s
48. 2 Flax Fiber → 1 Scutched Flax — Scutching Board, 5s
49. 2 Scutched Flax → 1 Flax Yarn — Spinning Wheel, 8s
50. 2 Flax Yarn → 1 Linen Cloth — Loom mk1, 12s
51. Flax Tow → 1 Rough Textile (stuffing, cheap cloth) — Spinning Wheel, 4s
52. 3 Flax Seed → 1 Linseed Oil — Oil Press mk1, 10s

### Textile Chain — Hemp Path (6 recipes)
53. 3 Hemp Stalk + 30 Water → 2 Retted Hemp + Retting Water — Retting Pool, 180s passive
54. 2 Retted Hemp → 1 Hemp Fiber + 1 Hemp Tow — Flax Breaker (shared machine), 6s
55. 2 Hemp Fiber → 1 Scutched Hemp — Scutching Board, 5s
56. 3 Scutched Hemp → 1 Hemp Rope — Rope Walk, 8s
57. 2 Scutched Hemp → 1 Hemp Canvas — Loom mk1, 12s
58. Hemp Tow → 1 Rough Textile — Spinning Wheel, 4s

### Herb Processing Chain (4 recipes)
59. 2 Herb Bundle → 1 Dried Herbs — Drying Rack, 30s
60. 1 Dried Herbs + 1 Beer (as alcohol base) → 1 Herb Tincture — Mixing Vessel, 10s
61. 1 Dried Herbs + 1 Linen Cloth → 1 Medicinal Poultice — Prep Table, 5s
62. Allow Herb to flower (unharvested, 400s) → 2 Herb Seed — field, passive

### Preservation Chain (5 recipes)
63. 10 Water + evaporation heat → 1 Salt — Evaporator, 30s (or: mine rock salt if available)
64. 1 Salt + 20 Water → 20 Brine — Mixing Vessel, 3s
65. 1 Vinegar + 1 Salt + 10 Water → 15 Pickling Brine — Mixing Vessel, 3s
66. Any 3 vegetables + 20 Pickling Brine → 2 Preserved Vegetables — Fermenter, 180s
67. 4 Grain (any) → 1 Dried Grain Sack — Hand + Drying Rack, 20s

### Soil & Composting Chain (8 recipes)
```
                    Green Waste + Brown Waste
                              │
                    [Managed Compost Bin mk1]
                              │
                       Finished Compost
                              │
                    + Ash ─── + ──── + Bone Meal/Shell
                    (Potassium)  │    (Calcium)
                              + Clover Mulch / Bean Residue
                              (Nitrogen)
                              │
                       Enriched Compost
                              │
                    ┌─────────┴─────────┐
                    ▼                   ▼
              Soil Amendment      Soil Quality Upgrade
              (targeted)          (general)
```
68. 5 Green Waste + 5 Brown Waste → 1 Finished Compost — Managed Compost Bin mk1, 180s
69. 1 Finished Compost + 1 Ash + 1 Clover Mulch → 1 Enriched Compost — Mixing Vessel, 10s
70. 1 Enriched Compost + 1 Ground Shell → 1 Soil Amendment: Calcium — Mixing Vessel, 5s
71. 3 Clover Mulch + 1 Finished Compost → 1 Soil Amendment: Nitrogen — Mixing Vessel, 5s
72. 2 Ash + 1 Finished Compost → 1 Soil Amendment: Potassium — Mixing Vessel, 5s
73. Apply Finished Compost to Tier 1 soil → Tier 2 soil — Hand/Simple Planter, 5s
74. Apply Enriched Compost to Tier 2 soil → Tier 3 soil — Hand, 5s
75. Apply Enriched Compost + all 3 amendments to Tier 3 soil → Tier 4 soil — requires Soil Mixer mk1, 10s

### Worm Farm Chain (3 recipes)
76. 10 Green Waste + 5 Brown Waste → load Worm Farm — Hand, 5s
77. Worm Farm (loaded) → 5 Worm Castings + 1 Finished Compost — 240s passive
78. 3 Worm Castings + 1 Finished Compost → 1 Enriched Compost (variant) — Mixing Vessel, 8s

### Farming Operations (6 recipes)
79. Finished Compost + bare ground → Tilled Soil Plot (Tier 1) — Hand/Hoe, 3s
80. 1 Seed (any) + Tilled Plot → Planted Crop — Simple Planter or Hand, 1s
81. Mature Crop → Harvest (crop-specific) — Hand or Mechanical Harvester, 2s
82. Save best seeds from harvest: 3 Crop (any) → 1 Seed (next quality tier) + waste — Seed Sorter mk1, 15s
83. Seed quality upgrade: 5 Farm-quality Seed → 2 Select-quality Seed + 3 rejected — Seed Sorter mk2, 20s
84. Cover Crop planting: 1 Clover Seed + Tilled Plot → Green Manure (after 300s) — plow under, restores nitrogen

### Paper & Documentation (3 recipes)
85. 4 Cattail Fiber (or wood pulp) + 20 Water → 2 Paper — Pulp Press, 8s
86. 1 Beet Juice + 1 Tannin Water → 2 Plant-Based Ink — Mixing Vessel, 3s
87. 1 Paper + 1 Ink → 1 Crop Yield Record (auto-filled at harvest) — automatic

### Tool & Component Crafting (6 recipes)
88. 2 Wood + 1 Hemp Rope → 1 Improved Handle — Hand, 4s
89. 1 Linen Cloth → 1 Linen Filter — Hand, 2s
90. 2 Wood → 1 Wooden Gear — Hand/Lathe, 5s
91. 4 Stone → 1 Stone Weight — Hand, 3s
92. 3 Clay + Fire → 1 Ceramic Pot — Brick Oven, 15s
93. 2 Copper Ore + fuel → 1 Copper Ingot — Fire Pit/Furnace, 20s

### Machine Crafting (15 recipes for machines — see machine list below)
94-108: (see Machine section for full recipes)

### Science Pack Recipe
109. Controlled Environment Dataset (see section 6 below)

### Miscellaneous / Computed
110. Medicinal Poultice use → heals player — consumed
111. Trail Mix (Era 1 recipe, still valid) — Hand

### Major Flow Diagram: Era 2 Complete Production Web
```
                                    FARMING (12 crops)
                                         │
          ┌──────┬──────┬───────┬────────┼────────┬───────┬──────┬──────┐
          ▼      ▼      ▼       ▼        ▼        ▼       ▼      ▼      ▼
       WHEAT  BARLEY  POTATO   BEAN    BEET    SUNFLWR  FLAX   HEMP   CABBAGE
         │      │       │       │       │         │       │      │      │
      Thresh  Thresh  Peel   Shell   Slice    Thresh   Ret    Ret    Prep
         │      │       │       │       │         │       │      │      │
      Clean   Malt    Starch  Flour  Press    Press    Break  Break  Ferment
         │      │       │       │       │         │       │      │   (needs
      Mill    Mash    Flour   Dried  Sugar      Oil    Scutch Scutch  Yeast)
      ┌─┼─┐    │               │               │       │      │      │
      │ │ │   Wort        ┌────┘               Seed   Spin   Rope  Sauerkraut
   Flour│Germ  │          │                    Cake     │      │
      │ Bran Ferment    INK ◄── + Tannin Water       Weave  Canvas
      │       ┌─┤                                       │
      │    Beer Yeast ──────────────────┐            LINEN
      │      │                          │            CLOTH
      │   Vinegar                       ▼               │
      │      │                    BREAD CHAIN         Filters,
      │   Pickling                (Flour+Yeast)       Poultices,
      │      │                         │              Clothing
      │   Preserved                 Bread Loaf
      │   Vegetables
      │
      └──► Wheat Starch (+ Water extraction)
      
      ════════════════════════════════════════════
                    SOIL SYSTEM
      ════════════════════════════════════════════
      
      Green Waste + Brown Waste → Compost → Enriched Compost
                                              + Ash (K)
                                              + Shell (Ca)
                                              + Clover/Bean (N)
                                                    │
                                              Soil Tier 1→2→3→4
                                              
      ════════════════════════════════════════════
                 CROSS-DEPENDENCIES
      ════════════════════════════════════════════
      
      Barley ──Yeast──→ Wheat (bread)
      Cabbage ──Salt──→ Sauerkraut (lacto-fermented, no yeast needed)
      Beet ──Sugar──→ Candy, preservation additive
      Beet ──Juice──→ Ink → Paper goods → Science pack
      Flax ──Linen──→ Filters for Oil Press, Starch extraction
      Bean ──Nitrogen──→ Soil rotation → All crops benefit
      Sunflower ──Oil──→ Waterproofing, fuel, cooking medium
      Barley ──Beer──→ Vinegar → Pickling → Preservation chain
```

---

## 3. MACHINES / WORKSTATIONS (15 types, mk1/mk2 tiers)

| # | Name | Size | Power (mk1 / mk2) | Purpose | mk2 Upgrade |
|---|------|------|-------------------|---------|-------------|
| 1 | Thresher | 3x2 | Water Wheel / Water Wheel+gear | Separates grain/seeds from stalks | 50% faster, handles sunflower |
| 2 | Cleaner | 2x2 | Water Wheel / Water Wheel+gear | Winnowing: removes chaff from grain | 50% faster, +10% grain recovery |
| 3 | Millstone | 3x3 | Water Wheel / Water Wheel+gear | Grinds grain to flour, separates bran/germ | 40% faster, higher germ yield |
| 4 | Kneading Table | 2x2 | Manual / Water Wheel assisted | Combines flour + yeast + water → dough | mk2 auto-feeds from adjacent containers |
| 5 | Brick Oven | 3x2 | Fuel (peat/wood/charcoal) | Baking bread, firing ceramics, cooking | mk2 holds heat longer (2x fuel efficiency) |
| 6 | Retting Pool | 4x2 | Passive (water + time) | Soaks flax/hemp for fiber separation | mk2: heated water, 50% faster retting |
| 7 | Flax Breaker | 2x1 | Manual / Water Wheel | Separates fiber from retted stalks | mk2: also handles hemp |
| 8 | Scutching Board | 2x1 | Manual / Water Wheel | Cleans fiber, removes tow | mk2: 60% faster |
| 9 | Spinning Wheel | 2x2 | Manual / Water Wheel | Twists fiber into yarn/rope | mk2: dual spindle (2x output) |
| 10 | Loom | 3x3 | Manual / Water Wheel | Weaves yarn into cloth/canvas | mk2: wider (can produce double-width cloth) |
| 11 | Oil Press | 2x2 | Manual + Stone Weight / Water Wheel | Presses seeds for oil, beets for juice | mk2: continuous feed, higher extraction |
| 12 | Fermenter | 2x3 | Passive (time + temperature) | Beer, sauerkraut, pickling, vinegar | mk2: temperature control (faster, more consistent) |
| 13 | Managed Compost Bin | 3x2 | Passive | Faster composting than Era 1 heap | mk2: aerated (halved cycle time), accepts worm castings |
| 14 | Seed Sorter | 2x2 | Manual / Water Wheel | Selects best seeds from harvest | mk2: finer grading (enables Select quality seeds) — **ERA TRANSITION REQUIREMENT** |
| 15 | Simple Planter | 2x1 | Manual / Water Wheel | Plants seeds in tilled plots automatically | mk2: adjustable spacing, row planting |

**Additional non-tiered workstations:**
| # | Name | Size | Power | Purpose |
|---|------|------|-------|---------|
| 16 | Malting Floor | 4x3 | Passive + heat | Barley germination + kilning |
| 17 | Mash Tun | 2x2 | Heat (fire) | Hot water extraction of malt sugars |
| 18 | Brew Kettle | 2x2 | Heat (fire) | Boils wort |
| 19 | Mixing Vessel | 2x1 | Manual | Combines ingredients (soil amendments, brine, ink) |
| 20 | Prep Table | 2x1 | Manual | Peeling, shelling, slicing, general food prep |
| 21 | Evaporator | 2x2 | Heat (fire) | Reduces liquids (beet juice → sugar, brine → salt) |
| 22 | Drying Rack mk2 | 2x1 | Passive (or heated) | Faster drying, handles starch/flour drying |
| 23 | Pulp Press | 2x2 | Water Wheel | Paper production from fiber |
| 24 | Rope Walk | 4x1 | Manual | Twists hemp fiber into rope (requires long linear space) |
| 25 | Worm Farm | 2x2 | Passive | Processes waste into castings. Biological Web participant. |
| 26 | Soil Mixer | 2x2 | Water Wheel | Blends amendments into soil. Required for Tier 4 soil. |
| 27 | Mechanical Harvester | 2x2 | Water Wheel | Harvests mature crops in a 5x5 area. First field automation. |
| 28 | Specimen Archive | 2x2 | None | Stores organism snapshots. Shows locked Genetic Profile data. |
| 29 | Irrigation Channel | 1x(variable) | Gravity/Water Wheel pump | Distributes water to farm plots. Biological Web participant. |

**Machine recipe examples (from recipe list #94-108):**
- Thresher mk1: 8 Wood + 4 Stone + 4 Fiber Cord + 2 Wooden Gear → 1 Thresher mk1
- Millstone mk1: 6 Stone + 2 Wood + 2 Wooden Gear + 4 Fiber Cord → 1 Millstone mk1
- Seed Sorter mk1: 4 Wood + 4 Stone + 2 Linen Filter + 2 Fiber Cord → 1 Seed Sorter mk1
- Seed Sorter mk2: 1 Seed Sorter mk1 + 2 Copper Fitting + 2 Linen Filter + 1 Wooden Gear → 1 Seed Sorter mk2
- Loom mk1: 6 Wood + 4 Fiber Cord + 2 Wooden Gear → 1 Loom mk1
- Fermenter mk1: 4 Wood + 2 Ceramic Pot + 2 Linen Cloth → 1 Fermenter mk1
- Simple Planter mk1: 4 Wood + 2 Stone + 2 Wooden Gear + 2 Fiber Cord → 1 Simple Planter mk1
- Mechanical Harvester: 6 Wood + 4 Wooden Gear + 2 Hemp Rope + 2 Stone Weight → 1 Mechanical Harvester
- Mk2 upgrades generally add: +1 Copper Fitting + improved component (e.g., Linen Filter, Hemp Rope replaces Fiber Cord)

---

## 4. FLUIDS (9 fluids)

| # | Name | Source | Primary Use | Notes |
|---|------|--------|------------|-------|
| 1 | Fresh Water | Rivers, wells, rain collection | Universal: irrigation, cooking, retting, mashing, cleaning | Carried from Era 1 |
| 2 | Tannin Water | Nut leaching, cattail processing, bark soaking | Dye mordant, ink production, leather tanning (breadcrumb) | Carried from Era 1 |
| 3 | Retting Water | Byproduct of flax/hemp retting pools | Waste fluid — BUT contains nutrients. Can irrigate fields for minor fertility boost (+3%). Tooltip: "Foul-smelling water rich in decomposed plant matter. Waste, or fertilizer?" | New in Era 2 |
| 4 | Beet Juice | From pressing beet slices | Beet sugar production, ink ingredient | New in Era 2 |
| 5 | Brine | Salt + water | Pickling, food preservation | New in Era 2 |
| 6 | Wort | From boiling malt extract | Beer fermentation input | New in Era 2 |
| 7 | Sunflower Oil | From pressing sunflower seeds | Cooking medium, waterproofing, machine lubrication (breadcrumb: bio-lubricant in Era 3) | New in Era 2 |
| 8 | Linseed Oil | From pressing flax seeds | Wood/fiber preservation, waterproofing | New in Era 2 |
| 9 | Vinegar | From oxidized beer | Pickling, cleaning agent, herbicide (breadcrumb: pH control in Era 3) | New in Era 2 |

---

## 5. TECH TREE

Era 2 uses the **Controlled Environment Dataset** science pack and a proper research lab: the **Field Study Station** (3x3 placed entity, requires paper, ink, and crop samples). Research now resembles a traditional Factorio tech tree with dependencies.

| # | Research Name | Science Cost | Prerequisites | Unlocks |
|---|-------------|-------------|--------------|---------|
| 1 | Tilled Earth | 2 CED | Era 1 complete | Tilled Soil Plot, basic farm plots, Hoe tool |
| 2 | Grain Cultivation | 3 CED | Tilled Earth | Wheat + Barley planting, Thresher mk1, Cleaner mk1 |
| 3 | Root Cultivation | 3 CED | Tilled Earth | Potato planting, Peeling Station |
| 4 | Water-Powered Milling | 4 CED | Grain Cultivation | Millstone mk1 (Water Wheel powered), Wooden Gear recipe |
| 5 | Basic Baking | 3 CED | Water-Powered Milling | Kneading Table, Brick Oven, Bread Dough recipe |
| 6 | Malting & Fermentation | 5 CED | Grain Cultivation | Malting Floor, Mash Tun, Brew Kettle, Fermenter mk1 |
| 7 | Yeast Isolation | 4 CED | Malting & Fermentation | Yeast Culture identification, Bread recipe (Flour+Yeast) |
| 8 | Legume Cultivation | 3 CED | Tilled Earth | Bean planting, Shelling Station |
| 9 | Nitrogen Cycling | 4 CED | Legume Cultivation + Soil Observation (below) | Clover cover crop, nitrogen rotation system, Green Manure |
| 10 | Brassica Cultivation | 4 CED | Tilled Earth + Root Cultivation | Cabbage + Turnip planting |
| 11 | Allium Cultivation | 3 CED | Tilled Earth | Onion planting |
| 12 | Root Sugar Extraction | 5 CED | Root Cultivation | Beet planting, press recipe, Evaporator, Beet Sugar |
| 13 | Oilseed Cultivation | 4 CED | Tilled Earth + Water-Powered Milling | Sunflower planting, Oil Press mk1, Linseed Oil |
| 14 | Fiber Retting | 5 CED | Grain Cultivation | Flax + Hemp planting, Retting Pool |
| 15 | Fiber Processing | 5 CED | Fiber Retting | Flax Breaker, Scutching Board |
| 16 | Spinning & Weaving | 6 CED | Fiber Processing | Spinning Wheel, Loom mk1, Rope Walk |
| 17 | Herb Cultivation | 3 CED | Tilled Earth | Herb planting, Drying Rack mk2, Herb Tincture |
| 18 | Soil Observation | 4 CED | Tilled Earth + 10 harvests completed | Soil quality UI visibility, soil tier display, Managed Compost Bin mk1 |
| 19 | Soil Enrichment | 6 CED | Soil Observation + Nitrogen Cycling | Enriched Compost recipe, soil amendments (N/P/K), Soil Mixer mk1 |
| 20 | Preservation Science | 5 CED | Malting & Fermentation + Root Sugar Extraction | Salt extraction, Brine, Vinegar, Pickling recipes, Sauerkraut |
| 21 | Seed Selection | 6 CED | 5+ crops harvested at least 3 times each | Seed Sorter mk1, Farm-quality seeds, seed saving UI |
| 22 | Advanced Seed Selection | 8 CED | Seed Selection + Soil Enrichment | Seed Sorter mk2, Select-quality seeds |
| 23 | Field Documentation | 4 CED | Soil Observation | Paper, Ink, Crop Yield Record, Growth Condition Log |
| 24 | Specimen Archiving | 5 CED | Field Documentation + Seed Selection | Specimen Archive building, organism snapshot storage |
| 25 | Mechanical Planting | 6 CED | Spinning & Weaving + Grain Cultivation | Simple Planter mk1 |
| 26 | Mechanical Harvesting | 6 CED | Mechanical Planting + Water-Powered Milling | Mechanical Harvester |
| 27 | Irrigation Systems | 5 CED | Soil Observation | Irrigation Channel, water distribution |
| 28 | Apiculture | 5 CED | Oilseed Cultivation + Herb Cultivation | Beehive placement, honey collection, pollination bonus |
| 29 | Vermiculture | 4 CED | Soil Enrichment | Worm Farm, Worm Castings |
| 30 | Thresher Mk2 | 4 CED | Grain Cultivation + Spinning & Weaving | Thresher mk2 upgrade |
| 31 | Cleaner Mk2 | 3 CED | Grain Cultivation | Cleaner mk2 upgrade |
| 32 | Millstone Mk2 | 4 CED | Water-Powered Milling | Millstone mk2 upgrade |
| 33 | Press Mk2 | 4 CED | Oilseed Cultivation | Oil Press mk2 (continuous feed) |
| 34 | Spinning Mk2 | 4 CED | Spinning & Weaving | Spinning Wheel mk2 (dual spindle) |
| 35 | Loom Mk2 | 5 CED | Spinning & Weaving | Loom mk2 (double-width) |
| 36 | Fermenter Mk2 | 4 CED | Malting & Fermentation + Preservation Science | Fermenter mk2 (temperature control) |
| 37 | Compost Bin Mk2 | 4 CED | Soil Enrichment | Managed Compost Bin mk2 (aerated) |
| 38 | Planter Mk2 | 4 CED | Mechanical Planting | Simple Planter mk2 (row spacing control) |
| 39 | Seed Sorter Mk2 | 6 CED | Advanced Seed Selection | Seed Sorter mk2 — **ERA TRANSITION REQUIREMENT** |
| 40 | Variation Hypothesis | 8 CED | Specimen Archiving + Advanced Seed Selection + 30 other technologies | **Conceptual capstone.** Unlocks Genetic Profile partial visibility: one trait revealed per crop. Tooltip: "The traits you see in your crops — yield, growth speed, hardiness — are passed from parent to offspring. You cannot yet read the instructions. But you can see their effects." |
| 41 | Cultivation Mastery | 10 CED | Variation Hypothesis + all mk2 upgrades researched | **ERA TRANSITION RESEARCH.** Requires 50 total CED spent + Enriched Compost produced + Seed Sorter mk2 built. |

**Tech tree total: 41 technologies, consuming approximately 185 Controlled Environment Datasets.**

---

## 6. SCIENCE PACK: Controlled Environment Dataset

**Recipe:** 1 Soil Sample Jar + 1 Crop Yield Record + 1 Seed Comparison Slide + 1 Growth Condition Log → 2 Controlled Environment Dataset

**Component production:**
- **Soil Sample Jar:** 1 Ceramic Pot + 1 soil (from any quality tier) — collected at farm plot, automatic when harvesting if Ceramic Pot is in inventory. Different soil tiers produce more valuable samples (Tier 3-4 soil samples count as 2 jars).
- **Crop Yield Record:** 1 Paper + 1 Ink — automatically filled when harvesting any crop. Requires Paper + Ink in inventory at harvest time.
- **Seed Comparison Slide:** 2 Seeds of same crop (any quality, but different quality tiers preferred) + 1 Paper → 1 Slide. Produced at Specimen Archive.
- **Growth Condition Log:** 1 Paper + 1 Ink — automatically generated when a crop completes its growth cycle in a monitored plot (Farm Plot Marker adjacent). One log per crop cycle.

**Design rationale:** The player must be farming (soil jars, crop records), documenting (paper + ink chain from beets + tannin water), comparing seeds (engaging with seed quality system), and monitoring growth conditions (using farm plot markers). This ensures the player has engaged with agriculture as a scientific practice, not just a resource-extraction exercise.

**Tooltip:** "A systematic record of soil conditions, crop performance, seed characteristics, and environmental variables. Data. The foundation of every science that has ever existed."

---

## 7. BIOLOGICAL WEB SPECIFICS (Era 2)

**State:** Still hidden as a named system, but effects are now strong enough to be clearly felt. The player has no "Biological Web" UI or tooltip. But they will notice patterns.

**Active participants (new in Era 2):**
All Era 1 participants plus:
- All 12 planted crops (influence radius: 4-6 tiles depending on crop)
- Managed Compost Bin mk1 (influence radius: 8 tiles — intentionally larger than the Era 1 Compost Heap's 6-tile radius, reflecting the mk1 upgrade's improved microbial activity and heat distribution)
- Beehive (influence radius: 10 tiles)
- Worm Farm (influence radius: 6 tiles)
- Irrigation Channel (influence radius: 5 tiles per segment)
- Clover Cover Crop (influence radius: 5 tiles)
- Companion Flower Bed (influence radius: 6 tiles)

**Active relationships:**

| Entity A | Entity B | Type | Effect | Player Observable Behavior |
|----------|----------|------|--------|---------------------------|
| Compost Bin | Any crop within radius | Commensal (+0) | +10% yield | "Crops near my compost do better" |
| Legume (Bean/Clover) | Grain (Wheat/Barley) | Mutualistic (++) | +15% yield to grain | "My wheat next to beans produces more" |
| Same crop | Same crop (adjacent) | Competitive (--) | -10% yield per overlapping pair | "Monocropping seems less productive" |
| Companion Flower | Beehive | Mutualistic (++) | +25% yield to crops in shared radius, +15% honey | "Everything near my flowers and hives thrives" |
| Irrigation Channel | Any crop | Commensal (+0) | +12% growth speed | "Irrigated crops grow faster" |
| Worm Farm | Any crop within radius | Commensal (+0) | +8% yield | "Plants near the worm farm are bigger" |
| Cabbage | Onion | Mutualistic (++) | +10% yield to both, -50% pest event chance | "These two seem to help each other" |
| Potato | Sunflower | Competitive (--) | -8% yield to both | "These two don't seem happy together" |
| Herbs | All adjacent crops | Commensal (+0) | +5% hardiness (reduces crop failure) | Subtle; player may not notice directly |
| Flax/Hemp | Beet | Neutral (00) | No effect | Control case: not everything interacts |

**Diminishing returns:** After 3 active relationships on a single entity, additional relationships contribute at 50% effectiveness. After 5, at 25%. This prevents "web stacking" cheese and encourages spatial design over min-maxing a single plot.

**What the player observes:** The player will develop intuitions. "Beans near wheat is good." "Don't monocrop." "Beehives are amazing." They may develop superstitions — some correct, some not (Flax near Beet does nothing, but a player might think it does). This mirrors historical agriculture perfectly. The player is learning ecology through practice, building mental models that Era 3's Web Visibility research will confirm or correct.

---

## 8. ORGANISM DRIFT SPECIFICS (Era 2)

**State:** Active at era_scaling 0.5. Base 5-minute tick becomes effective 10-minute tick. Over a 14-18 hour era, each organism ticks ~84-108 times.

**What drifts:**
- Crop yield (minor: +/- 3%, moderate: +/- 8%, major: +/- 15%)
- Growth rate (minor: +/- 5%, moderate: +/- 12%)
- Hardiness (minor: +/- 3%, moderate: +/- 8%) — affects failure chance in bad conditions
- Seed quality transmission fidelity (minor: +/- 2%) — affects whether offspring match parent quality

**Drift bias from web:**
- Crops in positive web relationships (Compost nearby, Legume companion, Beehive in range) drift beneficially 60% of the time (vs. 50% baseline)
- Crops in negative web relationships (monocropped, competitive neighbor) drift detrimentally 60% of the time
- Crops in neutral/no web: 50/50 drift direction (true random)

**What the player notices:**
- Over time, well-managed fields produce increasingly better harvests. Neglected fields stagnate or decline. The player attributes this to "soil quality" or "seed quality" — and they are partially right. But drift is silently layering on top.
- Seeds saved from high-performing plants (Select quality via Seed Sorter) carry forward their drifted stats. The player is performing artificial selection without knowing it. Their "best seeds" are genuinely genetically better because drift + positive web biased them upward, and the Seed Sorter selected the top of the distribution.
- The Specimen Archive can store "snapshots" of organisms. A snapshot taken at hour 3 and compared to a snapshot at hour 15 shows different values — but since the Genetic Profile is locked, the player only sees "something changed." The display reads: "Archived Specimen vs. Current: Divergence Detected. Analysis: Insufficient tools."

**Mutation events (1% tier, occurs ~1-2 times over the era):**
- **Mutant Crop Specimen** — a harvested crop has a dramatically different trait. One stat on the Genetic Profile becomes visible (the rest stay locked). This is a powerful breadcrumb: the player sees "Yield: Exceptional" while everything else is "???" and thinks "I need to understand the rest of these stats."
- **Unusual Yield Spike** — a single harvest from one plant produces 3-4x normal output. Tooltip: "Something in this organism's biology overcame every limitation you thought it had. If you could replicate this..."

---

## 9. BREADCRUMB ITEMS

| Item | Source | Drop Rate | Era Payoff | Storage |
|------|--------|-----------|------------|---------|
| Mutant Crop Specimen | Any harvest | ~2% | Era 4: Mutant Trait Analysis recipe at Heredity Analysis Station → yields Identified Trait Marker (head start for breeding). See eras-3-4-final.md amendments. | Specimen Archive (recommended) |
| Soil Worm with Unusual Coloration | Worm Farm | ~3% | Era 3-4: contains a unique bioluminescent protein. Eventually becomes a research input for bio-indicator organisms. | Worm Farm (can be returned for 1.5x castings) or Specimen Archive |
| Crystalline Beet Sugar | Beet Sugar processing | ~1% | Era 4: precursor for bio-crystallography research. Represents natural purification at a level that should not be possible without lab equipment. | Stores indefinitely |
| Self-Seeding Herb | Herb harvest | ~4% | Era 3: input for Invasive Species Management research. Teaches that unchecked reproduction is a force to manage, not just exploit. | Plant it: spreads to adjacent tiles over time. Can become a nuisance if not managed — teaches lesson early. |
| Retting Water (nutrient-rich) | Flax/Hemp retting | 100% | Era 3: becomes input for aquatic biology research. The "waste" fluid contains microorganisms that become study subjects. | Fluid storage |
| Wheat Germ | Wheat milling | ~25% | Era 3: oil extraction, nutritional science research. | Stores 30 min before spoiling — teaches cold storage need |
| Fermented Fruit Pulp (from Era 1) | Carried forward | N/A | Jumpstarts yeast culture; saved players skip 15 min of barley fermentation. Teaches "old discoveries compound." | Already in inventory |
| Strange Bioluminescent Fungus (from Era 1) | Carried forward | N/A | Still inert. But Specimen Archive now displays: "Bioluminescent output: measurable. Mechanism: Unknown. Note: output intensity varies with proximity to [REDACTED]." The [REDACTED] tag is the first hint that the Archive itself is hiding something. | Specimen Archive |
| Ancient Seed Pod (from Era 1) | Carried forward | N/A | Specimen Archive displays: "Shell hardness: exceeds measurement capability. Internal structure: seeds detected. Viability: Unknown. Required for analysis: [LOCKED]." | Specimen Archive |
| Copper Fitting | Mk2 machine crafting | 100% | Era 3 metallurgical biology crossover. The tiny amount of copper in Era 2 foreshadows that biology will merge with chemistry. | Used in machines |

---

## 10. KEY ITEMS WITH SCIENTIFIC TOOLTIPS (Era 2)

1. **Yeast Culture** — *"A living organism in a jar. It eats sugar. It exhales carbon dioxide. It excretes alcohol. You did not create it — it was always there, in the grain, in the air. You simply gave it conditions to thrive. This is not cooking. This is husbandry of creatures too small to see."*

2. **Select-Quality Wheat Seed** — *"Generations of choosing the best. Your grandmother's grandmother did this same thing — saved the fattest seeds, planted them, saved the fattest again. The wheat you hold is not the wheat that grew wild. You changed it. Slowly. Without tools. Without understanding. But you changed it."*

3. **Enriched Compost** — *"Nitrogen from clover nodules. Potassium from wood ash. Calcium from ground shell. You have no names for these elements yet. But you have learned that mixing the right decomposed materials in the right proportions produces soil that grows stronger plants. This is chemistry. It just does not know its own name."*

4. **Linen Cloth** — *"Flax stalk, soaked until it rotted just enough, beaten until the fibers separated, scraped until only the long strands remained, twisted into thread, woven into fabric. Sixteen steps from plant to cloth. Each step transforms the material. Each transformation was discovered by someone, once, who was paying attention."*

5. **Specimen Archive** (entity tooltip) — *"A cabinet of carefully preserved specimens. Seeds, soil samples, pressed leaves, dried roots. Each one a frozen moment in time — a record of what an organism was, before it changed into what it will become. You cannot yet read the full story each specimen tells. But you are learning to ask the right questions."*

6. **Mutant Crop Specimen** — *"This one is not like the others. The yield is extraordinary. The growth pattern defied every expectation. Somewhere in its biological instructions, something is different. If you could read those instructions — if you could copy them — you could change everything. But you cannot. Not yet."*

7. **Soil Quality Tier 4** — *"Dark. Rich. Alive. This soil has been built over multiple seasons of careful amendment — nitrogen from legume rotation, potassium from ash, calcium from shell, organic matter from compost upon compost. You did not find this soil. You engineered it. The earthworms approve."*

8. **Genetic Profile (locked display)** — *"GENETIC PROFILE — Yield: ???, Growth Rate: ???, Hardiness: ???, Special: ???. The information is there, encoded in structures far too small for your eyes or any tool you possess. You know it exists because offspring resemble parents. You know it varies because siblings differ. You know it matters because selection works. Reading it will require instruments that do not yet exist."*

9. **Beer** — *"Fermented grain water. The yeast did the work — consuming sugar, producing alcohol and CO2 in precise biochemical reactions you cannot observe. Every brewer in history has been an amateur microbiologist. You are no exception."*

10. **Crop Yield Record** — *"Numbers on paper. How many bushels per plot. Which seeds produced more. Which soil supported better growth. This is data — and data, systematically collected and honestly analyzed, is the difference between superstition and science. You are crossing that line."*

---

## 11. THE "ZOOM IN" MOMENT

**Moment:** Researching "Variation Hypothesis" (tech #40), which requires the Specimen Archive and Advanced Seed Selection.

**What happens:** The player has spent 12+ hours farming. They have saved seeds, improved soil, built archives of specimens. They have watched their Select-quality seeds consistently outperform Wild seeds. They have noticed the Genetic Profile display on every crop — locked, unreadable, but persistent. Now, the research completes, and the Field Study Station entry reads:

> *"I have been choosing. Every season, I pick the best plants. I save their seeds. I plant those seeds. The next generation is better — not always, not perfectly, but consistently. The traits I select for persist. The traits I ignore drift away. I am not just farming. I am directing the development of living organisms across generations. I am shaping the future of species using nothing but preference and patience. There is a word for this, though I have never spoken it: Selection."*

**Mechanical consequence:** The Genetic Profile on all crops partially unlocks. One trait per crop becomes visible — the trait with the highest divergence from wild baseline (the trait the player has most strongly selected for through their Seed Sorter behavior). A wheat crop might show "Yield: 147% [Wild Baseline: 100%]" while Growth Rate, Hardiness, and Special remain "???".

This is the zoom-in. The player was looking at organisms. Now they are looking at traits. The resolution has increased from population-scale to trait-scale. The next zoom (Era 3) will go from traits to the mechanisms that encode them.

**Emotional beat:** The player realizes they have been doing genetics for hours. The mod did not teach them genetics. It let them do it, then told them what they had done. The warm/encouraging tone of Era 2 is designed to make this feel like a reward, not a lecture.

---

## 12. ANTI-GRIND MEASURES

1. **Simple Planter (unlocked mid-Era 2):** Automates seed placement. The player designs row layouts; the planter executes them. This eliminates tedious click-per-seed planting.

2. **Mechanical Harvester (unlocked mid-late Era 2):** Automates crop collection in a 5x5 area. The player builds harvesting infrastructure; the machine does the repetitive work.

3. **Water Wheel powers most mk1 machines:** The player builds power transmission (wooden gears, fiber belts) once. Machines run continuously. The design challenge is layout and logistics, not manual operation.

4. **Fermenter/Retting/Composting are all passive processes:** Load inputs, walk away, collect outputs later. The player manages timing and logistics, not babysitting.

5. **Crop Yield Records and Growth Condition Logs auto-generate:** The player does not manually write science pack components. They are generated by farming activity that the player is already doing. The science pack creation step is the only manual assembly.

6. **Multiple food types remain equivalent:** The player does not need to master every crop. Different food items serve the same purpose. The variety exists to create interesting logistics and cross-dependencies, not to force completionism.

7. **Soil quality upgrades are permanent:** Once a plot reaches Tier 3 or Tier 4, it stays there (with maintenance via rotation). The player does not re-grind soil quality each season.

8. **Seed quality carries forward:** Select-quality seeds do not revert. The investment in seed selection is preserved across planting cycles.

9. **Byproduct web creates natural task-switching:** When the player processes wheat, they generate chaff (compost), straw (brown waste), and bran (feed). Managing these outputs creates natural task-switching between systems, preventing the monotony of grinding a single chain.

10. **The Specimen Archive passively collects data:** Once built and placed near farm plots, it records organism snapshots without player intervention. The player checks it periodically rather than actively operating it.

---

## 13. CROSS-ERA CONNECTIONS

### Era 1 → Era 2 (recap)
All connections listed in Era 1 section 13 apply. The most important: 5 wild seeds become starter crops, compost becomes soil amendment, Water Wheel becomes primary power, stored Tannin Water/Ash/Fermented Fruit Pulp provide efficiency bonuses.

### Era 2 → Era 3 (forward connections)

| Era 2 Element | Era 3 Payoff |
|--------------|-------------|
| Select-quality seeds | Become input for Controlled Crossing (Era 3 hybridization). Their drifted stats become the starting genome for deliberate breeding programs. |
| Specimen Archive (with stored snapshots) | Becomes the Genetic Library. All archived specimens have their full Genetic Profiles revealed when Era 3 microscopy unlocks. Players who archived extensively have a richer genetic library to draw from. |
| Mutant Crop Specimens | Direct input for Controlled Mutation research. The one visible trait guides the player toward understanding which mutations are valuable. |
| Soil Tier 4 | Becomes the minimum soil quality for Era 3 experimental plots. Players who did not develop high-quality soil must do so before advancing Era 3 research. |
| Yeast Culture | Becomes the player's first microbiology subject in Era 3. The "creatures too small to see" from the tooltip become visible under the microscope. |
| Linseed Oil | Becomes a chemical reagent for Era 3 extraction processes. |
| Vinegar | Becomes a pH control agent in Era 3 laboratory procedures. |
| Beer | Alcohol distillation in Era 3 produces ethanol — the universal solvent for biological extraction. |
| Linen Cloth | Becomes laboratory filter material. The quality of linen affects filtration precision. |
| Copper Fittings | The small amount of metallurgy in mk2 machines foreshadows Era 3's expanded use of metal in laboratory equipment. |
| Enriched Compost | The specific N/P/K amendment system directly prefigures Era 3's controlled nutrient media for microbial culture. |
| Crop Yield Records + Growth Condition Logs | Become baseline data for Era 3's Statistical Analysis research. The player's historical farming data retroactively becomes a scientific dataset. |
| Self-Seeding Herb | If planted and allowed to spread, creates Era 3's first "invasive species management" challenge. If archived, becomes study material for reproductive strategy research. |
| Strange Bioluminescent Fungus (from Era 1) | Still waiting. But the Specimen Archive's [REDACTED] tag primes the player to wonder what the Archive is hiding, which motivates Era 3's push toward microscopy. |
| Ancient Seed Pod (from Era 1) | Still sealed. Era 3 tools will begin to analyze the shell but cannot open it. Era 4 finally cracks it. The longest breadcrumb in the mod. |

---

## 14. ERA TRANSITION: Era 2 → Era 3

**Trigger:** Research "Cultivation Mastery" (tech #41) — requires:
- 50 total Controlled Environment Datasets consumed across all research
- Enriched Compost produced at least once
- Seed Sorter mk2 built and operational
- (Implicit: player has engaged deeply with farming, seed selection, soil management, and documentation)

**Transition sequence:**

1. The Field Study Station entry reads:

> *"I have spent seasons selecting. Measuring. Recording. I can improve my crops through patient choice. I can manage my soil through careful amendment. I can preserve food through fermentation and salt. But I have reached a wall. My eyes cannot see what makes one seed better than another. My hands cannot control what happens inside a growing plant. The answers I need exist at a scale below my perception. I need to go smaller. I need to see what living things are made of."*

2. **Reward: Laboratory Foundation Kit** — the player receives:
   - 1x Crude Microscope schematic (Era 3 core tool)
   - 1x Glass Lens recipe (requires sand + high heat — introduces glassworking)
   - Genetic Profile upgrade: ALL traits now show numeric values for Select-quality seeds (Wild/Farm seeds still show partial data, incentivizing quality improvement)
   - All archived specimens in the Specimen Archive retroactively reveal full profiles
   - Research chapter changes from "Selective Cultivation" to "Experimental Biology"
   - A new anomalous item appears in the Specimen Archive: "Microscopic Structures Detected" — a teaser image (blurry, indistinct) of what the player will soon see clearly: cells.

3. **Visual shift:** The research UI gains a subtle grid pattern overlay — evoking microscope slides. The background tone shifts from the warm earth palette of Era 2 to a slightly cooler, more precise palette. The world is the same. The lens through which the player sees it is about to change.

4. **Final tooltip on the Crude Microscope schematic:**

> *"A device for seeing what cannot be seen. Two curved pieces of glass. A tube. A light source. With this, you will look at the world you thought you knew and discover it is made of parts you never imagined. Every answer you find will raise ten new questions. This is how science works. This is how it has always worked."*

---

## APPENDIX A: SOIL QUALITY TIER SYSTEM

| Tier | Name | Base Yield Modifier | Base Growth Speed | Requires | Visual |
|------|------|-------------------|------------------|----------|--------|
| 1 | Tilled Earth | 100% (baseline) | 100% | Finished Compost + bare ground | Dark brown, uniform |
| 2 | Amended Soil | 115% | 110% | Tier 1 + Finished Compost application | Darker, slight texture |
| 3 | Enriched Soil | 135% | 120% | Tier 2 + Enriched Compost | Rich dark, visible organic matter |
| 4 | Optimized Soil | 160% | 130% | Tier 3 + Enriched Compost + all 3 amendments via Soil Mixer | Nearly black, particle effects |

**Nitrogen Rotation:** Planting beans or clover in a plot, then plowing them under as Green Manure, provides a "Nitrogen Replenished" buff for 3 crop cycles. Without nitrogen replenishment, Tier 3-4 soil degrades one tier per 5 crop cycles. This forces crop rotation — the player cannot monocrop wheat on Tier 4 soil forever without legume intervention. This is real agronomy.

---

## APPENDIX B: SEED QUALITY SYSTEM

| Quality | Source | Yield Modifier | Growth Modifier | Drift Bias | Genetic Profile Display |
|---------|--------|---------------|----------------|-----------|----------------------|
| Wild | Foraged (Era 1) or found in Era 2 | 100% | 100% | Neutral (50/50) | Fully locked: "???" on all traits |
| Farm | Seed Sorter mk1 (top 33% of harvest) | 110-115% | 105-110% | Slight positive (55/45) | One trait visible after Variation Hypothesis research |
| Select | Seed Sorter mk2 (top 10% of Farm seeds) | 120-130% | 110-115% | Moderate positive (60/40) | All traits visible after Cultivation Mastery research |

**How it works:** The Seed Sorter mk1 takes a batch of harvested crops and separates seeds by observable traits (size, weight, color). The top third become Farm quality. The Seed Sorter mk2 takes Farm-quality seeds and applies finer grading (additional screens, weight measurement). The top 10% become Select quality. This IS genetic selection. The machine is literally a selective pressure. The player is acting as an evolutionary force.

---

## APPENDIX C: TIMING AND PACING NOTES

**Era 1 (1-1.5 hours):**
- Minutes 0-10: Forage grassland, discover Wild Grass and Grain
- Minutes 10-20: Explore forest and wetland, craft stone tools, begin fiber processing
- Minutes 20-30: Build Grinding Slab, process first grain, discover first seeds
- Minutes 30-45: Build Water Wheel, automate grain milling, explore rocky biome
- Minutes 45-60: Build Compost Heap, discover 3+ seed types, find first anomaly
- Minutes 60-90: Complete all seed collection, finish composting cycle, research Cultivation Hypothesis

**Era 2 (14-18 hours):**
- Hours 1-2: Plant first crops (wheat, potato, barley), build basic processing (Thresher, Millstone)
- Hours 2-4: Establish barley→yeast→bread chain, first bread production
- Hours 4-6: Expand to 6+ crops, build textile chain (Retting → Spinning → Weaving)
- Hours 6-8: Establish soil management, first Enriched Compost, Seed Sorter mk1
- Hours 8-10: Full 12-crop rotation, mk2 machine upgrades begin, preservation chain
- Hours 10-12: Beehives, Worm Farm, Irrigation — biological web effects clearly felt
- Hours 12-14: Seed Sorter mk2, Specimen Archive, Select-quality seeds
- Hours 14-18: Science pack production at scale, complete tech tree, transition research

The era is long but the player is never grinding. New crops, new machines, new processing chains, and new ecological insights keep arriving throughout. The mid-era introduction of mk2 machines and the late-era Specimen Archive create natural phase transitions within the era itself.

---

## DESIGN AMENDMENTS

### Amendments Applied [2026-03-20]

**Source documents:** `reviews/fixes-critical-1-3.md` (Fix 1), `reviews/fixes-major-ux.md` (Fixes 1-5)

---

#### Fix C1: Era 2 Ink/Beet Circular Dependency (from fixes-critical-1-3.md, Fix 1)

**Problem:** CED science pack required Plant-Based Ink, which required Beet Juice, which required Beets, which required Root Sugar Extraction tech, which cost 5 CED. Deadlock.

**What changed:**

- **New item: Charcoal Ink** (`charcoal-ink`, stack 50, Era 2 intermediates group). Functionally identical to Plant-Based Ink for recipe purposes.
- **New recipe (no tech required):**
  ```
  Recipe: charcoal-ink
    Inputs:  2 Charcoal + 1 Tannin Water + 5 Water
    Outputs: 2 Charcoal Ink
    Machine: Mixing Vessel
    Time:    6s
    Tech:    NONE (unlocked at Era 2 start)
  ```
- **CED recipe modified:** The Crop Yield Record and Growth Condition Log components (which require Paper + Ink) now use Charcoal Ink instead of Plant-Based Ink. Specifically, recipe R-86 changes:
  - OLD: 1 Beet Juice + 1 Tannin Water -> 2 Plant-Based Ink (Mixing Vessel, 3s)
  - NEW: Plant-Based Ink recipe remains unchanged but is gated behind Root Sugar Extraction (no longer needed for CED).
  - NEW: Charcoal Ink (recipe above) is the default ink for all CED-chain documentation.
- **Plant-Based Ink** remains as-is, unlocked by Root Sugar Extraction. It should be given a purpose in a mid-Era-2 product (e.g., Botanical Field Guide, Labeled Specimen) so the Beet pathway is not wasted.
- **Tech tree: No changes.** Root Sugar Extraction still costs 5 CED (no longer circular since CED uses Charcoal Ink).

**Math verification:** Charcoal from Kiln (Era 1 staple), Tannin Water from Nut Leaching (Era 1). Paper at 8s per 2 units + Charcoal Ink at 6s per 2 units = 1 CED every ~10-12s. First tech (5 CED) = ~60s of production. No bottleneck.

---

#### Fix UX1A: Move Simple Planter to Hour 1-2 (from fixes-major-ux.md, Fix 1A)

**Problem:** Simple Planter was gated behind several intermediate techs (tech #25, requiring Spinning & Weaving + Grain Cultivation). Manual planting was tedious for hours.

**What changed:**

- Simple Planter becomes the 2nd technology in Era 2, requiring only the Era 2 entry tech.
- **New tech order for first 4 Era 2 techs:**

| Order | Tech Name | Unlock | Estimated Hour |
|-------|-----------|--------|----------------|
| 1 | Grain Cultivation Basics | Barley Seed, Wheat Seed, Grain Plot | 0:00-0:30 |
| 2 | Field Automation | Simple Planter, Simple Harvester | 0:30-1:30 |
| 3 | Milling & Grinding | Millstone, Flour, Bran | 1:30-2:30 |
| 4 | Flatbread Baking | Clay Oven, Barley Flatbread (upgraded) | 2:00-3:00 |

- Tech #25 (Mechanical Planting) is removed as a standalone tech. Its unlock (Simple Planter mk1) moves to tech #2 (Field Automation).
- Tech #26 (Mechanical Harvesting) prereq changes from Mechanical Planting to Field Automation.

---

#### Fix UX1B: Barley Flatbread — Alternative Early Food (from fixes-major-ux.md, Fix 1B)

**Problem:** Bread required the full barley-to-yeast chain (10+ step dependency). No viable food before hour 4-5.

**What changed:**

- **New recipe: Barley Flatbread**
  ```
  Input:  2x Barley Flour + 1x Water Bucket + 1x Salt (from Era 1 evaporation)
  Machine: Clay Oven
  Time:   8s
  Output: 3x Barley Flatbread
  ```
- Moderate nutrition, enough to sustain through hours 2-6. Dependency chain is 4 steps, not 10.
- Bread (yeast-dependent version) becomes an optimization path (better nutrition/satiation), not a survival gate.
- Flatbread Baking tech (position 4 in new ordering) gates this recipe.

---

#### Fix UX1C: Bundle MK2 Upgrades — 10 Techs Become 3 (from fixes-major-ux.md, Fix 1C)

**Problem:** 10 separate mk2 upgrade techs bloated the tech tree (techs #30-38 plus Seed Sorter mk2).

**What changed:**

- OLD: 10 separate techs — Planter Mk2, Harvester Mk2, Grain Mill Mk2, Clay Oven Mk2, Retting Basin Mk2, Malt Floor Mk2, Fermentation Vat Mk2, Compost Bin Mk2, Drying Rack Mk2, Cheese Press Mk2.
- NEW: 3 bundled techs:

| Bundled Tech | Contains | Prereq |
|-------------|----------|--------|
| Improved Field Equipment | Planter Mk2, Harvester Mk2, Drying Rack Mk2, Compost Bin Mk2 | Field Automation |
| Advanced Processing | Grain Mill Mk2, Clay Oven Mk2, Retting Basin Mk2 | Milling & Grinding |
| Fermentation Mastery | Malt Floor Mk2, Fermentation Vat Mk2, Cheese Press Mk2 | Yeast Cultivation |

- Each bundled tech costs ~2.5x a single mk2 tech (volume discount, not 4x).
- Tech count drops from 41 to 34.

---

#### Fix UX1D: Split Era 2 into 2A and 2B (from fixes-major-ux.md, Fix 1D)

**Problem:** Era 2 had 41 techs and 128 items in a single era — overwhelming, no mid-era reward.

**What changed:**

- **Era 2A — Grain Farming (6-8 hours, ~18 techs):**
  - Focus: Planting, harvesting, milling, flatbread, basic fiber (retting), composting
  - Items: ~60 (roughly half of current 128)
  - Machines: ~14
  - Ends with: Unlocking yeast cultivation (transition to fermentation)

- **Transition reward (2A to 2B):** Player receives "Starter Culture Kit" — one-time item providing 10x Yeast Culture for free. Eliminates yeast cold-start problem. Narratively: "a neighboring settlement shares their starter culture."

- **Era 2B — Applied Agriculture (6-8 hours, ~16 techs):**
  - Focus: Fermentation, malting, bread, cheese, brewing, advanced fiber processing
  - Items: ~68
  - Machines: ~15
  - Ends with: Era 3 transition (genetics introduction)
  - **Pacing note (hours 6-8 of 2B):** This is the weakest stretch in the mod — farm is running, automation handles most work, remaining techs are mk2 upgrades. Mitigate by: (a) placing the Specimen Archive unlock here as a major new system to explore, (b) triggering the first visible Organism Drift notification ("your wheat yield has shifted") to create urgency, (c) making the Seed Sorter mk2 a prerequisite for transition so the player has a clear goal to work toward, (d) breadcrumb Mutant Crop Specimens appearing more frequently in this window to maintain mystery.

- **Era 2A Science Pack: Controlled Environment Dataset (CED)**
  - Era 2A uses the same CED science pack as the full Era 2. This works because:
  - Charcoal Ink (Fix C1) is available with no tech requirement, using Era 1 materials
  - The Mixing Vessel is available at Era 2 start (no tech gate)
  - Paper requires Pulp Press (no tech gate, uses Era 1 cattail fiber)
  - All four CED components (Soil Sample Jar, Crop Yield Record, Seed Comparison Slide, Growth Condition Log) are obtainable from basic Era 2A farming activity
  - Seed Comparison Slides use two Wild-quality seeds (same tier), not different tiers
  - Estimated: first CED craftable within 30 minutes of Era 2A start

- **Ripple effects:**
  - Recipes referencing "Era 2" gating must be assigned specifically to 2A or 2B
  - Field Observation tech (Fix UX4, Crop Vigor) placed in Era 2A at position 5

---

#### Fix UX4 (partial): Bio Web Early Visibility — Crop Vigor Pips in Era 2A (from fixes-major-ux.md, Fix 4)

**Problem:** Biological Web effects active but completely invisible until Era 3 hints. Players built suboptimal layouts with no feedback.

**What changed:**

- **New tech: "Field Observation"** — 5th tech in Era 2A
  - Cost: 20x Era 2A science packs
  - Prereq: Field Automation (tech 2)
  - Unlocks: Crop Vigor Indicator (passive UI element on all farm plots)

- **Crop Vigor Indicator** — small colored pip on top-right of each farm plot entity:

| Pip Color | Meaning | Underlying Mechanic |
|-----------|---------|---------------------|
| No pip | No significant web interaction | Fewer than 2 neighbors, or neutral relationships |
| Green pip | Positive synergy detected | At least one adjacent crop has a positive companion relationship |
| Yellow pip | Mixed signals | Both positive and negative companion relationships present |
| Red pip | Negative interference | Net-negative companion relationship (growth penalty active) |

- Deliberately does NOT show: which neighbor causes the effect, magnitude, full web graph, or second-order effects.
- Pip is 8x8 pixel overlay, updates every 5 seconds, checks 3-tile radius for companion relationships.
- Net score > +0.5: green. Between -0.5 and +0.5: yellow. < -0.5: red. No relationship neighbors: no pip.
- Era 3 hint arrows become a clear upgrade: "Now you can see WHICH specific neighbor helps or hurts."

---

#### Fix UX5: Passive Timer Rework (from fixes-major-ux.md, Fix 5)

**Problem:** Multiple passive timers exceeded 120s (Retting 180s, Malting 210s, Fermentation 180-300s, Cheese 300-600s, Composting 180s). Players stare at progress bars.

**What changed — all Era 2 passive processes split into stages (max 90s per wait):**

| Process | Old Duration | New Total | Longest Wait | Stages | Interaction Points |
|---------|-------------|-----------|-------------|--------|--------------------|
| Retting | 180s | 105s | 60s | 2 | 1 |
| Malting | 210s | 110s | 60s | 2 | 1 |
| Fermentation (simple) | 180s | 90s | 90s | 1 | 0 |
| Fermentation (complex) | 300s | 150s | 90s | 2 | 1 |
| Cheese (standard) | 300s | 195s | 90s | 3 | 2 |
| Cheese (premium) | 600s | 285s | 90s | 4 | 3 |
| Composting | 180s | 105s | 60s | 2 | 1 |

**New staged recipes (selected examples):**

- **Retting:** Soak Fiber (60s, Retting Basin) -> manual transfer -> Rinse & Dry (45s, Drying Rack)
- **Malting:** Steep Grain (60s, Steeping Vat) -> manual transfer -> Germinate & Kiln (50s, Kiln)
- **Cheese:** Set Curds (60s, Cheese Vat) -> Press (45s, Cheese Press) -> Age (90s, Aging Cave). Premium adds Affinage (90s).
- **Composting:** Active Composting (60s, Compost Bin) -> manual turn -> Cure (45s, Compost Bin)

**New intermediate items:** Soaked Fiber, Steeped Grain, Fresh Curds, Whey (byproduct), Green Cheese Wheel, Partially Composted Material.

**Batch Processing Unlock (Era 2B tech — "Process Automation"):** After 5 manual cycles of any staged process, unlocks Auto-Transfer Conveyor entity. Connects two machines, runs staged processes as automated chain. Total time unchanged but no manual transfers needed.

---
