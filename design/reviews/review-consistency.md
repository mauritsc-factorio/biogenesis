# BIOGENESIS CONSISTENCY AUDIT

## 1. BROKEN REFERENCES

### 1.1 The "Farmtorio" vs "Biogenesis" Title Problem

The **narrative-and-pacing.md** file is titled "FARMTORIO: Narrative & Pacing Design Document" and uses "Farmtorio" throughout its body text. The master-redesign.md and all era-specific documents use "Biogenesis." This is a fundamental identity conflict. The narrative doc was clearly written before the rename, and it was never updated. Every reference to "Farmtorio" in that document should be "Biogenesis."

Affected locations: narrative-and-pacing.md, lines 1, 361, 612, 618.

### 1.2 The "Curiosity Cabinet" vs "Specimen Archive" Conflict

- **narrative-and-pacing.md** defines and uses a "Curiosity Cabinet" as the breadcrumb storage building, available from Era 1 (line 170).
- **master-redesign.md** explicitly states (line 59): "Replaces the old 'Curiosity Cabinet.' The Specimen Archive is a research structure."
- **eras-1-2-final.md** defines the "Specimen Archive" as an Era 2 item (item 125, machine 28).
- But narrative-and-pacing.md still says "Curiosity Cabinet" everywhere and says it is available from Era 1 (line 170).

This is a direct contradiction: the narrative doc says the cabinet exists in Era 1; the era 1-2 doc says the Specimen Archive is an Era 2 entity.

### 1.3 Breadcrumb Payoff Era Mismatches

| Breadcrumb | Master Redesign Payoff | Narrative Doc Payoff | Era Doc Payoff | Discrepancy |
|---|---|---|---|---|
| Strange Bioluminescent Fungus | Era 5-6 (master, line 1009) | Era 9 (narrative, line 159), Era 6 (narrative, line 367) | Era 4 (eras-1-2-final, line 349) | THREE different payoff eras across documents |
| Ancient Seed Pod | Not mentioned in master | Era 7 (narrative, line 161) | Era 3 (eras-1-2-final, line 350) | Two different payoff eras |
| Anomalous Fermentation Byproduct | Era 4 (master, line 1011) | Era 7 (narrative, line 168) | Era 4 (eras-3-4-final, line 1013) | Master and era doc agree; narrative doc disagrees |
| Self-editing organism (Era 6) | Era 7-8 (master, line 1014) | Not mentioned | Era 6 breadcrumb pays off in Era 7 (eras-5-6-final, line 860) | Rough agreement |

The Strange Bioluminescent Fungus is the worst offender: master says Era 5-6, narrative says Era 6 (for analysis) and Era 9 (for architecture), and the era 1-2 doc says Era 4. This needs a single canonical answer.

### 1.4 Items Referenced but Not Defined in Source Era

- **Soybean**: Referenced in Era 3 recipes (R-3.45, R-3.46) for Fermented Soy Paste and Tempeh Block. No Soybean crop is defined in Era 2's crop list (12 crops listed: wheat, potato, flax, bean, cabbage, beet, sunflower, hemp, turnip, herb, barley, onion). "Soybean" appears in no crop roster anywhere.

- **Crystal Violet Dye**: Used in Era 3 recipe R-3.72 (Gram Stain Slide). No source recipe for Crystal Violet Dye is defined in any era document.

- **Steamed Rice**: Used in Era 3 recipe R-3.44 (Koji Culture). No rice crop is defined in Era 2 or Era 3 crop lists.

- **Legume Root Node** and **Root Fragment**: Used in Era 3 recipes R-3.56 and R-3.57. No source for either item.

- **Forest Soil Sample**: Used in Era 3 recipe R-3.57. No source defined.

- **Rock Salt**: Referenced in Era 3 recipe R-3.07 (Mineral Lick Block). No source.

- **Gravel**: Used in Era 3 recipe R-3.100 (Biofilter Treatment). No source.

