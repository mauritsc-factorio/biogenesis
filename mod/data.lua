-- Biogenesis — Main data phase entry point
-- Load prototypes in dependency order: shared infrastructure first, then per-era content.

-- Utility library (must be first)
require("lib")

-- Shared: item groups, subgroups, recipe categories (all eras)
require("prototypes.shared.categories")

-- Era 1: Tidal Observations
require("prototypes.era1.items")
require("prototypes.era1.logistics")
require("prototypes.era1.entities")
require("prototypes.era1.recipes")
require("prototypes.era1.technologies")

-- Map generation: ocean-only world
require("mapgen")
