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
-- Era 1 starts with nothing but a Crude Hammer. Everything else is foraged.
-- Also grants Forager's Eye tech to the player's force.
-------------------------------------------------------------------------------
script.on_event(defines.events.on_player_created, function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  -- Clear default starting items (pistol, ammo, etc.)
  player.clear_items_inside()

  -- Give only a Crude Hammer — the player forages everything else
  player.insert({name = "bio-era1-crude-hammer", count = 1})

  -- Ensure Forager's Eye is auto-researched for the player's force
  if player.force then
    grant_foragers_eye(player.force)
  end
end)
