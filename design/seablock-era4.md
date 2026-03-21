# BIOGENESIS: Era 4 — The Rules of Inheritance

**Status:** DRAFT v3
**Date:** 2026-03-21
**Duration:** 14–18 hours
**Discipline:** Genetics, biochemistry, Mendelian inheritance
**Tone:** Precise, confident — "Offspring prediction: 75% high yield. Confirmed. Genetics is deterministic."
**Core Insight:** Traits are carried by discrete heritable units that follow predictable rules. Biology is not luck — it is code.
**Research Chapter:** "The Rules of Inheritance"
**Science Pack:** Hereditary Analysis Folio

---

## 1. INHERITED STATE

The player enters Era 4 with:
- **Island:** ~2,000 tiles with specialized zones + underwater coral foundations
- **Materials:** All Era 1-3 materials + sulfuric acid, rubber, chitin, bacterial cellulose, mycelium sheets, biogas, ethanol, algal products, fish products
- **Machines:** ~45 machine types across Eras 1-3. Fermentation, aquaculture, electrolysis, culture isolation all running.
- **Power:** ~195-225 kW (tidal + wind + biogas engine)
- **Logistics:** Standard + fast belts/inserters (iron + chitin/cellulose)
- **Science:** MCD (Microbial Culture Dataset) production established
- **Genetics:** Phenotypic seed classification (Era 2) + qualitative trait readings (Era 3 analyzer). Player has seen "Above Average" / "Below Average" but NOT numeric values or inheritance patterns.
- **Bio Web:** Visible via analyzer overlay. Player understands spatial relationships affect output.

**What changes:** The Heredity Analysis Station arrives. For the first time, the player sees trait INHERITANCE — dominant/recessive/heterozygous. Punnett squares predict offspring. Genetics becomes a factory puzzle where specific trait combinations unlock exclusive products that gate entire production chains.

---

## 2. THE GENETICS MECHANIC — HOW IT WORKS IN FACTORIO

This is not a menu game. Genetics is a FACTORY SYSTEM with machines, belts, and throughput.

### The Breeding Production Line

```
SEED STOCK (existing lines with known traits)
  │
  ▼
HEREDITY ANALYSIS STATION (2×2, 10 kW)
  → Analyzes 2 seed inputs → Shows Punnett square prediction
  → Player selects desired cross → Outputs "Cross Seed" item
  │
  ▼
SEED INCUBATOR (2×2, 10 kW)
  → Cross Seed → Accelerated growth (30s instead of 60-120s)
  → Outputs 4-8 "Trial Seed" items (offspring with randomized trait combinations per Punnett prediction)
  │
  ▼
TRIAL PLOT (standard crop field, 3×3 area)
  → Plant Trial Seeds → Harvest → Trial Harvest items
  │
  ▼
TRAIT ANALYZER (Soil Comp. Analyzer from Era 3, upgraded with Era 4 heredity module)
  → Analyzes Trial Harvest → Shows trait values with dominance labels
  → Player identifies which offspring hit the desired trait combination
  │
  ▼
SEED SELECTOR (inserter-based sorting)
  → Belt of analyzed seeds → Filter inserters pull seeds matching target traits
  → Selected seeds → replant for next generation OR stabilization
  → Rejected seeds → normal production use (not wasted)
```

**This is a belt-based production line.** Seeds flow on belts between machines. The player designs the layout: incubator feeds trial plot, trial plot feeds analyzer, analyzer feeds sorting station. Fast inserters and filter logic separate "good" seeds from "standard" seeds. It looks and FEELS like a Factorio production line — because it IS one.

### Trait Visibility (Era 4 Upgrade)

The Genetic Profile now shows inheritance data:

```
Saltmarsh Grass — Generation F12 (descended from starting stock)
  Yield:         High (72) — Dominant
  Growth Rate:   Average (48) — Heterozygous
  Hardiness:     Low (28) — Homozygous Recessive
  Nutrient Demand: Average (51) — Heterozygous
  Flavor:        ??? [Requires Era 5 molecular analysis]
  Symbiotic:     ??? [Requires Era 5 molecular analysis]
  Mutagenic:     ??? [Requires Era 5 molecular analysis]
```

