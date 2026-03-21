-- Biogenesis: Runtime Control Script
-- Handles: map generation, starting inventory, action-gated tech triggers,
-- crop growth timers, era transition notifications.

require("starting-items")

-------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------

-- Seedling → mature entity mapping
local SEEDLING_TO_MATURE = {
  ["bio-era1-saltmarsh-grass-seedling"] = "bio-era1-saltmarsh-grass-mature",
  ["bio-era1-glasswort-seedling"]       = "bio-era1-glasswort-mature",
  ["bio-era1-kelp-seedling"]            = "bio-era1-kelp-mature",
  ["bio-era1-sea-grain-seedling"]       = "bio-era1-sea-grain-mature",
}

-- Base growth time in ticks (60 seconds × 60 ticks/sec = 3600 ticks)
local BASE_GROWTH_TICKS = 3600

-- Action-gated tech definitions: sequential triggers
-- Each requires the previous tech to be completed before its counter activates.
-- Format: { tech_name, event_type, item_or_action, count, notification }
local ACTION_TECHS = {
  {
    tech = "bio-era1-saltwater-collection",
    trigger = "harvest",   -- count plant harvests
    count = 3,
    message = "Three specimens harvested. The ocean around you holds dissolved minerals that biology can extract.",
  },
  {
    tech = "bio-era1-solar-evaporation",
    trigger = "pickup",
    item = "bio-era1-saltwater",
    count = 5,
    message = "Seawater collected. Solar heat will separate what's dissolved — salt, minerals, potential.",
  },
  {
    tech = "bio-era1-kelp-cultivation",
    trigger = "craft",
    item = "bio-era1-kelp-stalk",
    count = 3,
    message = "Kelp yields more than wood. Drying preserves it. Fire transforms it.",
  },
  {
    tech = "bio-era1-biomass-compression",
    trigger = "landfill",  -- count land tiles placed
    count = 2,
    message = "The island grows. With the right pressure, any biomass becomes ground to stand on.",
  },
  {
    tech = "bio-era1-calcium-precipitation",
    trigger = "pickup",
    item = "bio-era1-sea-salt",
    count = 5,
    message = "Salt from seawater. But seawater holds more than salt — calcium, magnesium, trace metals. Biology can extract them all.",
  },
}

-- Mature crop entity names (for harvest counting)
local MATURE_CROPS = {
  ["bio-era1-saltmarsh-grass-mature"] = true,
  ["bio-era1-glasswort-mature"] = true,
  ["bio-era1-kelp-mature"] = true,
  ["bio-era1-sea-grain-mature"] = true,
}

-------------------------------------------------------------------------------
-- INITIALIZATION
-------------------------------------------------------------------------------

local function init_storage()
  storage.pending_player_setup = storage.pending_player_setup or {}
  storage.seedlings = storage.seedlings or {}  -- {unit_number = {entity, tick_planted}}
  storage.action_counters = storage.action_counters or {}  -- {force_index = {tech_index = count}}
  storage.current_action_tech = storage.current_action_tech or {}  -- {force_index = tech_index}
end

script.on_init(function()
  init_storage()

  -- Disable freeplay crashsite/starting items
  if remote.interfaces.freeplay then
    if remote.interfaces.freeplay.set_disable_crashsite then
      remote.call("freeplay", "set_disable_crashsite", true)
    end
    if remote.interfaces.freeplay.set_created_items then
      remote.call("freeplay", "set_created_items", {})
    end
    if remote.interfaces.freeplay.set_respawn_items then
      remote.call("freeplay", "set_respawn_items", {})
    end
  end
end)

script.on_configuration_changed(function()
  init_storage()
end)

-------------------------------------------------------------------------------
-- MAP GENERATION
-- On chunk generation: replace ALL tiles with deepwater except the 3×3 grass
-- island at origin, and destroy all vanilla entities.
-- Vanilla tile autoplace is left intact in the data phase so the spawn finder
-- can locate land near origin. We replace tiles here before the player sees them.
-------------------------------------------------------------------------------

script.on_event(defines.events.on_chunk_generated, function(event)
  local surface = event.surface
  if surface.name ~= "nauvis" then return end

  local area = event.area
  local tiles = {}

  -- Replace every tile in this chunk
  for x = area.left_top.x, area.right_bottom.x - 1 do
    for y = area.left_top.y, area.right_bottom.y - 1 do
      if x >= -1 and x <= 1 and y >= -1 and y <= 1 then
        table.insert(tiles, {name = "grass-1", position = {x, y}})
      else
        table.insert(tiles, {name = "water", position = {x, y}})
      end
    end
  end
  surface.set_tiles(tiles)

  -- Destroy all vanilla entities (resources, trees, rocks, fish, enemies)
  local entities = surface.find_entities(area)
  for _, entity in pairs(entities) do
    if entity.valid and entity.type ~= "character" then
      local name = entity.name
      if not string.match(name, "^bio%-") and name ~= "character" then
        entity.destroy()
      end
    end
  end
end)

