# BIOGENESIS MOD DESIGN: FINAL CONSISTENCY REPORT

---

## 1. NAMING CONSISTENCY

### 1.1 "Farmtorio" Elimination
**STATUS: RESOLVED.** The title of `narrative-and-pacing.md` was successfully changed from "FARMTORIO: Narrative & Pacing Design Document" to "BIOGENESIS: Narrative & Pacing Design Document." No occurrences of "Farmtorio" remain in the 10 design documents. (The word persists only in the `reviews/` folder where the original review flagged it, and in `archive/` which is an explicitly archived old document. Neither is a design-active file.)

### 1.2 "Curiosity Cabinet" Elimination
**STATUS: RESOLVED.** No occurrences of "Curiosity Cabinet" remain in any of the 10 design documents. The master-redesign.md at line 59 retains the historical reference: "Replaces the old 'Curiosity Cabinet.'" This is appropriate context, not a live naming conflict.

### 1.3 Science Pack Names
**STATUS: CONSISTENT.** All nine science pack names match across every document that references them:

| Era | Name | master-redesign.md | Era doc |
|-----|------|-------------------|---------|
| 1 | Observational Analysis Kit | Line 129 | eras-1-2-final.md line 293 |
| 2 | Controlled Environment Dataset | Line 213 | eras-1-2-final.md (confirmed in era 2 section) |
| 3 | Microbial Culture Dataset | Line 308 | eras-3-4-final.md line 148 |
| 4 | Hereditary Analysis Folio | Line 394 | eras-3-4-final.md line 1200 |
| 5 | Genomic Annotation Compendium | Line 487 | eras-5-6-final.md line 13/195 |
| 6 | Synthetic Organism Dossier | Line 576 | eras-5-6-final.md line 1029/1187 |
| 7 | Evolutionary Dynamics Report | Line 670 | eras-7-8-final.md line 13/125 |
| 8 | Systems Emergence Analysis | Line 762 | eras-7-8-final.md line 696/760 |
| 9 | Biosphere Genesis Record | Line 865 | era-9-final.md line 153 |

### 1.4 Era Names and Research Chapter Names
**STATUS: CONSISTENT** across master-redesign.md and era documents. All nine match:
1. "Field Observations" / Observation
2. "Selective Cultivation" / Cultivation
3. "The Invisible Ecosystem" / Microbial Ecology
4. "The Rules of Inheritance" / Applied Genetics
5. "The Source Code of Life" / Molecular Biology
6. "Authoring Life" / Synthetic Biology
7. "The Optimization Engine" / Directed Evolution
8. "Emergent Architecture" / Living Systems
9. "Genesis" / Genesis

### 1.5 Era Names in narrative-and-pacing.md
**STATUS: STILL MISMATCHED (REMAINING ISSUE).** The `narrative-and-pacing.md` document uses the **old pre-redesign era names** in its pacing table and section headers. These do NOT match the canonical era names in master-redesign.md and the era documents:

| Era | narrative-and-pacing.md Name | Canonical Name (master + era docs) |
|-----|----------------------------|------------------------------------|
| 1 | Gathering | Observation |
| 2 | Subsistence | Cultivation |
| 3 | Irrigation | Microbial Ecology |
| 4 | Animals | Applied Genetics |
| 5 | Chemistry | Molecular Biology |
| 6 | Fermentation | Synthetic Biology |
| 7 | Genetics | Directed Evolution |
| 8 | Industrial | Living Systems |
| 9 | Arcology | Genesis |

This is a **major structural mismatch**. The era names are wrong, but more critically, the **content assignments are wrong**. In the narrative doc, "Era 6: Fermentation" describes fermentation content (brewing, aging), but in the actual canonical design, Era 6 is "Authoring Life" (synthetic biology, xenocrops, chimeras). Fermentation is already part of Era 3 ("The Invisible Ecosystem"). The narrative doc was written against an older, pre-redesign era structure that assigns completely different content to Eras 3-8. While the title was fixed and "Curiosity Cabinet"/"Farmtorio" were removed, **the era content mapping was not reconciled**.

### 1.6 Chimera Organism XB Designations
**STATUS: STILL MISMATCHED (REMAINING ISSUE).** The `narrative-and-pacing.md` assigns:
- XB-19 = "Thermal Regulator" (line 490)

The canonical `era-9-final.md` assigns:
- XB-19 = "Atmospheric Processor" (line 65)
- XB-07 = "Thermal Regulator" (line 64)