Four traits visible with numeric values + dominance labels. Three still locked (require Era 5 tools). The player can see enough to make informed crosses, but not EVERYTHING — maintaining mystery.

### The Punnett Square UI

When the player loads two seed items into the Heredity Analysis Station, it displays:

```
Cross: F12-High-Yield Grass × F8-High-Hardiness Grass

         | H (dom) | h (rec)
   ------+---------+--------
   Y (d) | HY      | hY
   y (r) | Hy      | hy

Predicted offspring:
  25% — High Yield + High Hardiness (HY) ← TARGET
  25% — High Yield + Low Hardiness (hY)
  25% — Low Yield + High Hardiness (Hy)
  25% — Low Yield + Low Hardiness (hy)

Recommendation: Grow 20 trial plants. Expect ~5 to hit target.
Stabilization: 3 generations of target-to-target crossing.
```

The player confirms the cross. The station outputs a "Cross Seed" that encodes both parent profiles. The Incubator grows this into 6 trial seeds — all sharing one randomly determined trait outcome per batch (one Punnett roll per incubation, not per seed).

**Note on Punnett simplification:** The 2×2 presentation is simplified from a true dihybrid 4×4 cross for gameplay accessibility. The underlying math is preserved: each trait has an independent 50% chance of expressing the dominant allele, so both traits hitting target = 50% × 50% = 25%. Genetics-savvy players will notice the simplification — the game rounds to the same probabilities.

---

## 3. TIMELINE

### Hours 0–3: First Crosses + Heredity Analysis Station

**What unlocks:** Heredity Analysis Station, Seed Incubator, Trait Analyzer upgrade, breeding UI.

**What the player does:**
- Research "Mendelian Analysis" (first Era 4 tech, 3 MCD)
- Build Heredity Analysis Station (iron plate + green circuit + fused silica + bio-cement)
- Analyze existing crop lines — for the first time see numeric trait values + dominance
- Design first cross: high-yield grass × high-hardiness grass (targeting Resilient Bio-Fiber)
- Build Seed Incubator — accelerated trial growth
- Set up first breeding production line: station → incubator → trial plot → analyzer → sorting

**The moment:** The player loads two seeds into the Heredity Analysis Station and sees a Punnett square. "25% chance of High Yield + High Hardiness." They grow 20 trial plants. 5 hit the target. They replant those 5. Second generation: 15 out of 20 hit target (now most are homozygous). Third generation: stable line. They harvest: **Resilient Bio-Fiber** appears as output instead of normal Plant Fiber.

**"Zoom In":** "Offspring prediction: 75% high yield. Confirmed. Genetics is deterministic."

### Hours 3–6: First Exclusive Products + Bio-Composite

**What unlocks:** Bio-Composite Fabricator, first exclusive products.

**Exclusive products the player breeds first (gating the most-wanted chains):**

| Product | Target Cross | Generations to Stabilize | What It Unlocks |
|---------|-------------|-------------------------|-----------------|
| Resilient Bio-Fiber | High Yield + High Hardiness grass | ~3 | Bio-Composite Fabricator recipes. Steel-equivalent panels. |
| Dense Kelp Stalk | High Yield + High Hardiness kelp | ~3 | Heavy structural frames. Machine housings. |

**Bio-Composite Fabrication:**
```
Resilient Bio-Fiber + Mycelium Sheet + Bacterial Cellulose + Calcium Matrix
  → Bio-Composite Fabricator (15s)
  → Bio-Composite Plate (steel equivalent) + Trim Waste (→ compost)
```

Bio-composite plate replaces steel in all recipes from this point forward. It's stronger, lighter, and fully biological. The player's machines transition from iron-frame to bio-composite-frame.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Cross Seed (per type) | Heredity Analysis Station | 200 | Encoded with both parent profiles. Per crop type. |
| Trial Seed (per type) | Seed Incubator | 200 | Offspring with randomized traits per Punnett prediction. |
| Resilient Bio-Fiber | Harvest from stabilized high-hardiness+yield grass | 100 | EXCLUSIVE. Only from this cultivar. |
| Dense Kelp Stalk | Harvest from stabilized high-hardiness+yield kelp | 100 | EXCLUSIVE. Stronger structural material. |
| Calcium Matrix | Crafting (calcite + purified water + phosphate fertilizer) | 100 | Bio-composite mineral component |
| Bio-Composite Plate | Bio-Composite Fabricator | 100 | Steel equivalent. Fully biological. |
| Bio-Composite Frame | Crafting (4 Bio-Composite Plate) | 50 | Machine housing standard from Era 4 onward. |

