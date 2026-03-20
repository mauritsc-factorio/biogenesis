-- Biogenesis: Runtime control script

-------------------------------------------------------------------------------
-- AUTO-GRANT: Forager's Eye
-------------------------------------------------------------------------------
local function grant_foragers_eye(force)
  if force and force.technologies["bio-era1-foragers-eye"] then
    force.technologies["bio-era1-foragers-eye"].researched = true
  end
end

script.on_init(function()
  for _, force in pairs(game.forces) do
    grant_foragers_eye(force)
  end
  storage.pending_player_setup = storage.pending_player_setup or {}
end)

-------------------------------------------------------------------------------
-- NEW PLAYER SETUP
-- We queue the setup for next tick because Factorio adds vanilla starting
-- items AFTER on_player_created fires.
-------------------------------------------------------------------------------
script.on_event(defines.events.on_player_created, function(event)
  storage.pending_player_setup = storage.pending_player_setup or {}
  storage.pending_player_setup[event.player_index] = true
end)

script.on_event(defines.events.on_tick, function(event)
  if not storage.pending_player_setup then return end

  for player_index, _ in pairs(storage.pending_player_setup) do
    local player = game.get_player(player_index)
    if player and player.character then
      -- Clear ALL vanilla items
      local inv = player.get_main_inventory()
      if inv then inv.clear() end

      local armor_inv = player.get_inventory(defines.inventory.character_armor)
      if armor_inv then armor_inv.clear() end
      local gun_inv = player.get_inventory(defines.inventory.character_guns)
      if gun_inv then gun_inv.clear() end
      local ammo_inv = player.get_inventory(defines.inventory.character_ammo)
      if ammo_inv then ammo_inv.clear() end

      -- Tools
      player.insert({name = "bio-era1-crude-hammer", count = 1})
      player.insert({name = "bio-era1-knapping-blade", count = 1})

      -- Grassland biome
      player.insert({name = "bio-era1-wild-grass", count = 20})
      player.insert({name = "bio-era1-wild-grain-head", count = 15})
      player.insert({name = "bio-era1-clover-patch", count = 10})

      -- Forest biome
      player.insert({name = "bio-era1-forest-nut-cluster", count = 10})
      player.insert({name = "bio-era1-bracket-fungus", count = 8})
      player.insert({name = "bio-era1-fallen-fruit", count = 5})

      -- Wetland biome
      player.insert({name = "bio-era1-cattail", count = 10})
      player.insert({name = "bio-era1-bog-root", count = 8})
      player.insert({name = "bio-era1-peat-moss", count = 10})

      -- Rocky biome
      player.insert({name = "bio-era1-lichen-scraping", count = 5})
      player.insert({name = "bio-era1-rock-cress", count = 5})

      -- Basic resources for building
      player.insert({name = "wood", count = 20})
      player.insert({name = "stone", count = 20})

      -- Grant Forager's Eye
      grant_foragers_eye(player.force)

      -- Done with this player
      storage.pending_player_setup[player_index] = nil
    end
  end

  -- Clean up if no more pending
  local has_pending = false
  for _ in pairs(storage.pending_player_setup) do
    has_pending = true
    break
  end
  if not has_pending then
    storage.pending_player_setup = nil
  end
end)
