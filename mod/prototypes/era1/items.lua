-- Biogenesis Era 1: Items
-- ~52 items covering raw foraged materials, stone tools, processed intermediates,
-- food, composting chain, seeds, breadcrumbs, and the Observational Analysis Kit.

-- Icon helpers
local function tinted_icon(base_icon, tint, size)
  size = size or 64
  return {{icon = base_icon, icon_size = size, tint = tint}}
end

local function custom_icon(path)
  return {{icon = path, icon_size = 64}}
end

-- Paths
local IC = "__biogenesis__/graphics/icons/era1/"  -- our custom icons
local V  = "__base__/graphics/icons/"             -- vanilla fallbacks

-- Colour palette for tinted vanilla fallbacks
local GREEN      = {r = 0.4, g = 0.8, b = 0.3, a = 1}
local DARK_GREEN = {r = 0.2, g = 0.6, b = 0.2, a = 1}
local BROWN      = {r = 0.6, g = 0.4, b = 0.2, a = 1}
local LIGHT_BROWN= {r = 0.7, g = 0.55, b = 0.35, a = 1}
local ORANGE     = {r = 0.9, g = 0.6, b = 0.2, a = 1}
local GREY       = {r = 0.6, g = 0.6, b = 0.6, a = 1}
local YELLOW     = {r = 0.9, g = 0.8, b = 0.2, a = 1}
local PURPLE     = {r = 0.6, g = 0.3, b = 0.8, a = 1}
local TEAL       = {r = 0.3, g = 0.7, b = 0.7, a = 1}
local RED        = {r = 0.8, g = 0.2, b = 0.2, a = 1}

-- ICON MAPPING: custom where available, tinted vanilla as fallback
-- Plants (custom where we have them, tinted trees for the rest)
local PLANT_ICON   = custom_icon(IC .. "wheat-plant.png")       -- tall green plant
local GRASS_ICON   = custom_icon(IC .. "straw.png")             -- grass/straw
local GRAIN_ICON   = custom_icon(IC .. "wheat-grains.png")      -- grain heads
local FLOWER_ICON  = tinted_icon(V .. "tree-05.png", GREEN)     -- clover (fallback)
local NUT_ICON     = tinted_icon(V .. "coal.png", BROWN)        -- nuts (fallback)
local FUNGUS_ICON  = tinted_icon(V .. "sulfur.png", BROWN)      -- fungus (fallback)
local FRUIT_ICON   = custom_icon(IC .. "fruit.png")             -- fallen fruit
local CATTAIL_ICON = tinted_icon(V .. "tree-02.png", DARK_GREEN)-- cattail (fallback)
local ROOT_ICON    = tinted_icon(V .. "iron-ore.png", BROWN)    -- bog root (fallback)
local PEAT_ICON    = tinted_icon(V .. "stone.png", BROWN)       -- peat moss (fallback)
local LICHEN_ICON  = tinted_icon(V .. "copper-ore.png", GREY)   -- lichen (fallback)
local CRESS_ICON   = tinted_icon(V .. "tree-01.png", GREEN)     -- rock cress (fallback)

-- Tools (tinted vanilla - no custom tool icons yet)
local TOOL_ICON    = tinted_icon(V .. "iron-plate.png", GREY)
local HAMMER_ICON  = tinted_icon(V .. "repair-pack.png", GREY)
local BLADE_ICON   = tinted_icon(V .. "iron-gear-wheel.png", GREY)
local SLAB_ICON    = tinted_icon(V .. "stone-brick.png", GREY)
local BASKET_ICON  = tinted_icon(V .. "wooden-chest.png", LIGHT_BROWN)
local STICK_ICON   = tinted_icon(V .. "wood.png", LIGHT_BROWN)

-- Intermediates (custom where available)
local FIBER_ICON   = tinted_icon(V .. "copper-cable.png", GREEN)
local CORD_ICON    = tinted_icon(V .. "green-wire.png", BROWN)
local FLOUR_ICON   = custom_icon(IC .. "flour.png")
local STARCH_ICON  = tinted_icon(V .. "plastic-bar.png", LIGHT_BROWN)
local PASTE_ICON   = tinted_icon(V .. "stone.png", GREY)
local BRICK_ICON   = custom_icon(IC .. "peat-brick.png")
local ASH_ICON     = tinted_icon(V .. "landfill.png", GREY)
local MASH_ICON    = tinted_icon(V .. "iron-ore.png", ORANGE)
local PULP_ICON    = tinted_icon(V .. "iron-ore.png", BROWN)
local MULCH_ICON   = tinted_icon(V .. "wood.png", DARK_GREEN)
local BARK_ICON    = tinted_icon(V .. "wood.png", BROWN)
local TANNIN_ICON  = tinted_icon(V .. "stone.png", RED)

