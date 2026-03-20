-- Biogenesis: Runtime control script
-- Handles events that cannot be done in the data stage.

-------------------------------------------------------------------------------
-- AUTO-GRANT: Forager's Eye
-- The first tech is free and should be researched automatically.
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
end)

-------------------------------------------------------------------------------
-- NEW PLAYER SETUP
-- Clear vanilla starting items and give Era 1 starter pack.
-- Since we don't have harvestable world entities yet, give the player
-- raw materials from each biome so they can test the full recipe chain.
-------------------------------------------------------------------------------
script.on_event(defines.events.on_player_created, function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  -- Clear ALL inventory slots (Factorio 2.0 method)
  local inv = player.get_main_inventory()
  if inv then inv.clear() end

  -- Clear cursor, armor, guns, ammo (nil-safe)
  if player.cursor_stack then player.cursor_stack.clear() end
  local armor_inv = player.get_inventory(defines.inventory.character_armor)
  if armor_inv then armor_inv.clear() end
  local gun_inv = player.get_inventory(defines.inventory.character_guns)
  if gun_inv then gun_inv.clear() end
  local ammo_inv = player.get_inventory(defines.inventory.character_ammo)
  if ammo_inv then ammo_inv.clear() end

  -- Tools
  player.insert({name = "bio-era1-crude-hammer", count = 1})
  player.insert({name = "bio-era1-knapping-blade", count = 1})

  -- Grassland biome foraged materials
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

  -- Ensure Forager's Eye is auto-researched for the player's force
  if player.force then
    grant_foragers_eye(player.force)
  end
end)