### Hours 6–9: Fish Genetics + Enzymes + Bioplastic

**What unlocks:** Fish breeding, Enzyme Purifier, PHA Bioplastic Polymerizer.

**Fish genetics (two-parent system):**
Fish introduce sexual reproduction genetics — each parent contributes alleles. The Heredity Analysis Station handles fish the same way as plants but the ORGANISM MANAGEMENT is different: the player maintains breeding ponds (separate from production ponds), pairs fish with desired traits, and incubates roe.

```
Breeding Pond: 2 selected fish → Mate → Fish Roe
  → Roe Incubator (30s) → Juvenile Fish (with inherited traits)
  → Grow in trial pond (60s) → Analyze → Select → Stabilize
```

**Concentrated Fish Extract** (exclusive: high-oil + slow-growth fish): a thick, enzyme-rich liquid extracted from specially bred fish. Required for the Enzyme Purification chain.

**Enzyme Purifier:**
```
Concentrated Fish Extract + Fusel Oils (Era 3 solvent) + Catalyst Template
  → Enzyme Purifier (20s)
  → Purified Industrial Enzyme + Residual Biomass (→ compost)

Catalyst Template: crafted ONCE from Strange Crystalline Deposit (Era 1 archived specimen, analyzed Era 3)
  → 1 Strange Crystalline Deposit + 1 Fused Silica + 1 Calcium Matrix → 1 Catalyst Template (hand, 5s)
  → Installed in Enzyme Purifier (persists, like cell lines). Consumed once, enables all enzyme production.
  → The crystal's unusual mineral structure serves as a molecular scaffold for enzyme folding.
```
Industrial enzymes are catalysts that speed up OTHER machines. Adding enzymes to a recipe increases the machine's crafting speed by 50%. This is a MULTIPLICATIVE upgrade — the player who invests in enzyme production makes their entire factory faster.

**Archived specimen payoff: Strange Crystalline Deposit.** Without this specimen, the Enzyme Purifier can't produce enzymes. The crystal structure from Era 1's evaporation tray provides the template that guides enzyme protein folding into the correct shape. 40+ hours of storage pays off.

**PHA Bioplastic:**
```
Cupriavidus Culture + Growth Medium (compost extract + freshwater)
  → PHA Polymerizer (30s)
  → PHA Bioplastic Pellet + Spent Biomass (→ biogas digester)
       │
  ├→ PHA Sheet (structural, transparent-ish)
  ├→ PHA Tube (flexible piping)
  ├→ PHA Housing (machine component)
  └→ Red Circuit ingredient (bio-copper + bio-green + PHA)
```

**RED CIRCUITS available.** The player can now build red circuits: bio-copper wire + green circuit + PHA bioplastic. This is the gate to more advanced machines.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Concentrated Fish Extract | Harvest from stabilized high-oil+slow-growth fish | 100 | EXCLUSIVE. Enzyme chain input. |
| Purified Industrial Enzyme | Enzyme Purifier | 50 | +50% machine speed when added to recipe. Universal catalyst. |
| Cupriavidus Culture | Crafting (1 Culture Medium + 1 Compost Extract + 1 Nitrogen Supplement) | 50 | PHA-producing bacteria starter. Culture Medium provides carbon; compost extract provides microbial inoculant. |
| PHA Bioplastic Pellet | PHA Polymerizer | 100 | Raw bioplastic |
| PHA Sheet | Crafting (pellet + heat) | 100 | Structural plastic |
| PHA Tube | Crafting (pellet + extrusion) | 100 | Flexible piping |
| PHA Housing | Crafting (PHA sheet + bio-composite frame) | 50 | Machine component |
| Red Circuit | Crafting (copper wire + green circuit + PHA sheet) | 200 | Standard Factorio red circuit. Bio-materials. |
| Fish Roe (breeding) | Breeding Pond pair output | 50 | Fertilized. For incubation. |
| Juvenile Fish | Roe Incubator output | 20 | Grows to adult in trial pond. |

