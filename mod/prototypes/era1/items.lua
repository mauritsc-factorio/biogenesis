-- Biogenesis Era 1: Items
-- ~52 items covering raw foraged materials, stone tools, processed intermediates,
-- food, composting chain, seeds, breadcrumbs, and the Observational Analysis Kit.

-- Helper: build a tinted icon layer on top of a vanilla base icon.
-- Returns an icons table suitable for any item prototype.
local function tinted_icon(base_icon, tint, size)
  size = size or 64
  return {
    {
      icon = base_icon,
      icon_size = size,
      tint = tint,
    },
  }
end

-- Colour palette (consistent across all Era 1 items)
local GREEN     = {r = 0.4, g = 0.8, b = 0.3, a = 1}   -- raw plants
local DARK_GREEN= {r = 0.2, g = 0.6, b = 0.2, a = 1}   -- wetland plants
local BROWN     = {r = 0.6, g = 0.4, b = 0.2, a = 1}   -- intermediates
local LIGHT_BROWN = {r = 0.7, g = 0.55, b = 0.35, a = 1} -- dry intermediates
local ORANGE    = {r = 0.9, g = 0.6, b = 0.2, a = 1}   -- food
local GREY      = {r = 0.6, g = 0.6, b = 0.6, a = 1}   -- tools
local YELLOW    = {r = 0.9, g = 0.8, b = 0.2, a = 1}   -- seeds
local PURPLE    = {r = 0.6, g = 0.3, b = 0.8, a = 1}   -- breadcrumbs / anomalies
local TEAL      = {r = 0.3, g = 0.7, b = 0.7, a = 1}   -- science

-- Vanilla base icons used as templates
local PLANT_ICON   = "__base__/graphics/icons/tree-09.png"
local GRASS_ICON   = "__base__/graphics/icons/wood.png"
local GRAIN_ICON   = "__base__/graphics/icons/coal.png"  -- tinted yellow for grain
local FLOWER_ICON  = "__base__/graphics/icons/tree-05.png"
local NUT_ICON     = "__base__/graphics/icons/coal.png"
local FUNGUS_ICON  = "__base__/graphics/icons/sulfur.png"
local FRUIT_ICON   = "__base__/graphics/icons/fish.png"
local CATTAIL_ICON = "__base__/graphics/icons/tree-02.png"
local ROOT_ICON    = "__base__/graphics/icons/iron-ore.png"
local PEAT_ICON    = "__base__/graphics/icons/stone.png"
local LICHEN_ICON  = "__base__/graphics/icons/copper-ore.png"
local CRESS_ICON   = "__base__/graphics/icons/tree-01.png"
local TOOL_ICON    = "__base__/graphics/icons/iron-plate.png"
local HAMMER_ICON  = "__base__/graphics/icons/repair-pack.png"
local BLADE_ICON   = "__base__/graphics/icons/iron-gear-wheel.png"
local SLAB_ICON    = "__base__/graphics/icons/stone-brick.png"
local BASKET_ICON  = "__base__/graphics/icons/wooden-chest.png"
local STICK_ICON   = "__base__/graphics/icons/wood.png"
local FIBER_ICON   = "__base__/graphics/icons/copper-cable.png"
local CORD_ICON    = "__base__/graphics/icons/green-wire.png"
local FLOUR_ICON   = "__base__/graphics/icons/explosives.png"
local STARCH_ICON  = "__base__/graphics/icons/plastic-bar.png"
local PASTE_ICON   = "__base__/graphics/icons/fluid/sulfuric-acid.png"
local BRICK_ICON   = "__base__/graphics/icons/stone-brick.png"
local ASH_ICON     = "__base__/graphics/icons/landfill.png"
local MASH_ICON    = "__base__/graphics/icons/iron-ore.png"
local PULP_ICON    = "__base__/graphics/icons/iron-ore.png"
local MULCH_ICON   = "__base__/graphics/icons/wood.png"
local BARK_ICON    = "__base__/graphics/icons/wood.png"
local TANNIN_ICON  = "__base__/graphics/icons/fluid/sulfuric-acid.png"
local BREAD_ICON   = "__base__/graphics/icons/fish.png"
local CAKE_ICON    = "__base__/graphics/icons/coal.png"
local PORRIDGE_ICON= "__base__/graphics/icons/stone.png"
local BROTH_ICON   = "__base__/graphics/icons/stone.png"
local MIX_ICON     = "__base__/graphics/icons/coal.png"
local WASTE_ICON   = "__base__/graphics/icons/wood.png"
local COMPOST_ICON = "__base__/graphics/icons/landfill.png"
local SEED_ICON    = "__base__/graphics/icons/pistol.png"
local SCIENCE_ICON = "__base__/graphics/icons/automation-science-pack.png"