- **Amino Acid Precursors**: Referenced in Era 5 as feedstock from "Era 4" (eras-5-6-final, line 972). Not defined in the eras-3-4-final item list.

- **Organic Solvent**: Referenced in Era 5 nucleotide synthesis chain as "from Era 4." Not defined in Era 4.

- **Fluorophore Reagent**: Referenced in Era 5 Fluorescent Terminator Set recipe as "from Era 4." Not defined in Era 4.

- **Sugar Fermentation Vessel**: Referenced in Era 5 as source of Deoxyribose Sugar. Not defined anywhere.

- **Phosphate Buffer**: Referenced in Era 5 as "Era 3" source for Phosphodiester Linkage. Not defined in Era 3.

### 1.5 Era 4 Item Gap

Era 4 (eras-3-4-final.md) is in a document with Era 3, but the file was too large and the Era 4 complete item list was not fully loaded. However, from the master redesign, Era 4 is titled "Applied Genetics" with the chapter name "The Rules of Inheritance." The eras-3-4-final document covers Era 3 in great detail (125 items, 105 recipes) but may have the Era 4 section after the portion I could read. This means multiple Era 5 "from Era 4" dependencies cannot be verified against an actual Era 4 item list.

---

## 2. NAMING MISMATCHES

### 2.1 Science Pack Names

| Era | Master Redesign | Era Doc | Match? |
|---|---|---|---|
| 1 | Observational Analysis Kit | Observational Analysis Kit (eras-1-2-final) | YES |
| 2 | Controlled Environment Dataset | Controlled Environment Dataset (eras-1-2-final) | YES |
| 3 | Microbial Culture Dataset | Microbial Culture Dataset (eras-3-4-final) | YES |
| 4 | Hereditary Analysis Folio | Cannot verify (Era 4 section not fully loaded) | UNKNOWN |
| 5 | Genomic Annotation Compendium | Genomic Annotation Compendium (eras-5-6-final) | YES |
| 6 | Synthetic Organism Dossier | Synthetic Organism Dossier (eras-5-6-final) | YES |
| 7 | Evolutionary Dynamics Report | Evolutionary Dynamics Report (eras-7-8-final) | YES |
| 8 | Systems Emergence Analysis | Systems Emergence Analysis (eras-7-8-final) | YES |
| 9 | Biosphere Genesis Record | Biosphere Genesis Record (era-9-final) | YES |

Science pack names are consistent across the master and era docs that could be verified.

### 2.2 Era / Chapter Name Mismatches

| Era | Master Redesign Name | Era Doc Name | Match? |
|---|---|---|---|
| 1 | "Field Observations" | "Field Observations" | YES |
| 2 | "Selective Cultivation" | "Selective Cultivation" | YES |
| 3 | "The Invisible Ecosystem" | "The Invisible Ecosystem" | YES |
| 4 | "The Rules of Inheritance" | Cannot verify fully | UNKNOWN |
| 5 | "The Source Code of Life" | "The Source Code of Life" | YES |
| 6 | "Authoring Life" | "Authoring Life" | YES |
| 7 | "The Optimization Engine" | "The Optimization Engine" | YES |
| 8 | "Emergent Architecture" | "Emergent Architecture" | YES |
| 9 | "Genesis" | "Genesis" | YES |

Chapter names are consistent across verified documents.

### 2.3 Machine Name Mismatches Between Documents

- **Master redesign** calls it "Heredity Analysis Station" (line 327, 357). The era-3-4 doc would need to be checked for Era 4 to confirm.
- **Master redesign** calls it "Climate-Controlled Growth Chamber" (line 176) for the greenhouse. The narrative doc calls it "Basic Greenhouse" (line 181). The era docs would call it the same as the master.
- **Master redesign** calls it "Fermentation Vessel (Lactic Culture)" (line 274). The eras-3-4-final doc calls the machine "Fermentation Vat" (machine 8, line 659) and "Fermentation Crock" (machine 9, line 661). The master's fancy name appears only in the item renaming table, while the era doc uses the simpler functional name. This is by design (master provides the "display name," era docs use the mechanical name).
- **Master redesign** calls it "Soil Composition Analyzer" (line 277). Era 3 doc uses the same name (machine 14, line 665). Consistent.

