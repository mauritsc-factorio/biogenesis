-- Biogenesis: Runtime control script

script.on_init(function()
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

      -- Minimal starting kit: tools + a few basics to bootstrap
      player.insert({name = "bio-era1-crude-hammer", count = 1})
      player.insert({name = "bio-era1-knapping-blade", count = 1})
      player.insert({name = "wood", count = 10})
      player.insert({name = "stone", count = 10})
      player.insert({name = "bio-era1-water", count = 10})

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
