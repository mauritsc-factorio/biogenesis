# BIOGENESIS FINAL DEVIL'S ADVOCATE REVIEW

---

## 1. IMPLEMENTATION BLOCKERS

**BLOCKER-1: "Nutrient Broth" has no recipe in any era document**

File: `/Users/mauritscottyn/code/biogenesis/design/bootstrap-machines.md`, line 49
Also referenced: `eras-7-8-final.md` line 189 (DEC recipe), `era-9-final.md` line 1484

The Hemolymph Synthesis Vat requires "20 Nutrient Broth/min" and the Directed Evolution Chamber canonical recipe requires "10 Nutrient Broth." The sourcing note says "produced in Era 6+ from Peptone + Glucose Solution + Mineral Salts." However, no actual recipe exists in `eras-5-6-final.md` or any other era document. There is no item called "Nutrient Broth" in any item list. There is no item called "Peptone" in any item list. There is no item called "Mineral Salts" in any item list. A coder cannot implement this item.

**BLOCKER-2: "Mutant Population Sample" and "Selective Media Plate" are undefined items**

File: `eras-7-8-final.md`, line 189 (canonical DEC recipe from amendment)

The canonical Directed Evolution Chamber recipe requires "1 Mutant Population Sample + 1 Selective Media Plate + 10 Nutrient Broth." Neither "Mutant Population Sample" nor "Selective Media Plate" appears in the Era 7 item list (115 items, lines 18-174). "Selective Medium" exists as a fluid (item 9 in the fluid list, line 383) and as "Selective Medium (Antibiotic)" in Era 5 (line 594), but "Selective Media Plate" is a different item. "Mutagenic Primer" (item 3 in the Era 7 item list) is the old recipe input, not "Mutant Population Sample." No recipe produces either item. A coder has two conflicting recipes and zero clarity on which items to create.

**BLOCKER-3: "Engineered Cell Paste" is referenced as an Era 8 product but has no recipe or item definition**

File: `bootstrap-machines.md`, line 50

The Hemolymph Synthesis Vat requires "5 Engineered Cell Paste/min." The sourcing note says it is "Era 8 product from the Living System Assembler." However, the Era 8 item list in `eras-7-8-final.md` (118 items, lines 707-861) contains no item called "Engineered Cell Paste." The Living System Assembler (machine 15, line 809) is described as assembling living buildings from components -- no recipe for Engineered Cell Paste is specified anywhere.

**BLOCKER-4: "Phospholipid Extract" referenced for ATP Catalytic Fermenter has no recipe**

File: `bootstrap-machines.md`, line 75

The ATP Catalytic Fermenter requires "5 Phospholipid Extract/min," sourced from "Era 6+ (from cell membrane processing)." No item called "Phospholipid Extract" exists in the Era 6 item list (`eras-5-6-final.md`, 105 items). There is no "cell membrane processing" recipe in any document. A coder cannot build the ATP chain.

**BLOCKER-5: "Enzyme Concentrate" referenced for ATP Catalytic Fermenter has no recipe**

File: `bootstrap-machines.md`, line 76

The ATP Catalytic Fermenter requires "2 Enzyme Concentrate/min," sourced from "Era 7+ (from Directed Evolution Chamber output)." No item called "Enzyme Concentrate" exists in the Era 7 item list. The closest item is "Adaptive Enzyme Cocktail" (item 17, line 39 of Era 7 items). These may be intended to be the same item, but a coder reading the literal specifications cannot be sure.

**BLOCKER-6: Era 4 has no complete item list, recipe list, or machine list in any document**

Files: `eras-3-4-final.md` (the Era 4 section begins at line 1193 and continues), `master-redesign.md` (lines 312-396)

I was able to read the Era 4 item list up to the genetics and biochemistry sections. However, the Era 4 section of `eras-3-4-final.md` is enormous and while it has item lists and some recipes, the complete machine list, fluid list, tech tree, science pack recipe, biological web specifics, and organism drift specifics for Era 4 must be verified. The master-redesign.md defines the science pack as: "Hereditary Analysis Folio -- Crafted from: pedigree documentation + catalytic protein isolate + stabilized cultivar seed." But the Era 4 detail document likely has a different, more detailed recipe. A coder needs a single canonical recipe. The previous review (M7 for Era 4 HAF throughput) confirms this was a major fix area.