### Hours 9–12: Remaining Exclusive Products + Bioluminescence

**What unlocks:** All 8 exclusive products available. Bioluminescent Culture Vessel. Express logistics. **Accelerated Stabilization.**

**Accelerated Stabilization (unlocked after 4+ exclusive products produced):** The player's breeding expertise is now sufficient to stabilize a cultivar in **2 generations instead of 3**. This is gated behind a small tech: "Breeding Expertise" (2 MCD, requires 4 exclusive products produced). The mechanic recognizes mastery — the player who has bred 4 products understands selection well enough to identify stable lines faster. Products 5-8 take ~7-10 minutes instead of ~15 minutes each. The breeding loop gets FASTER as the player masters it.

**Remaining exclusive products the player breeds (with Accelerated Stabilization):**

| Product | Cross | Unlocks |
|---------|-------|---------|
| Aromatic Glasswort | High Flavor + High Yield | Advanced fermentation starters → +30% ethanol yield |
| High-Starch Sea-Grain | High Yield + Low Fiber | Efficient ethanol → 2x ethanol per sea-grain batch |
| Silica-Rich Diatom | High Yield + High Quality | Electronics-grade biosilica → better circuits |
| Rapid-Growth Mycelium | High Growth Rate + High Yield | 50% faster bio-composite production |
| Oil-Dense Algae | High Yield + High Quality | Enriched bio-oil → Era 6 power fuel precursor |

**Each exclusive product upgrades an existing chain.** Aromatic Glasswort doesn't unlock a NEW chain — it makes the existing fermentation chain 30% more efficient. High-Starch Sea-Grain doubles ethanol output per batch. Silica-Rich Diatom produces higher-quality circuit substrates. The player is OPTIMIZING their factory through biology, not just expanding it.

**Bioluminescent lighting:**
```
Bioluminescent Culture Vessel (2×1, void)
  → Input: Nutrient Solution (compost extract + freshwater)
  → Output: Bioluminescent Panel (functional light source)
  → 1 panel = 1 small lamp equivalent, but no electricity needed
  → Runs on nutrient solution (1 per 5 min), self-renewing
```
The island gets its first bio-lights. Glowing blue-green panels along walkways and in work areas. Visually distinctive. Functionally useful (illumination without power grid load). A taste of Era 8's living infrastructure.

**Express logistics:**
- Express Transport Belt: iron gear + PHA coating + enzyme treatment
- Stack Inserter: iron gear + PHA arm + red circuit + enzyme lubricant

### Hours 12–15: Biomass Steam Boiler + Advanced Chemistry

**What unlocks:** Biomass Steam Boiler (400 kW), Pellet Press, Fractional Separation Column.

**Biomass Steam Boiler (the power upgrade):**
```
Recipe: 12 Bio-Composite Plate + 6 Copper Pipe + 4 Bio-Cement Brick + 2 Rubber Gasket
Fuel: Compressed Biomass Pellets (8/min)
Output: 400 kW
```

**Pellet Press:**
```
Dried crop waste (any dried plant matter) + Binding Agent (starch paste from flour + water)
  → Pellet Press (5s)
  → 5 Compressed Biomass Pellets + 1 Ash (→ compost)
```
The player now has a reason to dry EXCESS crop waste (which has been going to compost). Drying → pelletizing → fuel. This creates a tension: waste goes to compost (nutrients) OR pellets (power). The player must balance.

**Fractional Separation Column:**
```
Biological feedstock (algal oil, fusel oils, fish oil, fermentation products)
  → Fractional Separation (30s)
  → Light Fraction + Medium Fraction + Heavy Fraction + Residue (→ compost)
```
Each fraction has different uses. Light fraction: solvents, volatile compounds. Medium: bio-oil intermediates. Heavy: lubricants, waxes. This is the ERA 4 chemistry system — fractional separation of biological mixtures into useful components. It feeds into Era 5's molecular chemistry.