### 2.4 Item Name Inconsistencies Between Narrative Doc and Master/Era Docs

The narrative-and-pacing.md file uses the old "Farmtorio" naming convention for many items:

| Narrative Doc Name | Master/Era Doc Name | Problem |
|---|---|---|
| "Gathered Wild Wheat" | "Native Grain (Wild Variant)" (master) / "Wild Grain Head" (era 1-2) | Three different names for the same item |
| "Hand-Knapped Flint Sickle" | "Knapping Blade" (era 1-2) | Different names |
| "Freshwater Clay Pot" | "Ceramic Pot" (era 2) | Different names |
| "First Flour" | "Rough Flour" (era 1-2) | Different names |
| "Hearthstone Bread" | "Flatbread" (era 1-2) | Different names |
| "Morning Milk (Fresh)" | "Raw Milk" (era 3-4) | Different names |

The narrative doc clearly predates the era-specific doc naming pass. The warm/rustic names in the narrative doc (Phase 1) were intended as the final display names but the era docs used more functional/scientific names aligned with the master redesign. This creates a fundamental naming split.

### 2.5 Fluid Naming Inconsistencies

The **fluids-and-biotech-expansion.md** defines "fermentation broth" as an Era 5 fluid (item 24). But the eras-3-4-final.md already lists "Fermentation Broth" as an Era 3 fluid (fluid 7, line 697). The expansion doc's fluid table claims Era 3 has 15 fluids and Era 5 has 18 previously, but the era-3-4 final doc only defines 14 Era 3 fluids. The expansion doc appears to be counting from a different baseline than what the era docs define.

---

## 3. MECHANIC INCONSISTENCIES

### 3.1 Biological Web Visibility Tiers

| Era | Signature Spec | Master Redesign | Era Doc |
|---|---|---|---|
| 1-2 | "Hidden" | Not explicitly stated | Era 1: "Completely hidden" (eras-1-2-final line 306); Era 2: "Hidden" (sig spec line 677) |
| 3 | "Hints" (small arrows on hover) | "Partial readings" on genetic profiles (not the same thing) | "HINT arrows" unlocked via T-3.27 (eras-3-4 line 828) |
| 4 | "Ecology Analyzer" tool | Trait inheritance visible in breeding UI | Cannot fully verify |
| 5 | "Web Overlay Toggle (Alt+B)" | Full numeric traits | "Web Overlay Toggle unlocked" (eras-5-6 line 762) |

The master redesign's "Profile Visibility Progression" table (lines 17-29) conflates genetic profile visibility with Biological Web visibility. These are two different systems. The signature spec treats them separately. The master redesign table shows "what the player sees" about genetics, not about the web. This causes confusion because a reader might think Era 3's "Partial readings: Yield: Above Average" IS the web hint system, when it is actually the genetic profile system.

### 3.2 Organism Drift era_scaling Values

| Era | Signature Spec | Master Redesign | Era Doc |
|---|---|---|---|
| 1 | 0.3 | Not specified per era | 0.3 (eras-1-2 line 330) |
| 2 | 0.5 | Not specified | Not stated in era 2 section |
| 3 | 0.7 | Not specified | 0.7 (eras-3-4 line 958) |
| 4 | 1.0 | Not specified | Cannot verify |
| 5 | 1.2 | Not specified | 1.2 (eras-5-6 line 806) |
| 6 | 1.0 | Not specified | Cannot verify |
| 7 | 1.5 | Not specified | 1.5 (eras-7-8 line 477) |
| 8 | 1.0 | Not specified | Not explicitly stated in loaded section |
| 9 | 0.5 | Not specified | 0.5 (era-9 line 693) |

Drift era_scaling values are consistent between the signature spec and the era docs that specify them.

