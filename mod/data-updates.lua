-- Biogenesis: data-updates phase
-- Modify vanilla prototypes after all mods have loaded their data.lua.

-- Disable vanilla content (recipes, techs, entities, military)
require("prototypes.shared.vanilla-disable")

-------------------------------------------------------------------------------
-- LANDFILL FIX: Copy place_as_tile from vanilla landfill so our items
-- inherit whatever format Factorio 2.0 actually expects.
-------------------------------------------------------------------------------
local vanilla_landfill = data.raw.item["landfill"]
if vanilla_landfill and vanilla_landfill.place_as_tile then
  local pat = table.deepcopy(vanilla_landfill.place_as_tile)
  data.raw.item["bio-era1-woven-reed-mat"].place_as_tile = pat
  data.raw.item["bio-era1-compressed-biomass-block"].place_as_tile = table.deepcopy(vanilla_landfill.place_as_tile)
end