-------------------------------------------------------------------------------
-- RAW FORAGED MATERIALS (11 wild plants)
-------------------------------------------------------------------------------
data:extend({
  -- Grassland biome
  {
    type = "item",
    name = "bio-era1-wild-grass",
    icons = tinted_icon(GRASS_ICON, GREEN),
    subgroup = "bio-era1-foraged",
    order = "a[grassland]-a[wild-grass]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-wild-grain-head",
    icons = tinted_icon(GRAIN_ICON, GREEN),
    subgroup = "bio-era1-foraged",
    order = "a[grassland]-b[wild-grain-head]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-clover-patch",
    icons = tinted_icon(FLOWER_ICON, GREEN),
    subgroup = "bio-era1-foraged",
    order = "a[grassland]-c[clover-patch]",
    stack_size = 100,
  },
  -- Forest biome
  {
    type = "item",
    name = "bio-era1-forest-nut-cluster",
    icons = tinted_icon(NUT_ICON, GREEN),
    subgroup = "bio-era1-foraged",
    order = "b[forest]-a[forest-nut-cluster]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-bracket-fungus",
    icons = tinted_icon(FUNGUS_ICON, GREEN),
    subgroup = "bio-era1-foraged",
    order = "b[forest]-b[bracket-fungus]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-fallen-fruit",
    icons = tinted_icon(FRUIT_ICON, GREEN),
    subgroup = "bio-era1-foraged",
    order = "b[forest]-c[fallen-fruit]",
    stack_size = 100,
  },
  -- Wetland biome
  {
    type = "item",
    name = "bio-era1-cattail",
    icons = tinted_icon(CATTAIL_ICON, DARK_GREEN),
    subgroup = "bio-era1-foraged",
    order = "c[wetland]-a[cattail]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-bog-root",
    icons = tinted_icon(ROOT_ICON, DARK_GREEN),
    subgroup = "bio-era1-foraged",
    order = "c[wetland]-b[bog-root]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-peat-moss",
    icons = tinted_icon(PEAT_ICON, DARK_GREEN),
    subgroup = "bio-era1-foraged",
    order = "c[wetland]-c[peat-moss]",
    stack_size = 100,
  },
  -- Rocky biome
  {
    type = "item",
    name = "bio-era1-lichen-scraping",
    icons = tinted_icon(LICHEN_ICON, GREEN),
    subgroup = "bio-era1-foraged",
    order = "d[rocky]-a[lichen-scraping]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-rock-cress",
    icons = tinted_icon(CRESS_ICON, GREEN),
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
    icons = tinted_icon(HAMMER_ICON, GREY),
    subgroup = "bio-era1-tools",
    order = "a[crude-hammer]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-knapping-blade",
    icons = tinted_icon(BLADE_ICON, GREY),
    subgroup = "bio-era1-tools",
    order = "b[knapping-blade]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-grinding-slab",
    icons = tinted_icon(SLAB_ICON, GREY),
    subgroup = "bio-era1-tools",
    order = "c[grinding-slab]",
    stack_size = 20,
    place_result = "bio-era1-grinding-slab",
  },
  {
    type = "item",
    name = "bio-era1-leaching-basket",
    icons = tinted_icon(BASKET_ICON, GREY),
    subgroup = "bio-era1-tools",
    order = "d[leaching-basket]",
    stack_size = 20,
    place_result = "bio-era1-leaching-basket",
  },
  {
    type = "item",
    name = "bio-era1-digging-stick",
    icons = tinted_icon(STICK_ICON, GREY),
    subgroup = "bio-era1-tools",
    order = "e[digging-stick]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-bark-scraper",
    icons = tinted_icon(BLADE_ICON, {r = 0.5, g = 0.5, b = 0.5, a = 1}),
    subgroup = "bio-era1-tools",
    order = "f[bark-scraper]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-drying-rack-frame",
    icons = tinted_icon(STICK_ICON, {r = 0.7, g = 0.5, b = 0.3, a = 1}),
    subgroup = "bio-era1-tools",
    order = "g[drying-rack-frame]",
    stack_size = 20,
    place_result = "bio-era1-drying-rack",
  },
  {
    type = "item",
    name = "bio-era1-pestle",
    icons = tinted_icon(TOOL_ICON, GREY),
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
    icons = tinted_icon(FIBER_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "a[plant-fiber]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-fiber-cord",
    icons = tinted_icon(CORD_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "b[fiber-cord]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-rough-flour",
    icons = tinted_icon(FLOUR_ICON, LIGHT_BROWN),
    subgroup = "bio-era1-intermediates",
    order = "c[rough-flour]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-cattail-starch",
    icons = tinted_icon(STARCH_ICON, LIGHT_BROWN),
    subgroup = "bio-era1-intermediates",
    order = "d[cattail-starch]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-leached-nut-meat",
    icons = tinted_icon(NUT_ICON, LIGHT_BROWN),
    subgroup = "bio-era1-intermediates",
    order = "e[leached-nut-meat]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-dried-fungus",
    icons = tinted_icon(FUNGUS_ICON, LIGHT_BROWN),
    subgroup = "bio-era1-intermediates",
    order = "f[dried-fungus]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-lichen-paste",
    icons = tinted_icon(PASTE_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "g[lichen-paste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-peat-brick",
    icons = tinted_icon(BRICK_ICON, BROWN),
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
    icons = tinted_icon(ASH_ICON, {r = 0.7, g = 0.7, b = 0.7, a = 1}),
    subgroup = "bio-era1-intermediates",
    order = "i[ash]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-root-mash",
    icons = tinted_icon(MASH_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "j[root-mash]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-fermented-fruit-pulp",
    icons = tinted_icon(PULP_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "k[fermented-fruit-pulp]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-clover-mulch",
    icons = tinted_icon(MULCH_ICON, GREEN),
    subgroup = "bio-era1-intermediates",
    order = "l[clover-mulch]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-bark-strip",
    icons = tinted_icon(BARK_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "m[bark-strip]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-tannin-extract",
    icons = tinted_icon(TANNIN_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "n[tannin-extract]",
    stack_size = 100,
  },
  -- Extra processing byproducts referenced in recipes
  {
    type = "item",
    name = "bio-era1-chaff",
    icons = tinted_icon(GRASS_ICON, LIGHT_BROWN),
    subgroup = "bio-era1-intermediates",
    order = "o[chaff]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-cattail-root",
    icons = tinted_icon(ROOT_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "p[cattail-root]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-cracked-nut",
    icons = tinted_icon(NUT_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "q[cracked-nut]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-shell-fragment",
    icons = tinted_icon(PEAT_ICON, LIGHT_BROWN),
    subgroup = "bio-era1-intermediates",
    order = "r[shell-fragment]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-raw-fungus",
    icons = tinted_icon(FUNGUS_ICON, GREEN),
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
    icons = tinted_icon(BREAD_ICON, ORANGE),
    subgroup = "bio-era1-food",
    order = "a[flatbread]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-nut-cake",
    icons = tinted_icon(CAKE_ICON, ORANGE),
    subgroup = "bio-era1-food",
    order = "b[nut-cake]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-root-porridge",
    icons = tinted_icon(PORRIDGE_ICON, ORANGE),
    subgroup = "bio-era1-food",
    order = "c[root-porridge]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-fungus-broth",
    icons = tinted_icon(BROTH_ICON, {r = 0.7, g = 0.5, b = 0.2, a = 1}),
    subgroup = "bio-era1-food",
    order = "d[fungus-broth]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-trail-mix",
    icons = tinted_icon(MIX_ICON, ORANGE),
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
    icons = tinted_icon(WASTE_ICON, GREEN),
    subgroup = "bio-era1-intermediates",
    order = "t[compost]-a[green-waste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-brown-waste",
    icons = tinted_icon(WASTE_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "t[compost]-b[brown-waste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-immature-compost",
    icons = tinted_icon(COMPOST_ICON, BROWN),
    subgroup = "bio-era1-intermediates",
    order = "t[compost]-c[immature-compost]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-finished-compost",
    icons = tinted_icon(COMPOST_ICON, {r = 0.3, g = 0.3, b = 0.2, a = 1}),
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
    icons = tinted_icon(SEED_ICON, YELLOW),
    subgroup = "bio-era1-seeds",
    order = "a[wild-grass-seed]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-wild-grain-seed",
    icons = tinted_icon(SEED_ICON, {r = 0.8, g = 0.7, b = 0.1, a = 1}),
    subgroup = "bio-era1-seeds",
    order = "b[wild-grain-seed]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-cattail-seed",
    icons = tinted_icon(SEED_ICON, {r = 0.7, g = 0.8, b = 0.3, a = 1}),
    subgroup = "bio-era1-seeds",
    order = "c[cattail-seed]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-bog-root-tuber-eye",
    icons = tinted_icon(SEED_ICON, {r = 0.6, g = 0.5, b = 0.2, a = 1}),
    subgroup = "bio-era1-seeds",
    order = "d[bog-root-tuber-eye]",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-era1-forest-nut-seed",
    icons = tinted_icon(SEED_ICON, {r = 0.5, g = 0.7, b = 0.2, a = 1}),
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
    icons = tinted_icon(FUNGUS_ICON, PURPLE),
    subgroup = "bio-era1-foraged",
    order = "e[breadcrumb]-a[bioluminescent-fungus]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-ancient-seed-pod",
    icons = tinted_icon(SEED_ICON, PURPLE),
    subgroup = "bio-era1-foraged",
    order = "e[breadcrumb]-b[ancient-seed-pod]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-anomalous-grass",
    icons = tinted_icon(GRASS_ICON, PURPLE),
    subgroup = "bio-era1-foraged",
    order = "e[breadcrumb]-c[anomalous-grass]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-unusual-clover",
    icons = tinted_icon(FLOWER_ICON, PURPLE),
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
    icons = tinted_icon(SCIENCE_ICON, TEAL),
    subgroup = "bio-era1-science",
    order = "a[observational-analysis-kit]",
    stack_size = 200,
    durability = 1,
    -- Consumed by the lab like a normal science pack
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
    icons = tinted_icon(SLAB_ICON, {r = 0.8, g = 0.4, b = 0.2, a = 1}),
    subgroup = "bio-era1-machines",
    order = "a[stone-fire-pit]",
    stack_size = 20,
    place_result = "bio-era1-stone-fire-pit",
  },
  {
    type = "item",
    name = "bio-era1-compost-heap",
    icons = tinted_icon(COMPOST_ICON, {r = 0.4, g = 0.5, b = 0.2, a = 1}),
    subgroup = "bio-era1-machines",
    order = "b[compost-heap]",
    stack_size = 20,
    place_result = "bio-era1-compost-heap",
  },
  {
    type = "item",
    name = "bio-era1-water-wheel",
    icons = tinted_icon(BLADE_ICON, {r = 0.3, g = 0.5, b = 0.8, a = 1}),
    subgroup = "bio-era1-machines",
    order = "c[water-wheel]",
    stack_size = 20,
    place_result = "bio-era1-water-wheel",
  },
  {
    type = "item",
    name = "bio-era1-collection-basket",
    icons = tinted_icon(BASKET_ICON, {r = 0.7, g = 0.6, b = 0.4, a = 1}),
    subgroup = "bio-era1-machines",
    order = "d[collection-basket]",
    stack_size = 20,
    place_result = "bio-era1-collection-basket",
  },
})
