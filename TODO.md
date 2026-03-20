# Biogenesis - Development TODO

## Global / Infrastructure

### Working
- [x] Mod loads in Factorio 2.0
- [x] Biogenesis item group/tab visible in crafting menu
- [x] Starting items (foraged materials from 4 biomes)
- [x] Free techs auto-granted on game start
- [x] Symlink dev flow (`ln -s mod ~/.factorio/mods/biogenesis_0.1.0`)
- [x] Vanilla starting items suppressed (deferred clear via on_tick)

### Dev Workflow Gotchas
- `/c game.reload_mods()` does NOT reload data prototypes in Factorio 2.0 -- must fully quit and relaunch
- `control.lua` changes always require a new game (on_init only runs once)
- Factorio 2.0 icon paths changed from 1.x: `raw-fish` -> `fish`, `barrel` removed, `tree-seed` is Space Age only, `sulfuric-acid` in `icons/fluid/` subfolder
- `player.cursor_stack` is nil at player creation time -- must nil-check
- Factorio inserts vanilla starting items AFTER on_player_created -- defer inventory clear to on_tick

### Needs Fixing
- [ ] Vanilla tech tree still visible (need to hide/disable vanilla techs + recipes for overhaul)
- [ ] No custom research bench -- using vanilla lab + solar panel as workaround
- [ ] Player needs power for lab -- Era 1 should have a void-powered Field Notebook Station
- [ ] No fluid system yet -- water is a simple item instead of a fluid

### Needs Adding
- [ ] Biological Web system (scripts/bioweb.lua) - THE signature mechanic
- [ ] Organism Drift system (scripts/drift.lua)
- [ ] Harvestable world entities (forageable plants on the map)
- [ ] Map generation (biome-based wild plant placement)
- [ ] Custom art/sprites (using placeholder colored boxes + community icons)
- [ ] Sound effects for machines
- [ ] Mod settings (difficulty, drift rate, etc.)

---

## Era 1: Observation

### Working
- [x] 61 items load correctly
- [x] 46 recipes craftable (was 47, removed duplicate cattail fiber recipe)
- [x] 7 machines placeable (colored box sprites)
- [x] 9 technologies in tech tree
- [x] Fiber cord: wild grass -> fiber cord (direct recipe, bypasses plant fiber intermediate)
- [x] Plant fiber: wild grass -> plant fiber (separate recipe for baskets/construction)
- [x] Grain chain: grain heads -> rough flour + chaff (at grinding slab)
- [x] Flatbread: flour + water -> flatbread (at fire pit)
- [x] Fire pit uses peat brick as fuel, produces ash
- [x] Compost heap accepts recipes
- [x] Seed extraction recipes work
- [x] Science pack (OAK) craftable from 4 ingredients
- [x] Community icons for wheat, flour, seeds, compost, food items
- [x] Grinding Slab 0.5x speed vs Water Wheel 2x speed (meaningful upgrade)

### Known Limitations
- Factorio 2.0 auto-craft chaining unreliable when multiple recipes produce the same item -- use direct recipes instead
- `results = {{}}` format required in 2.0, old `result`/`result_count` is undocumented

### Needs Fixing
- [ ] Many items still use tinted vanilla icons (hard to distinguish)
- [ ] Machines are colored rectangles (need real sprites)
- [ ] Some intermediate items share the same icon (cracked nut = nut icon, etc.)
- [ ] No tooltips visible when hovering recipes in crafting menu (need recipe descriptions?)

### Needs Adding
- [ ] Field Notebook Station (void-powered research bench, replaces vanilla lab for Era 1)
- [ ] Harvestable wild plants on the map (the core Era 1 gameplay loop)
  - Wild Grass, Wild Grain, Clover in grassland
  - Forest Nut, Bracket Fungus, Fallen Fruit in forest
  - Cattail, Bog Root, Peat Moss in wetland
  - Lichen, Rock Cress in rocky areas
- [ ] Breadcrumb drop system (rare items from processing)
  - Strange Bioluminescent Fungus (~3% from bracket fungus)
  - Ancient Seed Pod (~2% from rocky biome)
  - Anomalous Grass Specimen (~5% from wild grass)
  - Unusual Clover (~4% from clover)
