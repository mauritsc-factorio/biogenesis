# Biogenesis Design Fixes Document

## FIX 1: Era 2 Ink/Beet Circular Dependency

### Problem Analysis

The dependency chain is circular:

```
CED (science pack) requires Ink
  Ink requires Beet Juice
    Beet Juice requires Beets
      Beets require "Root Sugar Extraction" tech
        Root Sugar Extraction costs 5 CED  <-- DEADLOCK
```

Paper path: Cattail Fiber is Era 1, Pulp Press has no tech gate listed. This path is clear. The sole blocker is Ink.

### Solution: New "Charcoal Ink" Recipe (Era 2 Baseline, No Research Required)

**New Item:**
- **Charcoal Ink** — functionally identical to Plant-Based Ink for recipe purposes. Internal name: `charcoal-ink`. Item group: Era 2 intermediates. Stack size: 50.

**New Recipe — Charcoal Ink (available at Era 2 start, no tech required):**

```
Recipe ID: charcoal-ink
  Inputs:  2 Charcoal + 1 Tannin Water + 5 Water
  Outputs: 2 Charcoal Ink
  Machine: Mixing Vessel
  Time:    6s
  Tech:    NONE (unlocked at Era 2 start)
```

**Rationale:** Charcoal suspended in tannin-water is historically accurate (iron gall ink / carbon ink). Both Charcoal (Era 1, Kiln) and Tannin Water (Era 1, Nut Leaching) are guaranteed available. Water is ambient.

**Modification to CED (Controlled Environment Dataset) recipe:**
Change the Ink input to accept EITHER Charcoal Ink OR Plant-Based Ink. In Factorio mod terms, this means one of:

- **Option A (simpler):** Replace the CED ingredient from "Plant-Based Ink" to "Charcoal Ink" directly. Then make Plant-Based Ink an ingredient in a higher-tier product later.
- **Option B (more elegant):** Create an intermediate item group "Ink" that both Charcoal Ink and Plant-Based Ink feed into.

**Recommended: Option A.** Factorio mods handle item-group abstraction poorly. Direct substitution is cleaner.

**Modified CED Recipe:**

```
Recipe ID: controlled-environment-dataset (MODIFIED)
  Inputs:  1 Paper + 1 Charcoal Ink + 1 Pressed Plant Sample
  Outputs: 1 Controlled Environment Dataset
  Machine: (unchanged)
  Time:    (unchanged)
  Tech:    NONE (Era 2 science pack, must be freely craftable)
```

**Plant-Based Ink remains as-is**, unlocked by Root Sugar Extraction tech. Give it a purpose: make it an ingredient in a mid-Era-2 product (e.g., Botanical Field Guide, Labeled Specimen, or similar documentation item) so the Beet pathway is not wasted.

**Tech Tree Change:**
- Root Sugar Extraction: cost remains 5 CED (no longer circular since CED uses Charcoal Ink).
- No new techs added.

**Math Verification:**
- Charcoal: Kiln produces charcoal from wood, Era 1 staple. Abundant.
- Tannin Water: Nut Leaching, Era 1. Adequate throughput.
- CED production chain: Paper (8s) + Charcoal Ink (6s) both feed into CED. Bottleneck is Paper at 8s per 2 units. One Pulp Press + one Mixing Vessel = 1 CED every ~10-12s accounting for logistics. 5 CED for first tech = ~60s of production. No bottleneck.

---

## FIX 2: Era 3 Phantom Ingredients

### Fix for each phantom ingredient:

**1. Soybean** (used in R-3.45 Fermented Soy Paste, R-3.46 Tempeh Block)

Substitute: **Bean** (Era 2 crop, already exists).

Beans are legumes. Soy is a legume. The fermentation and tempeh processes work identically with broad beans or other legumes.

