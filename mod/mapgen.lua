-- Biogenesis: Map Generation (data phase)
-- Ocean-only world. All tiles → deepwater.
-- The 3×3 starting island is placed by control.lua on chunk generation.

-------------------------------------------------------------------------------
-- REMOVE ALL TILE AUTOPLACE
-- This makes the entire world deepwater by default.
-------------------------------------------------------------------------------
for _, tile in pairs(data.raw.tile) do
  tile.autoplace = nil
end

-------------------------------------------------------------------------------
-- SET DEEPWATER AS THE ONLY AUTOPLACED TILE
-- Using a simple constant expression for maximum compatibility.
-------------------------------------------------------------------------------
data.raw.tile["deepwater"].autoplace = {
  probability_expression = 1,
}

-------------------------------------------------------------------------------
-- REMOVE ALL RESOURCE/ENTITY AUTOPLACE
-- No ores, trees, rocks, fish, enemies, or decoratives.
-------------------------------------------------------------------------------

for _, resource in pairs(data.raw.resource or {}) do
  resource.autoplace = nil
end

for _, tree in pairs(data.raw.tree or {}) do
  tree.autoplace = nil
end

for _, fish in pairs(data.raw.fish or {}) do
  fish.autoplace = nil
end

for _, spawner in pairs(data.raw["unit-spawner"] or {}) do
  spawner.autoplace = nil
end

for _, turret in pairs(data.raw.turret or {}) do
  turret.autoplace = nil
end

for _, entity in pairs(data.raw["simple-entity"] or {}) do
  entity.autoplace = nil
end

for _, cliff in pairs(data.raw.cliff or {}) do
  cliff.autoplace = nil
end
