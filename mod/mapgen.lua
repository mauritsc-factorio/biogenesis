-- Biogenesis: Map Generation (data phase)
-- Ocean-only world with a 3×3 grass island at the origin.
--
-- The island MUST be placed via tile autoplace (data phase), not control.lua,
-- because Factorio's player spawn finder needs land tiles before chunk
-- generation events fire.
--
-- Approach:
-- 1. Set all existing land tiles to probability 0 (spec preserved for planet refs)
-- 2. Set deepwater to probability 1 (fills the world)
-- 3. Set grass-1 to probability 100 within 1.5 tiles of origin (3×3 island)

local noise = require("noise")
local x = noise.var("x")
local y = noise.var("y")

-------------------------------------------------------------------------------
-- SUPPRESS ALL LAND TILES (keep autoplace spec, set probability to 0)
-------------------------------------------------------------------------------
for _, tile in pairs(data.raw.tile) do
  if tile.autoplace then
    tile.autoplace = { probability_expression = 0 }
  end
end

-------------------------------------------------------------------------------
-- DEEPWATER: fills the world (probability 1)
-------------------------------------------------------------------------------
data.raw.tile["deepwater"].autoplace = {
  probability_expression = 1,
}

-------------------------------------------------------------------------------
-- GRASS-1: 3×3 island at origin (probability 100 within radius 1.5)
-- Tiles at (-1,-1) to (1,1) have dist² ≤ 2.0, all below threshold 2.25.
-- Tile at (2,0) has dist² = 4.0, above threshold → probability 0.
-- Probability 100 >> deepwater's 1, so grass wins at origin.
-------------------------------------------------------------------------------
data.raw.tile["grass-1"].autoplace = {
  probability_expression = noise.max(0, 2.25 - x * x - y * y) * 100,
}