-------------------------------------------------------------------------------
-- PLAYER SETUP
-- Queue setup for next tick (vanilla adds starting items after on_player_created).
-------------------------------------------------------------------------------

script.on_event(defines.events.on_player_created, function(event)
  storage.pending_player_setup = storage.pending_player_setup or {}
  storage.pending_player_setup[event.player_index] = true
end)

local function setup_player(player)
  -- Clear ALL vanilla items
  local inv = player.get_main_inventory()
  if inv then inv.clear() end
  local armor_inv = player.get_inventory(defines.inventory.character_armor)
  if armor_inv then armor_inv.clear() end
  local gun_inv = player.get_inventory(defines.inventory.character_guns)
  if gun_inv then gun_inv.clear() end
  local ammo_inv = player.get_inventory(defines.inventory.character_ammo)
  if ammo_inv then ammo_inv.clear() end

  -- Give starting inventory
  for item_name, count in pairs(biogenesis.starting_items) do
    if prototypes.item[item_name] then
      player.insert({name = item_name, count = count})
    end
  end

  -- Initialize action tech tracking for this force
  local fi = player.force.index
  if not storage.current_action_tech[fi] then
    storage.current_action_tech[fi] = 1  -- Start tracking tech 1
    storage.action_counters[fi] = {}
  end
end

-------------------------------------------------------------------------------
-- ACTION-GATED TECHNOLOGY SYSTEM
-- Techs 1-5 unlock sequentially based on player actions.
-- Each tech has a specific trigger and count requirement.
-------------------------------------------------------------------------------

local function get_current_action_tech(force)
  local fi = force.index
  local idx = storage.current_action_tech[fi]
  if not idx or idx > #ACTION_TECHS then return nil end
  return ACTION_TECHS[idx], idx
end

local function try_advance_action_tech(force)
  local fi = force.index
  local tech_def, idx = get_current_action_tech(force)
  if not tech_def then return end

  local counters = storage.action_counters[fi] or {}
  local current_count = counters[idx] or 0

  if current_count >= tech_def.count then
    -- Unlock the tech
    local tech = force.technologies[tech_def.tech]
    if tech and not tech.researched then
      tech.researched = true

      -- Notify all players on this force
      for _, player in pairs(force.players) do
        player.print({"", "[color=green][Biogenesis][/color] " .. tech_def.message})
      end
    end

    -- Advance to next action tech
    storage.current_action_tech[fi] = idx + 1
    -- Check if the next tech is already satisfied (edge case)
    try_advance_action_tech(force)
  end
end

local function increment_action_counter(force, trigger_type, item_name)
  local fi = force.index
  local tech_def, idx = get_current_action_tech(force)
  if not tech_def then return end

  -- Check if this event matches the current tech's trigger
  if tech_def.trigger ~= trigger_type then return end
  if tech_def.item and tech_def.item ~= item_name then return end

  local counters = storage.action_counters[fi] or {}
  counters[idx] = (counters[idx] or 0) + 1
  storage.action_counters[fi] = counters

  try_advance_action_tech(force)
end

-------------------------------------------------------------------------------
-- CROP GROWTH TIMER SYSTEM
-- Track seedling entities, swap to mature after BASE_GROWTH_TICKS.
-- Uses on_nth_tick for performance (check every 60 ticks = 1 second).
-------------------------------------------------------------------------------

local function register_seedling(entity)
  if not entity.valid then return end
  if not SEEDLING_TO_MATURE[entity.name] then return end

  storage.seedlings = storage.seedlings or {}
  storage.seedlings[entity.unit_number] = {
    entity = entity,
    tick_planted = game.tick,
  }
end

local function check_seedling_growth()
  if not storage.seedlings then return end

  local current_tick = game.tick
  local to_remove = {}

  for unit_number, data in pairs(storage.seedlings) do
    local entity = data.entity
    if not entity or not entity.valid then
      table.insert(to_remove, unit_number)
    else
      local elapsed = current_tick - data.tick_planted
      if elapsed >= BASE_GROWTH_TICKS then
        -- Swap seedling to mature
        local mature_name = SEEDLING_TO_MATURE[entity.name]
        if mature_name then
          local surface = entity.surface
          local position = entity.position
          local force = entity.force

          entity.destroy()

          surface.create_entity({
            name = mature_name,
            position = position,
            force = force,
          })
        end
        table.insert(to_remove, unit_number)
      end
    end
  end

  for _, unit_number in pairs(to_remove) do
    storage.seedlings[unit_number] = nil
  end
end

-------------------------------------------------------------------------------
-- EVENT HANDLERS
-------------------------------------------------------------------------------