-- Food (custom)
local BREAD_ICON   = custom_icon(IC .. "flatbread.png")
local CAKE_ICON    = custom_icon(IC .. "bread.png")
local PORRIDGE_ICON= custom_icon(IC .. "dough.png")
local BROTH_ICON   = custom_icon(IC .. "foraged-food-1.png")
local MIX_ICON     = custom_icon(IC .. "foraged-food-2.png")

-- Composting (custom)
local WASTE_ICON   = custom_icon(IC .. "food-waste.png")
local COMPOST_ICON = custom_icon(IC .. "compost.png")

-- Seeds (custom)
local SEED_ICON    = custom_icon(IC .. "seed-generic.png")

-- Science (custom)
local SCIENCE_ICON = custom_icon(IC .. "science-green.png")

-------------------------------------------------------------------------------
-- RAW FORAGED MATERIALS (11 wild plants)
-------------------------------------------------------------------------------
data:extend({
  -- Grassland biome
  {
    type = "item",
    name = "bio-era1-wild-grass",
    icons = GRASS_ICON,
    subgroup = "bio-era1-foraged",
    order = "a[grassland]-a[wild-grass]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-wild-grain-head",
    icons = GRAIN_ICON,
    subgroup = "bio-era1-foraged",
    order = "a[grassland]-b[wild-grain-head]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-clover-patch",
    icons = FLOWER_ICON,
    subgroup = "bio-era1-foraged",
    order = "a[grassland]-c[clover-patch]",
    stack_size = 100,
  },
  -- Forest biome
  {
    type = "item",
    name = "bio-era1-forest-nut-cluster",
    icons = NUT_ICON,
    subgroup = "bio-era1-foraged",
    order = "b[forest]-a[forest-nut-cluster]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-bracket-fungus",
    icons = FUNGUS_ICON,
    subgroup = "bio-era1-foraged",
    order = "b[forest]-b[bracket-fungus]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-fallen-fruit",
    icons = FRUIT_ICON,
    subgroup = "bio-era1-foraged",
    order = "b[forest]-c[fallen-fruit]",
    stack_size = 100,
  },
  -- Wetland biome
  {
    type = "item",
    name = "bio-era1-cattail",
    icons = CATTAIL_ICON,
    subgroup = "bio-era1-foraged",
    order = "c[wetland]-a[cattail]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-bog-root",
    icons = ROOT_ICON,
    subgroup = "bio-era1-foraged",
    order = "c[wetland]-b[bog-root]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-peat-moss",
    icons = PEAT_ICON,
    subgroup = "bio-era1-foraged",
    order = "c[wetland]-c[peat-moss]",
    stack_size = 100,
  },
  -- Rocky biome
  {
    type = "item",
    name = "bio-era1-lichen-scraping",
    icons = LICHEN_ICON,
    subgroup = "bio-era1-foraged",
    order = "d[rocky]-a[lichen-scraping]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-rock-cress",
    icons = CRESS_ICON,
    subgroup = "bio-era1-foraged",
    order = "d[rocky]-b[rock-cress]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- STONE TOOLS (8 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-crude-hammer",
    icons = HAMMER_ICON,
    subgroup = "bio-era1-tools",
    order = "a[crude-hammer]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-knapping-blade",
    icons = BLADE_ICON,
    subgroup = "bio-era1-tools",
    order = "b[knapping-blade]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-grinding-slab",
    icons = SLAB_ICON,
    subgroup = "bio-era1-tools",
    order = "c[grinding-slab]",
    stack_size = 20,
    place_result = "bio-era1-grinding-slab",
  },
  {
    type = "item",
    name = "bio-era1-leaching-basket",
    icons = BASKET_ICON,
    subgroup = "bio-era1-tools",
    order = "d[leaching-basket]",
    stack_size = 20,
    place_result = "bio-era1-leaching-basket",
  },
  {
    type = "item",
    name = "bio-era1-digging-stick",
    icons = STICK_ICON,
    subgroup = "bio-era1-tools",
    order = "e[digging-stick]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-bark-scraper",
    icons = BLADE_ICON,
    subgroup = "bio-era1-tools",
    order = "f[bark-scraper]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-drying-rack-frame",
    icons = STICK_ICON,
    subgroup = "bio-era1-tools",
    order = "g[drying-rack-frame]",
    stack_size = 20,
    place_result = "bio-era1-drying-rack",
  },
  {
    type = "item",
    name = "bio-era1-pestle",
    icons = TOOL_ICON,
    subgroup = "bio-era1-tools",
    order = "h[pestle]",
    stack_size = 20,
  },
})