**New items:**
| Item | Source | Stack | Notes |
|------|--------|-------|-------|
| Compressed Biomass Pellet | Pellet Press | 100 | Fuel (3 MJ). Boiler fuel. |
| Binding Agent (starch paste) | Crafting (rough flour + freshwater) | 100 | Pellet binder |
| Light Fraction | Fractional Separation | 100 | Volatile solvents. Extraction reagent. |
| Medium Fraction | Fractional Separation | 100 | Bio-oil intermediates. Lubricants. |
| Heavy Fraction | Fractional Separation | 100 | Waxes. Waterproofing. Slow-burn fuel. |
| Bioluminescent Panel | Bioluminescent Culture Vessel | 50 | Living light source. Nutrient-fed. |
| Nutrient Solution | Crafting (1 Compost Extract + 1 Freshwater) | 100 | Feeds bioluminescent panels + other cultures. Compost Extract defined in Era 2. |

### Hours 15–18: Integration + Capstone

**What the player does:**
- All 8 exclusive products online and feeding their respective chains
- Bio-composite replacing iron in advanced machine recipes
- Red circuits in production
- Express belts and stack inserters deployed
- Biomass boiler providing 400 kW (total power ~600+ kW)
- Fractional separation producing chemical intermediates
- Bioluminescent lighting across the island
- Research capstone: Hereditary Mechanism Hypothesis

---

## 4. ITEM SUMMARY (~120 items in era)

| Category | New in Era 4 | Examples |
|----------|-------------|---------|
| Exclusive cultivar products | 8 | Resilient Bio-Fiber, Concentrated Fish Extract, Dense Kelp, Aromatic Glasswort, High-Starch Sea-Grain, Silica-Rich Diatom, Rapid-Growth Mycelium, Oil-Dense Algae |
| Stabilized cultivar seeds | ~7 | One per crop type. Produced when a breeding line hits target traits for 3+ generations. Science pack ingredient. |
| Breeding items | ~8 | Cross seeds (generic), trial seeds (generic), fish roe (breeding), juvenile fish |
| Bio-composite chain | ~5 | Calcium matrix, bio-composite plate, bio-composite frame, trim waste |
| PHA bioplastic chain | ~5 | Cupriavidus culture, PHA pellet, PHA sheet, PHA tube, PHA housing |
| Enzyme chain | ~3 | Concentrated fish extract, purified industrial enzyme, enzyme lubricant |
| Chemistry | ~4 | Light/medium/heavy fraction, binding agent |
| Bioluminescence | ~2 | Bioluminescent panel, nutrient solution |
| Power/Fuel | ~2 | Biomass pellet, biomass steam boiler |
| Circuits | ~1 | Red circuit (bio-materials recipe) |
| Logistics | ~2 | Express belt, stack inserter (new tier) |
| Machines | ~10 | See machine table |
| Science | ~1 | Hereditary Analysis Folio |
| **Total new** | **~55** | |
| **Carried from Era 1-3** | **~200** | |
| **Grand total** | **~255** | |

---

## 5. MACHINE SPECIFICATIONS (Era 4 new)

| Machine | Size | Power | Category | Notes |
|---------|------|-------|----------|-------|
| Heredity Analysis Station | 2×2 | 10 kW | genetics | 2 seed inputs → Punnett square → Cross Seed output |
| Seed Incubator | 2×2 | 10 kW | incubation | Cross Seed → 4-8 Trial Seeds (accelerated, 30s) |
| Bio-Composite Fabricator | 3×2 | 15 kW | fabrication | Resilient fiber + mycelium + cellulose + mineral → bio-composite plate |
| PHA Bioplastic Polymerizer | 2×2 | 10 kW | polymerization | Cupriavidus culture + medium → PHA pellet + spent biomass |
| Enzyme Purifier | 2×1 | 10 kW | purification | Fish extract + fusel oils → purified enzyme + residue |
| Bioluminescent Culture Vessel | 2×1 | 1 kW | bioluminescence | Nutrient solution → bioluminescent panel. Nutrient circulation pump. |
| Pellet Press | 2×1 | 5 kW | compression | Dried waste + binder → biomass pellets |
| Fractional Separation Column | 2×3 | 15 kW | fractionation | Bio-oil feedstock → light + medium + heavy fractions + residue |
| Breeding Pond | 3×2 | 2 kW | aquaculture | Paired fish → roe. Separate from production ponds. Water circulation + temperature control. Recipe: 4 Iron Plate + 4 Bio-Cement + 2 Fused Silica + 2 Kelp Stalk. |
| Roe Incubator | 1×1 | 5 kW | incubation | Fish roe → juvenile fish (30s) |
| Biomass Steam Boiler | 3×3 | Produces 400 kW | — | Fueled by biomass pellets (8/min). Major power upgrade. |

