-- Biogenesis Era 1: Entities (Seablock Redesign)
-- 11 machines + 4 crop seedlings + 4 crop mature = 19 entities.
-- Machines use ELECTRIC power (from Tidal Generator 15kW), except Fire Pit (burner).

local gfx_path = "__biogenesis__/graphics/entities/"

-- Helper: single-frame entity animation
local function entity_sprite(filename, w, h)
  return {
    filename = gfx_path .. filename,
    priority = "high",
    width = w,
    height = h,
    frame_count = 1,
    scale = 1,
    shift = {0, 0},
  }
end

local function tinted_icon(base_icon, tint)
  return {{icon = base_icon, icon_size = 64, tint = tint}}
end

-- Electric energy source (from Tidal Generator grid)
local function electric_energy(kw)
  return {
    type = "electric",
    usage_priority = "secondary-input",
    buffer_capacity = (kw * 10) .. "kJ",
  }
end

-------------------------------------------------------------------------------
-- MACHINES (11)
-------------------------------------------------------------------------------

-- 1. Saltwater Collection Basin — 1x1, 1kW, passive saltwater production
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-saltwater-basin",
  icons = tinted_icon("__base__/graphics/icons/wooden-chest.png", {r = 0.3, g = 0.7, b = 0.7}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.3, result = "bio-era1-saltwater-basin"},
  max_health = 80,
  corpse = "small-remnants",
  collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  graphics_set = { animation = entity_sprite("collection-basket.png", 32, 32) },
  crafting_categories = {"saltwater-collection"},
  crafting_speed = 1,
  energy_source = electric_energy(1),
  energy_usage = "1kW",
  fluid_boxes = {
    {
      production_type = "output",
      pipe_connections = {{ flow_direction = "output", position = {0, 1} }},
      volume = 200,
    },
  },
}})

-- 2. Solar Evaporation Tray — 1x1, 1kW
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-solar-evaporation-tray",
  icons = tinted_icon("__base__/graphics/icons/stone-brick.png", {r = 0.95, g = 0.95, b = 0.9}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.3, result = "bio-era1-solar-evaporation-tray"},
  max_health = 80,
  corpse = "small-remnants",
  collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  graphics_set = { animation = entity_sprite("grinding-slab.png", 64, 32) },
  crafting_categories = {"evaporation"},
  crafting_speed = 1,
  energy_source = electric_energy(1),
  energy_usage = "1kW",
  fluid_boxes = {
    {
      production_type = "input",
      pipe_connections = {{ flow_direction = "input", position = {0, -1} }},
      volume = 200,
    },
    {
      production_type = "output",
      pipe_connections = {{ flow_direction = "output", position = {0, 1} }},
      volume = 200,
    },
  },
}})

-- 3. Drying Rack — 2x1, 1kW
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-drying-rack",
  icons = tinted_icon("__base__/graphics/icons/wood.png", {r = 0.7, g = 0.5, b = 0.3}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "bio-era1-drying-rack-frame"},
  max_health = 100,
  corpse = "small-remnants",
  collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  graphics_set = { animation = entity_sprite("drying-rack.png", 64, 32) },
  crafting_categories = {"drying"},
  crafting_speed = 1,
  energy_source = electric_energy(1),
  energy_usage = "1kW",
}})

-- 4. Stone-Lined Fire Pit — 2x2, BURNER (chemical fuel), 30kW fuel consumption
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-stone-fire-pit",
  icons = tinted_icon("__base__/graphics/icons/stone-brick.png", {r = 0.8, g = 0.4, b = 0.2}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 1, result = "bio-era1-stone-fire-pit"},
  max_health = 200,
  corpse = "medium-remnants",
  collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
  selection_box = {{-1, -1}, {1, 1}},
  graphics_set = { animation = entity_sprite("fire-pit.png", 64, 64) },
  crafting_categories = {"kiln-firing"},
  crafting_speed = 1,
  energy_source = {
    type = "burner",
    fuel_categories = {"chemical"},
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions_per_minute = {pollution = 2},
  },
  energy_usage = "30kW",
  fluid_boxes = {
    {
      production_type = "input",
      pipe_connections = {{ flow_direction = "input", position = {0, -2} }},
      volume = 200,
    },
  },
}})