```
R-3.45 Fermented Soy Paste (MODIFIED):
  OLD: 4 Soybean + 2 Rock Salt + 1 Koji Culture → 2 Fermented Soy Paste
  NEW: 4 Bean + 2 Mineral Salt + 1 Koji Culture → 2 Fermented Soy Paste
  Machine: (unchanged)
  Time:    (unchanged)
  Note:    Rock Salt also replaced here, see fix #6 below.

R-3.46 Tempeh Block (MODIFIED):
  OLD: 6 Soybean + 1 Starter Culture → 2 Tempeh Block
  NEW: 6 Bean + 1 Starter Culture → 2 Tempeh Block
  Machine: (unchanged)
  Time:    (unchanged)
```

**2. Steamed Rice** (used in R-3.44 Koji Culture)

Substitute: **Barley** (Era 2 crop). Koji (Aspergillus oryzae) grows on any starchy grain. Barley koji is historically documented.

```
New intermediate recipe — Steamed Grain:
  Recipe ID: steamed-grain
  Inputs:  4 Barley + 10 Water
  Outputs: 4 Steamed Grain
  Machine: Cooking Pot (or whatever Era 2/3 heating vessel exists)
  Time:    4s
  Tech:    None beyond Era 3 entry

R-3.44 Koji Culture (MODIFIED):
  OLD: 4 Steamed Rice + 1 Fungal Spore Sample → 2 Koji Culture
  NEW: 4 Steamed Grain + 1 Fungal Spore Sample → 2 Koji Culture
  Machine: (unchanged)
  Time:    (unchanged)
```

**New Item:** Steamed Grain. Stack size: 50. Internal name: `steamed-grain`.

**3. Crystal Violet Dye** (used in R-3.72 Gram Stain Slide)

Substitute: Derive from existing materials. Crystal violet is a triarylmethane dye. In a bio-themed mod, a purple plant extract is the logical equivalent.

```
New recipe — Improvised Staining Dye:
  Recipe ID: improvised-staining-dye
  Inputs:  2 Extracted Plant Pigment + 1 Tannin Water + 5 Ethanol (or Distilled Spirits if that's the Era 3 term)
  Outputs: 2 Improvised Staining Dye
  Machine: Mixing Vessel
  Time:    5s
  Tech:    Basic Microbiology (or whichever tech gates R-3.72)

R-3.72 Gram Stain Slide (MODIFIED):
  OLD: ... + 1 Crystal Violet Dye + ...
  NEW: ... + 1 Improvised Staining Dye + ...
  (all other inputs unchanged)
```

**New Item:** Improvised Staining Dye. Stack size: 50. Internal name: `improvised-staining-dye`.

If Extracted Plant Pigment is not available by Era 3, use: `2 Beet Juice + 1 Tannin Water + 5 Ethanol` instead (beets produce a strong purple-red pigment, close enough for a staining reagent).

**4. Legume Root Node** (used in R-3.56 Nitrogen-Fixing Inoculant)

Source: Harvest from Bean plants. Define as a byproduct.

```
New recipe — Legume Root Node (harvesting byproduct):
  Recipe ID: legume-root-node-extraction
  Inputs:  4 Bean + 1 Compost (represents soil medium)
  Outputs: 1 Legume Root Node + 2 Bean (partial return)
  Machine: Sorting Table (or manual crafting)
  Time:    6s
  Tech:    Soil Microbiology (or whichever tech gates R-3.56)
```

**New Item:** Legume Root Node. Stack size: 20. Internal name: `legume-root-node`. Flavor text: "Root nodules harboring nitrogen-fixing bacteria."

**5. Forest Soil Sample** (used in R-3.57 Mycorrhizal Inoculant)

Source: Define as a gatherable resource or simple recipe from existing items.

```
New recipe — Forest Soil Sample:
  Recipe ID: forest-soil-sample
  Inputs:  2 Compost + 1 Wood + 5 Water
  Outputs: 2 Forest Soil Sample
  Machine: Mixing Vessel (or manual crafting)
  Time:    4s
  Tech:    Soil Microbiology (or whichever tech gates R-3.57)
```

**New Item:** Forest Soil Sample. Stack size: 20. Internal name: `forest-soil-sample`. Flavor text: "Rich humus from beneath mature trees, teeming with fungal hyphae."