**Power budget:**
- Inherited: ~195-225 kW (tidal + wind + biogas)
- Biomass Boiler: +400 kW
- Total: ~595-625 kW
- Era 4 new machine demand: ~90-110 kW
- Total demand (all eras): ~300-350 kW
- Large surplus — headroom for scaling and Era 5 prep.

---

## 6. TECH TREE

Era 4 uses Microbial Culture Datasets (MCD) for research.

| # | Name | Cost | Prerequisites | Unlocks |
|---|------|------|--------------|---------|
| 34 | Mendelian Analysis | 3 MCD | Tech 33 (Era 4 entry) | Heredity Analysis Station, Seed Incubator, trait inheritance visibility |
| 35 | Selective Breeding | 4 MCD | Tech 34 | Breeding Pond, Roe Incubator, fish genetics, Cross Seed recipes |
| 36 | Cultivar Stabilization | 5 MCD | Tech 34 | All 8 exclusive product recipes (unlocked when cultivar is stabilized) |
| 37 | Bio-Composite Engineering | 5 MCD | Tech 36 | Bio-Composite Fabricator, bio-composite plate, frame recipes |
| 38 | PHA Bioplastics | 4 MCD | Tech 37 | PHA Polymerizer, PHA products, RED CIRCUITS |
| 39 | Enzyme Engineering | 4 MCD | Tech 35 + Tech 36 | Enzyme Purifier, industrial enzyme (speed catalyst) |
| 39b | Breeding Expertise | 2 MCD | Tech 39 (+ ≥4 exclusive products produced) | Accelerated Stabilization (2 gen instead of 3) |
| 40 | Bioluminescence | 3 MCD | Tech 36 | Bioluminescent Culture Vessel, light panels |
| 41 | Biomass Energy | 4 MCD | Tech 37 | Pellet Press, Biomass Steam Boiler (400 kW) |
| 42 | Fractional Chemistry | 5 MCD | Tech 38 + Tech 39 | Fractional Separation Column, fraction products |
| 43 | Express Logistics | 3 MCD | Tech 38 | Express belt, stack inserter (PHA + enzyme recipes) |
| 44 | Hereditary Mechanism Hypothesis | 8 MCD | Tech 42 + Tech 43 | **ERA 5 TRANSITION** |

**Total MCD for Era 4:** 3+4+5+5+4+4+3+4+5+3+8 = **48 MCD**

**Critical path:** 34 → {35, 36} → 37 → 38 → {42, 43} → 44. But Tech 36 (cultivar stabilization) has a GAMEPLAY gate: the player must actually BREED a stabilized cultivar before its products appear. The tech unlocks the POSSIBILITY; the breeding work delivers the RESULT. This means the calendar time is longer than the research time.

---

## 7. BIO WEB (Era 4)

### New Relationships

| Entity A | Entity B | Type | Effect | Discovery |
|----------|----------|------|--------|-----------|
| Trial Plot | Compost Heap | Mutualistic | +20% trial seed germination rate | More seeds survive to analyzable harvest |
| Breeding Pond | Aquaculture Pond | Competitive | -15% breeding success | Production pond fish stress breeding pairs. Separate them. |
| Greenhouse | Trial Plot (inside) | Mutualistic | +40% germination + faster growth | Greenhouse is IDEAL for breeding trials. Controlled conditions. |
| Bioluminescent Panel | Any crop (3 tiles) | Commensal | +10% night growth rate | Bio-light extends growing hours. Minor but stacking. |

### Genetics-Specific Bio Web Mechanic

**Symbiotic Affinity trait matters now.** Organisms with high Symbiotic Affinity get STRONGER Bio Web bonuses. A crop with Symbiotic Affinity 80 gets +35% from compost proximity instead of the base +25%. This makes Symbiotic Affinity a breeding TARGET — the player may want to breed for high symbiosis alongside yield/hardiness. An additional dimension to the genetics puzzle.

