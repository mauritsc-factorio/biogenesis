# Biogenesis UX Fixes: Detailed Implementation Plan

## FIX 1: Era 2 Overload — Tech Tree Restructure

### 1A. Move Simple Planter to Hour 1-2

**Exact change:** The Simple Planter becomes the 2nd technology in Era 2, requiring only the Era 2 entry tech (e.g., "Grain Cultivation Basics").

**New tech order for first 4 Era 2 techs:**

| Order | Tech Name | Unlock | Estimated Hour |
|-------|-----------|--------|----------------|
| 1 | Grain Cultivation Basics | Barley Seed, Wheat Seed, Grain Plot | 0:00-0:30 |
| 2 | Field Automation | Simple Planter, Simple Harvester | 0:30-1:30 |
| 3 | Milling & Grinding | Millstone, Flour, Bran | 1:30-2:30 |
| 4 | Flatbread Baking | Clay Oven, Barley Flatbread (upgraded) | 2:00-3:00 |

Previously the Simple Planter was likely gated behind several intermediate techs. Moving it to position 2 means the player automates planting within the first 90 minutes and can focus mental energy on learning the new crop mechanics rather than manually clicking plots.

### 1B. Alternative Early Food: Barley Flatbread (No Yeast)

**New recipe — Barley Flatbread:**

```
Input:  2x Barley Flour + 1x Water Bucket + 1x Salt (from Era 1 evaporation)
Machine: Clay Oven
Time:   8s
Output: 3x Barley Flatbread
```

This food item has moderate nutrition (enough to sustain the player through hours 2-6) and requires only: harvest barley, mill it to flour, combine with water and salt. The dependency chain is 4 steps, not 10. Bread (the yeast-dependent version) becomes an upgrade that gives more nutrition or has a longer satiation duration, not a gate.

**Why this works:** The player has a functional food pipeline by hour 2-3. The barley-to-yeast chain becomes an *optimization* path (better food, ingredient for other recipes) rather than a *survival gate*. No new items need inventing beyond the flatbread recipe itself and barley flour (which is already part of the milling tech).

### 1C. Bundle MK2 Upgrades: 10 techs become 3

**Current (10 separate techs):**
- Planter Mk2, Harvester Mk2, Grain Mill Mk2, Clay Oven Mk2, Retting Basin Mk2, Malt Floor Mk2, Fermentation Vat Mk2, Compost Bin Mk2, Drying Rack Mk2, Cheese Press Mk2

**New (3 bundled techs):**

| Bundled Tech | Contains | Prereq |
|-------------|----------|--------|
| Improved Field Equipment | Planter Mk2, Harvester Mk2, Drying Rack Mk2, Compost Bin Mk2 | Field Automation |
| Advanced Processing | Grain Mill Mk2, Clay Oven Mk2, Retting Basin Mk2 | Milling & Grinding |
| Fermentation Mastery | Malt Floor Mk2, Fermentation Vat Mk2, Cheese Press Mk2 | Yeast Cultivation |

Each bundled tech costs approximately 2.5x the cost of a single mk2 tech (not 4x — give a volume discount). This drops the tech count from 41 to 34.

### 1D. Split Era 2 into 2A and 2B

**Era 2A — Grain Farming (estimated 6-8 hours, ~18 techs):**
- Focus: Planting, harvesting, milling, flatbread, basic fiber (retting), composting
- Items: ~60 (roughly half the current 128)
- Machines: ~14
- Ends with: Unlocking yeast cultivation (the transition to fermentation)

**Transition reward between 2A and 2B:** The player receives a "Starter Culture Kit" — a one-time item that bootstraps the yeast chain by providing 10x Yeast Culture for free, eliminating the cold-start problem of the first fermentation cycle. This is narratively satisfying (a neighboring settlement shares their starter culture) and mechanically generous (saves 30+ minutes of passive waiting at the exact moment the player is most likely to bounce off).

**Era 2B — Applied Agriculture (estimated 6-8 hours, ~16 techs):**
- Focus: Fermentation, malting, bread, cheese, brewing, advanced fiber processing
- Items: ~68
- Machines: ~15
- Ends with: Era 3 transition (genetics introduction)

