-- Biogenesis: Map Generation (data phase)
-- Ocean-only world. All tiles → deepwater.
-- The 3×3 starting island is placed by control.lua on chunk generation.
--
-- We ONLY modify tile autoplace here. Entity autoplace (rocks, trees, ores,
-- fish, enemies) is left intact — they won't spawn because there are no
-- land tiles for them to appear on. control.lua destroys anything that
-- spawns in the origin chunk as a safety net.
--
-- Factorio 2.0 requires entities referenced by planet prototypes to keep
-- their autoplace specs, so we must not nil them out.

-------------------------------------------------------------------------------
-- REMOVE ALL TILE AUTOPLACE
-------------------------------------------------------------------------------
for _, tile in pairs(data.raw.tile) do
  tile.autoplace = nil
end

-------------------------------------------------------------------------------
-- SET DEEPWATER AS THE ONLY AUTOPLACED TILE
-------------------------------------------------------------------------------
data.raw.tile["deepwater"].autoplace = {
  probability_expression = 1,
}
