-- Biogenesis: Map Generation (data phase)
-- Ocean-only world with a 3×3 grass island at the origin.

-- Noise expression helpers (Factorio 2.0 has no require-able noise module)
local function var(name)
  return { type = "variable", variable_name = name }
end

local function apply(func, ...)
  return { type = "function-application", function_name = func, arguments = {...} }
end

local x = var("x")
local y = var("y")

-- distance² = x² + y²
local dist_sq = apply("add", apply("multiply", x, x), apply("multiply", y, y))

-- Island probability: clamp(2.25 - dist², 0, 2.25) * 100
-- At (0,0): 2.25 * 100 = 225.  At (1,1): 0.25 * 100 = 25.  At (2,0): 0.
-- All 3×3 tiles (max dist² = 2) get probability > 1, beating deepwater.
local island_prob = apply("multiply", apply("clamp", apply("subtract", 2.25, dist_sq), 0, 2.25), 100)

-------------------------------------------------------------------------------
-- SUPPRESS ALL LAND TILES (keep spec for planet refs, set probability to 0)
-------------------------------------------------------------------------------
for _, tile in pairs(data.raw.tile) do
  if tile.autoplace then
    tile.autoplace = { probability_expression = 0 }
  end
end

-------------------------------------------------------------------------------
-- DEEPWATER: fills the world
-------------------------------------------------------------------------------
data.raw.tile["deepwater"].autoplace = {
  probability_expression = 1,
}

-------------------------------------------------------------------------------
-- GRASS-1: 3×3 island at origin
-------------------------------------------------------------------------------
data.raw.tile["grass-1"].autoplace = {
  probability_expression = island_prob,
}
