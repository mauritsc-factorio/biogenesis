-- Biogenesis Era 1: Recipes
-- All ~38 recipes from the design document.
--
-- Probability-based seed drops are approximated as separate extraction recipes
-- (e.g., "3 Wild Grain Head -> 1 Wild Grain Seed" simulates ~33% per head).
-- Actual drop-rate feel can be tuned later with scripting.

-------------------------------------------------------------------------------
-- FIBER PROCESSING CHAIN
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 1: Wild Grass -> 2 Plant Fiber (hand-craft)
  -- Keep minimal flags — defaults (all true) handle auto-craft chaining
  {
    type = "recipe",
    name = "bio-era1-process-wild-grass",
    category = "crafting",
    energy_required = 1,
    ingredients = {
      {type = "item", name = "bio-era1-wild-grass", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-plant-fiber", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "a[fiber]-a[process-wild-grass]",
  },

  -- Recipe 2: Cattail -> 1 Plant Fiber + 1 Cattail Root (hand-craft)
  -- Split into two single-output recipes so both auto-chain properly
  {
    type = "recipe",
    name = "bio-era1-process-cattail",
    category = "crafting",
    energy_required = 1.5,
    ingredients = {
      {type = "item", name = "bio-era1-cattail", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-cattail-root", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "a[fiber]-b[process-cattail]",
  },

  -- Recipe 3: 1 Wild Grass -> 1 Fiber Cord (hand-craft, direct)
  -- Bypasses plant fiber intermediate for cord specifically.
  -- Plant fiber recipe still exists for baskets/construction.
  {
    type = "recipe",
    name = "bio-era1-fiber-cord",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "bio-era1-wild-grass", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-fiber-cord", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "a[fiber]-c[fiber-cord]",
  },

  -- Recipe 4: Bark Strip from tree components (hand-craft with bark scraper)
  -- Simplified: 1 wood -> 2 Bark Strip
  {
    type = "recipe",
    name = "bio-era1-bark-strip",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "wood", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-bark-strip", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "a[fiber]-d[bark-strip]",
  },
})

-------------------------------------------------------------------------------
-- GRAIN PROCESSING CHAIN
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 5: 3 Wild Grain Head -> 2 Rough Flour + 1 Chaff (Grinding Slab)
  {
    type = "recipe",
    name = "bio-era1-grind-grain",
    category = "grinding",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-wild-grain-head", amount = 3},
    },
    results = {
      {type = "item", name = "bio-era1-rough-flour", amount = 2},
      {type = "item", name = "bio-era1-chaff", amount = 1},
    },
    main_product = "bio-era1-rough-flour",
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "b[grain]-a[grind-grain]",
  },

  -- Recipe 6: 1 Rough Flour + 1 Water -> 2 Flatbread (Stone-Lined Fire Pit)
  {
    type = "recipe",
    name = "bio-era1-bake-flatbread",
    category = "kiln-firing",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "bio-era1-rough-flour", amount = 1},
      {type = "item", name = "bio-era1-water", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-flatbread", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-food",
    order = "b[grain]-b[bake-flatbread]",
  },
})

-------------------------------------------------------------------------------
-- ROOT / STARCH PROCESSING CHAIN
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 7: 2 Cattail Root -> 2 Cattail Starch (Grinding Slab)
  -- Design includes water + tannin water output; simplified to items for now.
  {
    type = "recipe",
    name = "bio-era1-cattail-starch",
    category = "grinding",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-cattail-root", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-cattail-starch", amount = 2},
      {type = "item", name = "bio-era1-tannin-extract", amount = 1},
    },
    main_product = "bio-era1-cattail-starch",
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "c[root]-a[cattail-starch]",
  },

  -- Recipe 8: 1 Bog Root -> 1 Root Mash (hand-craft with crude hammer)
  {
    type = "recipe",
    name = "bio-era1-root-mash",
    category = "crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-bog-root", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-root-mash", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "c[root]-b[root-mash]",
  },

  -- Recipe 9: 1 Root Mash -> 2 Root Porridge (Fire Pit)
  {
    type = "recipe",
    name = "bio-era1-root-porridge",
    category = "kiln-firing",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-root-mash", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-root-porridge", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-food",
    order = "c[root]-c[root-porridge]",
  },

  -- Recipe 10: 1 Cattail Starch -> 2 Root Porridge (Fire Pit, alternate)
  {
    type = "recipe",
    name = "bio-era1-starch-porridge",
    category = "kiln-firing",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-cattail-starch", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-root-porridge", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-food",
    order = "c[root]-d[starch-porridge]",
  },
})

