-- Biogenesis Era 1: Recipes (Seablock Redesign)
-- 50 recipes matching the design doc.
-- enabled = true  → available from game start
-- enabled = false → unlocked by technology

-------------------------------------------------------------------------------
-- ALWAYS AVAILABLE: Hand-Crafts
-------------------------------------------------------------------------------
data:extend({
  -- #1: Strip Grass → 2 Plant Fiber
  {
    type = "recipe",
    name = "bio-era1-process-saltmarsh-grass",
    category = "crafting",
    energy_required = 1,
    ingredients = {{type = "item", name = "bio-era1-saltmarsh-grass", amount = 1}},
    results = {{type = "item", name = "bio-era1-plant-fiber", amount = 2}},
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "a[fiber]-a",
  },
  -- #2: Twist Fiber Cord
  {
    type = "recipe",
    name = "bio-era1-fiber-cord",
    category = "crafting",
    energy_required = 2,
    ingredients = {{type = "item", name = "bio-era1-plant-fiber", amount = 2}},
    results = {{type = "item", name = "bio-era1-fiber-cord", amount = 1}},
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "a[fiber]-b",
  },
  -- #3: Split Kelp → Frond + Stalk
  {
    type = "recipe",
    name = "bio-era1-split-kelp",
    category = "crafting",
    energy_required = 1.5,
    ingredients = {{type = "item", name = "bio-era1-kelp", amount = 1}},
    results = {
      {type = "item", name = "bio-era1-kelp-frond", amount = 1},
      {type = "item", name = "bio-era1-kelp-stalk", amount = 1},
    },
    main_product = "bio-era1-kelp-stalk",
    enabled = true,
    subgroup = "bio-era1-raw",
    order = "a[fiber]-c",
  },
  -- #4: Weave Reed Mat
  {
    type = "recipe",
    name = "bio-era1-woven-reed-mat",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-saltmarsh-grass", amount = 4},
      {type = "item", name = "bio-era1-fiber-cord", amount = 2},
    },
    results = {{type = "item", name = "bio-era1-woven-reed-mat", amount = 1}},
    enabled = true,
    subgroup = "bio-era1-land",
    order = "b[land]-a",
  },
  -- #4b: Craft Kelp-Stalk Belt
  {
    type = "recipe",
    name = "bio-era1-kelp-stalk-belt-recipe",
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 1},
      {type = "item", name = "bio-era1-plant-fiber", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-kelp-stalk-belt", amount = 2}},
    enabled = true,
    subgroup = "bio-era1-logistics",
    order = "b[logistics]-a",
  },
  -- #4c: Craft Kelp-Stalk Inserter
  {
    type = "recipe",
    name = "bio-era1-kelp-stalk-inserter-recipe",
    category = "crafting",
    energy_required = 1,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 2},
      {type = "item", name = "bio-era1-fiber-cord", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-kelp-stalk-inserter", amount = 1}},
    enabled = true,
    subgroup = "bio-era1-logistics",
    order = "b[logistics]-b",
  },
})

