-- Biogenesis: Era 1 — Subsistence technologies
--
-- Everything needed to start farming is available from the start (no tech).
-- Tech tree provides meaningful upgrades with a branching structure:
--
--   Start
--     ├── Improved Seed Selection (15 packs) — halves seed tax
--     ├── Composting (20 packs) — compost loop + fertilized farming
--     │     ├── Efficient Composting (30 packs) — better ratios
--     │     └── Agricultural Foundations (50 packs) — gateway to Era 2

data:extend({
  -- ========== Improved Seed Selection ==========
  -- Halves the seed tax: 1 crop → 1 seed instead of 2 → 1
  -- First research choice alongside composting — player picks their priority
  {
    type = "technology",
    name = "biogenesis-improved-seeds",
    icon = "__base__/graphics/icons/coal.png", -- TODO: custom seed icon
    icon_size = 64,
    prerequisites = {},
    unit = {
      count = 15,
      ingredients = {
        {"botanical-science-pack", 1},
      },
      time = 15,
    },
    effects = {
      {type = "unlock-recipe", recipe = "improved-wheat-seeds"},
      {type = "unlock-recipe", recipe = "improved-potato-seeds"},
      {type = "unlock-recipe", recipe = "improved-flax-seeds"},
    },
  },

  -- ========== Composting ==========
  -- Unlocks the compost loop: waste → compost → fertilized farming
  -- Also unlocks mulch and food composting paths
  {
    type = "technology",
    name = "biogenesis-composting",
    icon = "__base__/graphics/icons/landfill.png", -- TODO: custom
    icon_size = 64,
    prerequisites = {},
    unit = {
      count = 20,
      ingredients = {
        {"botanical-science-pack", 1},
      },
      time = 15,
    },
    effects = {
      {type = "unlock-recipe", recipe = "compost-bin"},
      {type = "unlock-recipe", recipe = "compost-from-chaff"},
      {type = "unlock-recipe", recipe = "compost-from-mulch"},
      {type = "unlock-recipe", recipe = "compost-from-food"},
      {type = "unlock-recipe", recipe = "compost-from-bread"},
      {type = "unlock-recipe", recipe = "grow-wheat-fertilized"},
      {type = "unlock-recipe", recipe = "grow-potatoes-fertilized"},
      {type = "unlock-recipe", recipe = "grow-flax-fertilized"},
    },
  },

  -- ========== Efficient Composting ==========
  -- Better compost ratios: 3 chaff → 2 compost (vs base 5 → 2)
  {
    type = "technology",
    name = "biogenesis-efficient-composting",
    icon = "__base__/graphics/icons/landfill.png", -- TODO: custom
    icon_size = 64,
    prerequisites = {"biogenesis-composting"},
    unit = {
      count = 30,
      ingredients = {
        {"botanical-science-pack", 1},
      },
      time = 20,
    },
    effects = {
      {type = "unlock-recipe", recipe = "efficient-compost-from-chaff"},
      {type = "unlock-recipe", recipe = "efficient-compost-from-mulch"},
    },
  },

  -- ========== Agricultural Foundations ==========
  -- Gateway to Era 2 — represents mastering the basics of farming
  -- Prereq for all Era 2 techs (irrigation, animals, new crops)
  {
    type = "technology",
    name = "biogenesis-agricultural-foundations",
    icon = "__base__/graphics/icons/wood.png", -- TODO: custom
    icon_size = 64,
    prerequisites = {"biogenesis-composting"},
    unit = {
      count = 50,
      ingredients = {
        {"botanical-science-pack", 1},
      },
      time = 30,
    },
    effects = {
      -- Era 2 recipe unlocks will go here
    },
  },
})
