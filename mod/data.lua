-- Biogenesis — Main data phase entry point
-- Load prototypes in dependency order: shared infrastructure first, then per-era content.

-- Shared: item groups, subgroups, recipe categories
require("prototypes.shared.categories")

-- Era 1: Observation
require("prototypes.era1.items")
require("prototypes.era1.entities")
require("prototypes.era1.recipes")
require("prototypes.era1.technologies")