**Rationale:** Wood represents forest-origin material, Compost represents organic soil matter. Combined with water to create a workable sample.

**6. Rock Salt** (used in R-3.07 Mineral Lick Block)

Substitute: **Mineral Salt** — derive from evaporation of water, a process the mod should already conceptually support.

```
New recipe — Mineral Salt:
  Recipe ID: mineral-salt
  Inputs:  20 Water + 2 Ash
  Outputs: 1 Mineral Salt
  Machine: Evaporation Basin (if exists) or Cooking Pot / Fire Pit
  Time:    10s
  Tech:    None (basic process)

R-3.07 Mineral Lick Block (MODIFIED):
  OLD: ... + 2 Rock Salt + ...
  NEW: ... + 2 Mineral Salt + ...
  (all other inputs unchanged)
```

**New Item:** Mineral Salt. Stack size: 50. Internal name: `mineral-salt`. Also used in the Fermented Soy Paste fix above.

**7. Gravel** (used in R-3.100 Biofilter Treatment)

Source: Crush stone. Stone/rock is a baseline Factorio resource.

```
New recipe — Gravel:
  Recipe ID: gravel-crushing
  Inputs:  1 Stone (or "Raw Stone" — use whatever the mod's base stone item is called)
  Outputs: 4 Gravel
  Machine: Crusher (if exists) or manual crafting
  Time:    2s
  Tech:    None (basic process)

R-3.100 Biofilter Treatment: no change needed, just ensure Gravel is obtainable.
```

**New Item:** Gravel. Stack size: 100. Internal name: `gravel`.

If the mod has no Stone item, substitute: `2 Raw Clay + 1 Sand → 4 Gravel` using whatever mineral resource the mod does have.

**8. Root Fragment** (used in R-3.57 Mycorrhizal Inoculant)

Source: Byproduct of root-crop processing. Turnip or Potato are root crops available in Era 2.

```
New recipe — Root Fragment:
  Recipe ID: root-fragment
  Inputs:  2 Turnip (or Potato)
  Outputs: 3 Root Fragment + 1 Compost (the discarded flesh becomes compost)
  Machine: Sorting Table (or manual crafting)
  Time:    3s
  Tech:    None (basic process available at Era 3 start)
```

**New Item:** Root Fragment. Stack size: 50. Internal name: `root-fragment`. Flavor text: "Fibrous root material suitable for mycorrhizal colonization."

### Summary of New Items Introduced (Fix 2)

| Item | Internal Name | Stack | Source |
|---|---|---|---|
| Steamed Grain | steamed-grain | 50 | Barley + Water |
| Improvised Staining Dye | improvised-staining-dye | 50 | Plant Pigment + Tannin Water + Ethanol |
| Legume Root Node | legume-root-node | 20 | Bean + Compost |
| Forest Soil Sample | forest-soil-sample | 20 | Compost + Wood + Water |
| Mineral Salt | mineral-salt | 50 | Water + Ash |
| Gravel | gravel | 100 | Stone |
| Root Fragment | root-fragment | 50 | Turnip or Potato |

No new crops. All source materials are from Era 1-2.

---

## FIX 3: Era 7 Selection Pressure Log Math

### Problem Analysis

**Current parameters:**
- Selection Pressure Log: 5% drop chance per Directed Evolution Chamber cycle
- Cycle time: 45 seconds
- Expected rate: 1 log per 20 cycles = 1 per 900s = 1 per 15 minutes per chamber
- With 3 chambers: 1 log per 5 minutes = 12 logs/hour
- Capstone needs 1,000+ Evolutionary Dynamics Reports, each needing 1 log
- Time needed: 1,000 / 12 = 83.3 hours
- Era budget: 20-25 hours
- **Deficit factor: 3.3x to 4.2x over budget**

Even if we count only ~500 logs (since the recipe outputs 2 reports per craft): 500 / 12 = 41.7 hours. Still ~2x over budget.

