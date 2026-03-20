-- Biogenesis Era 1: Entities
-- 7 workstations/machines. All use placeholder.png for animations.
-- Power: "void" machines use electric energy with 1W drain (effectively free).
-- The Stone-Lined Fire Pit uses burner energy.
-- The Collection Basket is a simple container.

local placeholder = "__biogenesis__/graphics/placeholder.png"

-- Helper: minimal animation table pointing at the 1x1 transparent placeholder.
-- For larger entities we scale the same pixel so it is invisible.
local function placeholder_animation(width, height)
  width  = width  or 1
  height = height or 1
  return {
    filename = placeholder,
    priority = "high",
    width = 1,
    height = 1,
    frame_count = 1,
    scale = 32 * math.max(width, height),  -- scale up so bounding box is covered
    shift = {0, 0},
  }
end

-- Helper: icon layers with tint (matches items.lua pattern)
local function tinted_icon(base_icon, tint)
  return {
    {
      icon = base_icon,
      icon_size = 64,
      tint = tint,
    },
  }
end

-- Shared void energy source: 1W electric, no drain display
local void_energy = {
  type = "void",
  usage_priority = "secondary-input",
}

-------------------------------------------------------------------------------
-- 1. Grinding Slab — 2x1, void power, grinding category
-------------------------------------------------------------------------------
data:extend({
  {
    type = "assembling-machine",
    name = "bio-era1-grinding-slab",
    icons = tinted_icon("__base__/graphics/icons/stone-brick.png", {r = 0.6, g = 0.6, b = 0.6, a = 1}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bio-era1-grinding-slab"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
    selection_box = {{-1, -0.5}, {1, 0.5}},
    graphics_set = {
      animation = placeholder_animation(2, 1),
    },
    crafting_categories = {"grinding"},
    crafting_speed = 1,
    energy_source = void_energy,
    energy_usage = "1W",
  },
})

-------------------------------------------------------------------------------
-- 2. Drying Rack — 2x1, void power, drying category
-------------------------------------------------------------------------------
data:extend({
  {
    type = "assembling-machine",
    name = "bio-era1-drying-rack",
    icons = tinted_icon("__base__/graphics/icons/wood.png", {r = 0.7, g = 0.5, b = 0.3, a = 1}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bio-era1-drying-rack-frame"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
    selection_box = {{-1, -0.5}, {1, 0.5}},
    graphics_set = {
      animation = placeholder_animation(2, 1),
    },
    crafting_categories = {"drying"},
    crafting_speed = 1,
    energy_source = void_energy,
    energy_usage = "1W",
  },
})

-------------------------------------------------------------------------------
-- 3. Leaching Basket — 1x1, void power, leaching category
--    Water proximity requirement handled in control.lua later.
-------------------------------------------------------------------------------
data:extend({
  {
    type = "assembling-machine",
    name = "bio-era1-leaching-basket",
    icons = tinted_icon("__base__/graphics/icons/wooden-chest.png", {r = 0.6, g = 0.6, b = 0.6, a = 1}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "bio-era1-leaching-basket"},
    max_health = 80,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    graphics_set = {
      animation = placeholder_animation(1, 1),
    },
    crafting_categories = {"leaching"},
    crafting_speed = 1,
    energy_source = void_energy,
    energy_usage = "1W",
  },
})

-------------------------------------------------------------------------------
-- 4. Stone-Lined Fire Pit — 2x2, burner power (peat/wood), kiln-firing
-------------------------------------------------------------------------------
data:extend({
  {
    type = "assembling-machine",
    name = "bio-era1-stone-fire-pit",
    icons = tinted_icon("__base__/graphics/icons/stone-brick.png", {r = 0.8, g = 0.4, b = 0.2, a = 1}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bio-era1-stone-fire-pit"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    graphics_set = {
      animation = placeholder_animation(2, 2),
    },
    crafting_categories = {"kiln-firing"},
    crafting_speed = 1,
    energy_source = {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_result_inventory_size = 1,  -- Ash goes here
      emissions_per_minute = {pollution = 2},
    },
    energy_usage = "30kW",
  },
})

-------------------------------------------------------------------------------
-- 5. Compost Heap — 3x2, void power, composting category
-------------------------------------------------------------------------------
data:extend({
  {
    type = "assembling-machine",
    name = "bio-era1-compost-heap",
    icons = tinted_icon("__base__/graphics/icons/landfill.png", {r = 0.4, g = 0.5, b = 0.2, a = 1}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "bio-era1-compost-heap"},
    max_health = 120,
    corpse = "medium-remnants",
    collision_box = {{-1.35, -0.85}, {1.35, 0.85}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    graphics_set = {
      animation = placeholder_animation(3, 2),
    },
    crafting_categories = {"composting"},
    crafting_speed = 1,
    energy_source = void_energy,
    energy_usage = "1W",
  },
})

-------------------------------------------------------------------------------
-- 6. Water Wheel — 3x3, void power, water-milling + grinding categories
--    Must be placed on water (enforced via control.lua later).
-------------------------------------------------------------------------------
data:extend({
  {
    type = "assembling-machine",
    name = "bio-era1-water-wheel",
    icons = tinted_icon("__base__/graphics/icons/iron-gear-wheel.png", {r = 0.3, g = 0.5, b = 0.8, a = 1}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bio-era1-water-wheel"},
    max_health = 250,
    corpse = "medium-remnants",
    collision_box = {{-1.35, -1.35}, {1.35, 1.35}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    graphics_set = {
      animation = placeholder_animation(3, 3),
    },
    crafting_categories = {"water-milling", "grinding"},
    crafting_speed = 1,
    energy_source = void_energy,
    energy_usage = "1W",
  },
})

-------------------------------------------------------------------------------
-- 7. Collection Basket — 1x1, simple container (chest), 20 slots
-------------------------------------------------------------------------------
data:extend({
  {
    type = "container",
    name = "bio-era1-collection-basket",
    icons = tinted_icon("__base__/graphics/icons/wooden-chest.png", {r = 0.7, g = 0.6, b = 0.4, a = 1}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "bio-era1-collection-basket"},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture = {
      filename = placeholder,
      priority = "extra-high",
      width = 1,
      height = 1,
      scale = 32,
      shift = {0, 0},
    },
    inventory_size = 20,
  },
})
