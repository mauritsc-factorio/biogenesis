-- Biogenesis Era 1: Items (Seablock Redesign)
-- 53 items: raw materials, saltwater chain, intermediates, tools, food,
-- composting, seeds, machine items, logistics, land expansion, bio web, science.

-- Icon helpers
local function tinted_icon(base_icon, tint, size)
  size = size or 64
  return {{icon = base_icon, icon_size = size, tint = tint}}
end

local function custom_icon(path)
  return {{icon = path, icon_size = 64}}
end

-- Paths
local IC = "__biogenesis__/graphics/icons/era1/"
local V  = "__base__/graphics/icons/"

-- Colour palette
local GREEN       = {r = 0.4, g = 0.8, b = 0.3, a = 1}
local DARK_GREEN  = {r = 0.2, g = 0.6, b = 0.2, a = 1}
local BROWN       = {r = 0.6, g = 0.4, b = 0.2, a = 1}
local LIGHT_BROWN = {r = 0.7, g = 0.55, b = 0.35, a = 1}
local ORANGE      = {r = 0.9, g = 0.6, b = 0.2, a = 1}
local GREY        = {r = 0.6, g = 0.6, b = 0.6, a = 1}
local TEAL        = {r = 0.3, g = 0.7, b = 0.7, a = 1}
local BLUE        = {r = 0.3, g = 0.5, b = 0.8, a = 1}
local WHITE       = {r = 0.9, g = 0.9, b = 0.9, a = 1}
local SALT_WHITE  = {r = 0.95, g = 0.95, b = 0.9, a = 1}
local SEA_GREEN   = {r = 0.2, g = 0.7, b = 0.5, a = 1}
local DARK_TEAL   = {r = 0.1, g = 0.5, b = 0.4, a = 1}
local ASH_GREY    = {r = 0.5, g = 0.5, b = 0.45, a = 1}
local PALE_GREEN  = {r = 0.6, g = 0.9, b = 0.5, a = 1}

-------------------------------------------------------------------------------
-- SEEDS (4 items)
-- place_result points to SEEDLING entities (control.lua handles growth timer)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-saltmarsh-grass-seed",
    icons = custom_icon(IC .. "seed-generic.png"),
    subgroup = "bio-era1-seeds",
    order = "a[saltmarsh-grass-seed]",
    stack_size = 200,
    place_result = "bio-era1-saltmarsh-grass-seedling",
  },
  {
    type = "item",
    name = "bio-era1-glasswort-seed",
    icons = custom_icon(IC .. "seed-1.png"),
    subgroup = "bio-era1-seeds",
    order = "b[glasswort-seed]",
    stack_size = 200,
    place_result = "bio-era1-glasswort-seedling",
  },
  {
    type = "item",
    name = "bio-era1-kelp-spore-culture",
    icons = custom_icon(IC .. "seed-2.png"),
    subgroup = "bio-era1-seeds",
    order = "c[kelp-spore-culture]",
    stack_size = 200,
    place_result = "bio-era1-kelp-seedling",
  },
  {
    type = "item",
    name = "bio-era1-sea-grain-seed",
    icons = custom_icon(IC .. "seed-3.png"),
    subgroup = "bio-era1-seeds",
    order = "d[sea-grain-seed]",
    stack_size = 200,
    place_result = "bio-era1-sea-grain-seedling",
  },
})

