-- Biogenesis Era 1: Technologies
-- 9 technologies using the Field Notebook system.
--
-- Techs 1-5 are free (gated by prerequisites and time, representing action-based
-- "notebook entries" from the design doc). The player cannot produce OAK until
-- after tech 5 unlocks composting, so these must be free to avoid a bootstrap loop.
--
-- Techs 6-9 consume Observational Analysis Kits (OAK). By the time the player
-- reaches tech 6, they have access to all four ingredient chains (grain, fungus,
-- fiber, composting) needed to craft OAK.

-- Helper for tinted tech icons
local function tech_icon(base_icon, tint)
  return {
    {
      icon = base_icon,
      icon_size = 64,
      tint = tint,
    },
  }
end

local GREEN  = {r = 0.4, g = 0.8, b = 0.3, a = 1}
local BROWN  = {r = 0.6, g = 0.4, b = 0.2, a = 1}
local ORANGE = {r = 0.9, g = 0.6, b = 0.2, a = 1}
local TEAL   = {r = 0.3, g = 0.7, b = 0.7, a = 1}
local BLUE   = {r = 0.3, g = 0.5, b = 0.8, a = 1}
local YELLOW = {r = 0.9, g = 0.8, b = 0.2, a = 1}
local PURPLE = {r = 0.6, g = 0.3, b = 0.8, a = 1}

-- Free research unit: no science pack ingredients, just time.
-- Represents action-based "Field Notebook entries" from the design doc.
local function free_unit(time_seconds)
  return {
    count = 1,
    ingredients = {},
    time = time_seconds,
  }
end

-- OAK-based research unit
local function oak_unit(count, time_seconds)
  return {
    count = count,
    ingredients = {
      {"bio-era1-observational-analysis-kit", 1},
    },
    time = time_seconds,
  }
end

data:extend({
  -------------------------------------------------------------------------------
  -- 1. Forager's Eye (free, auto-granted via control.lua)
  -- Highlights wild plants. Granted automatically on game start.
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-foragers-eye",
    icons = tech_icon("__base__/graphics/icons/tree-09.png", GREEN),
    effects = {},
    hidden = true,
    unit = free_unit(1),
    order = "a-a",
  },

  -------------------------------------------------------------------------------
  -- 2. Material Properties (free — action-gated in design: "Process 10 items")
  -- Unlocks: Knapping Blade, Bark Scraper, Digging Stick, Bark Strip recipe,
  --          Scrape Fungus recipe
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-material-properties",
    icons = tech_icon("__base__/graphics/icons/stone.png", BROWN),
    effects = {},
    hidden = true,
    unit = free_unit(10),
    order = "a-b",
  },

  -------------------------------------------------------------------------------
  -- 3. Fiber Arts (free — action-gated: "Craft 20 Plant Fiber")
  -- Unlocks: Fiber Cord, Leaching Basket, Drying Rack, Pestle,
  --          Leach Nuts recipe, Dry Fungus recipe
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-fiber-arts",
    icons = tech_icon("__base__/graphics/icons/copper-cable.png", BROWN),
    effects = {},
    hidden = true,
    unit = free_unit(15),
    order = "a-c",
  },

  -------------------------------------------------------------------------------
  -- 4. Thermal Processing (free — action-gated: "Collect 5 Peat Brick")
  -- Unlocks: Stone-Lined Fire Pit, all cooked food recipes
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-thermal-processing",
    icons = tech_icon("__base__/graphics/icons/stone-furnace.png", ORANGE),
    effects = {},
    hidden = true,
    unit = free_unit(10),
    order = "a-d",
  },

  -------------------------------------------------------------------------------
  -- 5. Decomposition Basics (free — action-gated: "Observe a Fallen Fruit ferment")
  -- This tech unlocks the composting chain AND the OAK recipe.
  -- It must be free because OAK requires Finished Compost, which this tech unlocks.
  -- Techs 6+ can then consume OAK.
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-decomposition-basics",
    icons = tech_icon("__base__/graphics/icons/landfill.png", {r = 0.4, g = 0.5, b = 0.2, a = 1}),
    effects = {},
    hidden = true,
    unit = free_unit(20),
    order = "a-e",
  },

  -------------------------------------------------------------------------------
  -- 6. Hydraulic Observation (2 OAK)
  -- Unlocks: Water Wheel + automated Grinding Slab
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-hydraulic-observation",
    icons = tech_icon("__base__/graphics/icons/iron-gear-wheel.png", BLUE),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-water-wheel-recipe"},
    },
    unit = oak_unit(2, 15),
    order = "a-f",
  },

  -------------------------------------------------------------------------------
  -- 7. Seeds of Potential (3 OAK)
  -- Unlocks: Seed identification (all seed extraction recipes)
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-seeds-of-potential",
    icons = tech_icon("__base__/graphics/icons/pistol.png", YELLOW),
    effects = {
      {type = "unlock-recipe", recipe = "bio-era1-extract-grass-seed"},
      {type = "unlock-recipe", recipe = "bio-era1-extract-grain-seed"},
      {type = "unlock-recipe", recipe = "bio-era1-extract-cattail-seed"},
      {type = "unlock-recipe", recipe = "bio-era1-extract-bog-root-tuber"},
      {type = "unlock-recipe", recipe = "bio-era1-extract-nut-seed"},
    },
    unit = oak_unit(3, 20),
    order = "a-g",
  },

  -------------------------------------------------------------------------------
  -- 8. Variation Awareness (2 OAK)
  -- Unlocks: Quality labels on plants (visual enhancement, handled in control.lua)
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-variation-awareness",
    icons = tech_icon("__base__/graphics/icons/tree-09.png", PURPLE),
    effects = {},  -- Visual enhancements handled in control.lua
    prerequisites = {"bio-era1-seeds-of-potential"},
    unit = oak_unit(2, 15),
    order = "a-h",
  },

  -------------------------------------------------------------------------------
  -- 9. Cultivation Hypothesis (5 OAK)
  -- ERA TRANSITION RESEARCH -> unlocks Era 2
  -------------------------------------------------------------------------------
  {
    type = "technology",
    name = "bio-era1-cultivation-hypothesis",
    icons = tech_icon("__base__/graphics/icons/tree-09.png", {r = 0.2, g = 0.9, b = 0.5, a = 1}),
    effects = {},  -- Era 2 content will add its unlocks here via data-updates
    prerequisites = {
      "bio-era1-seeds-of-potential",
      "bio-era1-variation-awareness",
      "bio-era1-hydraulic-observation",
    },
    unit = oak_unit(5, 30),
    order = "a-z",
  },
})
