-- Biogenesis: Map Generation (data phase)
-- Ocean-only world with a 3×3 grass island at the origin.

-------------------------------------------------------------------------------
-- Define a named noise expression for the island probability.
-- Factorio 2.0 requires all values in expression trees to be proper
-- noise expression objects, not raw Lua numbers.
-------------------------------------------------------------------------------
local L = function(n) return { type = "literal-number", literal_value = n } end
local V = function(name) return { type = "variable", variable_name = name } end
local F = function(name, ...) return { type = "function-application", function_name = name, arguments = {...} } end

-- island_prob = clamp(2.25 - (x² + y²), 0, 2.25) × 100
-- At (0,0): prob=225. At (1,1): prob=25. At (2,0): prob=0.
data:extend({{
  type = "noise-expression",
  name = "biogenesis-island-prob",
  expression = F("multiply",
    F("clamp",
      F("subtract",
        L(2.25),
        F("add",
          F("multiply", V("x"), V("x")),
          F("multiply", V("y"), V("y"))
        )
      ),
      L(0),
      L(2.25)
    ),
    L(100)
  ),
}})

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
-- GRASS-1: 3×3 island at origin (reference the named expression)
-------------------------------------------------------------------------------
data.raw.tile["grass-1"].autoplace = {
  probability_expression = "biogenesis-island-prob",
}
