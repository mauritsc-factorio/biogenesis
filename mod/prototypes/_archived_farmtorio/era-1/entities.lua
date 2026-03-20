-- Biogenesis: Era 1 — Subsistence machine entities
-- All use placeholder graphics — TODO: replace with custom sprites

-- 1x1 transparent sprite for entity bodies until real art exists
local placeholder = {
  filename = "__biogenesis__/graphics/placeholder.png",
  width = 1,
  height = 1,
  frame_count = 1,
}

-- ========== Farm Plot (3x3, fluid input for water, passive) ==========
data:extend({
  {
    type = "assembling-machine",
    name = "farm-plot",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "farm-plot"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"farming"},
    crafting_speed = 1,
    module_slots = 0,
    energy_source = {type = "void"},
    energy_usage = "1W",
    fluid_boxes = {
      {
        production_type = "input",
        volume = 1000,
        pipe_connections = {
          {flow_direction = "input", direction = defines.direction.north, position = {0, -1}},
        },
      },
    },
    graphics_set = {
      animation = placeholder,
    },
  },
})

-- ========== Compost Bin (2x2, no fluids, slow, passive) ==========
data:extend({
  {
    type = "assembling-machine",
    name = "compost-bin",
    icon = "__base__/graphics/icons/wooden-chest.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "compost-bin"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"composting"},
    crafting_speed = 0.5,
    module_slots = 0,
    energy_source = {type = "void"},
    energy_usage = "1W",
    graphics_set = {
      animation = placeholder,
    },
  },
})

-- ========== Stone Mill (2x2, no fluids, burner-powered) ==========
data:extend({
  {
    type = "assembling-machine",
    name = "stone-mill",
    icon = "__base__/graphics/icons/stone-furnace.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "stone-mill"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"milling"},
    crafting_speed = 1,
    module_slots = 0,
    energy_source = {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 1,
    },
    energy_usage = "50kW",
    graphics_set = {
      animation = placeholder,
    },
  },
})

-- ========== Drying Rack (2x2, no fluids, passive) ==========
data:extend({
  {
    type = "assembling-machine",
    name = "drying-rack",
    icon = "__base__/graphics/icons/wooden-chest.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "drying-rack"},
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"drying"},
    crafting_speed = 1,
    module_slots = 0,
    energy_source = {type = "void"},
    energy_usage = "1W",
    graphics_set = {
      animation = placeholder,
    },
  },
})

-- ========== Cooking Pot (3x3, fluid input for water, burner-powered) ==========
data:extend({
  {
    type = "assembling-machine",
    name = "cooking-pot",
    icon = "__base__/graphics/icons/stone-furnace.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cooking-pot"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"cooking"},
    crafting_speed = 1,
    module_slots = 0,
    energy_source = {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 1,
    },
    energy_usage = "60kW",
    fluid_boxes = {
      {
        production_type = "input",
        volume = 1000,
        pipe_connections = {
          {flow_direction = "input", direction = defines.direction.north, position = {0, -1}},
        },
      },
    },
    graphics_set = {
      animation = placeholder,
    },
  },
})

-- ========== Research Bench (2x2, no fluids, passive) ==========
data:extend({
  {
    type = "assembling-machine",
    name = "research-bench",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "research-bench"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"research"},
    crafting_speed = 1,
    module_slots = 0,
    energy_source = {type = "void"},
    energy_usage = "1W",
    graphics_set = {
      animation = placeholder,
    },
  },
})
