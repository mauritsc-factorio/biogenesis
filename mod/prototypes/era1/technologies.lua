-- Biogenesis Era 1: Technologies (Seablock Redesign)
-- 9 technologies:
--   Techs 1-5: hidden, action-gated (free research, triggered by control.lua)
--   Techs 6-9: visible, consume Tidal Observation Kit (TOK)

local function tech_icon(base_icon, tint)
  return {{ icon = base_icon, icon_size = 64, tint = tint }}
end

local GREEN  = {r = 0.4, g = 0.8, b = 0.3, a = 1}
local TEAL   = {r = 0.3, g = 0.7, b = 0.7, a = 1}
local BLUE   = {r = 0.3, g = 0.5, b = 0.8, a = 1}
local ORANGE = {r = 0.9, g = 0.6, b = 0.2, a = 1}
local BROWN  = {r = 0.6, g = 0.4, b = 0.2, a = 1}
local YELLOW = {r = 0.9, g = 0.8, b = 0.2, a = 1}
local SEA_GREEN = {r = 0.2, g = 0.9, b = 0.5, a = 1}

-- Free research: no ingredients, instant. Used for action-gated techs.
-- control.lua calls force.technologies[name].researched = true
local function free_unit()
  return { count = 1, ingredients = {}, time = 1 }
end

-- TOK-consuming research: Field Notebook Station processes these.
local function tok_unit(count)
  return {
    count = count,
    ingredients = { {"bio-era1-tidal-observation-kit", 1} },
    time = 15,
  }
end

data:extend({
  ---------------------------------------------------------------------------
  -- TECH 1: Saltwater Collection (action-gated: harvest 3 plants)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-saltwater-collection",
    icons = tech_icon("__base__/graphics/icons/fluid/water.png", TEAL),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-collect-saltwater"},
      {type = "unlock-recipe", recipe = "bio-era1-saltwater-basin-recipe"},
    },
    hidden = true,
    unit = free_unit(),
    order = "a-a",
  },

  ---------------------------------------------------------------------------
  -- TECH 2: Solar Evaporation (action-gated: pick up 5 Saltwater)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-solar-evaporation",
    icons = tech_icon("__base__/graphics/icons/stone.png", YELLOW),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-evaporate-saltwater"},
      {type = "unlock-recipe", recipe = "bio-era1-solar-evaporation-tray-recipe"},
    },
    hidden = true,
    unit = free_unit(),
    prerequisites = {"bio-era1-saltwater-collection"},
    order = "a-b",
  },

  ---------------------------------------------------------------------------
  -- TECH 3: Kelp Cultivation (action-gated: craft 3 Kelp Stalk)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-kelp-cultivation",
    icons = tech_icon("__base__/graphics/icons/wood.png", GREEN),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-dry-kelp"},
      {type = "unlock-recipe", recipe = "bio-era1-roast-kelp"},
      {type = "unlock-recipe", recipe = "bio-era1-kelp-charcoal"},
      {type = "unlock-recipe", recipe = "bio-era1-drying-rack-recipe"},
      {type = "unlock-recipe", recipe = "bio-era1-stone-fire-pit-recipe"},
    },
    hidden = true,
    unit = free_unit(),
    prerequisites = {"bio-era1-solar-evaporation"},
    order = "a-c",
  },

  ---------------------------------------------------------------------------
  -- TECH 4: Biomass Compression (action-gated: place 2 land tiles)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-biomass-compression",
    icons = tech_icon("__base__/graphics/icons/landfill.png", BROWN),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-compress-grass"},
      {type = "unlock-recipe", recipe = "bio-era1-compress-kelp"},
      {type = "unlock-recipe", recipe = "bio-era1-compress-fiber"},
      {type = "unlock-recipe", recipe = "bio-era1-biomass-compressor-recipe"},
    },
    hidden = true,
    unit = free_unit(),
    prerequisites = {"bio-era1-kelp-cultivation"},
    order = "a-d",
  },

  ---------------------------------------------------------------------------
  -- TECH 5: Calcium Precipitation (action-gated: pick up 5 Sea Salt)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-calcium-precipitation",
    icons = tech_icon("__base__/graphics/icons/stone-brick.png", {r = 0.9, g = 0.9, b = 0.9}),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-precipitate-calcium"},
      {type = "unlock-recipe", recipe = "bio-era1-calcine"},
      {type = "unlock-recipe", recipe = "bio-era1-glasswort-ash"},
      {type = "unlock-recipe", recipe = "bio-era1-calcium-precipitation-vat-recipe"},
      {type = "unlock-recipe", recipe = "bio-era1-grinding-slab-recipe"},
      {type = "unlock-recipe", recipe = "bio-era1-crude-hammer"},
      {type = "unlock-recipe", recipe = "bio-era1-knapping-blade"},
      {type = "unlock-recipe", recipe = "bio-era1-digging-stick"},
      {type = "unlock-recipe", recipe = "bio-era1-pestle"},
    },
    hidden = true,
    unit = free_unit(),
    prerequisites = {"bio-era1-biomass-compression"},
    order = "a-e",
  },

  ---------------------------------------------------------------------------
  -- TECH 6: Halophyte Cultivation (2 TOK)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-halophyte-cultivation",
    icons = tech_icon("__base__/graphics/icons/tree-09.png", SEA_GREEN),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-extract-grass-seed"},
      {type = "unlock-recipe", recipe = "bio-era1-extract-glasswort-seed"},
      {type = "unlock-recipe", recipe = "bio-era1-extract-kelp-spore"},
      {type = "unlock-recipe", recipe = "bio-era1-extract-sea-grain-seed"},
      {type = "unlock-recipe", recipe = "bio-era1-grind-sea-grain"},
    },
    unit = tok_unit(2),
    prerequisites = {"bio-era1-calcium-precipitation"},
    order = "a-f",
  },

  ---------------------------------------------------------------------------
  -- TECH 7: Tidal Energy (3 TOK)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-tidal-energy",
    icons = tech_icon("__base__/graphics/icons/iron-gear-wheel.png", BLUE),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-tidal-power-generator-recipe"},
    },
    unit = tok_unit(3),
    prerequisites = {"bio-era1-calcium-precipitation"},
    order = "a-g",
  },

  ---------------------------------------------------------------------------
  -- TECH 8: Seaweed Desalination (3 TOK)
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-seaweed-desalination",
    icons = tech_icon("__base__/graphics/icons/fluid/water.png", BLUE),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-desalinate"},
      {type = "unlock-recipe", recipe = "bio-era1-precipitate-from-brine"},
      {type = "unlock-recipe", recipe = "bio-era1-bake-flatbread"},
      {type = "unlock-recipe", recipe = "bio-era1-grain-porridge"},
      {type = "unlock-recipe", recipe = "bio-era1-seaweed-desalination-bed-recipe"},
    },
    unit = tok_unit(3),
    prerequisites = {"bio-era1-calcium-precipitation", "bio-era1-halophyte-cultivation"},
    order = "a-h",
  },

  ---------------------------------------------------------------------------
  -- TECH 9: Coastal Ecology Hypothesis (5 TOK) — ERA 2 TRANSITION
  ---------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-coastal-ecology-hypothesis",
    icons = tech_icon("__base__/graphics/icons/tree-09.png", {r = 0.2, g = 0.9, b = 0.5}),
    effects = {},  -- Era 2 content adds its unlocks here
    unit = tok_unit(5),
    prerequisites = {
      "bio-era1-tidal-energy",
      "bio-era1-seaweed-desalination",
    },
    order = "a-z",
  },
})
