-- Biogenesis: Starting Inventory
-- Defines items given to the player on spawn.
-- Design doc: seeds, reed mats, belts, inserters, power generator, tools.

biogenesis = biogenesis or {}

biogenesis.starting_items = {
  -- Seeds
  ["bio-era1-saltmarsh-grass-seed"] = 10,
  ["bio-era1-glasswort-seed"]       = 5,
  ["bio-era1-kelp-spore-culture"]   = 5,

  -- Land expansion
  ["bio-era1-woven-reed-mat"]       = 50,

  -- Power
  ["bio-era1-tidal-power-generator"] = 1,

  -- Logistics
  ["bio-era1-kelp-stalk-belt"]      = 50,
  ["bio-era1-kelp-stalk-inserter"]  = 20,

  -- Tools (consumed when building Drying Rack and Biomass Compressor)
  ["bio-era1-crude-hammer"]         = 1,
  ["bio-era1-knapping-blade"]       = 1,
}
