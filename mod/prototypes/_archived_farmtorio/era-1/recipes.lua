-- Biogenesis: Era 1 — Subsistence recipes
--
-- Design: seeds are consumed when planting. A separate hand-craft recipe
-- converts raw crops back to seeds. Base ratio is 2:1 (40% seed tax),
-- improved to 1:1 (20% tax) after Improved Seed Selection tech.
-- Every crop also has a mulch path for composting, creating a competing use.

-- ========== Seed Extraction (hand craft, available from start) ==========
-- Base ratio: 2 crops → 1 seed
data:extend({
  {
    type = "recipe",
    name = "wheat-seeds",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-wheat", amount = 2},
    },
    results = {
      {type = "item", name = "wheat-seeds", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "potato-seeds",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-potatoes", amount = 2},
    },
    results = {
      {type = "item", name = "potato-seeds", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "flax-seeds",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-flax", amount = 2},
    },
    results = {
      {type = "item", name = "flax-seeds", amount = 1},
    },
    enabled = true,
  },
})

-- ========== Improved Seed Extraction (unlocked by improved-seeds tech) ==========
-- Upgraded ratio: 1 crop → 1 seed — halves the seed tax
data:extend({
  {
    type = "recipe",
    name = "improved-wheat-seeds",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-wheat", amount = 1},
    },
    results = {
      {type = "item", name = "wheat-seeds", amount = 1},
    },
    enabled = false, -- unlocked by biogenesis-improved-seeds
  },
  {
    type = "recipe",
    name = "improved-potato-seeds",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-potatoes", amount = 1},
    },
    results = {
      {type = "item", name = "potato-seeds", amount = 1},
    },
    enabled = false,
  },
  {
    type = "recipe",
    name = "improved-flax-seeds",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-flax", amount = 1},
    },
    results = {
      {type = "item", name = "flax-seeds", amount = 1},
    },
    enabled = false,
  },
})

-- ========== Crop Mulching (hand craft, available from start) ==========
-- Sacrifice raw crops for composting material — the key "science vs future yield" decision
data:extend({
  {
    type = "recipe",
    name = "mulch-from-wheat",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-wheat", amount = 2},
    },
    results = {
      {type = "item", name = "crop-mulch", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "mulch-from-potatoes",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-potatoes", amount = 2},
    },
    results = {
      {type = "item", name = "crop-mulch", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "mulch-from-flax",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "raw-flax", amount = 2},
    },
    results = {
      {type = "item", name = "crop-mulch", amount = 1},
    },
    enabled = true,
  },
})

-- ========== Farming (in farm-plot, needs water) ==========
data:extend({
  {
    type = "recipe",
    name = "grow-wheat",
    category = "farming",
    energy_required = 10,
    ingredients = {
      {type = "item",  name = "wheat-seeds", amount = 1},
      {type = "fluid", name = "water",       amount = 25},
    },
    results = {
      {type = "item", name = "raw-wheat", amount = 5},
    },
    enabled = true,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "grow-potatoes",
    category = "farming",
    energy_required = 12,
    ingredients = {
      {type = "item",  name = "potato-seeds", amount = 1},
      {type = "fluid", name = "water",        amount = 25},
    },
    results = {
      {type = "item", name = "raw-potatoes", amount = 5},
    },
    enabled = true,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "grow-flax",
    category = "farming",
    energy_required = 10,
    ingredients = {
      {type = "item",  name = "flax-seeds", amount = 1},
      {type = "fluid", name = "water",      amount = 25},
    },
    results = {
      {type = "item", name = "raw-flax", amount = 5},
    },
    enabled = true,
    allow_productivity = true,
  },
})

-- ========== Fertilized Farming (unlocked by composting tech) ==========
data:extend({
  {
    type = "recipe",
    name = "grow-wheat-fertilized",
    category = "farming",
    energy_required = 10,
    ingredients = {
      {type = "item",  name = "wheat-seeds", amount = 1},
      {type = "item",  name = "compost",     amount = 1},
      {type = "fluid", name = "water",       amount = 25},
    },
    results = {
      {type = "item", name = "raw-wheat", amount = 8},
    },
    enabled = false,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "grow-potatoes-fertilized",
    category = "farming",
    energy_required = 12,
    ingredients = {
      {type = "item",  name = "potato-seeds", amount = 1},
      {type = "item",  name = "compost",      amount = 1},
      {type = "fluid", name = "water",        amount = 25},
    },
    results = {
      {type = "item", name = "raw-potatoes", amount = 8},
    },
    enabled = false,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "grow-flax-fertilized",
    category = "farming",
    energy_required = 10,
    ingredients = {
      {type = "item",  name = "flax-seeds", amount = 1},
      {type = "item",  name = "compost",    amount = 1},
      {type = "fluid", name = "water",      amount = 25},
    },
    results = {
      {type = "item", name = "raw-flax", amount = 8},
    },
    enabled = false,
    allow_productivity = true,
  },
})

-- ========== Milling (in stone-mill, burner-powered) ==========
data:extend({
  {
    type = "recipe",
    name = "mill-wheat",
    category = "milling",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "raw-wheat", amount = 3},
    },
    results = {
      {type = "item", name = "flour", amount = 2},
      {type = "item", name = "chaff", amount = 1},
    },
    main_product = "flour",
    enabled = true,
  },
  {
    type = "recipe",
    name = "process-potatoes",
    category = "milling",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "raw-potatoes", amount = 3},
    },
    results = {
      {type = "item", name = "potato-starch", amount = 2},
    },
    enabled = true,
  },
})