-------------------------------------------------------------------------------
-- RAW HARVESTED MATERIALS (6 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-saltmarsh-grass",
    icons = custom_icon(IC .. "straw.png"),
    subgroup = "bio-era1-raw",
    order = "a[saltmarsh-grass]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-glasswort",
    icons = tinted_icon(V .. "tree-05.png", SEA_GREEN),
    subgroup = "bio-era1-raw",
    order = "b[glasswort]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-kelp",
    icons = tinted_icon(V .. "tree-02.png", DARK_GREEN),
    subgroup = "bio-era1-raw",
    order = "c[kelp]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-kelp-frond",
    icons = tinted_icon(V .. "tree-05.png", DARK_GREEN),
    subgroup = "bio-era1-raw",
    order = "d[kelp-frond]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-kelp-stalk",
    icons = tinted_icon(V .. "wood.png", DARK_TEAL),
    subgroup = "bio-era1-raw",
    order = "e[kelp-stalk]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-sea-grain",
    icons = custom_icon(IC .. "wheat-grains.png"),
    subgroup = "bio-era1-raw",
    order = "f[sea-grain]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- SALTWATER CHAIN (5 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-saltwater",
    icons = tinted_icon(V .. "fluid/water.png", TEAL),
    subgroup = "bio-era1-saltwater",
    order = "a[saltwater]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-sea-salt",
    icons = tinted_icon(V .. "stone.png", SALT_WHITE),
    subgroup = "bio-era1-saltwater",
    order = "b[sea-salt]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-brackish-water",
    icons = tinted_icon(V .. "fluid/water.png", LIGHT_BROWN),
    subgroup = "bio-era1-saltwater",
    order = "c[brackish-water]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-freshwater",
    icons = tinted_icon(V .. "fluid/water.png", BLUE),
    subgroup = "bio-era1-saltwater",
    order = "d[freshwater]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-concentrated-brine",
    icons = tinted_icon(V .. "fluid/water.png", ORANGE),
    subgroup = "bio-era1-saltwater",
    order = "e[concentrated-brine]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- PROCESSED INTERMEDIATES (11 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-plant-fiber",
    icons = tinted_icon(V .. "copper-cable.png", GREEN),
    subgroup = "bio-era1-processing",
    order = "a[plant-fiber]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-fiber-cord",
    icons = tinted_icon(V .. "green-wire.png", BROWN),
    subgroup = "bio-era1-processing",
    order = "b[fiber-cord]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-calcium-precipitate",
    icons = tinted_icon(V .. "stone.png", WHITE),
    subgroup = "bio-era1-minerals",
    order = "c[calcium-precipitate]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-calcite",
    icons = tinted_icon(V .. "stone-brick.png", WHITE),
    subgroup = "bio-era1-minerals",
    order = "d[calcite]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-dried-kelp",
    icons = tinted_icon(V .. "coal.png", DARK_GREEN),
    subgroup = "bio-era1-fuel",
    order = "e[dried-kelp]",
    stack_size = 100,
    fuel_category = "chemical",
    fuel_value = "2MJ",
  },
  {
    type = "item",
    name = "bio-era1-kelp-charcoal",
    icons = tinted_icon(V .. "coal.png", GREY),
    subgroup = "bio-era1-fuel",
    order = "f[kelp-charcoal]",
    stack_size = 100,
    fuel_category = "chemical",
    fuel_value = "4MJ",
  },
  {
    type = "item",
    name = "bio-era1-glasswort-ash",
    icons = tinted_icon(V .. "landfill.png", GREY),
    subgroup = "bio-era1-minerals",
    order = "g[glasswort-ash]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-rough-flour",
    icons = custom_icon(IC .. "flour.png"),
    subgroup = "bio-era1-food",
    order = "h[rough-flour]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-chaff",
    icons = custom_icon(IC .. "straw.png"),
    subgroup = "bio-era1-composting",
    order = "i[chaff]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-ash",
    icons = tinted_icon(V .. "landfill.png", ASH_GREY),
    subgroup = "bio-era1-composting",
    order = "j[ash]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- STONE TOOLS (4 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-crude-hammer",
    icons = tinted_icon(V .. "repair-pack.png", GREY),
    subgroup = "bio-era1-tools",
    order = "a[crude-hammer]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-knapping-blade",
    icons = tinted_icon(V .. "iron-gear-wheel.png", GREY),
    subgroup = "bio-era1-tools",
    order = "b[knapping-blade]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-digging-stick",
    icons = tinted_icon(V .. "wood.png", LIGHT_BROWN),
    subgroup = "bio-era1-tools",
    order = "c[digging-stick]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "bio-era1-pestle",
    icons = tinted_icon(V .. "iron-plate.png", GREY),
    subgroup = "bio-era1-tools",
    order = "d[pestle]",
    stack_size = 20,
  },
})