The thermal regulator function was reassigned from XB-19 to XB-07 at some point, but `narrative-and-pacing.md` was never updated.

XB-12 has a minor wording difference ("Photo-Collagen Producer" in narrative vs. "Photosynthetic Decomposer" in era-9), which is close enough given that both describe the same organism (photosynthesizes + produces collagen + handles waste). XB-23 (Neural Mesh) is consistent.

### 1.7 Machine Name Consistency
**STATUS: CONSISTENT** across documents that share machine references. The bootstrap machines (Hemolymph Synthesis Vat, ATP Catalytic Fermenter) match between `bootstrap-machines.md`, `power-generation.md`, and the amendments in `era-9-final.md`. Power generation machine names match between `power-generation.md` and the amendments in `eras-7-8-final.md`.

---

## 2. CROSS-ERA REFERENCES

### 2.1 Bootstrap Machines in Era 9
**STATUS: RESOLVED.** The `era-9-final.md` amendments (lines 1472-1515) explicitly incorporate the bootstrap machines, reference `bootstrap-machines.md` for full specs, include the construction order (Energy Nexus first, Aquatic Systems second), and confirm the 3.1 MW power draw fits within the 23 MW budget.

### 2.2 Power Generation References in Era Docs
**STATUS: RESOLVED via standalone document.** Power was flagged as missing from era docs. The `power-generation.md` standalone document now covers all 9 eras. The amendments in `eras-7-8-final.md` (lines 1412-1442) cross-reference this document and embed the Era 7 and Era 8 power specs directly. The `era-9-final.md` amendments (lines 1519-1521) confirm Era 9 uses self-sustaining internal power.

### 2.3 Items Referenced Cross-Era
**STATUS: GENERALLY CONSISTENT.** Spot-checks:
- Era 3 Anomalous Fermentation Byproduct paying off in Era 4: confirmed in both `master-redesign.md` (line 1011) and `eras-3-4-final.md` (lines 1005-1015, 1144). The eras-3-4-final doc explicitly describes it being identified as an enzyme in Era 4.
- Era 4 Chimeric Seedling paying off in Era 6: confirmed in `master-redesign.md` (line 1012 references Era 6) and `eras-3-4-final.md` (line 1228, 2272).
- Era 5 Self-Modifying Bacterial Culture: confirmed planted in Era 5 (`eras-5-6-final.md` line 196, 840-857) with payoff bridging to Era 6 (the Anomalous Plasmid unlocks the Genome Authoring Platform, line 985).
- Era 6 Self-Editing Organism: confirmed planted in Era 6 (`eras-5-6-final.md` line 1188, 1803-1821).

### 2.4 Narrative-and-Pacing Breadcrumb Payoff Era Conflicts
**STATUS: STILL PRESENT (REMAINING ISSUE).** The narrative-and-pacing.md breadcrumb table (lines 157-168) lists payoff eras that conflict with both master-redesign.md and the era docs:

| Breadcrumb | narrative-and-pacing.md Payoff | master-redesign.md Payoff | Era doc Payoff |
|-----------|-------------------------------|--------------------------|----------------|
| Strange Bioluminescent Fungus | Era 9 (line 159) | Era 5-6 (line 1009) | Era 4 (eras-1-2-final line 349) |
| Ancient Seed Pod | Era 7 (line 160) | Not in master table | Era 3 (eras-1-2-final line 350) |
| Mutant Crop Specimen | Era 7 (line 161) | Not in master table | Era 3 (eras-1-2-final line 1157) |
| Uncontrolled Fermentation Byproduct | Era 7 (line 168) | N/A (different name) | N/A (different item) |

The narrative doc's payoff eras are based on the old era structure (where "Era 7" was "Genetics" which corresponds to roughly Era 5 in the new structure). This is the same era-mapping problem identified in section 1.5 above.

**Additional note on the Bioluminescent Fungus:** Even within the non-narrative documents, there is a three-way conflict: master-redesign says "Era 5-6," eras-1-2-final says "Era 4" (twice, at lines 92 and 349), and eras-1-2-final also shows it "still waiting" in Era 2 (line 1256). There is still no single canonical payoff era across ALL documents for this item.

---

## 3. DOCUMENT HIERARCHY

### 3.1 Authority Statement
**STATUS: CLEAR.** The `master-redesign.md` ends with an explicit authority statement (line 1046): *"This document supersedes all previous era designs, item lists, and progression structures. All other design documents should be updated to match this master redesign."*