### 3.3 Influence Radius Conflicts

The signature spec defines the Compost Heap / Soil Amendment radius as 4 tiles (line 28). The eras-1-2-final doc defines the Compost Heap influence radius as 6 tiles (line 309). This is a direct conflict.

The signature spec defines Crop Plot radius as 6 tiles (line 28). The eras-1-2-final doc defines Wild Grass clusters at 4 tiles (line 311) and Clover Patch at 5 tiles (line 312). These are not crop plots per se, so the discrepancy may be intentional (wild plants have smaller radii than farmed crops), but it is not documented.

### 3.4 Relationship Numbering Conflicts

The signature spec defines relationship 14 (Enzymatic Processor + Compatible Substrate Organism) as "actually parasitic" with a correction note (lines 203-205). It is listed in the Mutualistic section but noted as Parasitic. This internal contradiction within the spec itself should be resolved.

### 3.5 Era 8 Science Pack Production

The master redesign says Era 8 has no new science pack (line 762 does not state this explicitly, but the table at line 889 shows Era 8 as "Systems Emergence Analysis"). The master does NOT say Era 8 has no pack; it defines the pack. However, the signature spec's Era 8 section (line 788) says the System Dashboard is unlocked but does not mention the pack recipe. The eras-7-8-final doc defines the full recipe (line 1093-1099), which is consistent with the master.

---

## 4. ORPHANED CONTENT

### 4.1 Fluids Defined but Potentially Unused

From fluids-and-biotech-expansion.md:
- **flax wash water** (Era 2, fluid 3): Listed as "disposed or recycled" with no concrete recipe consuming it.
- **egg wash liquid** (Era 4, fluid 15): Listed as "disposed as waste water or filtered" with no recipe.
- **smoke condensate / liquid smoke** (Era 6, fluid 28): Listed as "wood preservative treatment" but no recipe consuming it is defined.
- **syngas condensate** (Era 8, fluid 50): Secondary use "cleaning solvent" but no recipe consuming it as such.

### 4.2 Items Defined in Narrative Doc Not in Era Docs

The narrative-and-pacing.md defines 20 "dark side" items for Eras 7-9 (lines 428-566). These include:
- **Muscle Tissue Scaffold (Collagen-Based)** -- partially covered by Era 5's Collagen Scaffold
- **Growth Factor Fluid (Bovine-Equivalent)** -- not in any era doc as a named item
- **Xenocrop Variant XC-01 through XC-04** -- Era 6 doc defines these differently (Arachniflora, Petromoss, Luxvine, Ferrotuber)
- **Chimera Organism XB-12** -- defined in both narrative doc (line 484) and era-9-final (line 63). Descriptions differ: narrative says "photosynthesizes, produces collagen, digests cellulose." Era 9 says "photosynthesizes, produces collagen, decomposes waste." Close enough.
- **Chimera Organism XB-19**: Narrative doc (line 490) says "Thermal Regulator." Era 9 doc (line 35) says "Atmospheric Processor." These are DIFFERENT organisms with the SAME designation number.
- **Chimera Organism XB-23 (Neural Mesh)**: Narrative doc (line 497) says this is the neural mesh organism. Era 9 doc (line 45) confirms "The Arcology's nervous system." Consistent.
- **Organism XR-00**: Defined in both narrative doc (line 548) and era-9 doc (line 74). Consistent concept.

### 4.3 Chimera XB Designation Number Conflict

This is a significant problem:

| XB Number | Narrative Doc Function | Era 9 Doc Function | CONFLICT? |
|---|---|---|---|
| XB-12 | "Photo-Collagen Producer" | "Photosynthetic Decomposer" | Minor wording difference |
| XB-19 | "Thermal Regulator" | "Atmospheric Processor" | MAJOR CONFLICT |
| XB-23 | "Neural Mesh" | "Neural Mesh" | Consistent |