-- 5. Biomass Compressor — 2x1, 2kW
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-biomass-compressor",
  icons = tinted_icon("__base__/graphics/icons/stone-furnace.png", {r = 0.2, g = 0.6, b = 0.2}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "bio-era1-biomass-compressor"},
  max_health = 150,
  corpse = "small-remnants",
  collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  graphics_set = { animation = entity_sprite("compost-heap.png", 96, 64) },
  crafting_categories = {"biomass-compression"},
  crafting_speed = 1,
  energy_source = electric_energy(2),
  energy_usage = "2kW",
}})

-- 6. Calcium Precipitation Vat — 1x1, 2kW
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-calcium-precipitation-vat",
  icons = tinted_icon("__base__/graphics/icons/wooden-chest.png", {r = 0.9, g = 0.9, b = 0.9}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.3, result = "bio-era1-calcium-precipitation-vat"},
  max_health = 100,
  corpse = "small-remnants",
  collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  graphics_set = { animation = entity_sprite("leaching-basket.png", 32, 32) },
  crafting_categories = {"calcium-precipitation"},
  crafting_speed = 1,
  energy_source = electric_energy(2),
  energy_usage = "2kW",
  fluid_boxes = {
    {
      production_type = "input",
      pipe_connections = {{ flow_direction = "input", position = {0, -1} }},
      volume = 200,
    },
    {
      production_type = "output",
      pipe_connections = {{ flow_direction = "output", position = {0, 1} }},
      volume = 200,
    },
  },
}})

-- 7. Grinding Slab — 2x1, 1kW, 0.5 craft speed (slow)
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-grinding-slab",
  icons = tinted_icon("__base__/graphics/icons/stone-brick.png", {r = 0.6, g = 0.6, b = 0.6}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "bio-era1-grinding-slab"},
  max_health = 150,
  corpse = "small-remnants",
  collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  graphics_set = { animation = entity_sprite("grinding-slab.png", 64, 32) },
  crafting_categories = {"grinding"},
  crafting_speed = 0.5,
  energy_source = electric_energy(1),
  energy_usage = "1kW",
}})

-- 8. Seaweed Desalination Bed — 2x1, 2kW
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-seaweed-desalination-bed",
  icons = tinted_icon("__base__/graphics/icons/wooden-chest.png", {r = 0.3, g = 0.5, b = 0.8}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "bio-era1-seaweed-desalination-bed"},
  max_health = 120,
  corpse = "small-remnants",
  collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  graphics_set = { animation = entity_sprite("drying-rack.png", 64, 32) },
  crafting_categories = {"desalination"},
  crafting_speed = 1,
  energy_source = electric_energy(2),
  energy_usage = "2kW",
  fluid_boxes = {
    {
      production_type = "input",
      pipe_connections = {{ flow_direction = "input", position = {0, -1} }},
      volume = 200,
    },
    {
      production_type = "output",
      pipe_connections = {{ flow_direction = "output", position = {-1, 1} }},
      volume = 200,
    },
    {
      production_type = "output",
      pipe_connections = {{ flow_direction = "output", position = {1, 1} }},
      volume = 200,
    },
  },
}})

-- 9. Compost Heap — 2x1, 1kW
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-compost-heap",
  icons = tinted_icon("__base__/graphics/icons/landfill.png", {r = 0.4, g = 0.5, b = 0.2}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "bio-era1-compost-heap"},
  max_health = 120,
  corpse = "small-remnants",
  collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  graphics_set = { animation = entity_sprite("compost-heap.png", 96, 64) },
  crafting_categories = {"composting"},
  crafting_speed = 1,
  energy_source = electric_energy(1),
  energy_usage = "1kW",
}})