-------------------------------------------------------------------------------
-- FOOD (3 items)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-roasted-kelp",
    icons = tinted_icon(V .. "coal.png", BROWN),
    subgroup = "bio-era1-food",
    order = "a[roasted-kelp]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-flatbread",
    icons = custom_icon(IC .. "flatbread.png"),
    subgroup = "bio-era1-food",
    order = "b[flatbread]",
    stack_size = 50,
  },
  {
    type = "item",
    name = "bio-era1-grain-porridge",
    icons = custom_icon(IC .. "dough.png"),
    subgroup = "bio-era1-food",
    order = "c[grain-porridge]",
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
    icons = custom_icon(IC .. "food-waste.png"),
    subgroup = "bio-era1-composting",
    order = "t[compost]-a[green-waste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-brown-waste",
    icons = custom_icon(IC .. "food-waste.png"),
    subgroup = "bio-era1-composting",
    order = "t[compost]-b[brown-waste]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-immature-compost",
    icons = custom_icon(IC .. "compost.png"),
    subgroup = "bio-era1-composting",
    order = "t[compost]-c[immature-compost]",
    stack_size = 100,
  },
  {
    type = "item",
    name = "bio-era1-finished-compost",
    icons = custom_icon(IC .. "compost.png"),
    subgroup = "bio-era1-composting",
    order = "t[compost]-d[finished-compost]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- LAND EXPANSION (2 items — place as landfill tiles)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-woven-reed-mat",
    icons = tinted_icon(V .. "landfill.png", BROWN),
    subgroup = "bio-era1-land",
    order = "a[woven-reed-mat]",
    stack_size = 100,
    place_as_tile = {
      result = "landfill",
      condition_size = 1,
      condition = {layers = {water_tile = true}},
    },
  },
  {
    type = "item",
    name = "bio-era1-compressed-biomass-block",
    icons = tinted_icon(V .. "landfill.png", DARK_GREEN),
    subgroup = "bio-era1-land",
    order = "b[compressed-biomass-block]",
    stack_size = 100,
    place_as_tile = {
      result = "landfill",
      condition_size = 1,
      condition = {layers = {water_tile = true}},
    },
  },
})