### 3.2 Master Redesign Accuracy
**STATUS: MOSTLY ACCURATE, but now incomplete.** The master-redesign.md was written before the amendments process. It does not reference:
- Power generation (covered in `power-generation.md`)
- Bootstrap machines (covered in `bootstrap-machines.md`)
- The Crop Vigor Pips early-visibility fix (covered in `signature-mechanic-spec.md` amendments)
- The Selection Pressure Log guaranteed-output fix (covered in `eras-7-8-final.md` amendments)

This is acceptable because the amendments are clearly marked in the era docs. However, the master document no longer represents the complete state of the design. A reader using only `master-redesign.md` would miss significant mechanical details.

### 3.3 Narrative-and-Pacing Alignment
**STATUS: STILL MISALIGNED (REMAINING ISSUE).** As documented in sections 1.5 and 2.4, the narrative doc uses old era names and old content mappings. The "Farmtorio" title and "Curiosity Cabinet" naming were fixed, but the structural era content mapping was not. This document remains useful for its tone guidelines, item descriptions, and dark-side content designs, but its era structure, breadcrumb payoff table, and pacing table are unreliable.

### 3.4 Signature Mechanic Spec Alignment
**STATUS: CONSISTENT with amendments.** The amendments at the end of `signature-mechanic-spec.md` (lines 950-1019) correctly address the Compost Heap radius discrepancy (raised from 4 to 6 tiles to match `eras-1-2-final.md`) and add Crop Vigor Pips for Era 2 early visibility. These changes are internally consistent with the era docs.

---

## 4. COMPLETENESS GAPS

### 4.1 Era 6 Completeness
**STATUS: RESOLVED.** The `eras-5-6-final.md` contains a full Era 6 section beginning at line 1023 ("ERA 6: AUTHORING LIFE") with:
- 105 items across 12 subcategories (lines 1034-1201)
- Complete recipe list with flow diagrams (lines 1205+)
- 16 machine types (lines 1516-1537)
- 10 fluids (lines 1541-1555)
- Full tech tree (lines 1558+)
- Science pack recipe (lines 1494-1513, detailed again at lines 1700-1714)
- Biological web specifics (lines 1718+)
- Organism drift specifics (lines 1760+)
- Breadcrumb items (lines 1803+)

Era 6 is fully specified and no longer underspecified.

### 4.2 Required Components Per Era
Each era document contains: item list, recipe list, machine list, fluid list, tech tree, science pack recipe, web specifics, and drift specifics. Confirmed present for all 9 eras across their respective documents.

### 4.3 Power Generation Coverage
**STATUS: RESOLVED.** The standalone `power-generation.md` covers all 9 eras with supply/demand verification tables.

### 4.4 Bootstrap Machine Coverage
**STATUS: RESOLVED.** The standalone `bootstrap-machines.md` specifies both machines, the tech tree integration, the construction order, and the power budget. The `era-9-final.md` amendments cross-reference this document.

---

## 5. BREADCRUMB CHAIN AUDIT

### 5.1 Strange Bioluminescent Fungus
- **Planted:** Era 1, `eras-1-2-final.md` line 92 (3% drop from Bracket Fungus)
- **Payoff claimed in master-redesign.md:** Era 5-6 (line 1009)
- **Payoff claimed in narrative-and-pacing.md:** Era 9 (line 159) and Era 6 analysis / Era 9 architecture (lines 50-51, 367)
- **Payoff claimed in eras-1-2-final.md:** Era 4 (line 349, "Bioluminescence research chain")
- **Actual payoff in an era doc:** Not found. No era document (eras-3-4, eras-5-6, eras-7-8, or era-9) contains a recipe, research, or mechanical payoff that explicitly consumes or references the "Strange Bioluminescent Fungus" by name.
- **STATUS: BROKEN CHAIN -- planted but no canonical mechanical payoff defined.** Three different documents claim three different payoff eras, and none of those era documents actually defines the payoff.

### 5.2 Ancient Seed Pod
- **Planted:** Era 1, `eras-1-2-final.md` line 93 (2% from Rocky Biome foraging)
- **Payoff claimed in master-redesign.md:** Not in breadcrumb table
- **Payoff claimed in narrative-and-pacing.md:** Era 7 (line 160, "contains extinct gene sequences")
- **Payoff claimed in eras-1-2-final.md:** Era 3 (line 350, "Ancient Genome reconstruction"); also mentions Era 4 finally cracks it (line 1257)
- **Actual payoff in an era doc:** Not found in eras-3-4-final.md. The Era 3 and 4 item lists and recipe lists do not reference "Ancient Seed Pod" as an input.
- **STATUS: BROKEN CHAIN -- planted but no canonical mechanical payoff defined.**