**Archived specimen payoff: Drift Spore.** The Heredity Analysis Station needs a Symbiotic Affinity Reference Sample to calibrate its multi-organism interaction analysis. Crafted from: 1 Drift Spore (Era 1, grass-kelp symbiosis) + 1 Finished Compost + 1 Purified Water → 1 Symbiotic Affinity Reference (hand, 5s). Installed in the Heredity Analysis Station once (persists). Without it, the station can analyze the first 4 traits but NOT Symbiotic Affinity — the Drift Spore's multi-organism genome provides the reference data for symbiosis measurement. The first specimen to show multi-organism genetic interaction enables the first tool to MEASURE that interaction.

---

## 8. SCIENCE PACK

**Hereditary Analysis Folio**

| Ingredient | Source | Chain |
|-----------|--------|-------|
| Pedigree Documentation | Heredity Analysis Station (special recipe: compile 3-generation cross data) | Genetics chain |
| Purified Industrial Enzyme | Enzyme Purifier | Enzyme chain |
| Stabilized Cultivar Seed | Any stabilized exclusive-product cultivar | Breeding chain — player MUST have bred at least one cultivar |
| Exclusive Cultivar Product | Any exclusive product (Resilient Bio-Fiber, Dense Kelp, etc.) | Breeding output |

**Recipe:** 1 Pedigree Doc + 1 Enzyme + 1 Stabilized Seed + 1 Exclusive Product → 2 Hereditary Analysis Folio (hand, 10s)

**Science ingredient recipe:**
| Recipe | Machine | Time | Inputs | Output |
|--------|---------|------|--------|--------|
| Compile Pedigree | Heredity Analysis Station | 15s | 3 Analyzed Trial Seeds (from different generations) | 1 Pedigree Documentation |

**Design note:** The science pack REQUIRES a successfully bred exclusive product. This hard-gates Era 5 research behind actual genetics engagement. The player cannot skip breeding.

---

## 9. BALANCE ANALYSIS

### Breeding Throughput

**One breeding cycle (for one exclusive product):**
1. Load 2 parent seeds into Heredity Analysis Station (instant analysis, ~5s for cross)
2. Cross Seed → Seed Incubator (30s) → 6 Trial Seeds (average)
3. Plant 6 trial seeds → grow (30s in incubator) → harvest → analyze
4. ~25% hit target traits = 1-2 per batch. Replant. Repeat.
5. Stabilize over 3 generations = 3 × (incubate + grow + analyze) = ~3-5 minutes per generation
6. **Total: ~10-15 minutes per exclusive product stabilization.**

With 8 exclusive products, that's ~80-120 minutes of active breeding. Spread across 14-18 hours, breeding is intermittent — the player breeds when they need a specific product, then returns to factory building.

### Bio-Composite Throughput

**Bio-Composite Fabricator:** 1 plate / 15s = 4 plates/min.
- Inputs: Resilient Bio-Fiber, Mycelium Sheet, Bacterial Cellulose, Calcium Matrix
- Bottleneck: Resilient Bio-Fiber (from stabilized grass line — limited by crop cycle time)
- With 10 stabilized grass plants: ~10 Resilient Bio-Fiber per cycle (60s) = ~10/min
- Fabricator needs ~4 fiber/min → 1 fabricator easily sustained by 5 plants

### Power Budget

| Source | Output |
|--------|--------|
| Tidal Generator | 15 kW |
| Wind Turbines ×2-3 | 60-90 kW |
| Biogas Engine | 120 kW |
| Biomass Boiler | 400 kW |
| **Total** | **595-625 kW** |

Era 4 demand: ~305-355 kW (all machines across all eras, no void machines). Comfortable 250+ kW surplus for scaling and Era 5 prep.

---

## 10. FAILURE STATES

| Failure | Cause | Consequence | Teaches |
|---------|-------|-------------|---------|
| Inbreeding depression | Same-line crosses for 5+ generations without introducing new genetic material | Gradual yield decline (-5% per generation). Offspring produce LESS than parents. | Genetic diversity matters. Introduce alleles from different lines. Cross between your crop lines, don't just self-pollinate. |
| Breeding dead end | Player tries to combine two recessive traits that require different homozygous states | Punnett shows 0% chance of target combination. Station displays warning. | Not all trait combinations are achievable in one cross. May need intermediate generations. |
| Exclusive product bottleneck | Player needs Bio-Composite but hasn't started breeding Resilient Bio-Fiber | Entire bio-composite chain blocked until breeding completes (~15 min). | Start breeding EARLY. Don't wait until you need the product. |