### Target Calculation

**Goal:** Capstone completable in 4-5 hours of dedicated production with 3 chambers.

Reports needed: 1,000. Recipe yields 2, so crafts needed: 500. Each craft needs 1 Selection Pressure Log, so logs needed: 500.

Target time: 4.5 hours = 270 minutes.

Required rate: 500 logs / 270 min = 1.85 logs/min with 3 chambers = 0.617 logs/min per chamber.

Cycle time: 45 seconds. Cycles per minute: 1.333.

Required drop rate per cycle: 0.617 / 1.333 = **46.3% per cycle**.

### Solution: Hybrid Approach (Guaranteed Craft + Increased Drop)

A 46% random drop still feels bad to the player (high variance). Better design: make it a **guaranteed crafted output** with a secondary RNG bonus.

**Modified Selection Pressure Log — now a guaranteed output:**

```
Recipe ID: selection-pressure-log (MODIFIED — replaces random drop)
  Machine: Directed Evolution Chamber
  Inputs:  1 Mutant Population Sample + 1 Selective Media Plate + 10 Nutrient Broth
  Outputs: 1 Selection Pressure Log (guaranteed) + 1 Adapted Culture (guaranteed, existing output)
  Time:    45s
  Tech:    (unchanged, whatever gates Directed Evolution Chamber)
```

**Math verification with guaranteed output:**
- 3 chambers, each producing 1 log per 45s
- Rate: 3 / 45 = 0.0667 logs/second = 4 logs/minute = 240 logs/hour
- 500 logs needed: 500 / 240 = 2.08 hours
- That is too fast. We want 4-5 hours, not 2.

**Adjustment — increase cycle time to 90 seconds:**

```
Recipe ID: selection-pressure-log (FINAL)
  Machine: Directed Evolution Chamber
  Inputs:  1 Mutant Population Sample + 1 Selective Media Plate + 10 Nutrient Broth
  Outputs: 1 Selection Pressure Log (guaranteed) + 1 Adapted Culture
  Time:    90s  (doubled from 45s)
  Tech:    (unchanged)
```

**Revised math:**
- 3 chambers, 1 log per 90s each
- Rate: 3 / 90 = 0.0333 logs/second = 2 logs/minute = 120 logs/hour
- 500 logs needed: 500 / 120 = **4.17 hours**
- This is within the 4-5 hour target.

**Alternative if you want to keep the 45s cycle:** keep 45s but require 2 logs per science pack craft instead of 1, and keep guaranteed output.

```
Alt: 3 chambers x (1 log / 45s) = 240 logs/hour
    Need 1000 logs (2 per craft x 500 crafts): 1000/240 = 4.17 hours. Same result.
```

**Recommended: the 90s cycle time approach.** It is simpler (one change) and the longer cycle time feels appropriately weighty for a late-game evolution process.

### Secondary Bottleneck Analysis

Now checking the other three science pack inputs for the Evolutionary Dynamics Report:

**Recipe reminder:**
```
1 Drift Variance Dataset + 1 Selection Pressure Log + 1 Fitness Landscape Model + 1 Population Gene Library → 2 Evolutionary Dynamics Report (30s)
```

500 crafts needed. Each craft consumes 1 of each input. Production time per craft: 30s, so 1 assembler can do 2/min = 120/hour. 500 crafts = 4.17 hours on a single assembler. That matches our log rate, which is good.

**For each input, the question is: can we produce 500 units in 4-5 hours?**

**Drift Variance Dataset:**
- Likely produced by a sequencing or analysis machine. If it takes ~60s per unit on one machine, rate = 1/min per machine. 3 machines = 180/hour. 500 / 180 = 2.78 hours. Likely fine with 2-3 machines.
- **Verdict: Probably not bottlenecked** as long as the player can run 2-3 production lines.

**Fitness Landscape Model:**
- If this is a computation/analysis output, similar reasoning. As long as cycle time is under ~120s and the player has 2+ machines, throughput is sufficient.
- **Verdict: Needs verification** but likely okay.

