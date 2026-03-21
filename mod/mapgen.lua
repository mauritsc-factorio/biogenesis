-- Biogenesis: Map Generation (data phase)
-- Ocean-only world. All tiles → deepwater.
-- The 3×3 starting island is placed by control.lua on chunk generation.
--
-- Factorio 2.0 planets require all referenced tiles/entities to keep their
-- autoplace specs. We can't nil them — instead we set land tile probability
-- to 0 so they never spawn, while deepwater gets probability 1.

-------------------------------------------------------------------------------
-- SUPPRESS ALL LAND TILES (probability 0, but spec still exists)
-------------------------------------------------------------------------------
for _, tile in pairs(data.raw.tile) do
  if tile.autoplace then
    tile.autoplace = { probability_expression = 0 }
  end
end

-------------------------------------------------------------------------------
-- SET DEEPWATER AS THE ONLY TILE THAT ACTUALLY SPAWNS
-------------------------------------------------------------------------------
data.raw.tile["deepwater"].autoplace = {
  probability_expression = 1,
}