**Why this works:** Each sub-era has roughly 16-18 techs (comparable to Era 1's density) and focuses on a coherent theme. The player never faces a wall of 41 techs. The mini-transition reward creates a dopamine hit at the midpoint and solves the yeast cold-start problem simultaneously.

### Ripple effects:
- Science pack costs for 2A techs need rebalancing (should use Era 1 science pack or a simple 2A pack based on grain products)
- Any recipe that references "Era 2" gating generically must be assigned to 2A or 2B specifically
- The progression document / in-game tech tree tooltip should explain the sub-era structure

---

## FIX 2: Era 4 Science Pack Throughput — Math and Solution

### The Math

**Assumptions for 28 technologies:**
- Low-cost techs (8 techs): 50 HAF each = 400 HAF
- Medium-cost techs (12 techs): 150 HAF each = 1,800 HAF
- High-cost techs (6 techs): 350 HAF each = 2,100 HAF
- Capstone techs (2 techs): 600 HAF each = 1,200 HAF
- **Total: ~5,500 HAF needed**

**Available time:** 16-20 hours = 57,600-72,000 seconds. Assume 70% of time is active production (the rest is building, logistics, troubleshooting) = 40,320-50,400 productive seconds.

**Required throughput:** 5,500 HAF / 40,320s = 0.136 HAF/s minimum, or roughly **1 HAF every 7.3 seconds sustained**.

**Current throughput bottleneck:** The Breeding Prediction Accuracy Log requires 2 crop growth cycles at 5-8 minutes each. Even with 4 parallel breeding stations, that is 1 log per 2.5-4 minutes = 0.007-0.004 logs/s. Current recipe produces 2 HAF per 25s per log. So throughput is capped at approximately **2 HAF per 150-240s = 0.008-0.013 HAF/s**. This is 10-17x too slow.

### The Fix: Three Simultaneous Changes

**Change A — Introduce Archival Breeding Records:**

```
New recipe — Archival Breeding Record Compilation:
Input:  3x Specimen Archive Page (from Era 3 archived breeding data)
      + 1x Statistical Summary Sheet (new intermediate, see below)
Machine: Research Desk
Time:   30s
Output: 1x Breeding Prediction Accuracy Log
```

```
New recipe — Statistical Summary Sheet:
Input:  1x Completed Punnett Grid (any era)
      + 1x Phenotype Tally Sheet (from observation logs)
Machine: Research Desk
Time:   15s
Output: 2x Statistical Summary Sheet
```

This creates a second production pathway for the BPAL that consumes Era 3 archival data rather than requiring new live breeding cycles. Players who kept good records in Era 3 are rewarded. The live-breeding path still works but is no longer the sole bottleneck.

**Change B — Increase HAF output per craft:**

```
Modified recipe — Hereditary Analysis Folio:
Input:  1x Breeding Prediction Accuracy Log
      + 1x Enzyme Kinetics Report
      + 1x Cellular Ultrastructure Report
      + 1x Mendelian Ratio Confirmation
Machine: Analysis Bench
Time:   25s
Output: 5x HAF (was 2x)
```

This alone cuts the required log throughput by 2.5x.

**Change C — Accelerated Growth Chamber interaction:**

```
New recipe — Accelerated Breeding Cycle:
Input:  1x Breeding Pair (any species)
      + 2x Growth Hormone Extract
      + 1x Controlled Environment Cartridge
Machine: Accelerated Growth Chamber
Time:   60s (down from 300-480s for natural breeding)
Output: 1x Completed Breeding Record + 1x F2 Offspring Sample
```

This reduces the live-breeding path from 5-8 minutes to 60 seconds per cycle.

**Revised throughput check:** With 5x output and the archival path, a player with 2 Analysis Benches and a steady BPAL supply produces 10 HAF per 25s = 0.4 HAF/s. At that rate, 5,500 HAF takes 13,750s = ~3.8 hours of sustained production. This is comfortably within the 16-20 hour era, leaving ample time for building, exploration, and other activities.

### Ripple effects:
- Specimen Archive Pages need to be an item players actually accumulated in Era 3. If the archive is currently a UI-only feature, it needs to produce tangible item outputs. Add a recipe: "Archive Breeding Session" (1x Completed Breeding Record -> 1x Specimen Archive Page, 5s, at the Specimen Archive machine).
- Growth Hormone Extract becomes a new intermediate item. It should be producible from Era 4 biotech chains (enzyme extraction from specific crops).
- The Mendelian Ratio Confirmation input should also have a parallel path (calculable from archival data).

---

## FIX 3: Era 5 CRISPR Failure Rate — Modified Recipes

### The Fix: Reduce Failure + Make Failure Recoverable

**Change A — Reduce base failure rate from 20% to 8%:**

The CRISPR Verified Edited Genome recipe changes its success probability from 80% to 92%.

**Change B — New "failed" output item instead of destruction:**

When the 8% failure occurs, instead of voiding all inputs, the machine produces a new item:

```
Failure output:
1x Partially Edited Genome (replaces total loss)
The Off-Target Screening Report is consumed.
All other inputs are returned.
```

**Change C — Recovery recipe for the failed genome:**

```
New recipe — Genome Edit Repair:
Input:  1x Partially Edited Genome
      + 1x Repair Enzyme Cocktail (existing Era 5 item, or new simple intermediate)
      + 1x Fresh Off-Target Screening Report
Machine: CRISPR Workstation
Time:   20s (half the original edit time)
Success rate: 95% (higher than first attempt — the hard part is done)
Output: 1x CRISPR Verified Edited Genome
```

If the repair also fails (5% of 8% = 0.4% total double-failure rate), it produces another Partially Edited Genome, allowing another repair attempt.

```
New recipe (if Repair Enzyme Cocktail doesn't exist):
Repair Enzyme Cocktail:
Input:  1x Ligase Extract + 1x Polymerase Solution
Machine: Enzyme Synthesis Station
Time:   15s
Output: 2x Repair Enzyme Cocktail
```

**Why this works:**
- Base failure drops from 20% to 8%: most attempts succeed
- When failure occurs, only the Off-Target Screening Report is consumed (the most expensive input), not everything
- The repair path is cheap and fast (20s + 95% success) compared to re-running the entire 15-step chain
- Expected waste per genome edit: 0.08 * 1 Screening Report + 0.08 * 0.05 * 1 additional Screening Report = ~0.084 Screening Reports wasted per successful genome. Compare to the original 0.20 * (all inputs). This is roughly a 10x reduction in expected material loss
- Tension is preserved: the 8% failure still stings, and the player must have Repair Enzyme Cocktails on hand. There is a planning/preparation element rather than pure RNG punishment

### Ripple effects:
- The Partially Edited Genome is a new item that needs an icon and tooltip. Tooltip should say: "An incomplete genome edit. Can be repaired at the CRISPR Workstation."
- If multiple genome variants exist (e.g., drought resistance edit vs. yield edit), the Partially Edited Genome must carry metadata about which edit was attempted, so the repair produces the correct final genome. In Factorio modding terms, this means either one Partially Edited Genome item per edit type, or a single generic item if the repair recipe is specific to the workstation's configuration.
- The overall CRISPR chain difficulty is reduced. If this makes Era 5 too easy, compensate by slightly increasing the tech costs (5-10% more science packs) rather than re-adding punishment RNG.

---

## FIX 4: Biological Web Early Visibility

### The Fix: Era 2A "Crop Vigor" Indicator

**Unlock point:** The 5th tech in Era 2A, called "Field Observation."

**Tech — Field Observation:**
- Cost: 20x Era 2A science packs
- Prereq: Field Automation (tech 2)
- Unlocks: Crop Vigor Indicator (passive UI element on all farm plots)

**What the Crop Vigor Indicator shows:**

On every placed crop/farm plot entity, a small colored pip appears in the top-right corner:

| Pip Color | Meaning | Underlying Mechanic |
|-----------|---------|---------------------|
| No pip | No significant web interaction | Fewer than 2 neighbors, or neutral relationships |
| Green pip | Positive synergy detected | At least one adjacent crop has a positive companion relationship |
| Yellow pip | Mixed signals | Both positive and negative companion relationships present |
| Red pip | Negative interference | Net-negative companion relationship (growth penalty active) |

**What it deliberately does NOT show:**
- It does not name which neighbor is causing the effect
- It does not show the strength/magnitude of the bonus or penalty
- It does not reveal the full web graph
- It does not show second-order effects (crop A helps crop B which helps crop C)

**Player experience:** Around hour 3-4 of Era 2A, after researching Field Observation, the player notices green and red pips appearing on their crops. They experiment: "When I put barley next to wheat, both get green pips. When I put barley next to flax, barley gets a red pip." They start arranging their fields deliberately. By the time Era 3's hint arrows arrive, the player already has an intuitive sense of which crops are companions and which are antagonists. The hint arrows then *confirm and deepen* existing knowledge rather than contradicting established layouts.

**Implementation specifics:**
- The pip is a small 8x8 pixel overlay rendered on the entity sprite, similar to how vanilla Factorio shows module indicators on machines
- The pip updates every 5 seconds (not every tick — performance consideration)
- The pip calculation checks all entities within a 3-tile radius for companion relationships
- Net score > +0.5: green. Net score between -0.5 and +0.5: yellow. Net score < -0.5: red. No neighbors with any relationship: no pip.

**Why this works:**
- It respects the progressive disclosure design (Era 3 arrows and Era 4 full panel are still meaningful upgrades)
- It gives the player actionable information at the exact moment they are making layout decisions (hour 3-4, when they have multiple crop types and are building their first real farms)
- It is deliberately vague enough to encourage experimentation rather than min-maxing
- It prevents the "tear everything down" problem: players who build with vigor pips in mind will have reasonable layouts by Era 3

### Ripple effects:
- The Field Observation tech needs to be added to the 2A tech tree (position 5 of ~18 techs)
- The pip rendering system needs to be efficient. Checking 3-tile radius every 5 seconds for every farm plot is O(n) where n is the number of farm plots. For large farms (500+ plots), this could be expensive. Consider chunking: only recalculate pips when a new entity is placed/removed within the chunk, and cache results.
- The tooltip for the pip should say something like "This crop appears to be thriving" (green) / "This crop shows signs of stress" (red) — keep the language biological, not mechanical
- Era 3 hint arrows become a *clear upgrade*: "Now you can see which specific neighbor is helping or hurting"

---

## FIX 5: Passive Timer Stacking — Specific Adjustments

### Design Principle

No single passive timer should exceed 120 seconds. Processes that "should" take longer are split into stages, where each stage completes in under 120 seconds and requires brief player interaction (moving items, adding an ingredient, checking a gauge) between stages.

### Specific Timer Changes

**Retting (fiber processing):**

| Current | New |
|---------|-----|
| Single 180s wait | 2 stages: Soak (60s) then Rinse & Dry (45s) |
| Total: 180s passive | Total: 105s passive + 1 manual transfer between stages |
| | Manual transfer: move Soaked Fiber from Retting Basin to Drying Rack |

```
Recipe 1 — Soak Fiber:
Input:  4x Raw Fiber Bundle + 1x Water Bucket
Machine: Retting Basin
Time:   60s
Output: 4x Soaked Fiber

Recipe 2 — Rinse and Dry:
Input:  4x Soaked Fiber
Machine: Drying Rack
Time:   45s
Output: 4x Retted Fiber
```

**Malting (grain processing):**

| Current | New |
|---------|-----|
| Single 210s wait | 2 stages: Steep (60s) then Germinate & Kiln (50s) |
| Total: 210s passive | Total: 110s passive + 1 manual transfer |
| | Manual transfer: move Steeped Grain to Kiln |

```
Recipe 1 — Steep Grain:
Input:  6x Barley + 2x Water Bucket
Machine: Steeping Vat (renamed from Malt Floor for stage 1)
Time:   60s
Output: 6x Steeped Grain

Recipe 2 — Germinate and Kiln:
Input:  6x Steeped Grain + 1x Fuel
Machine: Kiln (existing or new)
Time:   50s
Output: 6x Malted Barley
```

**Fermentation (180-300s):**

| Current | New |
|---------|-----|
| 180-300s single wait | 2-3 stages depending on product |
| | Base fermentation: 90s. Secondary fermentation (for advanced products): 60s additional |

```
Recipe — Basic Fermentation:
Input:  Product-specific (e.g., 4x Wort + 1x Yeast Culture)
Machine: Fermentation Vat
Time:   90s
Output: 4x Fermented Product (Base)

Recipe — Secondary Fermentation (for advanced products only):
Input:  4x Fermented Product (Base) + 1x Flavoring Agent (varies)
Machine: Fermentation Vat
Time:   60s
Output: 4x Refined Fermented Product
```

Simple products (basic beer, vinegar) only need the 90s stage. Complex products (aged ale, specialty ferments) need both stages (150s total, but with a meaningful interaction point between them).

**Cheese Aging (300-600s — the worst offender):**

| Current | New |
|---------|-----|
| 300-600s single wait | 3 stages: Curd Setting (60s), Pressing (45s), Aging (90s) |
| Total: 300-600s passive | Total: 195s passive + 2 manual transfers + affinage check |

```
Recipe 1 — Set Curds:
Input:  4x Milk + 1x Rennet + 1x Salt
Machine: Cheese Vat (new, or repurpose existing)
Time:   60s
Output: 4x Fresh Curds + 1x Whey (byproduct, usable elsewhere)

Recipe 2 — Press Cheese:
Input:  4x Fresh Curds + 1x Cheesecloth
Machine: Cheese Press
Time:   45s
Output: 2x Green Cheese Wheel

Recipe 3 — Age Cheese:
Input:  2x Green Cheese Wheel
Machine: Aging Cave (new entity, or shelf in existing cellar)
Time:   90s
Output: 2x Aged Cheese
```

For premium cheeses that currently take 600s, add a 4th stage:

```
Recipe 4 — Affinage (premium only):
Input:  2x Aged Cheese + 1x Wax Coating
Machine: Aging Cave
Time:   90s
Output: 2x Premium Aged Cheese
```

Total for premium: 285s across 4 stages with 3 interaction points. Compare to current 600s of pure waiting.

**Composting (180s):**

| Current | New |
|---------|-----|
| Single 180s wait | 2 stages: Active Compost (60s) then Cure (45s) |
| Total: 180s passive | Total: 105s passive + 1 manual turn |

```
Recipe 1 — Active Composting:
Input:  8x Organic Waste + 1x Compost Starter (or soil)
Machine: Compost Bin
Time:   60s
Output: 8x Partially Composted Material

Recipe 2 — Cure Compost:
Input:  8x Partially Composted Material
Machine: Compost Bin (same machine, different recipe)
Time:   45s
Output: 4x Finished Compost
```

The "turn" between stages is the player moving the partially composted material out and back in (or to a second bin). With inserters, this is automatable.

### Summary Table

| Process | Old Duration | New Total Duration | Longest Single Wait | Stages | Interaction Points |
|---------|-------------|-------------------|--------------------|---------|--------------------|
| Retting | 180s | 105s | 60s | 2 | 1 |
| Malting | 210s | 110s | 60s | 2 | 1 |
| Fermentation (simple) | 180s | 90s | 90s | 1 | 0 |
| Fermentation (complex) | 300s | 150s | 90s | 2 | 1 |
| Cheese (standard) | 300s | 195s | 90s | 3 | 2 |
| Cheese (premium) | 600s | 285s | 90s | 4 | 3 |
| Composting | 180s | 105s | 60s | 2 | 1 |

**Key invariant:** No single passive wait exceeds 90 seconds. Most are 60 seconds.

### Batch Processing Unlock (Era 2B tech)

After the player has manually completed 5 full cycles of any staged process, a tech becomes available:

**Tech — Process Automation:**
- Unlocks: Auto-Transfer Conveyor (entity that connects two machines and moves intermediate products automatically)
- Effect: Staged processes in connected machines run as a single automated chain. The total time is the sum of all stages (no reduction), but the player no longer needs to manually transfer between stages.

This rewards players who have learned the process with automation, while preserving the early-game pacing where manual transfers create natural interleaving of activities.

**Why this works:**
- The player never stares at a progress bar for more than 90 seconds
- Between stages, they have a reason to check other processes, move items, plan layouts
- The total process time is reduced (retting 180s to 105s, malting 210s to 110s), which also reduces calendar time per era
- The staging is biologically authentic (steeping/kilning, curd-setting/pressing/aging are real production steps)
- Automation is available for players who want to scale up without micromanagement
- The new intermediate items (Soaked Fiber, Steeped Grain, Fresh Curds, etc.) can potentially be used in other recipes, creating new design space

### Ripple effects:
- Every process now produces 1-3 new intermediate items. These need item definitions, icons, and tooltips.
- Inserter/belt automation becomes more valuable earlier (moving intermediates between machines). This is a positive side effect — it engages Factorio's core logistics gameplay.
- Recipe books and guides will need updating. The in-game recipe tooltip should show the full chain: "Retting: Soak (60s) then Rinse & Dry (45s)."
- The Whey byproduct from cheese-making creates a new design opportunity: whey can be used in animal feed, fermentation starters, or as a fertilizer component.
- The Auto-Transfer Conveyor tech needs careful balancing. It should not trivialize all staging — perhaps it only works on machines within 2 tiles of each other, requiring compact builds.

---

## Cross-Cutting Concerns

**Interaction between fixes:** Fix 1 (Era 2 split) and Fix 5 (timer rework) interact heavily. The staged timers in Fix 5 make Era 2A and 2B more activity-dense (more things to do per hour) which helps justify the sub-era split. The reduced total durations also compress Era 2's total calendar time, making the 6-8 hour target per sub-era more achievable.

**Fix 4 (bio web visibility) and Fix 1 (era split):** Field Observation should be in Era 2A, not 2B, because the player is making initial layout decisions in 2A. Placing it as tech 5 of 2A (around hour 3-4) is correct.

**Fix 2 (HAF throughput) and Fix 3 (CRISPR failure):** Both affect Era 4-5 pacing. The increased HAF output (2 to 5 per craft) means fewer total crafts needed, which means each CRISPR failure in Era 5 is proportionally less costly (you need fewer total genomes). These fixes compound positively.