**Population Gene Library:**
- If this is an accumulated catalog item from gene sequencing, it could be slow if it requires many sub-components.
- **Verdict: Highest risk secondary bottleneck.** If this requires rare inputs from earlier eras, it could become the new bottleneck.

**Recommended safeguard:** Ensure ALL four inputs to the Evolutionary Dynamics Report have a theoretical throughput of at least 150 units/hour with a reasonable (3-4 machine) setup. If any input's throughput is below that threshold, either:
- Reduce its recipe time, or
- Increase its recipe output quantity, or
- Reduce the number needed per report craft from 1 to 1-per-2 (i.e., recipe consumes 1 but produces 3 reports instead of 2).

Without the exact recipes for the other three inputs, I cannot give precise fixes, but the **mathematical constraint is clear: each input must sustain at minimum 120 units/hour (= 500 / 4.17 hours) with a practical number of machines (3-4).**

### Summary of Era 7 Changes

| Parameter | Old Value | New Value |
|---|---|---|
| Selection Pressure Log source | 5% random drop per 45s cycle | Guaranteed output per 90s cycle |
| Log acquisition rate (3 chambers) | ~12/hour (expected, high variance) | 120/hour (guaranteed, zero variance) |
| Time to 500 logs | ~41.7 hours | ~4.17 hours |
| Capstone feasibility | Impossible in era timeframe | Achievable in ~4-5 hours |

---

## Complete Change List

### New Items (7 total)

1. `charcoal-ink` — Era 2 ink from charcoal + tannin water
2. `steamed-grain` — Era 3 intermediate from barley
3. `improvised-staining-dye` — Era 3 microscopy reagent
4. `legume-root-node` — Era 3 from bean processing
5. `forest-soil-sample` — Era 3 from compost + wood
6. `mineral-salt` — Era 3 from water evaporation + ash
7. `gravel` — Era 3 from stone crushing
8. `root-fragment` — Era 3 from turnip/potato processing

(Note: 8 items, not 7. The Root Fragment was the 8th.)

### Modified Recipes (4 total)

1. **Controlled Environment Dataset** — Ink ingredient changed from Plant-Based Ink to Charcoal Ink
2. **Fermented Soy Paste (R-3.45)** — Soybean replaced with Bean, Rock Salt replaced with Mineral Salt
3. **Tempeh Block (R-3.46)** — Soybean replaced with Bean
4. **Gram Stain Slide (R-3.72)** — Crystal Violet Dye replaced with Improvised Staining Dye
5. **Koji Culture (R-3.44)** — Steamed Rice replaced with Steamed Grain
6. **Mineral Lick Block (R-3.07)** — Rock Salt replaced with Mineral Salt
7. **Mycorrhizal Inoculant (R-3.57)** — Legume Root Node and Root Fragment now have sources; Forest Soil Sample now has source. No recipe text change needed if the item names stay the same.
8. **Biofilter Treatment (R-3.100)** — Gravel now has a source. No recipe text change needed.
9. **Selection Pressure Log** — Changed from 5% random drop to guaranteed craft output, cycle time 45s to 90s

### New Recipes (9 total)

1. Charcoal Ink (Mixing Vessel, 6s)
2. Steamed Grain (Cooking Pot, 4s)
3. Improvised Staining Dye (Mixing Vessel, 5s)
4. Legume Root Node Extraction (Sorting Table, 6s)
5. Forest Soil Sample (Mixing Vessel, 4s)
6. Mineral Salt (Evaporation/Fire Pit, 10s)
7. Gravel Crushing (Crusher/manual, 2s)
8. Root Fragment (Sorting Table, 3s)
9. Selection Pressure Log (Directed Evolution Chamber, 90s, guaranteed)

### Tech Tree Changes

- None for Fix 1 (Charcoal Ink is techless, matching Paper's techless Pulp Press)
- None for Fix 2 (new source recipes gated by the same techs that gate their consuming recipes)
- None for Fix 3 (same tech gates the Directed Evolution Chamber)