In the era-9-final doc, XB-07 is the "Thermal Regulator" (line 34), which is the function the narrative doc assigned to XB-19. This means the narrative doc's XB-19 was reassigned to XB-07 at some point, but the narrative doc was never updated.

---

## 5. MISSING CONNECTIONS

### 5.1 Breadcrumbs Planted but Payoff Unclear

- **Crystalline Beet Sugar** (eras-1-2-final, line 629): Breadcrumb "for Era 4 bio-crystallography." No reference to bio-crystallography appears anywhere else in any document.
- **Self-Seeding Herb** (eras-1-2-final, line 630): "Foreshadows invasive species mechanics in Era 3." No invasive species mechanic is defined in Era 3.
- **Stabilized Prion Marker** (eras-7-8-final, line 18): "Used in Era 8 breadcrumb items." But the Era 8 breadcrumb items (lines 810-819) never reference a Stabilized Prion Marker.

### 5.2 Era 8 Does Not Reference Era 7 Escaped Organism Breadcrumb

The master redesign (line 1015) says the Era 7 escaped organism pays off in Era 8-9: "The escaped organism has integrated into the local ecosystem and is changing it." The eras-7-8-final doc plants the breadcrumb (Era 7 items 97-98), but the Era 8 section of the same document never references or pays off the escaped organism story. The Era 9 doc also does not explicitly reference it. The breadcrumb chain for the escaped organism is planted but has no mechanical payoff.

### 5.3 The Fluids Expansion Doc's Era Numbering Does Not Match the Master Redesign

The fluids-and-biotech-expansion.md uses OLD era numbering:
- Era 1 = "Primitive Farming" (master calls it "Observation")
- Era 4 = "Animal Husbandry" (master calls it "Applied Genetics")
- Era 5 = "Processing & Chemistry" (master calls it "Molecular Biology")
- Era 6 = "Fermentation & Preservation" (master calls it "Synthetic Biology")
- Era 7 = "Genetics & Breeding" (master calls it "Directed Evolution")
- Era 8 = "Industrial & Energy" (master calls it "Living Systems")
- Era 9 = "Arcology & Closed-Loop" (master calls it "Genesis")

This document appears to be from the pre-redesign 9-era structure where the eras had different content assignments. The fluid names and items may not align with the redesigned era structure at all. For example, the expansion doc puts CRISPR workstations and gene editing in "Era 7 - Genetics & Breeding," while the master redesign puts CRISPR in Era 5 "Molecular Biology." The entire fluids-and-biotech-expansion.md operates on a different era structure.

This is the single most critical consistency problem in the design corpus. The expansion doc needs to be completely remapped to the master redesign's era structure.

---

## 6. CONSISTENCY SCORES