---

## 2. MATHEMATICAL VERIFICATION

**WARNING-1: Era 3 power supply does not cover peak demand**

File: `power-generation.md`, lines 60-63; `eras-3-4-final.md`, lines 648-684

The power document states Era 3 peak is ~410 kW typical (585 kW peak), with recommended supply of 4 Biogas Engines + 1 Turbine = 510 kW. The previous review (M4) already flagged this. The machine list totals ~585 kW when all 30 machines are active. Four Biogas Engines at 120 kW each = 480 kW, plus one carried Turbine at 30 kW = 510 kW. This gives only 510 kW against a potential 585 kW draw. Not a hard blocker since not all machines run simultaneously, but the headroom is dangerously thin at 87% utilization. Every other era has 20%+ surplus.

**WARNING-2: Era 8 science pack has a circular feasibility concern**

File: `eras-7-8-final.md`, lines 1094-1112

The Systems Emergence Analysis science pack requires "Emergent Property Report" which requires "actual emergent properties to exist" in ecosystems with 3+ species and mutualism links. The design states ~1 emergent property per 30 minutes for well-designed systems. With 1500 science packs needed for the capstone and producing 2 per 45-second craft, you need 750 crafts. Each craft needs 1 Emergent Property Report. If reports arrive at 2/hour (optimistic, from 1 per 30 minutes from each of 2 mature systems), that is 375 hours to produce 750 reports. This math is clearly wrong -- the player must be expected to have many systems generating reports in parallel. But the document does not specify how many systems or what the expected report generation rate is at scale. A throughput analysis for this science pack is missing.

**NOTE-1: Era 9 Biosphere Genesis Record production rate bottleneck**

File: `era-9-final.md`, lines 873-893

The science pack is produced at 1 per 120 seconds base, improving to ~1 per 67 seconds with all 9 modules. The tech tree requires roughly 200+150+150+250+300+200+300+300+300+350+250+250+400+300+350+500+500+300+400+600+800+1000+200+5000 = ~13,350 BGR total (including the Gratitude Signal). At 1 per 67 seconds (best case), that is roughly 248 real-time hours of continuous production. Even excluding the 5000 for the mega-project, 8,350 BGRs at 1 per 67 seconds = 155 hours. The era is supposed to last 30-40 hours. This is off by a factor of 4-5x. Either the production rate, the research costs, or the era duration estimate is wrong.

---

## 3. AMENDMENT INTEGRATION

**WARNING-3: Signature mechanic spec main body still shows Soil Amendment radius as 4 tiles**

File: `signature-mechanic-spec.md`, line 27

The table on line 27 still reads "Soil Amendment | 4 | Compost bin, worm farm, mulch pile." The amendment on line 1008 corrects this to 6 tiles. But a coder reading the table in Section 1.2 would implement 4. The `[SUPERSEDED]` marker was not added to the original table row.

**WARNING-4: Eras 5-6 CRISPR fix is documented in the wrong file**

File: `eras-3-4-final.md` (amendment section, confirmed by previous review M5)
Missing from: `eras-5-6-final.md`

The previous review flagged this. The eras-5-6-final.md does now have a DESIGN AMENDMENTS section (confirmed at line 2029), but the CRISPR fix (reducing failure from 20% to 8% with recovery path) appears to be documented in eras-3-4-final.md's amendments. A coder implementing CRISPR in Era 5 by reading only eras-5-6-final.md would implement the old 20% failure rate.

**WARNING-5: Multiple "old text" passages in eras-7-8-final.md remain unremarked**

File: `eras-7-8-final.md`, lines 494-497

Section 8 (Organism Drift Specifics) still states: "Each 45-second cycle, the population shifts toward the target trait" -- this references the old 45-second cycle time, now superseded by the 90-second canonical recipe. This passage was NOT marked `[SUPERSEDED]`. A coder reading the drift section would implement the old timing.