-------------------------------------------------------------------------------
-- MACHINE PLACEMENT ITEMS (11)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-saltwater-basin",
    icons = tinted_icon(V .. "wooden-chest.png", TEAL),
    subgroup = "bio-era1-machines",
    order = "a[saltwater-basin]",
    stack_size = 20,
    place_result = "bio-era1-saltwater-basin",
  },
  {
    type = "item",
    name = "bio-era1-solar-evaporation-tray",
    icons = tinted_icon(V .. "stone-brick.png", SALT_WHITE),
    subgroup = "bio-era1-machines",
    order = "b[solar-evaporation-tray]",
    stack_size = 20,
    place_result = "bio-era1-solar-evaporation-tray",
  },
  {
    type = "item",
    name = "bio-era1-drying-rack-frame",
    icons = tinted_icon(V .. "wood.png", LIGHT_BROWN),
    subgroup = "bio-era1-machines",
    order = "c[drying-rack]",
    stack_size = 20,
    place_result = "bio-era1-drying-rack",
  },
  {
    type = "item",
    name = "bio-era1-stone-fire-pit",
    icons = tinted_icon(V .. "stone-brick.png", ORANGE),
    subgroup = "bio-era1-machines",
    order = "d[stone-fire-pit]",
    stack_size = 20,
    place_result = "bio-era1-stone-fire-pit",
  },
  {
    type = "item",
    name = "bio-era1-biomass-compressor",
    icons = tinted_icon(V .. "stone-furnace.png", DARK_GREEN),
    subgroup = "bio-era1-machines",
    order = "e[biomass-compressor]",
    stack_size = 20,
    place_result = "bio-era1-biomass-compressor",
  },
  {
    type = "item",
    name = "bio-era1-calcium-precipitation-vat",
    icons = tinted_icon(V .. "wooden-chest.png", WHITE),
    subgroup = "bio-era1-machines",
    order = "f[calcium-precipitation-vat]",
    stack_size = 20,
    place_result = "bio-era1-calcium-precipitation-vat",
  },
  {
    type = "item",
    name = "bio-era1-grinding-slab",
    icons = tinted_icon(V .. "stone-brick.png", GREY),
    subgroup = "bio-era1-machines",
    order = "g[grinding-slab]",
    stack_size = 20,
    place_result = "bio-era1-grinding-slab",
  },
  {
    type = "item",
    name = "bio-era1-seaweed-desalination-bed",
    icons = tinted_icon(V .. "wooden-chest.png", BLUE),
    subgroup = "bio-era1-machines",
    order = "h[seaweed-desalination-bed]",
    stack_size = 20,
    place_result = "bio-era1-seaweed-desalination-bed",
  },
  {
    type = "item",
    name = "bio-era1-compost-heap",
    icons = custom_icon(IC .. "compost.png"),
    subgroup = "bio-era1-machines",
    order = "i[compost-heap]",
    stack_size = 20,
    place_result = "bio-era1-compost-heap",
  },
  {
    type = "item",
    name = "bio-era1-tidal-power-generator",
    icons = tinted_icon(V .. "iron-gear-wheel.png", BLUE),
    subgroup = "bio-era1-machines",
    order = "j[tidal-power-generator]",
    stack_size = 20,
    place_result = "bio-era1-tidal-power-generator",
  },
  {
    type = "item",
    name = "bio-era1-field-notebook-station",
    icons = tinted_icon(V .. "lab.png", TEAL),
    subgroup = "bio-era1-machines",
    order = "k[field-notebook-station]",
    stack_size = 20,
    place_result = "bio-era1-field-notebook-station",
  },
  {
    type = "item",
    name = "bio-era1-crop-plot",
    icons = tinted_icon(V .. "tree-09.png", GREEN),
    subgroup = "bio-era1-machines",
    order = "l[crop-plot]",
    stack_size = 20,
    place_result = "bio-era1-crop-plot",
  },
})

-------------------------------------------------------------------------------
-- LOGISTICS (2 items — belt + inserter)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-kelp-stalk-belt",
    icons = tinted_icon(V .. "transport-belt.png", DARK_TEAL),
    subgroup = "bio-era1-logistics",
    order = "a[kelp-stalk-belt]",
    stack_size = 100,
    place_result = "bio-era1-kelp-stalk-belt",
  },
  {
    type = "item",
    name = "bio-era1-kelp-stalk-inserter",
    icons = tinted_icon(V .. "inserter.png", DARK_TEAL),
    subgroup = "bio-era1-logistics",
    order = "b[kelp-stalk-inserter]",
    stack_size = 50,
    place_result = "bio-era1-kelp-stalk-inserter",
  },
  {
    type = "item",
    name = "bio-era1-kelp-stalk-pole",
    icons = tinted_icon(V .. "small-electric-pole.png", DARK_TEAL),
    subgroup = "bio-era1-logistics",
    order = "c[kelp-stalk-pole]",
    stack_size = 50,
    place_result = "bio-era1-kelp-stalk-pole",
  },
})

-------------------------------------------------------------------------------
-- BIO WEB BONUS (1 item)
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item",
    name = "bio-era1-drift-spore",
    icons = custom_icon(IC .. "seedling.png"),
    subgroup = "bio-era1-raw",
    order = "z[drift-spore]",
    stack_size = 100,
  },
})

-------------------------------------------------------------------------------
-- SCIENCE: Tidal Observation Kit
-------------------------------------------------------------------------------
data:extend({
  {
    type = "tool",
    name = "bio-era1-tidal-observation-kit",
    icons = custom_icon(IC .. "science-green.png"),
    subgroup = "bio-era1-science",
    order = "a[tidal-observation-kit]",
    stack_size = 200,
    durability = 1,
  },
})