| Era | Score (1-10) | Key Issues |
|---|---|---|
| **Era 1** | **7/10** | Item names differ between master (fancy scientific) and era doc (functional). Breadcrumb payoff eras disagree across three documents. Compost heap influence radius contradicts sig spec. |
| **Era 2** | **7/10** | Solid internal consistency in era doc. Yeast Culture dependency is well-designed. But naming split with narrative doc is unresolved. Missing breadcrumb definition for "Unusual Clover" payoff. |
| **Era 3** | **6/10** | Multiple undefined input items (soybean, rice, crystal violet dye, rock salt, gravel, legume root node). These are recipe-breaking holes. Otherwise internally solid. |
| **Era 4** | **5/10** | Could not fully verify due to file size. Multiple Era 5 items claim "from Era 4" origins that may not exist. The highest-risk era for broken references. |
| **Era 5** | **7/10** | Very detailed and internally consistent. Multiple "from Era 4" dependencies are unverifiable. CRISPR and cloning chains are well-designed. Science pack recipe is coherent. |
| **Era 6** | **7/10** | Item list loaded partially but appears solid. Xenocrop naming conventions are well-structured. Depends on Era 5 Anomalous Plasmid breadcrumb (which is well-defined). |
| **Era 7** | **8/10** | Most internally consistent era doc. Science pack recipe is well-reasoned. Biological Web new relationships are clearly specified. Drift mechanics align with sig spec. |
| **Era 8** | **7/10** | Living building materials and neural mesh are well-designed. Science pack recipe is clear. Main issue: does not pay off Era 7 escaped organism breadcrumb. |
| **Era 9** | **8/10** | Very thorough. 120 items, 12 fluids, 9 modules, full interaction matrix. Chimera XB number conflicts with narrative doc. Living Architecture Seed growth time discrepancy (48 minutes in era doc vs narrative doc's implication of 48 hours from master, but era 9 doc explicitly corrects this). |

### Cross-Document Consistency Scores

| Document Pair | Score | Critical Issue |
|---|---|---|
| Master Redesign vs Era Docs | **7/10** | Generally aligned. Master uses literary item names; era docs use functional names. Science packs and chapter names match. |
| Signature Spec vs Era Docs | **8/10** | Drift rates match. Web visibility progression matches. Compost heap radius is the main conflict. |
| Narrative Doc vs Everything Else | **3/10** | Still titled "Farmtorio." Uses pre-redesign era structure (9 eras but with different content assignments). Uses "Curiosity Cabinet" not "Specimen Archive." Uses old item names. Breadcrumb payoff eras conflict. |
| Fluids Expansion vs Everything Else | **2/10** | Uses entirely different era naming/numbering. Places CRISPR in Era 7 while master puts it in Era 5. Places fermentation in Era 6 while master puts it in Era 3. Fundamentally misaligned with the master redesign's era structure. |

---

## SUMMARY OF HIGHEST-PRIORITY FIXES

1. **Fluids-and-biotech-expansion.md must be remapped** to the master redesign's era structure. It currently operates on a pre-redesign framework where eras have different content. Every fluid assignment, machine, and recipe in this document needs era re-assignment.

2. **Narrative-and-pacing.md must be renamed from "Farmtorio" to "Biogenesis"** and all "Curiosity Cabinet" references changed to "Specimen Archive." The breadcrumb payoff eras must be reconciled with the master redesign's table.

3. **Era 3 has 6+ undefined input items** used in recipes (soybean, rice, crystal violet dye, rock salt, gravel, legume root node, forest soil sample). These are recipe-breaking gaps.

4. **Era 4 is the biggest verification risk.** Multiple Era 5 items depend on Era 4 outputs (amino acid precursors, organic solvents, fluorophore reagents) that cannot be confirmed to exist.

5. **Chimera organism XB-19** is a "Thermal Regulator" in the narrative doc but an "Atmospheric Processor" in the Era 9 doc. The thermal regulator function was reassigned to XB-07. The narrative doc must be updated.

6. **Strange Bioluminescent Fungus breadcrumb payoff** is listed as Era 4, Era 5-6, Era 6, and Era 9 across different documents. Needs one canonical answer.

7. **Item naming convention** split between the warm/rustic narrative doc names and the clinical/functional era doc names is philosophically intentional (the narrative doc describes the player-facing display names) but creates confusion because both documents appear authoritative. A mapping table should be created.

### Critical Files for Implementation
- `/Users/mauritscottyn/code/biogenesis/design/fluids-and-biotech-expansion.md` - Operates on pre-redesign era structure; needs complete era remapping
- `/Users/mauritscottyn/code/biogenesis/design/narrative-and-pacing.md` - Still titled "Farmtorio"; breadcrumb payoffs, item names, and Curiosity Cabinet references conflict with all other docs
- `/Users/mauritscottyn/code/biogenesis/design/eras-3-4-final.md` - Era 3 has undefined recipe inputs; Era 4 section is the biggest verification gap
- `/Users/mauritscottyn/code/biogenesis/design/master-redesign.md` - Authoritative source but breadcrumb payoff table conflicts with era docs
- `/Users/mauritscottyn/code/biogenesis/design/signature-mechanic-spec.md` - Compost heap radius conflict (4 tiles) vs era 1-2 doc (6 tiles); relationship 14 internal type contradiction