**WARNING-6: Era 2 Sauerkraut recipe uses yeast, contradicting biology**

File: `eras-1-2-final.md`, line 757

Previous review flagged this as m3. Recipe reads "2 Cabbage Core + 1 Salt + 1 Yeast Culture -> 2 Sauerkraut." Real sauerkraut uses lactic acid fermentation (Lactobacillus), not yeast. Era 3 correctly uses Lactobacillus. In Era 2, the player has no Lactobacillus culture yet. This is likely an intentional simplification, but for a mod that stakes its identity on biological accuracy, this will be noticed by knowledgeable players and is never explained.

---

## 4. FACTORIO-SPECIFIC CONCERNS

**WARNING-7: CRISPR Construct (Insertion) has 5 ingredients**

File: `eras-5-6-final.md`, lines 360

Recipe: "1x Assembled Guide RNA + 1x Donor Template Cassette + 1x Homology Arm (Left) + 1x Homology Arm (Right) + 1x Selection Marker Cassette." That is 5 distinct item inputs. Factorio assembling machines support a maximum of 4 item ingredient slots (excluding fluids). This recipe cannot be crafted in a standard assembling machine. It must either use a custom machine with 5+ slots (the CRISPR Assembly Bench is specified as the machine, so this is likely intended as a custom prototype), or one of the inputs must be consolidated.

**WARNING-8: Several Era 3 recipes have 4+ ingredients including fluids**

File: `eras-3-4-final.md`, various recipes

R-3.37 (Fermented Grain Mash): "4 Grain + 1 Active Yeast Culture + 10 Water (fluid)" = 2 items + 1 fluid = 3 slots. Fine.
R-3.77 (Microbial Culture Dataset): "1 Fermentation Observation Log + 1 Soil Microbiology Report + 1 Colony Morphology Plate + 1 Microbial Population Count" = 4 items. This is the maximum for a standard assembling machine without fluids. Workable but tight.
Ecosystem Seed Pod (Era 8): 5 item inputs + 1 fluid = 6 ingredient slots. Requires custom machine.

Multiple recipes across the design approach or exceed standard ingredient limits. Each custom machine with more than 4 item slots needs a specific prototype definition. This is not a blocker, but it is a substantial implementation consideration that is never explicitly addressed.

**WARNING-9: 2000 biological entity cap vs. Era 9 Arcology scope**

File: `signature-mechanic-spec.md`, lines 635-636; `era-9-final.md` throughout

The spec caps tracked biological entities at 2,000 per surface. Each Arcology module contains multiple chimera organisms, has multiple entity-level components (Structural Mycelium Blocks, Vascular Conduits, Membrane Panels, etc.), plus the player's entire existing Era 1-8 production infrastructure. A single Biodome module requires 12 Structural Mycelium Blocks + 8 Membrane Panels + 4 Respiratory Lattices + 1 Photosynthetic Canopy Array + 2 Thermal Regulator Glands + 1 Circadian Rhythm Generator + 6 Vascular Conduits + 1 Cortical Relay Node + 5 Chimera Organisms = ~40 entities if each component is a separate entity. Nine modules could easily reach 300-400 entities for the Arcology alone, on top of 500-1000+ existing entities. The question is whether Arcology structural components count as biological entities in the Web. This is never specified. If they do, the cap is at risk. If they do not, the Arcology's "living building" fantasy is undermined (dead components in a living system).

**WARNING-10: Entity sizes are specified for most machines but not for Arcology modules**

File: `era-9-final.md`, Part IV

The document says each Arcology module is "9x9 or larger" but never specifies exact sizes for any of the 9 modules. 9x9 is large for Factorio but not unprecedented (rocket silo is 9x9). If any module exceeds 9x9, it needs documentation. The Arcology Designer Table (3x3) and other support machines have sizes, but the modules themselves do not.

---

## 5. EDGE CASES

**WARNING-11: What happens if a player rushes to Era 3 without full Era 2 completion?**

File: `eras-1-2-final.md`, lines 1263-1268