-------------------------------------------------------------------------------
-- PROCESSED INTERMEDIATES (14 items + extra processing byproducts)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-plant-fiber",
    icons = FIBER_ICON,
    subgroup = "bio-era1-intermediates",
    order = "a[plant-fiber]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-fiber-cord",
    icons = CORD_ICON,
    subgroup = "bio-era1-intermediates",
    order = "b[fiber-cord]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-rough-flour",
    icons = FLOUR_ICON,
    subgroup = "bio-era1-intermediates",
    order = "c[rough-flour]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-cattail-starch",
    icons = STARCH_ICON,
    subgroup = "bio-era1-intermediates",
    order = "d[cattail-starch]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-leached-nut-meat",
    icons = NUT_ICON,
    subgroup = "bio-era1-intermediates",
    order = "e[leached-nut-meat]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-dried-fungus",
    icons = FUNGUS_ICON,
    subgroup = "bio-era1-intermediates",
    order = "f[dried-fungus]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-lichen-paste",
    icons = PASTE_ICON,
    subgroup = "bio-era1-intermediates",
    order = "g[lichen-paste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-peat-brick",
    icons = BRICK_ICON,
    subgroup = "bio-era1-intermediates",
    order = "h[peat-brick]",
    stack_size = 100,
    fuel_category = "chemical",
    fuel_value = "2MJ",
    burnt_result = "bio-era1-ash",
  },
  {
    type = "item",
    name = "bio-era1-ash",
    icons = ASH_ICON,
    subgroup = "bio-era1-intermediates",
    order = "i[ash]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-root-mash",
    icons = MASH_ICON,
    subgroup = "bio-era1-intermediates",
    order = "j[root-mash]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-fermented-fruit-pulp",
    icons = PULP_ICON,
    subgroup = "bio-era1-intermediates",
    order = "k[fermented-fruit-pulp]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-clover-mulch",
    icons = MULCH_ICON,
    subgroup = "bio-era1-intermediates",
    order = "l[clover-mulch]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-bark-strip",
    icons = BARK_ICON,
    subgroup = "bio-era1-intermediates",
    order = "m[bark-strip]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-tannin-extract",
    icons = TANNIN_ICON,
    subgroup = "bio-era1-intermediates",
    order = "n[tannin-extract]",
    stack_size = 100,
  },
  -- Extra processing byproducts referenced in recipes
  {
    type = "item",
    name = "bio-era1-chaff",
    icons = GRASS_ICON,
    subgroup = "bio-era1-intermediates",
    order = "o[chaff]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-cattail-root",
    icons = ROOT_ICON,
    subgroup = "bio-era1-intermediates",
    order = "p[cattail-root]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-cracked-nut",
    icons = NUT_ICON,
    subgroup = "bio-era1-intermediates",
    order = "q[cracked-nut]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-shell-fragment",
    icons = PEAT_ICON,
    subgroup = "bio-era1-intermediates",
    order = "r[shell-fragment]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-raw-fungus",
    icons = FUNGUS_ICON,
    subgroup = "bio-era1-intermediates",
    order = "s[raw-fungus]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- FOOD ITEMS (5)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-flatbread",
    icons = BREAD_ICON,
    subgroup = "bio-era1-food",
    order = "a[flatbread]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-nut-cake",
    icons = CAKE_ICON,
    subgroup = "bio-era1-food",
    order = "b[nut-cake]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-root-porridge",
    icons = PORRIDGE_ICON,
    subgroup = "bio-era1-food",
    order = "c[root-porridge]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-fungus-broth",
    icons = BROTH_ICON,
    subgroup = "bio-era1-food",
    order = "d[fungus-broth]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-trail-mix",
    icons = MIX_ICON,
    subgroup = "bio-era1-food",
    order = "e[trail-mix]",
    stack_size = 50,
  },
})

