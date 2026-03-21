-- Biogenesis Era 1: World Plants
-- Forageable plants placed on the map via autoplace.
-- Player mines them to collect raw materials (the core Era 1 gameplay loop).

local gfx_path = "__biogenesis__/graphics/entities/"

-- Helper: simple sprite for world entity
local function plant_sprite(filename, w, h)
  return {
    filename = gfx_path .. filename,
    priority = "extra-high",
    width = w,
    height = h,
    frame_count = 1,
    scale = 1,
    shift = {0, 0},
  }
end

-- Helper: define a forageable world plant
-- Places a simple-entity that the player mines to get items.
local function forageable(def)
  return {
    type = "simple-entity",
    name = "bio-world-" .. def.name,
    icons = def.icons,
    flags = {"placeable-neutral", "placeable-off-grid"},
    minable = {
      mining_time = def.mining_time or 0.5,
      results = def.results,
    },
    max_health = def.health or 20,
    render_layer = "object",
    collision_box = def.collision_box or {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = def.selection_box or {{-0.5, -0.5}, {0.5, 0.5}},
    picture = plant_sprite(def.sprite, def.sprite_w, def.sprite_h),
    autoplace = def.autoplace,
  }
end

-- Icon helper (matches items.lua pattern)
local function tinted_icon(base_icon, tint)
  return {{icon = base_icon, icon_size = 64, tint = tint}}
end

local V = "__base__/graphics/icons/"
local IC = "__biogenesis__/graphics/icons/era1/"

local GREEN      = {r = 0.4, g = 0.8, b = 0.3, a = 1}
local DARK_GREEN = {r = 0.2, g = 0.6, b = 0.2, a = 1}
local BROWN      = {r = 0.6, g = 0.4, b = 0.2, a = 1}
local GREY       = {r = 0.6, g = 0.6, b = 0.6, a = 1}
local RED        = {r = 0.8, g = 0.2, b = 0.2, a = 1}

-------------------------------------------------------------------------------
-- AUTOPLACE CONTROLS
-- These appear as map generation settings so the player can tune frequency.
-------------------------------------------------------------------------------
data:extend({
  {type = "autoplace-control", name = "bio-world-grassland-plants", category = "resource", order = "z-a",
   richness = true},
  {type = "autoplace-control", name = "bio-world-forest-plants", category = "resource", order = "z-b",
   richness = true},
  {type = "autoplace-control", name = "bio-world-wetland-plants", category = "resource", order = "z-c",
   richness = true},
  {type = "autoplace-control", name = "bio-world-rocky-plants", category = "resource", order = "z-d",
   richness = true},
})

-------------------------------------------------------------------------------
-- AUTOPLACE SPECS
-- Grassland: default terrain, moderate moisture
-- Forest: high tree density areas (use aux as proxy)
-- Wetland: high moisture
-- Rocky: low moisture, low aux (barren terrain)
-------------------------------------------------------------------------------

-- Grassland autoplace: common on default terrain
local function grassland_autoplace(frequency)
  return {
    control = "bio-world-grassland-plants",
    default_enabled = true,
    influence = 0.3 * (frequency or 1),
    order = "z-a",
    probability_expression = "clamp(0.5 + moisture * 0.3 - aux * 0.4, 0, 1) * " .. (frequency or 1),
    richness_expression = "random_penalty{x = x, y = y, source = 1, amplitude = 0.5}",
  }
end

-- Forest autoplace: where trees grow (high aux)
local function forest_autoplace(frequency)
  return {
    control = "bio-world-forest-plants",
    default_enabled = true,
    influence = 0.2 * (frequency or 1),
    order = "z-b",
    probability_expression = "clamp(aux * 0.8 + moisture * 0.2 - 0.3, 0, 1) * " .. (frequency or 1),
    richness_expression = "random_penalty{x = x, y = y, source = 1, amplitude = 0.5}",
  }
end

-- Wetland autoplace: high moisture areas
local function wetland_autoplace(frequency)
  return {
    control = "bio-world-wetland-plants",
    default_enabled = true,
    influence = 0.2 * (frequency or 1),
    order = "z-c",
    probability_expression = "clamp(moisture * 1.2 - 0.4, 0, 1) * " .. (frequency or 1),
    richness_expression = "random_penalty{x = x, y = y, source = 1, amplitude = 0.5}",
  }
end

-- Rocky autoplace: dry barren terrain
local function rocky_autoplace(frequency)
  return {
    control = "bio-world-rocky-plants",
    default_enabled = true,
    influence = 0.15 * (frequency or 1),
    order = "z-d",
    probability_expression = "clamp(0.6 - moisture * 0.8 - aux * 0.3, 0, 1) * " .. (frequency or 1),
    richness_expression = "random_penalty{x = x, y = y, source = 1, amplitude = 0.5}",
  }
end

-------------------------------------------------------------------------------
-- GRASSLAND PLANTS
-------------------------------------------------------------------------------
data:extend({
  forageable({
    name = "wild-grass",
    icons = tinted_icon(V .. "tree-05.png", GREEN),
    sprite = "wild-grass.png", sprite_w = 32, sprite_h = 48,
    mining_time = 0.3,
    results = {{type = "item", name = "bio-era1-wild-grass", amount = 2}},
    autoplace = grassland_autoplace(1.2),
  }),
  forageable({
    name = "wild-grain",
    icons = tinted_icon(V .. "coal.png", {r = 0.8, g = 0.7, b = 0.2, a = 1}),
    sprite = "wild-grain.png", sprite_w = 32, sprite_h = 48,
    mining_time = 0.5,
    results = {{type = "item", name = "bio-era1-wild-grain-head", amount = 2}},
    autoplace = grassland_autoplace(0.8),
  }),
  forageable({
    name = "clover-patch",
    icons = tinted_icon(V .. "tree-05.png", {r = 0.2, g = 0.9, b = 0.3, a = 1}),
    sprite = "clover.png", sprite_w = 24, sprite_h = 24,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    mining_time = 0.3,
    results = {{type = "item", name = "bio-era1-clover-patch", amount = 1}},
    autoplace = grassland_autoplace(0.6),
  }),
})

-------------------------------------------------------------------------------
-- FOREST PLANTS
-------------------------------------------------------------------------------
data:extend({
  forageable({
    name = "forest-nut-tree",
    icons = tinted_icon(V .. "coal.png", BROWN),
    sprite = "forest-nut.png", sprite_w = 24, sprite_h = 32,
    mining_time = 1,
    health = 40,
    results = {{type = "item", name = "bio-era1-forest-nut-cluster", amount = 3}},
    autoplace = forest_autoplace(0.6),
  }),
  forageable({
    name = "bracket-fungus-log",
    icons = tinted_icon(V .. "sulfur.png", BROWN),
    sprite = "bracket-fungus.png", sprite_w = 32, sprite_h = 24,
    mining_time = 0.5,
    results = {{type = "item", name = "bio-era1-bracket-fungus", amount = 2}},
    autoplace = forest_autoplace(0.5),
  }),
  forageable({
    name = "fallen-fruit",
    icons = tinted_icon(V .. "iron-ore.png", RED),
    sprite = "fallen-fruit.png", sprite_w = 24, sprite_h = 24,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    mining_time = 0.3,
    results = {{type = "item", name = "bio-era1-fallen-fruit", amount = 1}},
    autoplace = forest_autoplace(0.4),
  }),
})

-------------------------------------------------------------------------------
-- WETLAND PLANTS
-------------------------------------------------------------------------------
data:extend({
  forageable({
    name = "cattail-stand",
    icons = tinted_icon(V .. "tree-02.png", DARK_GREEN),
    sprite = "cattail.png", sprite_w = 16, sprite_h = 64,
    collision_box = {{-0.15, -0.4}, {0.15, 0.4}},
    selection_box = {{-0.3, -0.5}, {0.3, 0.5}},
    mining_time = 0.5,
    results = {{type = "item", name = "bio-era1-cattail", amount = 2}},
    autoplace = wetland_autoplace(0.8),
  }),
  forageable({
    name = "bog-root",
    icons = tinted_icon(V .. "iron-ore.png", BROWN),
    sprite = "bog-root.png", sprite_w = 24, sprite_h = 24,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    mining_time = 0.8,
    results = {{type = "item", name = "bio-era1-bog-root", amount = 1}},
    autoplace = wetland_autoplace(0.6),
  }),
  forageable({
    name = "peat-moss-patch",
    icons = tinted_icon(V .. "stone.png", BROWN),
    sprite = "peat-moss.png", sprite_w = 32, sprite_h = 16,
    collision_box = {{-0.3, -0.15}, {0.3, 0.15}},
    selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
    mining_time = 0.5,
    results = {{type = "item", name = "bio-era1-peat-moss", amount = 2}},
    autoplace = wetland_autoplace(0.7),
  }),
})

-------------------------------------------------------------------------------
-- ROCKY PLANTS
-------------------------------------------------------------------------------
data:extend({
  forageable({
    name = "lichen-patch",
    icons = tinted_icon(V .. "copper-ore.png", GREY),
    sprite = "lichen.png", sprite_w = 24, sprite_h = 16,
    collision_box = {{-0.2, -0.1}, {0.2, 0.1}},
    selection_box = {{-0.4, -0.3}, {0.4, 0.3}},
    mining_time = 1,
    health = 10,
    results = {{type = "item", name = "bio-era1-lichen-scraping", amount = 1}},
    autoplace = rocky_autoplace(0.5),
  }),
  forageable({
    name = "rock-cress",
    icons = tinted_icon(V .. "tree-01.png", GREEN),
    sprite = "rock-cress.png", sprite_w = 24, sprite_h = 32,
    collision_box = {{-0.2, -0.3}, {0.2, 0.3}},
    selection_box = {{-0.4, -0.5}, {0.4, 0.5}},
    mining_time = 0.5,
    health = 10,
    results = {{type = "item", name = "bio-era1-rock-cress", amount = 1}},
    autoplace = rocky_autoplace(0.4),
  }),
})
