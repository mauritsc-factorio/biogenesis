-- Biogenesis: data-updates phase
-- Modify vanilla prototypes after all mods have loaded their data.lua

-- Add Observational Analysis Kit to vanilla lab inputs so the lab can consume it
local lab = data.raw["lab"]["lab"]
if lab then
  table.insert(lab.inputs, "bio-era1-observational-analysis-kit")
end