-------------------------------------------------------------------------------
-- COMPOSTING CHAIN (4 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-green-waste",
    icons = WASTE_ICON,
    subgroup = "bio-era1-intermediates",
    order = "t[compost]-a[green-waste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-brown-waste",
    icons = WASTE_ICON,
    subgroup = "bio-era1-intermediates",
    order = "t[compost]-b[brown-waste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-immature-compost",
    icons = COMPOST_ICON,
    subgroup = "bio-era1-intermediates",
    order = "t[compost]-c[immature-compost]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-finished-compost",
    icons = COMPOST_ICON,
    subgroup = "bio-era1-intermediates",
    order = "t[compost]-d[finished-compost]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- SEEDS (5 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-wild-grass-seed",
    icons = SEED_ICON,
    subgroup = "bio-era1-seeds",
    order = "a[wild-grass-seed]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-wild-grain-seed",
    icons = custom_icon(IC .. "seed-1.png"),
    subgroup = "bio-era1-seeds",
    order = "b[wild-grain-seed]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-cattail-seed",
    icons = custom_icon(IC .. "seed-2.png"),
    subgroup = "bio-era1-seeds",
    order = "c[cattail-seed]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-bog-root-tuber-eye",
    icons = custom_icon(IC .. "seed-3.png"),
    subgroup = "bio-era1-seeds",
    order = "d[bog-root-tuber-eye]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-forest-nut-seed",
    icons = custom_icon(IC .. "seed-4.png"),
    subgroup = "bio-era1-seeds",
    order = "e[forest-nut-seed]",
    stack_size = 200,
  },
})

-------------------------------------------------------------------------------
-- BREADCRUMB / ANOMALY ITEMS (4 rare items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-bioluminescent-fungus",
    icons = FUNGUS_ICON,
    subgroup = "bio-era1-foraged",
    order = "e[breadcrumb]-a[bioluminescent-fungus]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-ancient-seed-pod",
    icons = SEED_ICON,
    subgroup = "bio-era1-foraged",
    order = "e[breadcrumb]-b[ancient-seed-pod]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-anomalous-grass",
    icons = GRASS_ICON,
    subgroup = "bio-era1-foraged",
    order = "e[breadcrumb]-c[anomalous-grass]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-unusual-clover",
    icons = FLOWER_ICON,
    subgroup = "bio-era1-foraged",
    order = "e[breadcrumb]-d[unusual-clover]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- SCIENCE: Observational Analysis Kit (tool with durability)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "tool",
    name = "bio-era1-observational-analysis-kit",
    icons = SCIENCE_ICON,
    subgroup = "bio-era1-science",
    order = "a[observational-analysis-kit]",
    stack_size = 200,
    durability = 1,
    -- Consumed by the lab like a normal science pack
  },
})

-------------------------------------------------------------------------------
-- WATER (simple item form until fluid infrastructure exists)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-water",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    subgroup = "bio-era1-intermediates",
    order = "aa[water]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- MACHINE PLACEMENT ITEMS (entity items for workstations)
-- These are the items the player crafts; placing them creates the entity.
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-stone-fire-pit",
    icons = SLAB_ICON,
    subgroup = "bio-era1-machines",
    order = "a[stone-fire-pit]",
    stack_size = 20,
    place_result = "bio-era1-stone-fire-pit",
  },
  {
    type = "item",
    name = "bio-era1-compost-heap",
    icons = COMPOST_ICON,
    subgroup = "bio-era1-machines",
    order = "b[compost-heap]",
    stack_size = 20,
    place_result = "bio-era1-compost-heap",
  },
  {
    type = "item",
    name = "bio-era1-water-wheel",
    icons = BLADE_ICON,
    subgroup = "bio-era1-machines",
    order = "c[water-wheel]",
    stack_size = 20,
    place_result = "bio-era1-water-wheel",
  },
  {
    type = "item",
    name = "bio-era1-collection-basket",
    icons = BASKET_ICON,
    subgroup = "bio-era1-machines",
    order = "d[collection-basket]",
    stack_size = 20,
    place_result = "bio-era1-collection-basket",
  },
})