-------------------------------------------------------------------------------
-- NUT LEACHING CHAIN
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 11: 3 Forest Nut Cluster -> 3 Cracked Nut + 2 Shell Fragment (hand-craft)
  {
    type = "recipe",
    name = "bio-era1-crack-nuts",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-forest-nut-cluster", amount = 3},
    },
    results = {
      {type = "item", name = "bio-era1-cracked-nut", amount = 3},
      {type = "item", name = "bio-era1-shell-fragment", amount = 2},
    },
    main_product = "bio-era1-cracked-nut",
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "d[nut]-a[crack-nuts]",
  },

  -- Recipe 12: 3 Cracked Nut -> 2 Leached Nut Meat + 1 Tannin Extract (Leaching Basket, 30s)
  {
    type = "recipe",
    name = "bio-era1-leach-nuts",
    category = "leaching",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "bio-era1-cracked-nut", amount = 3},
    },
    results = {
      {type = "item", name = "bio-era1-leached-nut-meat", amount = 2},
      {type = "item", name = "bio-era1-tannin-extract", amount = 1},
    },
    main_product = "bio-era1-leached-nut-meat",
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "d[nut]-b[leach-nuts]",
  },

  -- Recipe 13: 2 Leached Nut Meat -> 1 Nut Cake (Grinding Slab)
  {
    type = "recipe",
    name = "bio-era1-nut-cake",
    category = "grinding",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-leached-nut-meat", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-nut-cake", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-food",
    order = "d[nut]-c[nut-cake]",
  },
})

-------------------------------------------------------------------------------
-- FUNGUS PROCESSING CHAIN
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 14: 1 Bracket Fungus -> 2 Raw Fungus (hand-craft with bark scraper)
  {
    type = "recipe",
    name = "bio-era1-scrape-fungus",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "bio-era1-bracket-fungus", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-raw-fungus", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "e[fungus]-a[scrape-fungus]",
  },

  -- Recipe 15: 2 Raw Fungus -> 1 Dried Fungus (Drying Rack, 60s passive)
  {
    type = "recipe",
    name = "bio-era1-dry-fungus",
    category = "drying",
    energy_required = 60,
    ingredients = {
      {type = "item", name = "bio-era1-raw-fungus", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-dried-fungus", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "e[fungus]-b[dry-fungus]",
  },

  -- Recipe 16: 1 Dried Fungus -> 2 Fungus Broth (Fire Pit)
  {
    type = "recipe",
    name = "bio-era1-fungus-broth",
    category = "kiln-firing",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-dried-fungus", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-fungus-broth", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-food",
    order = "e[fungus]-c[fungus-broth]",
  },
})

-------------------------------------------------------------------------------
-- COMPOSTING CHAIN
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 17: 5 Green Waste + 5 Brown Waste -> 1 Immature Compost (Compost Heap loading)
  {
    type = "recipe",
    name = "bio-era1-compost-load",
    category = "composting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "bio-era1-green-waste", amount = 5},
      {type = "item", name = "bio-era1-brown-waste", amount = 5},
    },
    results = {
      {type = "item", name = "bio-era1-immature-compost", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-a[compost-load]",
  },

  -- Recipe 18-19 combined: Immature Compost -> Finished Compost (Compost Heap, 120s)
  {
    type = "recipe",
    name = "bio-era1-compost-mature",
    category = "composting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "bio-era1-immature-compost", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-finished-compost", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-b[compost-mature]",
  },
})