-- 10. Tidal Power Generator — 3x1, produces 15kW constant
data:extend({{
  type = "electric-energy-interface",
  name = "bio-era1-tidal-power-generator",
  icons = tinted_icon("__base__/graphics/icons/iron-gear-wheel.png", {r = 0.3, g = 0.5, b = 0.8}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 1, result = "bio-era1-tidal-power-generator"},
  max_health = 250,
  corpse = "medium-remnants",
  collision_box = {{-1.35, -0.35}, {1.35, 0.35}},
  selection_box = {{-1.5, -0.5}, {1.5, 0.5}},
  picture = entity_sprite("water-wheel.png", 96, 96),
  energy_source = {
    type = "electric",
    buffer_capacity = "150kJ",
    usage_priority = "primary-output",
  },
  energy_production = "15kW",
  energy_usage = "0kW",
}})

-- 11. Field Notebook Station — 2x2 lab, 1kW
data:extend({{
  type = "lab",
  name = "bio-era1-field-notebook-station",
  icons = tinted_icon("__base__/graphics/icons/lab.png", {r = 0.3, g = 0.7, b = 0.7}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "bio-era1-field-notebook-station"},
  max_health = 150,
  corpse = "medium-remnants",
  collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
  selection_box = {{-1, -1}, {1, 1}},
  on_animation = entity_sprite("field-notebook-station.png", 64, 64),
  off_animation = entity_sprite("field-notebook-station.png", 64, 64),
  inputs = {"bio-era1-tidal-observation-kit"},
  researching_speed = 1,
  energy_source = electric_energy(1),
  energy_usage = "1kW",
}})

-- 12. Crop Plot — 2x1, 1kW, grows crops from seeds
data:extend({{
  type = "assembling-machine",
  name = "bio-era1-crop-plot",
  icons = tinted_icon("__base__/graphics/icons/tree-09.png", {r = 0.4, g = 0.8, b = 0.3}),
  flags = {"placeable-neutral", "player-creation"},
  minable = {mining_time = 0.5, result = "bio-era1-crop-plot"},
  max_health = 100,
  corpse = "small-remnants",
  collision_box = {{-0.9, -0.35}, {0.9, 0.35}},
  selection_box = {{-1, -0.5}, {1, 0.5}},
  graphics_set = { animation = entity_sprite("wild-grass.png", 32, 48) },
  crafting_categories = {"crop-growing"},
  crafting_speed = 1,
  energy_source = electric_energy(1),
  energy_usage = "1kW",
}})

-------------------------------------------------------------------------------
-- CROP PLANTS: SEEDLING ENTITIES (4)
-- Placed by seed items. NOT minable for harvest — mining returns the seed.
-- control.lua swaps these to mature entities after 60s growth timer.
-------------------------------------------------------------------------------
local seedling_health = 10