-- ========== Drying (in drying-rack, passive) ==========
-- Same 3→2 ratio as milling, plus chaff byproduct for composting
data:extend({
  {
    type = "recipe",
    name = "dry-flax",
    category = "drying",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "raw-flax", amount = 3},
    },
    results = {
      {type = "item", name = "flax-fiber", amount = 2},
      {type = "item", name = "chaff", amount = 1},
    },
    main_product = "flax-fiber",
    enabled = true,
  },
})

-- ========== Composting (in compost-bin, all unlocked by tech) ==========
-- Three input paths: chaff (milling byproduct), mulch (deliberate sacrifice), food surplus
data:extend({
  {
    type = "recipe",
    name = "compost-from-chaff",
    category = "composting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "chaff", amount = 5},
    },
    results = {
      {type = "item", name = "compost", amount = 2},
    },
    enabled = false, -- unlocked by biogenesis-composting
  },
  {
    type = "recipe",
    name = "compost-from-mulch",
    category = "composting",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "crop-mulch", amount = 5},
    },
    results = {
      {type = "item", name = "compost", amount = 3},
    },
    enabled = false, -- unlocked by biogenesis-composting
  },
  {
    type = "recipe",
    name = "compost-from-food",
    category = "composting",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "boiled-potatoes", amount = 3},
    },
    results = {
      {type = "item", name = "compost", amount = 2},
    },
    enabled = false, -- unlocked by biogenesis-composting
  },
  -- Efficient versions — unlocked by biogenesis-efficient-composting
  {
    type = "recipe",
    name = "efficient-compost-from-chaff",
    category = "composting",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "chaff", amount = 3},
    },
    results = {
      {type = "item", name = "compost", amount = 2},
    },
    enabled = false, -- unlocked by biogenesis-efficient-composting
  },
  {
    type = "recipe",
    name = "efficient-compost-from-mulch",
    category = "composting",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "crop-mulch", amount = 3},
    },
    results = {
      {type = "item", name = "compost", amount = 3},
    },
    enabled = false, -- unlocked by biogenesis-efficient-composting
  },
})

-- ========== Food Composting (in compost-bin, unlocked by composting tech) ==========
data:extend({
  {
    type = "recipe",
    name = "compost-from-bread",
    category = "composting",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "bread", amount = 3},
    },
    results = {
      {type = "item", name = "compost", amount = 2},
    },
    enabled = false, -- unlocked by biogenesis-composting
  },
})

-- ========== Cooking (in cooking-pot, burner-powered) ==========
data:extend({
  {
    type = "recipe",
    name = "bake-bread",
    category = "cooking",
    energy_required = 5,
    ingredients = {
      {type = "item",  name = "flour", amount = 2},
      {type = "fluid", name = "water", amount = 5},
    },
    results = {
      {type = "item", name = "bread", amount = 3},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "boil-potatoes",
    category = "cooking",
    energy_required = 3,
    ingredients = {
      {type = "item",  name = "raw-potatoes", amount = 3},
      {type = "fluid", name = "water",        amount = 10},
    },
    results = {
      {type = "item", name = "boiled-potatoes", amount = 3},
    },
    enabled = true,
  },
})

-- ========== Botanical Science Pack (in research-bench) ==========
-- Requires products from all three crop chains:
--   wheat → flour → bread, potatoes → starch, flax → fiber
data:extend({
  {
    type = "recipe",
    name = "botanical-science-pack",
    category = "research",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "bread",         amount = 1},
      {type = "item", name = "flax-fiber",    amount = 1},
      {type = "item", name = "potato-starch", amount = 1},
    },
    results = {
      {type = "item", name = "botanical-science-pack", amount = 2},
    },
    enabled = true,
  },
})

-- ========== Machine Crafting (hand craft) ==========
data:extend({
  {
    type = "recipe",
    name = "farm-plot",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "wood",  amount = 10},
      {type = "item", name = "stone", amount = 5},
    },
    results = {
      {type = "item", name = "farm-plot", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "compost-bin",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "wood",  amount = 5},
      {type = "item", name = "stone", amount = 2},
    },
    results = {
      {type = "item", name = "compost-bin", amount = 1},
    },
    enabled = false, -- unlocked by biogenesis-composting
  },
  {
    type = "recipe",
    name = "stone-mill",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "stone", amount = 10},
      {type = "item", name = "wood",  amount = 5},
    },
    results = {
      {type = "item", name = "stone-mill", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "drying-rack",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "wood", amount = 8},
    },
    results = {
      {type = "item", name = "drying-rack", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "cooking-pot",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "stone", amount = 8},
      {type = "item", name = "wood",  amount = 2},
    },
    results = {
      {type = "item", name = "cooking-pot", amount = 1},
    },
    enabled = true,
  },
  {
    type = "recipe",
    name = "research-bench",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "wood",  amount = 5},
      {type = "item", name = "stone", amount = 3},
    },
    results = {
      {type = "item", name = "research-bench", amount = 1},
    },
    enabled = true,
  },
})
