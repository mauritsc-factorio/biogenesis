-- Biogenesis: data-updates phase
-- Modify vanilla prototypes after all mods have loaded their data.lua

-- Add Observational Analysis Kit to vanilla lab inputs (backup, player has Field Notebook Station)
local lab = data.raw["lab"]["lab"]
if lab then
  table.insert(lab.inputs, "bio-era1-observational-analysis-kit")
end

-------------------------------------------------------------------------------
-- HIDE VANILLA CONTENT
-- Hide all vanilla recipes and technologies from the UI.
-- Items (wood, stone, etc.) still exist and work in our recipes.
-------------------------------------------------------------------------------

-- Hide vanilla recipes (keep ours)
for name, recipe in pairs(data.raw.recipe) do
  if not string.match(name, "^bio%-") then
    recipe.hidden = true
  end
end

-- Hide vanilla technologies (keep ours)
for name, tech in pairs(data.raw.technology) do
  if not string.match(name, "^bio%-") then
    tech.hidden = true
  end
end