-------------------------------------------------------------------------------
-- ALWAYS AVAILABLE: Waste Classification (Hand)
-------------------------------------------------------------------------------
data:extend({
  -- #5: Grass → Green Waste
  {
    type = "recipe", name = "bio-era1-waste-grass",
    category = "crafting", energy_required = 0.5,
    ingredients = {{type = "item", name = "bio-era1-saltmarsh-grass", amount = 1}},
    results = {{type = "item", name = "bio-era1-green-waste", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-c",
  },
  -- #6: Glasswort → Green Waste
  {
    type = "recipe", name = "bio-era1-waste-glasswort",
    category = "crafting", energy_required = 0.5,
    ingredients = {{type = "item", name = "bio-era1-glasswort", amount = 1}},
    results = {{type = "item", name = "bio-era1-green-waste", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-d",
  },
  -- #7: Kelp Frond → Green Waste
  {
    type = "recipe", name = "bio-era1-waste-kelp-frond",
    category = "crafting", energy_required = 0.5,
    ingredients = {{type = "item", name = "bio-era1-kelp-frond", amount = 1}},
    results = {{type = "item", name = "bio-era1-green-waste", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-e",
  },
  -- #8: Chaff → Green Waste
  {
    type = "recipe", name = "bio-era1-waste-chaff",
    category = "crafting", energy_required = 0.5,
    ingredients = {{type = "item", name = "bio-era1-chaff", amount = 1}},
    results = {{type = "item", name = "bio-era1-green-waste", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-f",
  },
  -- #9: Kelp Stalk → Brown Waste
  {
    type = "recipe", name = "bio-era1-waste-kelp-stalk",
    category = "crafting", energy_required = 0.5,
    ingredients = {{type = "item", name = "bio-era1-kelp-stalk", amount = 1}},
    results = {{type = "item", name = "bio-era1-brown-waste", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-g",
  },
  -- #10: Dried Kelp → Brown Waste
  {
    type = "recipe", name = "bio-era1-waste-dried-kelp",
    category = "crafting", energy_required = 0.5,
    ingredients = {{type = "item", name = "bio-era1-dried-kelp", amount = 1}},
    results = {{type = "item", name = "bio-era1-brown-waste", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-h",
  },
  -- #11: Ash → Brown Waste
  {
    type = "recipe", name = "bio-era1-waste-ash",
    category = "crafting", energy_required = 0.5,
    ingredients = {{type = "item", name = "bio-era1-ash", amount = 1}},
    results = {{type = "item", name = "bio-era1-brown-waste", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-i",
  },
})

-------------------------------------------------------------------------------
-- ALWAYS AVAILABLE: Machine Recipes (Compost Heap)
-------------------------------------------------------------------------------
data:extend({
  -- #12: Load Compost
  {
    type = "recipe", name = "bio-era1-compost-load",
    category = "composting", energy_required = 30,
    ingredients = {
      {type = "item", name = "bio-era1-green-waste", amount = 5},
      {type = "item", name = "bio-era1-brown-waste", amount = 5},
    },
    results = {{type = "item", name = "bio-era1-immature-compost", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-a",
  },
  -- #13: Mature Compost
  {
    type = "recipe", name = "bio-era1-compost-mature",
    category = "composting", energy_required = 30,
    ingredients = {{type = "item", name = "bio-era1-immature-compost", amount = 1}},
    results = {{type = "item", name = "bio-era1-finished-compost", amount = 1}},
    enabled = true, subgroup = "bio-era1-intermediates", order = "k[compost]-b",
  },
})

-------------------------------------------------------------------------------
-- ALWAYS AVAILABLE: Infrastructure (Hand)
-------------------------------------------------------------------------------
data:extend({
  -- #14: Build Compost Heap
  {
    type = "recipe", name = "bio-era1-compost-heap-recipe",
    category = "crafting", energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 4},
      {type = "item", name = "bio-era1-plant-fiber", amount = 4},
    },
    results = {{type = "item", name = "bio-era1-compost-heap", amount = 1}},
    enabled = true, subgroup = "bio-era1-machines", order = "h[machines]-j",
  },
  -- #15: Build Field Notebook Station
  {
    type = "recipe", name = "bio-era1-field-notebook-station-recipe",
    category = "crafting", energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 5},
      {type = "item", name = "bio-era1-fiber-cord", amount = 3},
    },
    results = {{type = "item", name = "bio-era1-field-notebook-station", amount = 1}},
    enabled = true, subgroup = "bio-era1-machines", order = "h[machines]-k",
  },
})

-------------------------------------------------------------------------------
-- ALWAYS AVAILABLE: Science (Hand)
-------------------------------------------------------------------------------
data:extend({
  -- #16: Prepare Tidal Observation Kit
  {
    type = "recipe", name = "bio-era1-tidal-observation-kit",
    category = "crafting", energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-dried-kelp", amount = 1},
      {type = "item", name = "bio-era1-plant-fiber", amount = 1},
      {type = "item", name = "bio-era1-sea-salt", amount = 1},
      {type = "item", name = "bio-era1-calcium-precipitate", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-tidal-observation-kit", amount = 2}},
    enabled = true, subgroup = "bio-era1-science", order = "z[science]-a",
  },
})

-------------------------------------------------------------------------------
-- TECH 1: Saltwater Collection
-------------------------------------------------------------------------------
data:extend({
  -- #17: Collect Saltwater (passive, no input)
  {
    type = "recipe", name = "bio-era1-collect-saltwater",
    category = "saltwater-collection", energy_required = 10,
    ingredients = {},
    results = {{type = "item", name = "bio-era1-saltwater", amount = 5}},
    enabled = false, subgroup = "bio-era1-saltwater", order = "c[salt]-a",
  },
  -- #18: Build Saltwater Basin
  {
    type = "recipe", name = "bio-era1-saltwater-basin-recipe",
    category = "crafting", energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 4},
      {type = "item", name = "bio-era1-plant-fiber", amount = 4},
    },
    results = {{type = "item", name = "bio-era1-saltwater-basin", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-a",
  },
})

-------------------------------------------------------------------------------
-- TECH 2: Solar Evaporation
-------------------------------------------------------------------------------
data:extend({
  -- #19: Evaporate Saltwater → Sea Salt + Brackish Water
  {
    type = "recipe", name = "bio-era1-evaporate-saltwater",
    category = "evaporation", energy_required = 15,
    ingredients = {{type = "item", name = "bio-era1-saltwater", amount = 5}},
    results = {
      {type = "item", name = "bio-era1-sea-salt", amount = 2},
      {type = "item", name = "bio-era1-brackish-water", amount = 3},
    },
    main_product = "bio-era1-sea-salt",
    enabled = false, subgroup = "bio-era1-saltwater", order = "c[salt]-b",
  },
  -- #20: Build Solar Evaporation Tray
  {
    type = "recipe", name = "bio-era1-solar-evaporation-tray-recipe",
    category = "crafting", energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 4},
      {type = "item", name = "bio-era1-fiber-cord", amount = 2},
    },
    results = {{type = "item", name = "bio-era1-solar-evaporation-tray", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-b",
  },
})

-------------------------------------------------------------------------------
-- TECH 3: Kelp Cultivation
-------------------------------------------------------------------------------
data:extend({
  -- #21: Dry Kelp → Dried Kelp + Ash
  {
    type = "recipe", name = "bio-era1-dry-kelp",
    category = "drying", energy_required = 30,
    ingredients = {{type = "item", name = "bio-era1-kelp-frond", amount = 2}},
    results = {
      {type = "item", name = "bio-era1-dried-kelp", amount = 1},
      {type = "item", name = "bio-era1-ash", amount = 1},
    },
    main_product = "bio-era1-dried-kelp",
    enabled = false, subgroup = "bio-era1-intermediates", order = "d[kelp]-a",
  },
  -- #22: Roast Kelp → Roasted Kelp
  {
    type = "recipe", name = "bio-era1-roast-kelp",
    category = "kiln-firing", energy_required = 5,
    ingredients = {{type = "item", name = "bio-era1-kelp-frond", amount = 1}},
    results = {{type = "item", name = "bio-era1-roasted-kelp", amount = 1}},
    enabled = false, subgroup = "bio-era1-food", order = "d[kelp]-b",
  },
  -- #23: Make Charcoal → Kelp Charcoal + Ash
  {
    type = "recipe", name = "bio-era1-kelp-charcoal",
    category = "kiln-firing", energy_required = 10,
    ingredients = {{type = "item", name = "bio-era1-dried-kelp", amount = 2}},
    results = {
      {type = "item", name = "bio-era1-kelp-charcoal", amount = 1},
      {type = "item", name = "bio-era1-ash", amount = 1},
    },
    main_product = "bio-era1-kelp-charcoal",
    enabled = false, subgroup = "bio-era1-intermediates", order = "d[kelp]-c",
  },
  -- #24: Build Drying Rack (consumes Knapping Blade)
  {
    type = "recipe", name = "bio-era1-drying-rack-recipe",
    category = "crafting", energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 4},
      {type = "item", name = "bio-era1-fiber-cord", amount = 4},
      {type = "item", name = "bio-era1-knapping-blade", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-drying-rack-frame", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-c",
  },
  -- #25: Build Fire Pit
  {
    type = "recipe", name = "bio-era1-stone-fire-pit-recipe",
    category = "crafting", energy_required = 6,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 6},
      {type = "item", name = "bio-era1-fiber-cord", amount = 4},
    },
    results = {{type = "item", name = "bio-era1-stone-fire-pit", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-d",
  },
})

-------------------------------------------------------------------------------
-- TECH 4: Biomass Compression
-------------------------------------------------------------------------------
data:extend({
  -- #26: Compress Grass
  {
    type = "recipe", name = "bio-era1-compress-grass",
    category = "biomass-compression", energy_required = 30,
    ingredients = {{type = "item", name = "bio-era1-saltmarsh-grass", amount = 5}},
    results = {{type = "item", name = "bio-era1-compressed-biomass-block", amount = 1}},
    enabled = false, subgroup = "bio-era1-land", order = "e[compress]-a",
  },
  -- #27: Compress Kelp
  {
    type = "recipe", name = "bio-era1-compress-kelp",
    category = "biomass-compression", energy_required = 30,
    ingredients = {{type = "item", name = "bio-era1-kelp", amount = 5}},
    results = {{type = "item", name = "bio-era1-compressed-biomass-block", amount = 1}},
    enabled = false, subgroup = "bio-era1-land", order = "e[compress]-b",
  },
  -- #28: Compress Fiber
  {
    type = "recipe", name = "bio-era1-compress-fiber",
    category = "biomass-compression", energy_required = 30,
    ingredients = {{type = "item", name = "bio-era1-plant-fiber", amount = 10}},
    results = {{type = "item", name = "bio-era1-compressed-biomass-block", amount = 1}},
    enabled = false, subgroup = "bio-era1-land", order = "e[compress]-c",
  },
  -- #29: Build Biomass Compressor (consumes Crude Hammer)
  {
    type = "recipe", name = "bio-era1-biomass-compressor-recipe",
    category = "crafting", energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 6},
      {type = "item", name = "bio-era1-fiber-cord", amount = 4},
      {type = "item", name = "bio-era1-crude-hammer", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-biomass-compressor", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-e",
  },
})

-------------------------------------------------------------------------------
-- TECH 5: Calcium Precipitation
-------------------------------------------------------------------------------
data:extend({
  -- #31: Precipitate Calcium → Calcium Precipitate + Brackish Water
  {
    type = "recipe", name = "bio-era1-precipitate-calcium",
    category = "calcium-precipitation", energy_required = 20,
    ingredients = {{type = "item", name = "bio-era1-saltwater", amount = 5}},
    results = {
      {type = "item", name = "bio-era1-calcium-precipitate", amount = 1},
      {type = "item", name = "bio-era1-brackish-water", amount = 1},
    },
    main_product = "bio-era1-calcium-precipitate",
    enabled = false, subgroup = "bio-era1-intermediates", order = "f[calcium]-a",
  },
  -- #32: Calcine → Calcite
  {
    type = "recipe", name = "bio-era1-calcine",
    category = "kiln-firing", energy_required = 10,
    ingredients = {{type = "item", name = "bio-era1-calcium-precipitate", amount = 2}},
    results = {{type = "item", name = "bio-era1-calcite", amount = 1}},
    enabled = false, subgroup = "bio-era1-intermediates", order = "f[calcium]-b",
  },
  -- #33: Burn Glasswort → Glasswort Ash
  {
    type = "recipe", name = "bio-era1-glasswort-ash",
    category = "kiln-firing", energy_required = 8,
    ingredients = {{type = "item", name = "bio-era1-glasswort", amount = 2}},
    results = {{type = "item", name = "bio-era1-glasswort-ash", amount = 1}},
    enabled = false, subgroup = "bio-era1-intermediates", order = "f[calcium]-c",
  },
  -- #34: Build Calcium Vat
  {
    type = "recipe", name = "bio-era1-calcium-precipitation-vat-recipe",
    category = "crafting", energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 4},
      {type = "item", name = "bio-era1-fiber-cord", amount = 4},
    },
    results = {{type = "item", name = "bio-era1-calcium-precipitation-vat", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-f",
  },
  -- #35: Build Grinding Slab
  {
    type = "recipe", name = "bio-era1-grinding-slab-recipe",
    category = "crafting", energy_required = 5,
    ingredients = {{type = "item", name = "bio-era1-calcite", amount = 5}},
    results = {{type = "item", name = "bio-era1-grinding-slab", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-g",
  },
  -- #36-39: Tool crafting recipes
  {
    type = "recipe", name = "bio-era1-crude-hammer",
    category = "crafting", energy_required = 2,
    ingredients = {
      {type = "item", name = "bio-era1-calcite", amount = 2},
      {type = "item", name = "bio-era1-kelp-stalk", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-crude-hammer", amount = 1}},
    enabled = false, subgroup = "bio-era1-tools", order = "g[tools]-a",
  },
  {
    type = "recipe", name = "bio-era1-knapping-blade",
    category = "crafting", energy_required = 2,
    ingredients = {
      {type = "item", name = "bio-era1-calcite", amount = 1},
      {type = "item", name = "bio-era1-kelp-stalk", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-knapping-blade", amount = 1}},
    enabled = false, subgroup = "bio-era1-tools", order = "g[tools]-b",
  },
  {
    type = "recipe", name = "bio-era1-digging-stick",
    category = "crafting", energy_required = 1,
    ingredients = {{type = "item", name = "bio-era1-kelp-stalk", amount = 1}},
    results = {{type = "item", name = "bio-era1-digging-stick", amount = 1}},
    enabled = false, subgroup = "bio-era1-tools", order = "g[tools]-c",
  },
  {
    type = "recipe", name = "bio-era1-pestle",
    category = "crafting", energy_required = 2,
    ingredients = {
      {type = "item", name = "bio-era1-calcite", amount = 1},
      {type = "item", name = "bio-era1-kelp-stalk", amount = 1},
      {type = "item", name = "bio-era1-fiber-cord", amount = 2},
    },
    results = {{type = "item", name = "bio-era1-pestle", amount = 1}},
    enabled = false, subgroup = "bio-era1-tools", order = "g[tools]-d",
  },
})

-------------------------------------------------------------------------------
-- TECH 6: Halophyte Cultivation (2 TOK)
-------------------------------------------------------------------------------
data:extend({
  -- #40-43: Seed extraction
  {
    type = "recipe", name = "bio-era1-extract-grass-seed",
    category = "crafting", energy_required = 3,
    ingredients = {{type = "item", name = "bio-era1-saltmarsh-grass", amount = 5}},
    results = {{type = "item", name = "bio-era1-saltmarsh-grass-seed", amount = 1}},
    enabled = false, subgroup = "bio-era1-seeds", order = "i[seeds]-a",
  },
  {
    type = "recipe", name = "bio-era1-extract-glasswort-seed",
    category = "crafting", energy_required = 3,
    ingredients = {{type = "item", name = "bio-era1-glasswort", amount = 3}},
    results = {{type = "item", name = "bio-era1-glasswort-seed", amount = 1}},
    enabled = false, subgroup = "bio-era1-seeds", order = "i[seeds]-b",
  },
  {
    type = "recipe", name = "bio-era1-extract-kelp-spore",
    category = "crafting", energy_required = 3,
    ingredients = {{type = "item", name = "bio-era1-kelp", amount = 5}},
    results = {{type = "item", name = "bio-era1-kelp-spore-culture", amount = 1}},
    enabled = false, subgroup = "bio-era1-seeds", order = "i[seeds]-c",
  },
  {
    type = "recipe", name = "bio-era1-extract-sea-grain-seed",
    category = "crafting", energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-glasswort", amount = 3},
      {type = "item", name = "bio-era1-sea-salt", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-sea-grain-seed", amount = 1}},
    enabled = false, subgroup = "bio-era1-seeds", order = "i[seeds]-d",
  },
  -- #44: Grind Sea-Grain → Flour + Chaff
  {
    type = "recipe", name = "bio-era1-grind-sea-grain",
    category = "grinding", energy_required = 4,
    ingredients = {{type = "item", name = "bio-era1-sea-grain", amount = 3}},
    results = {
      {type = "item", name = "bio-era1-rough-flour", amount = 2},
      {type = "item", name = "bio-era1-chaff", amount = 1},
    },
    main_product = "bio-era1-rough-flour",
    enabled = false, subgroup = "bio-era1-intermediates", order = "i[grain]-a",
  },
})

-------------------------------------------------------------------------------
-- TECH 7: Tidal Energy (3 TOK)
-------------------------------------------------------------------------------
data:extend({
  -- #45: Build Tidal Generator
  {
    type = "recipe", name = "bio-era1-tidal-power-generator-recipe",
    category = "crafting", energy_required = 10,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 8},
      {type = "item", name = "bio-era1-fiber-cord", amount = 6},
      {type = "item", name = "bio-era1-calcite", amount = 4},
    },
    results = {{type = "item", name = "bio-era1-tidal-power-generator", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-h",
  },
})

-------------------------------------------------------------------------------
-- TECH 8: Seaweed Desalination (3 TOK)
-------------------------------------------------------------------------------
data:extend({
  -- #46: Desalinate → Freshwater + Concentrated Brine
  {
    type = "recipe", name = "bio-era1-desalinate",
    category = "desalination", energy_required = 20,
    ingredients = {{type = "item", name = "bio-era1-saltwater", amount = 5}},
    results = {
      {type = "item", name = "bio-era1-freshwater", amount = 3},
      {type = "item", name = "bio-era1-concentrated-brine", amount = 1},
    },
    main_product = "bio-era1-freshwater",
    enabled = false, subgroup = "bio-era1-saltwater", order = "j[desal]-a",
  },
  -- #47: Efficient Calcium from Brine
  {
    type = "recipe", name = "bio-era1-precipitate-from-brine",
    category = "calcium-precipitation", energy_required = 10,
    ingredients = {{type = "item", name = "bio-era1-concentrated-brine", amount = 3}},
    results = {{type = "item", name = "bio-era1-calcium-precipitate", amount = 2}},
    enabled = false, subgroup = "bio-era1-intermediates", order = "j[desal]-b",
  },
  -- #48: Bake Flatbread
  {
    type = "recipe", name = "bio-era1-bake-flatbread",
    category = "kiln-firing", energy_required = 6,
    ingredients = {
      {type = "item", name = "bio-era1-rough-flour", amount = 1},
      {type = "item", name = "bio-era1-freshwater", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-flatbread", amount = 2}},
    enabled = false, subgroup = "bio-era1-food", order = "j[desal]-c",
  },
  -- #49: Cook Porridge
  {
    type = "recipe", name = "bio-era1-grain-porridge",
    category = "kiln-firing", energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-rough-flour", amount = 1},
      {type = "item", name = "bio-era1-freshwater", amount = 1},
    },
    results = {{type = "item", name = "bio-era1-grain-porridge", amount = 2}},
    enabled = false, subgroup = "bio-era1-food", order = "j[desal]-d",
  },
  -- #50: Build Desalination Bed
  {
    type = "recipe", name = "bio-era1-seaweed-desalination-bed-recipe",
    category = "crafting", energy_required = 6,
    ingredients = {
      {type = "item", name = "bio-era1-kelp-stalk", amount = 8},
      {type = "item", name = "bio-era1-plant-fiber", amount = 4},
      {type = "item", name = "bio-era1-calcite", amount = 2},
    },
    results = {{type = "item", name = "bio-era1-seaweed-desalination-bed", amount = 1}},
    enabled = false, subgroup = "bio-era1-machines", order = "h[machines]-i",
  },
})