-------------------------------------------------------------------------------
-- WASTE CLASSIFICATION RECIPES (hand-craft conversions)
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 20: Chaff -> 1 Green Waste
  {
    type = "recipe",
    name = "bio-era1-waste-chaff",
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "bio-era1-chaff", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-green-waste", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-c[waste-chaff]",
  },

  -- Recipe 21: Clover Patch -> 2 Clover Mulch (= Green Waste)
  {
    type = "recipe",
    name = "bio-era1-clover-mulch",
    category = "crafting",
    energy_required = 1,
    ingredients = {
      {type = "item", name = "bio-era1-clover-patch", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-clover-mulch", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-d[clover-mulch]",
  },

  -- Recipe: Clover Mulch -> Green Waste
  {
    type = "recipe",
    name = "bio-era1-waste-clover-mulch",
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "bio-era1-clover-mulch", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-green-waste", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-e[waste-clover-mulch]",
  },

  -- Recipe 22: Shell Fragment -> 1 Brown Waste
  {
    type = "recipe",
    name = "bio-era1-waste-shell",
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "bio-era1-shell-fragment", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-brown-waste", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-f[waste-shell]",
  },

  -- Recipe 23: Bark Strip -> 1 Brown Waste
  {
    type = "recipe",
    name = "bio-era1-waste-bark",
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "bio-era1-bark-strip", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-brown-waste", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-g[waste-bark]",
  },

  -- Recipe 25: Peat Moss -> 2 Brown Waste (alternative to peat brick)
  {
    type = "recipe",
    name = "bio-era1-waste-peat",
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "bio-era1-peat-moss", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-brown-waste", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-h[waste-peat]",
  },

  -- Wild Grass -> Green Waste (additional green waste source)
  {
    type = "recipe",
    name = "bio-era1-waste-grass",
    category = "crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "bio-era1-wild-grass", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-green-waste", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "f[compost]-i[waste-grass]",
  },
})

-------------------------------------------------------------------------------
-- FUEL & COOKING
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 26: 2 Peat Moss -> 1 Peat Brick (hand press)
  {
    type = "recipe",
    name = "bio-era1-peat-brick",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-peat-moss", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-peat-brick", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "g[fuel]-a[peat-brick]",
  },

  -- Recipe 28: Trail Mix (hand-craft, no cooking)
  {
    type = "recipe",
    name = "bio-era1-trail-mix",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-leached-nut-meat", amount = 1},
      {type = "item", name = "bio-era1-dried-fungus", amount = 1},
      {type = "item", name = "bio-era1-rough-flour", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-trail-mix", amount = 3},
    },
    enabled = true,
    subgroup = "bio-era1-food",
    order = "g[fuel]-b[trail-mix]",
  },
})

-------------------------------------------------------------------------------
-- MISC PROCESSING
-------------------------------------------------------------------------------
data:extend({
  -- Lichen Paste: Lichen Scraping -> Lichen Paste (Grinding Slab)
  {
    type = "recipe",
    name = "bio-era1-lichen-paste",
    category = "grinding",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-lichen-scraping", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-lichen-paste", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "h[misc]-a[lichen-paste]",
  },

  -- Fermented Fruit Pulp: Fallen Fruit -> Fermented Fruit Pulp (passive, hand-craft placeholder)
  {
    type = "recipe",
    name = "bio-era1-fermented-fruit",
    category = "crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "bio-era1-fallen-fruit", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-fermented-fruit-pulp", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-intermediates",
    order = "h[misc]-b[fermented-fruit]",
  },
})