- [ ] Water Wheel should require placement near water
- [ ] Leaching Basket should require placement near water
- [ ] Better pacing: currently all recipes available at once after auto-granting techs
- [ ] Crop Vigor Pips (Biological Web early visibility) - Era 1 can wait, needed for Era 2A

### Gameplay Notes
- Recipe chains work end-to-end but feel flat without world interaction
- No sense of discovery since materials are given at start
- Need forageable world plants ASAP to make Era 1 feel like exploration
- The grind-grain -> flour + chaff -> classify chaff as waste -> compost loop works but player needs to know to do it
- Mod feels unengaging at this stage -- expected, core loops (foraging, Bio Web, narrative) not yet implemented
- Player currently needs vanilla lab + solar panel + power pole for research -- needs custom void-powered bench

---

## Era 2A: Grain Farming

### Status: Design complete, not yet coded

### Key items to implement
- [ ] 12 crop types with growth cycles
- [ ] Farm plot entity (plantable surface)
- [ ] Simple Planter (automation, hour 1-2)
- [ ] Mechanical Harvester
- [ ] Threshing Machine, Grain Mill, Seed Sorter
- [ ] Charcoal Ink + Paper for science pack (CED)
- [ ] Barley Flatbread (yeast-free food)
- [ ] Crop Vigor Pips (Bio Web early visibility)
- [ ] Seed quality system (Wild/Farm/Select)
- [ ] Genetic Profile display (locked traits on crop tooltips)

---

## Era 2B: Applied Agriculture

### Status: Design complete, not yet coded

### Key items to implement
- [ ] Starter Culture Kit (transition reward from 2A)
- [ ] Fermentation system (yeast, vinegar, sauerkraut)
- [ ] Malting + brewing chain
- [ ] Textile chain (retting -> breaking -> scutching -> spinning -> weaving)
- [ ] Oil pressing (sunflower, linseed)
- [ ] Soil quality tiers (1-4)
- [ ] Mk2 machine upgrades (bundled into 3 techs)
- [ ] Specimen Archive entity
- [ ] Passive timer rework (max 90s stages)

---

## Era 3: The Invisible Ecosystem

### Status: Design complete, not yet coded

### Key items to implement
- [ ] 8 animal types (chickens -> goats -> cows -> sheep -> pigs -> bees -> silkworms -> fish)
- [ ] Animal housing, feeding, collection systems
- [ ] Dairy chain (milk -> cream -> butter/cheese)
- [ ] Fermentation expansion (6+ culture types)
- [ ] Soil Composition Analyzer (the "8.2 billion per gram" reveal)
- [ ] Microbial cultivation (Lactobacillus, Saccharomyces, etc.)
- [ ] Bio Web hint arrows (first web visibility)
- [ ] Bootstrap: first 3 techs accept Era 2 CED packs
- [ ] Power: Biogas Combustion Engine (120 kW)

---

## Eras 4-9: Not yet in development

See design docs in `design/` folder for complete specifications.

---

## Art / Graphics

### Have
- 30 community icons (seeds, wheat, flour, compost, food, science packs)
- Colored rectangle sprites for 7 Era 1 machines
- Placeholder PNG (32x32 transparent)

### Need
- Real machine sprites for all Era 1 entities
- Unique icons for each item (many still share tinted vanilla icons)
- Technology icons (currently tinted vanilla)
- Custom research bench sprite
- World entity sprites (forageable plants)
- Terrain tiles (farm plots, tilled soil)

### Sources identified
- [snouz/factorio_free_graphics_for_modders](https://github.com/snouz/factorio_free_graphics_for_modders) - MIT licensed Factorio sprites
- [OpenGameArt CC0 farming sets](https://opengameart.org/content/farming-set-pixel-art) - 32x32 crops, tools
- [OpenGameArt CC0 tool icons](https://opengameart.org/content/cc0-tool-icons) - 64x64 tools
- AI generation for unique biotech items (later eras)