### 5.3 Mutant Crop Specimen
- **Planted:** Era 2, `eras-1-2-final.md` line 627 (2% on any harvest)
- **Payoff claimed in narrative-and-pacing.md:** Era 7 (line 161, "CRISPR input")
- **Payoff claimed in eras-1-2-final.md:** Era 3 (line 1157, "input for Controlled Mutation research")
- **Actual payoff in an era doc:** Not found as a named recipe input in eras-3-4-final.md or eras-5-6-final.md.
- **STATUS: BROKEN CHAIN -- planted, payoff era unclear, no mechanical recipe defined.**

### 5.4 Anomalous Fermentation Byproduct
- **Planted:** Era 3, `eras-3-4-final.md` line 155 (rare fermentation output)
- **Payoff claimed in master-redesign.md:** Era 4 (line 1011)
- **Payoff claimed in eras-3-4-final.md:** Era 4 (line 1144, "Identified as an enzyme; foundation of enzyme isolation chemistry")
- **Actual payoff in Era 4 doc:** Referenced narratively at line 2017 in the Era 4 section but not as a specific recipe input. Described as conceptual foundation rather than a consumed item.
- **STATUS: CONSISTENT direction (Era 4) across master and era doc. Narrative payoff exists but mechanical recipe payoff unclear.**

### 5.5 Chimeric Seedling
- **Planted:** Era 4, `eras-3-4-final.md` line 1228 (4% from cross-pollination)
- **Payoff claimed in master-redesign.md:** Era 6 (line 1012, "Nature produced a chimera without engineering")
- **Payoff claimed in eras-3-4-final.md:** Described as "evidence of horizontal gene transfer" (line 2420)
- **STATUS: CONSISTENT direction (Era 6) but mechanical payoff (recipe consuming the item) not verified in eras-5-6-final.md.**

### 5.6 Self-Modifying Bacterial Culture
- **Planted:** Era 5, `eras-5-6-final.md` line 196
- **Payoff claimed in master-redesign.md:** Era 7 (line 1013)
- **Payoff in eras-5-6-final.md:** Actually pays off bridging Era 5 to Era 6 -- the Anomalous Plasmid extracted from it unlocks the Genome Authoring Platform (line 985). This contradicts master-redesign which says Era 7.
- **STATUS: PARTIAL CONFLICT. The era-5-6-final doc defines the payoff as Era 5->6 transition, not Era 7 as master claims.**

### 5.7 Self-Editing Organism
- **Planted:** Era 6, `eras-5-6-final.md` line 1188
- **Payoff claimed in master-redesign.md:** Era 7-8 (line 1014)
- **Payoff in era docs:** Described with Autonomous Revision Log extraction (line 1821) and narrative bridge to Era 7 (line 1966).
- **STATUS: CONSISTENT direction. Mechanical bridge exists via extracted log item.**

### 5.8 Escaped Organism
- **Planted:** Era 7, `eras-7-8-final.md` line 151 (event-based)
- **Payoff claimed in master-redesign.md:** Era 8-9 (line 1015)
- **Payoff in eras-7-8-final.md:** The Era 7->8 transition narrative (lines 670-684) explicitly references the escaped organism. Era 8 items include the Escaped Organism Sample and Wild Hybrid Fragment (line 535-536) with connections to Era 8 themes (line 637).
- **STATUS: CONSISTENT. Planted in Era 7, narratively referenced in transition to Era 8. No mechanical recipe consumes it, but it serves as narrative fuel for the "Emergent Architecture" concept.**

---

## 6. PREVIOUSLY IDENTIFIED ISSUES: STATUS