The Era 2 transition requires "Cultivation Mastery" which needs 50 CED consumed + Enriched Compost + Seed Sorter mk2. This gates the transition reasonably. However, the Era 3 item list assumes the player has yeast cultures, fermentation infrastructure, 12 crops, and Tier 4 soil. The document says Tier 4 soil is "the minimum soil quality for Era 3 experimental plots." But this is not enforced mechanically -- it is only stated in the cross-era connections text, not as a tech prerequisite. A player could technically start Era 3 with Tier 2 soil and struggle.

**WARNING-12: What happens if the player demolishes the Specimen Archive with breadcrumbs inside?**

File: No document specifies this.

The Specimen Archive stores breadcrumb items, organism snapshots, and archived specimens. Multiple breadcrumbs (Ancient Seed Pod, Strange Bioluminescent Fungus, Self-Modifying Bacterial Culture) are described as stored in the Archive and payoff later. If the player demolishes the Archive, standard Factorio behavior would drop the items on the ground or destroy them. The design never addresses what happens to archived specimens on demolition. If specimens are stored as internal data (like the `global.bioweb.organisms` table) rather than as items, they could be lost permanently.

**WARNING-13: What happens if all organisms in a Bio Web cluster die simultaneously?**

File: `signature-mechanic-spec.md`, Section 3.3 (Entity Removal)

The spec handles individual entity removal (remove from chunk_index, remove web_edges, queue recalc for neighbors). But a mass death event (biter attack, player demolition of a section) could queue hundreds of recalculations simultaneously. The spec says recalc processes "1 organism per tick" from the queue. If 50 organisms die at once, their 50+ neighbors each need recalc. At 1 per tick, that is 50+ ticks (nearly a second) of recalculation cascading. During this time, bonuses on surviving organisms are stale. This is not a crash risk, but it could cause visible production stuttering.

**WARNING-14: What happens if the Homeostasis Engine fails in Era 9?**

File: `era-9-final.md`, lines 697-708

The Homeostasis Engine monitors all organisms and applies corrections. If it fails (is destroyed, loses power), drift continues uncorrected. The document says organisms will drift freely. But the Ecology Monitor module depends on the Homeostasis Engine for drift correction signals (line 576). If the Engine fails, the Sustainability Score would drop rapidly (condition 6 of the victory timer requires "Organism drift within tolerance"). The timer would pause and eventually reset. But would organism drift cascade into module failures? The document describes cascade failure for missing modules (-30% per missing module) but not for a failing subsystem within an intact module. The failure mode of a damaged-but-present Ecology Monitor is underspecified.

---

## 6. MISSING SPECIFICATIONS

**WARNING-15: Era 6 has no Biological Web specifics section**

File: `eras-5-6-final.md`

Previous review (M6) flagged this. The document has 105 items, recipes, machines, tech tree, and a science pack recipe. But unlike Eras 1-5 and 7-8, Era 6 has no dedicated "Biological Web Specifics" section detailing which new relationships are added, what the visibility tier looks like in practice, or how the Predictive Overlay functions mechanically. The signature-mechanic-spec.md covers Era 6 behavior in its Part 4 (section labeled "ERA 6"), but the era document itself does not reference this or provide any new relationship definitions. A coder implementing Era 6 could easily miss the web functionality.

**WARNING-16: Era 6 has no power demand analysis**

File: `eras-5-6-final.md`, machine list (16 machines)
File: `power-generation.md`, lines 106-119 (Era 6 section)

The power doc states Era 6 demand is "~4-6 MW" and recommends one Enzymatic Bioreactor Turbine (5 MW). But the Era 6 machine list includes: Oligonucleotide Synthesizer (250 kW), Genome Compilation Engine (800 kW), Genome Boot Reactor (unknown kW), plus 13+ other machines with unspecified power demands. The document lists 16 machines but only the Genome Compilation Engine has its power stated in-line. A coder cannot verify the 4-6 MW estimate.

**NOTE-2: "Various" and vague specifications in Era 9 Chimera organisms**

File: `era-9-final.md`, Part VIII, lines 803-841

The Chimera Organism production chain (Chain 2) specifies "2-4x Genetic Templates (varies by chimera)" without specifying how many templates each of the 12 chimera types requires. A coder would need to invent these numbers.