data:extend({
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-saltmarsh-grass-seedling",
    icons = tinted_icon("__base__/graphics/icons/tree-05.png", {r = 0.6, g = 0.9, b = 0.5}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      results = {
        {type = "item", name = "bio-era1-saltmarsh-grass-seed", amount = 1},
      },
    },
    max_health = seedling_health,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture = {
      filename = gfx_path .. "wild-grass.png",
      priority = "extra-high",
      width = 32, height = 48,
      shift = {0, -0.25},
      scale = 0.5,
    },
    render_layer = "object",
  },
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-glasswort-seedling",
    icons = tinted_icon("__base__/graphics/icons/tree-05.png", {r = 0.4, g = 0.8, b = 0.6}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      results = {
        {type = "item", name = "bio-era1-glasswort-seed", amount = 1},
      },
    },
    max_health = seedling_health,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    picture = {
      filename = gfx_path .. "clover.png",
      priority = "extra-high",
      width = 24, height = 24,
      scale = 0.5,
    },
    render_layer = "object",
  },
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-kelp-seedling",
    icons = tinted_icon("__base__/graphics/icons/tree-02.png", {r = 0.4, g = 0.7, b = 0.4}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      results = {
        {type = "item", name = "bio-era1-kelp-spore-culture", amount = 1},
      },
    },
    max_health = seedling_health,
    collision_box = {{-0.15, -0.4}, {0.15, 0.4}},
    selection_box = {{-0.3, -0.5}, {0.3, 0.5}},
    picture = {
      filename = gfx_path .. "cattail.png",
      priority = "extra-high",
      width = 16, height = 64,
      shift = {0, -0.5},
      scale = 0.5,
    },
    render_layer = "object",
  },
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-sea-grain-seedling",
    icons = tinted_icon("__base__/graphics/icons/coal.png", {r = 0.9, g = 0.8, b = 0.4}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      results = {
        {type = "item", name = "bio-era1-sea-grain-seed", amount = 1},
      },
    },
    max_health = seedling_health,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture = {
      filename = gfx_path .. "wild-grain.png",
      priority = "extra-high",
      width = 32, height = 48,
      shift = {0, -0.25},
      scale = 0.5,
    },
    render_layer = "object",
  },
})

-------------------------------------------------------------------------------
-- CROP PLANTS: MATURE ENTITIES (4)
-- Appear after growth timer completes. Mining yields harvest + seed.
-------------------------------------------------------------------------------
data:extend({
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-saltmarsh-grass-mature",
    icons = tinted_icon("__base__/graphics/icons/tree-05.png", {r = 0.4, g = 0.8, b = 0.3}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      results = {
        {type = "item", name = "bio-era1-saltmarsh-grass", amount = 3},
        {type = "item", name = "bio-era1-saltmarsh-grass-seed", amount = 1},
      },
    },
    max_health = 30,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture = {
      filename = gfx_path .. "wild-grass.png",
      priority = "extra-high",
      width = 32, height = 48,
      shift = {0, -0.25},
    },
    render_layer = "object",
  },
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-glasswort-mature",
    icons = tinted_icon("__base__/graphics/icons/tree-05.png", {r = 0.2, g = 0.7, b = 0.5}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      results = {
        {type = "item", name = "bio-era1-glasswort", amount = 2},
        {type = "item", name = "bio-era1-glasswort-seed", amount = 1},
      },
    },
    max_health = 20,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    picture = {
      filename = gfx_path .. "clover.png",
      priority = "extra-high",
      width = 24, height = 24,
    },
    render_layer = "object",
  },
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-kelp-mature",
    icons = tinted_icon("__base__/graphics/icons/tree-02.png", {r = 0.2, g = 0.6, b = 0.2}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      results = {
        {type = "item", name = "bio-era1-kelp", amount = 3},
        {type = "item", name = "bio-era1-kelp-spore-culture", amount = 1},
      },
    },
    max_health = 30,
    collision_box = {{-0.15, -0.4}, {0.15, 0.4}},
    selection_box = {{-0.3, -0.5}, {0.3, 0.5}},
    picture = {
      filename = gfx_path .. "cattail.png",
      priority = "extra-high",
      width = 16, height = 64,
      shift = {0, -0.5},
    },
    render_layer = "object",
  },
  {
    type = "simple-entity-with-owner",
    name = "bio-era1-sea-grain-mature",
    icons = tinted_icon("__base__/graphics/icons/coal.png", {r = 0.8, g = 0.7, b = 0.2}),
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      results = {
        {type = "item", name = "bio-era1-sea-grain", amount = 3},
        {type = "item", name = "bio-era1-sea-grain-seed", amount = 1},
      },
    },
    max_health = 25,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    picture = {
      filename = gfx_path .. "wild-grain.png",
      priority = "extra-high",
      width = 32, height = 48,
      shift = {0, -0.25},
    },
    render_layer = "object",
  },
})