| Issue | Source | Status |
|-------|--------|--------|
| "Farmtorio" in narrative-and-pacing.md title | Review 1 | **RESOLVED** |
| "Curiosity Cabinet" vs "Specimen Archive" | Review 1 | **RESOLVED** |
| Compost Heap influence radius (4 vs 6 tiles) | Review 1 | **RESOLVED** (signature-mechanic-spec amendments) |
| Era 6 underspecified | Review 1 | **RESOLVED** (full 105-item design in eras-5-6-final.md) |
| Power generation not covered | Review 1 | **RESOLVED** (standalone power-generation.md) |
| Era 9 fluid bootstrap deadlock | Review 1 | **RESOLVED** (standalone bootstrap-machines.md + era-9-final amendments) |
| Selection Pressure Log RNG bottleneck | Review 2 | **RESOLVED** (eras-7-8-final.md amendments, guaranteed output) |
| Bio Web hidden for 15-20h with no feedback | Review 2 | **RESOLVED** (Crop Vigor Pips in signature-mechanic-spec amendments) |
| Era names in narrative-and-pacing.md | Review 1 | **STILL PRESENT** -- old era structure retained |
| Breadcrumb payoff era conflicts | Review 1 | **STILL PRESENT** -- narrative doc conflicts persist; master vs era doc conflicts for Bioluminescent Fungus |
| Chimera XB-19 designation mismatch | Review 1 | **STILL PRESENT** -- narrative doc not updated |

---

## 7. NEW ISSUES FOUND IN THIS REVIEW

1. **Bioluminescent Fungus has no mechanical payoff anywhere.** Three documents claim three different payoff eras (Era 4, Era 5-6, Era 9), but none of the era documents (eras-3-4-final, eras-5-6-final, eras-7-8-final, era-9-final) contain a recipe, research gate, or mechanical system that consumes or references this item. The breadcrumb is planted beautifully but has no actual payoff implemented in design.

2. **Ancient Seed Pod has no mechanical payoff anywhere.** Claimed to pay off in Era 3 and/or Era 7, but neither the eras-3-4-final nor eras-7-8-final documents define a recipe or research that uses it.

3. **Mutant Crop Specimen has no mechanical payoff anywhere.** Claimed for Era 3 or Era 7 but not found as a recipe input in any era doc.

4. **narrative-and-pacing.md era content mapping is structurally wrong.** The old era names (Gathering, Subsistence, Irrigation, Animals, Chemistry, Fermentation, Genetics, Industrial, Arcology) correspond to completely different content than the canonical era design. For example, the narrative doc's "Era 6: Fermentation" content (brewing, aging) is actually Era 3 content in the canonical design. This makes the narrative doc's pacing timings, compression strategies, and milestone rewards unreliable for the canonical era sequence.

5. **Master-redesign.md Self-Modifying Bacterial Culture payoff conflict.** Master says payoff is "Era 7 directed evolution" (line 1013), but the eras-5-6-final.md actually uses it as the bridge from Era 5 to Era 6 (Anomalous Plasmid unlocks Genome Authoring Platform).

---

## 8. OVERALL ASSESSMENT

### Consistency Score: 7/10

**What is solid:**
- The 8 era-specific documents (eras-1-2-final through era-9-final) plus signature-mechanic-spec, power-generation, and bootstrap-machines are internally consistent and well-cross-referenced.
- Science pack names, research chapter names, machine names, and core mechanical systems are consistent across all documents.
- The amendments system works well -- each amended document clearly marks what changed and why.
- All critical mechanical issues (power, bootstrap, RNG bottleneck, early web visibility) are resolved.
- Era 6 is fully specified.

**What is not solid:**
- `narrative-and-pacing.md` remains structurally incompatible with the rest of the design. The title fix and term replacements were cosmetic. The underlying era structure, content assignments, breadcrumb payoff eras, and pacing targets do not match the canonical design.
- Three high-profile breadcrumb items (Bioluminescent Fungus, Ancient Seed Pod, Mutant Crop Specimen) are planted in era docs with rich flavor text but have no mechanical payoff (recipe, research gate, or system) defined anywhere.
- The master-redesign.md breadcrumb table has one confirmed conflict with the era docs (Self-Modifying Bacterial Culture payoff era).

### Recommendation: NEARLY READY TO CODE, with caveats

The core technical design (era docs + signature mechanic + power + bootstrap) is ready for implementation. A developer working from the era-specific documents and the signature-mechanic-spec can build the mod.

**Before coding begins, two actions are needed:**

1. **Reconcile or deprecate narrative-and-pacing.md.** Either rewrite it against the canonical era structure, or mark it explicitly as "pre-redesign reference material, not authoritative for era content or breadcrumb payoffs." Its tone guidelines and dark-side item designs remain valuable and should be preserved, but its era mapping should not be trusted.

2. **Define mechanical payoffs for the three orphaned breadcrumbs.** The Strange Bioluminescent Fungus, Ancient Seed Pod, and Mutant Crop Specimen need specific recipes or research gates in specific era documents. Pick one canonical payoff era for each and write the actual recipe/research entry in that era's document.

---