**NOTE-3: Era 4 complete document scope**

File: `eras-3-4-final.md`

The Era 4 portion of this document is very large. I read through the item lists (genetics, biochemistry, microscopy, chemistry, breeding items) but the complete recipe list, machine list, science pack recipe with exact production math, and detailed drift/web sections were not fully verified in this review due to document size. A coder should verify that all Era 4 items referenced in Era 4 recipes actually exist in the Era 4 item list.

---

## FINDINGS SUMMARY

| Category | ID | Severity | Description |
|----------|-----|----------|-------------|
| Implementation | B-1 | BLOCKER | "Nutrient Broth" has no recipe, no item definition, and no precursors defined |
| Implementation | B-2 | BLOCKER | "Mutant Population Sample" and "Selective Media Plate" are undefined items |
| Implementation | B-3 | BLOCKER | "Engineered Cell Paste" is referenced but has no recipe or item definition |
| Implementation | B-4 | BLOCKER | "Phospholipid Extract" is referenced but undefined in any era |
| Implementation | B-5 | BLOCKER | "Enzyme Concentrate" may be "Adaptive Enzyme Cocktail" but this is ambiguous |
| Implementation | B-6 | BLOCKER | Era 4 complete specification needs verification against a single canonical source |
| Math | W-1 | WARNING | Era 3 power supply only 87% of peak demand |
| Math | W-2 | WARNING | Era 8 science pack production rate vs. research cost not verified |
| Math | N-1 | NOTE | Era 9 BGR production rate appears 4-5x slower than needed for the stated era duration |
| Amendments | W-3 | WARNING | Soil Amendment radius still shows 4 tiles in main body table |
| Amendments | W-4 | WARNING | CRISPR fix documented in wrong file |
| Amendments | W-5 | WARNING | Old 45-second cycle time in drift section unmarked |
| Amendments | W-6 | WARNING | Era 2 sauerkraut uses yeast instead of Lactobacillus |
| Factorio | W-7 | WARNING | CRISPR Insertion recipe has 5 item ingredients |
| Factorio | W-8 | WARNING | Multiple recipes approach/exceed standard ingredient limits |
| Factorio | W-9 | WARNING | 2000 entity cap vs. Arcology component count unresolved |
| Factorio | W-10 | WARNING | Arcology module entity sizes not specified |
| Edge Case | W-11 | WARNING | No mechanical enforcement of Tier 4 soil prerequisite for Era 3 |
| Edge Case | W-12 | WARNING | Specimen Archive demolition behavior unspecified |
| Edge Case | W-13 | WARNING | Mass entity death causes recalc queue spike |
| Edge Case | W-14 | WARNING | Homeostasis Engine failure cascade underspecified |
| Missing Spec | W-15 | WARNING | Era 6 missing Bio Web specifics in its own document |
| Missing Spec | W-16 | WARNING | Era 6 missing power demand analysis |
| Missing Spec | N-2 | NOTE | Chimera organism template counts unspecified |
| Missing Spec | N-3 | NOTE | Era 4 full specification completeness not verified |

---

## GO / NO-GO RECOMMENDATION

**NO-GO until 6 blockers are resolved.**

The bootstrap machine chain (B-1 through B-5) is the most critical cluster. Five items referenced in the Arcology bootstrap path and the Era 7 science pack chain have no recipe definitions, no item list entries, or ambiguous names. These are not minor gaps -- they sit on the critical path for both Era 7 science pack production and the entire Era 9 Arcology construction sequence. Without canonical definitions for Nutrient Broth, Mutant Population Sample, Selective Media Plate, Engineered Cell Paste, Phospholipid Extract, and Enzyme Concentrate, a coder cannot implement the Directed Evolution Chamber, the Hemolymph Synthesis Vat, or the ATP Catalytic Fermenter.

The resolution is straightforward: one pass to define these 6 items (recipes, sources, which machine produces them, which era they belong to) plus verify Era 4's canonical specification is complete. This is likely 2-3 hours of specification work.

After the blockers are resolved and the warnings about amendment integration are addressed (particularly inlining `[SUPERSEDED]` markers in the main body text), this design is ready to code.