---

## 11. BREADCRUMBS (Era 4)

| Item | Source | Chance | Tooltip | Archive Payoff |
|------|--------|--------|---------|---------------|
| Spontaneous Hybrid Seedling | Trial plot harvest (during active breeding) | ~1% per trial harvest | "This seedling expresses traits from NEITHER parent line. The genetic profile doesn't match any predicted Punnett outcome. Something else is happening." | Era 5: sequencing reveals horizontal gene transfer. Era 6: template for the Organism Fusion system. |

---

## 12. ERA 4 → ERA 5 TRANSITION

**Capstone tech:** Hereditary Mechanism Hypothesis (8 MCD)

**Prerequisites (verifiable):**
- At least 3 exclusive cultivar products produced (from 3 different organism types)
- Bio-Composite Fabricator operational (produced ≥20 bio-composite plates)
- Red circuits produced (≥10)
- PHA bioplastic operational
- Breeding pond operational (≥1 fish breeding cycle completed)
- Biomass Steam Boiler built and operational

**Transition notification:** *"Chapter: The Source Code of Life. 'What carries the information?' — You've learned the rules of inheritance. Now discover the molecule that encodes them. Genomics, sequencing, and CRISPR await."*

**What Era 5 inherits:**
- ~2,000-5,000 tile island with genetics infrastructure (trial plots, breeding ponds, analysis stations)
- 8 exclusive cultivar product lines (all producing or producible)
- Bio-composite as standard structural material (steel equivalent)
- PHA bioplastic in production
- Red circuits available
- Express logistics (express belts, stack inserters)
- Industrial enzymes (+50% speed catalyst)
- Bioluminescent lighting
- 400 kW biomass boiler + prior power = ~600 kW
- Fractional chemistry producing intermediates
- ~250 items in production

---

## 13. IMPLEMENTATION NOTES

**Heredity Analysis Station:** Custom GUI required. Two seed input slots. Displays Punnett square based on parent trait values and dominance. "Confirm Cross" button outputs Cross Seed item with encoded parent data. Fallback: if custom GUI is too complex, the station is an assembling-machine with recipe variants (one per crop type × cross type). Less elegant but implementable.

**Trait inheritance model:** Each of the 4 visible traits (Yield, Growth Rate, Hardiness, Nutrient Demand) has two alleles per organism (diploid). Alleles are stored as item metadata or entity tags. Dominant allele determines phenotype if heterozygous. Offspring alleles determined by random Mendelian segregation from both parents. Implementation: Lua script in control.lua calculates offspring traits on Seed Incubator recipe completion.

**Exclusive products:** Crop entities with BOTH target traits above threshold (e.g., Yield ≥ 65 AND Hardiness ≥ 65) produce the exclusive item INSTEAD of the normal harvest. The threshold check happens in the mining result calculation (control.lua on_player_mined_entity or on_robot_mined_entity).

**Seed Incubator:** Assembling-machine. Input: Cross Seed. Output: 6 Trial Seeds (fixed count). **Batch simplification:** all trial seeds from one incubation share the SAME trait outcome (one Punnett roll per batch, not per seed). The player runs multiple batches until one hits the target combination. This is much simpler to implement than per-seed variation, and the gameplay is the same: run batches, check results, keep winners. Implementation: recipe produces 6 Trial Seeds; control.lua on recipe completion sets shared trait values on all output items based on Mendelian probability roll.

**Enzyme speed catalyst:** Purified Industrial Enzyme is consumed as an additional input in any machine recipe. When present, the recipe's crafting time is reduced by 50%. Implementation: separate "enzyme-boosted" recipe variants for key recipes, or a module-like item that goes into a machine's module slot.

**Bioluminescent Panel:** Entity that produces light (like a small lamp) without electricity. Consumes 1 Nutrient Solution every 5 minutes (tracked via control.lua timer). If nutrient runs out, light dims to 0 over 60 seconds.