-------------------------------------------------------------------------------
-- TOOL CRAFTING (Recipes 29-36, all hand-craft)
-- Use vanilla stone / wood / stick where Factorio provides them.
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 29: 2 Stone + 1 Wood -> 1 Crude Hammer
  {
    type = "recipe",
    name = "bio-era1-crude-hammer",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "stone", amount = 2},
      {type = "item", name = "wood", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-crude-hammer", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-tools",
    order = "i[tools]-a[crude-hammer]",
  },

  -- Recipe 30: 1 Stone + 1 Wood -> 1 Knapping Blade
  {
    type = "recipe",
    name = "bio-era1-knapping-blade",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "stone", amount = 1},
      {type = "item", name = "wood", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-knapping-blade", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-tools",
    order = "i[tools]-b[knapping-blade]",
  },

  -- Recipe 31: 5 Stone -> 1 Grinding Slab (placed)
  {
    type = "recipe",
    name = "bio-era1-grinding-slab-recipe",
    category = "crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "stone", amount = 5},
    },
    results = {
      {type = "item", name = "bio-era1-grinding-slab", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-machines",
    order = "i[tools]-c[grinding-slab]",
  },

  -- Recipe 32: 6 Plant Fiber + 2 Wood -> 1 Leaching Basket
  {
    type = "recipe",
    name = "bio-era1-leaching-basket-recipe",
    category = "crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "bio-era1-plant-fiber", amount = 6},
      {type = "item", name = "wood", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-leaching-basket", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-machines",
    order = "i[tools]-d[leaching-basket]",
  },

  -- Recipe 33: 1 Wood -> 1 Digging Stick
  {
    type = "recipe",
    name = "bio-era1-digging-stick",
    category = "crafting",
    energy_required = 1,
    ingredients = {
      {type = "item", name = "wood", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-digging-stick", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-tools",
    order = "i[tools]-e[digging-stick]",
  },

  -- Recipe 34: 1 Stone + 1 Wood -> 1 Bark Scraper
  {
    type = "recipe",
    name = "bio-era1-bark-scraper",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "stone", amount = 1},
      {type = "item", name = "wood", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-bark-scraper", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-tools",
    order = "i[tools]-f[bark-scraper]",
  },

  -- Recipe 35: 4 Wood + 4 Fiber Cord -> 1 Drying Rack Frame (placed)
  {
    type = "recipe",
    name = "bio-era1-drying-rack-recipe",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "wood", amount = 4},
      {type = "item", name = "bio-era1-fiber-cord", amount = 4},
    },
    results = {
      {type = "item", name = "bio-era1-drying-rack-frame", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-machines",
    order = "i[tools]-g[drying-rack]",
  },

  -- Recipe 36: 1 Stone + 1 Wood + 2 Fiber Cord -> 1 Pestle
  {
    type = "recipe",
    name = "bio-era1-pestle",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "stone", amount = 1},
      {type = "item", name = "wood", amount = 1},
      {type = "item", name = "bio-era1-fiber-cord", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-pestle", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-tools",
    order = "i[tools]-h[pestle]",
  },
})

-------------------------------------------------------------------------------
-- INFRASTRUCTURE CRAFTING (Recipes 37-38)
-------------------------------------------------------------------------------
data:extend({
  -- Recipe 37: 8 Stone + 4 Fiber Cord + 2 Peat Brick -> Stone-Lined Fire Pit
  {
    type = "recipe",
    name = "bio-era1-stone-fire-pit-recipe",
    category = "crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "stone", amount = 8},
      {type = "item", name = "bio-era1-fiber-cord", amount = 4},
      {type = "item", name = "bio-era1-peat-brick", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-stone-fire-pit", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-machines",
    order = "j[infra]-a[stone-fire-pit]",
  },

  -- Recipe 38: 6 Wood + 4 Fiber Cord + 2 Stone -> Water Wheel
  {
    type = "recipe",
    name = "bio-era1-water-wheel-recipe",
    category = "crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "wood", amount = 6},
      {type = "item", name = "bio-era1-fiber-cord", amount = 4},
      {type = "item", name = "stone", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-water-wheel", amount = 1},
    },
    enabled = false,  -- unlocked by Hydraulic Observation
    subgroup = "bio-era1-machines",
    order = "j[infra]-b[water-wheel]",
  },

  -- Compost Heap construction
  {
    type = "recipe",
    name = "bio-era1-compost-heap-recipe",
    category = "crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "wood", amount = 6},
      {type = "item", name = "bio-era1-plant-fiber", amount = 4},
      {type = "item", name = "stone", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-compost-heap", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-machines",
    order = "j[infra]-c[compost-heap]",
  },

  -- Collection Basket construction
  {
    type = "recipe",
    name = "bio-era1-collection-basket-recipe",
    category = "crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "bio-era1-plant-fiber", amount = 4},
      {type = "item", name = "wood", amount = 2},
    },
    results = {
      {type = "item", name = "bio-era1-collection-basket", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-machines",
    order = "j[infra]-d[collection-basket]",
  },

  -- Field Notebook Station construction
  {
    type = "recipe",
    name = "bio-era1-field-notebook-station-recipe",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "wood", amount = 5},
      {type = "item", name = "stone", amount = 3},
    },
    results = {
      {type = "item", name = "bio-era1-field-notebook-station", amount = 1},
    },
    enabled = true,
    subgroup = "bio-era1-machines",
    order = "j[infra]-e[field-notebook-station]",
  },
})

-------------------------------------------------------------------------------
-- SEED EXTRACTION RECIPES
-- Approximating probability-based drops as batch extraction recipes.
-- ~20% grass seed: 5 Wild Grass -> 1 Wild Grass Seed
-- ~33% grain seed: 3 Wild Grain Head -> 1 Wild Grain Seed
-- ~15% cattail seed (from cattail processing): 5 Cattail -> 1 Cattail Seed
-- ~10% bog root tuber: 10 Bog Root -> 1 Bog Root Tuber Eye
-- ~8% forest nut seed: 12 Forest Nut Cluster -> 1 Forest Nut Seed
-------------------------------------------------------------------------------
data:extend({
  {
    type = "recipe",
    name = "bio-era1-extract-grass-seed",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-wild-grass", amount = 5},
    },
    results = {
      {type = "item", name = "bio-era1-wild-grass-seed", amount = 1},
    },
    enabled = false,  -- unlocked by Seeds of Potential
    subgroup = "bio-era1-seeds",
    order = "k[seeds]-a[grass-seed]",
  },
  {
    type = "recipe",
    name = "bio-era1-extract-grain-seed",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-wild-grain-head", amount = 3},
    },
    results = {
      {type = "item", name = "bio-era1-wild-grain-seed", amount = 1},
    },
    enabled = false,  -- unlocked by Seeds of Potential
    subgroup = "bio-era1-seeds",
    order = "k[seeds]-b[grain-seed]",
  },
  {
    type = "recipe",
    name = "bio-era1-extract-cattail-seed",
    category = "crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "bio-era1-cattail", amount = 5},
    },
    results = {
      {type = "item", name = "bio-era1-cattail-seed", amount = 1},
    },
    enabled = false,  -- unlocked by Seeds of Potential
    subgroup = "bio-era1-seeds",
    order = "k[seeds]-c[cattail-seed]",
  },
  {
    type = "recipe",
    name = "bio-era1-extract-bog-root-tuber",
    category = "crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-bog-root", amount = 10},
    },
    results = {
      {type = "item", name = "bio-era1-bog-root-tuber-eye", amount = 1},
    },
    enabled = false,  -- unlocked by Seeds of Potential
    subgroup = "bio-era1-seeds",
    order = "k[seeds]-d[bog-root-tuber]",
  },
  {
    type = "recipe",
    name = "bio-era1-extract-nut-seed",
    category = "crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-forest-nut-cluster", amount = 12},
    },
    results = {
      {type = "item", name = "bio-era1-forest-nut-seed", amount = 1},
    },
    enabled = false,  -- unlocked by Seeds of Potential
    subgroup = "bio-era1-seeds",
    order = "k[seeds]-e[nut-seed]",
  },
})

-------------------------------------------------------------------------------
-- SCIENCE: Observational Analysis Kit
-- 1 Rough Flour + 1 Dried Fungus + 1 Fiber Cord + 1 Finished Compost -> 2 OAK
-------------------------------------------------------------------------------
data:extend({
  {
    type = "recipe",
    name = "bio-era1-observational-analysis-kit",
    category = "crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bio-era1-rough-flour", amount = 1},
      {type = "item", name = "bio-era1-dried-fungus", amount = 1},
      {type = "item", name = "bio-era1-fiber-cord", amount = 1},
      {type = "item", name = "bio-era1-finished-compost", amount = 1},
    },
    results = {
      {type = "item", name = "bio-era1-observational-analysis-kit", amount = 2},
    },
    enabled = true,
    subgroup = "bio-era1-science",
    order = "z[science]-a[oak]",
  },
})