-- Pending player setup (next tick after creation)
script.on_event(defines.events.on_tick, function(event)
  -- Handle pending player setups
  if storage.pending_player_setup then
    for player_index, _ in pairs(storage.pending_player_setup) do
      local player = game.get_player(player_index)
      if player and player.character then
        setup_player(player)
        storage.pending_player_setup[player_index] = nil
      end
    end
    -- Clean up if empty
    if not next(storage.pending_player_setup) then
      storage.pending_player_setup = nil
    end
  end
end)

-- Crop growth timer: check every 60 ticks (1 second)
script.on_nth_tick(60, function()
  check_seedling_growth()
end)

-- Entities that must be placed adjacent to water
local WATER_ADJACENT = {
  ["bio-era1-saltwater-basin"] = true,
}

local function has_adjacent_water(entity)
  local pos = entity.position
  local surface = entity.surface
  for _, offset in pairs({{0,1},{0,-1},{1,0},{-1,0}}) do
    local tile = surface.get_tile(pos.x + offset[1], pos.y + offset[2])
    if tile and tile.valid then
      local name = tile.name
      if name == "water" or name == "deepwater" or name == "water-green"
        or name == "water-shallow" or name == "water-mud" then
        return true
      end
    end
  end
  return false
end

-- Track seedling placement + enforce water-adjacent placement
script.on_event(defines.events.on_built_entity, function(event)
  local entity = event.entity
  if not entity or not entity.valid then return end

  -- Seedling tracking
  if SEEDLING_TO_MATURE[entity.name] then
    register_seedling(entity)
  end

  -- Water-adjacent check
  if WATER_ADJACENT[entity.name] then
    if not has_adjacent_water(entity) then
      local player = game.get_player(event.player_index)
      if player then
        player.insert({name = entity.minable.result or entity.name, count = 1})
        player.create_local_flying_text({
          text = "Must be placed next to water",
          position = entity.position,
        })
      end
      entity.destroy()
    end
  end
end)

-- Also track robot-built seedlings
script.on_event(defines.events.on_robot_built_entity, function(event)
  local entity = event.entity
  if entity and entity.valid and SEEDLING_TO_MATURE[entity.name] then
    register_seedling(entity)
  end
end)

-- Track item crafting (for action-gated techs)
script.on_event(defines.events.on_player_crafted_item, function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  if event.item_stack.valid_for_read then
    local item_name = event.item_stack.name
    local count = event.item_stack.count or 1

    -- "craft" trigger
    for _ = 1, count do
      increment_action_counter(player.force, "craft", item_name)
    end
  end
end)

-- Track item pickup (for action-gated techs)
script.on_event(defines.events.on_picked_up_item, function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  if event.item_stack.valid_for_read then
    local item_name = event.item_stack.name
    local count = event.item_stack.count or 1

    for _ = 1, count do
      increment_action_counter(player.force, "pickup", item_name)
    end
  end
end)

-- Track harvesting mature crops (for "harvest 3 plants" trigger)
script.on_event(defines.events.on_player_mined_entity, function(event)
  local entity = event.entity
  if not entity or not entity.valid then return end

  local player = game.get_player(event.player_index)
  if not player then return end

  if MATURE_CROPS[entity.name] then
    increment_action_counter(player.force, "harvest", entity.name)
  end
end)

-- Track landfill placement (for "place 2 land tiles" trigger)
script.on_event(defines.events.on_player_built_tile, function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  local count = 0
  if event.tiles then
    count = #event.tiles
  end

  for _ = 1, count do
    increment_action_counter(player.force, "landfill", nil)
  end
end)

-- Track machine output pickup (inserter → inventory) for saltwater/sea-salt
script.on_event(defines.events.on_player_main_inventory_changed, function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  local fi = player.force.index
  local tech_def = get_current_action_tech(player.force)
  if not tech_def then return end

  -- Only check if current tech uses "pickup" trigger
  if tech_def.trigger ~= "pickup" then return end

  local inv = player.get_main_inventory()
  if not inv then return end

  local item_count = inv.get_item_count(tech_def.item)
  if item_count > 0 then
    -- Set counter to the max of current count and inventory count
    local idx = storage.current_action_tech[fi]
    local counters = storage.action_counters[fi] or {}
    if (counters[idx] or 0) < item_count then
      counters[idx] = math.min(item_count, tech_def.count)
      storage.action_counters[fi] = counters
      try_advance_action_tech(player.force)
    end
  end
end)

-- Era 2 transition notification when tech 9 is researched
script.on_event(defines.events.on_research_finished, function(event)
  local tech = event.research
  if tech.name == "bio-era1-coastal-ecology-hypothesis" then
    for _, player in pairs(tech.force.players) do
      player.print({"", "[color=green][Biogenesis][/color] Chapter: Applied Cultivation. 'Control the conditions, control the outcome.' — Your biological factory is ready to grow metals."})
    end
  end
end)
