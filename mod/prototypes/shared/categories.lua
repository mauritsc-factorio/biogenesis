-- Biogenesis: Shared Categories (All Eras)
-- Item groups, subgroups, and recipe categories.

-------------------------------------------------------------------------------
-- ITEM GROUP: Main mod tab in the crafting menu
-------------------------------------------------------------------------------
data:extend({
  {
    type = "item-group",
    name = "biogenesis",
    order = "z-biogenesis",
    icon = "__base__/graphics/icons/tree-09.png",
    icon_size = 64,
  },
})

-------------------------------------------------------------------------------
-- ITEM SUBGROUPS
-- Named to reinforce biology: menu itself teaches the player they're doing biology.
-------------------------------------------------------------------------------
local subgroups = {
  -- Era 1: Tidal Observations
  { name = "bio-era1-raw",            order = "a-a", },  -- Marine Harvests
  { name = "bio-era1-saltwater",      order = "a-b", },  -- Saltwater Processing
  { name = "bio-era1-intermediates",  order = "a-c", },  -- Tidal Materials
  { name = "bio-era1-tools",          order = "a-d", },  -- Stone Tools
  { name = "bio-era1-food",           order = "a-e", },  -- Coastal Food
  { name = "bio-era1-seeds",          order = "a-f", },  -- Seeds
  { name = "bio-era1-machines",       order = "a-g", },  -- Tidal Machines
  { name = "bio-era1-logistics",      order = "a-h", },  -- Kelp Logistics
  { name = "bio-era1-land",           order = "a-i", },  -- Land Expansion
  { name = "bio-era1-science",        order = "a-z", },  -- Coastal Science

  -- Era 2: Applied Cultivation
  { name = "bio-era2-raw",            order = "b-a", },  -- Bacterial Metals
  { name = "bio-era2-diatom",         order = "b-b", },  -- Diatom Products
  { name = "bio-era2-minerals",       order = "b-c", },  -- Phytomined Minerals
  { name = "bio-era2-intermediates",  order = "b-d", },  -- Cultivation Materials
  { name = "bio-era2-machines",       order = "b-e", },  -- Controlled Cultivation
  { name = "bio-era2-science",        order = "b-z", },  -- Cultivation Science

  -- Era 3: The Invisible Ecosystem
  { name = "bio-era3-fermentation",   order = "c-a", },  -- Fermentation Products
  { name = "bio-era3-aquaculture",    order = "c-b", },  -- Aquaculture
  { name = "bio-era3-fungal",         order = "c-c", },  -- Fungal Materials
  { name = "bio-era3-microbial",      order = "c-d", },  -- Microbial Chemistry
  { name = "bio-era3-machines",       order = "c-e", },  -- Ecosystem Machines
  { name = "bio-era3-science",        order = "c-z", },  -- Ecosystem Science

  -- Era 4: The Rules of Inheritance
  { name = "bio-era4-cultivars",      order = "d-a", },  -- Stabilized Cultivars
  { name = "bio-era4-composites",     order = "d-b", },  -- Bio-Composites
  { name = "bio-era4-enzymes",        order = "d-c", },  -- Enzyme Products
  { name = "bio-era4-machines",       order = "d-d", },  -- Genetics Machines
  { name = "bio-era4-science",        order = "d-z", },  -- Genetic Science

  -- Era 5: Molecular Biology
  { name = "bio-era5-genomic",        order = "e-a", },  -- Genomic Tools
  { name = "bio-era5-tissue",         order = "e-b", },  -- Tissue Culture
  { name = "bio-era5-bioaccum",       order = "e-c", },  -- Bio-Accumulated Metals
  { name = "bio-era5-machines",       order = "e-d", },  -- Molecular Machines
  { name = "bio-era5-science",        order = "e-z", },  -- Molecular Science

  -- Era 6: Synthetic Biology
  { name = "bio-era6-organisms",      order = "f-a", },  -- Designed Organisms
  { name = "bio-era6-xenocrops",      order = "f-b", },  -- Xenocrop Products
  { name = "bio-era6-synthetic",      order = "f-c", },  -- Synthetic Pathways
  { name = "bio-era6-machines",       order = "f-d", },  -- Synthetic Machines
  { name = "bio-era6-science",        order = "f-z", },  -- Synthetic Science

  -- Era 7: Directed Evolution
  { name = "bio-era7-evolved",        order = "g-a", },  -- Evolved Materials
  { name = "bio-era7-algae",          order = "g-b", },  -- Industrial Algae
  { name = "bio-era7-mycelium",       order = "g-c", },  -- Mycelium Structures
  { name = "bio-era7-machines",       order = "g-d", },  -- Evolution Machines
  { name = "bio-era7-science",        order = "g-z", },  -- Evolution Science

  -- Era 8: Living Systems
  { name = "bio-era8-architecture",   order = "h-a", },  -- Living Architecture
  { name = "bio-era8-neural",         order = "h-b", },  -- Neural Systems
  { name = "bio-era8-vascular",       order = "h-c", },  -- Vascular Components
  { name = "bio-era8-machines",       order = "h-d", },  -- Living Machines
  { name = "bio-era8-science",        order = "h-z", },  -- Systems Science

  -- Era 9: Genesis
  { name = "bio-era9-arcology",       order = "i-a", },  -- Arcology Organs
  { name = "bio-era9-chimera",        order = "i-b", },  -- Chimera Organisms
  { name = "bio-era9-biosphere",      order = "i-c", },  -- Biosphere Components
  { name = "bio-era9-machines",       order = "i-d", },  -- Genesis Machines
  { name = "bio-era9-science",        order = "i-z", },  -- Genesis Science
}

local subgroup_prototypes = {}
for _, sg in pairs(subgroups) do
  table.insert(subgroup_prototypes, {
    type = "item-subgroup",
    name = sg.name,
    group = "biogenesis",
    order = sg.order,
  })
end
data:extend(subgroup_prototypes)

-------------------------------------------------------------------------------
-- RECIPE CATEGORIES
-- Each maps to a specific machine or hand-crafting.
-- "crafting" is a built-in vanilla category (hand-craft).
-------------------------------------------------------------------------------
data:extend({
  -- Era 1
  { type = "recipe-category", name = "saltwater-collection" },    -- Saltwater Basin
  { type = "recipe-category", name = "evaporation" },             -- Solar Evaporation Tray
  { type = "recipe-category", name = "biomass-compression" },     -- Biomass Compressor
  { type = "recipe-category", name = "desalination" },            -- Seaweed Desalination Bed
  { type = "recipe-category", name = "calcium-precipitation" },   -- Calcium Precipitation Vat
  { type = "recipe-category", name = "grinding" },                -- Grinding Slab
  { type = "recipe-category", name = "drying" },                  -- Drying Rack
  { type = "recipe-category", name = "kiln-firing" },             -- Stone-Lined Fire Pit
  { type = "recipe-category", name = "composting" },              -- Compost Heap

  -- Era 2+: placeholder categories (defined now so data.lua loads cleanly)
  { type = "recipe-category", name = "bio-smelting" },            -- Bio-Smelter
  { type = "recipe-category", name = "greenhouse" },              -- Greenhouse
  { type = "recipe-category", name = "seed-classification" },     -- Seed Classifier
  { type = "recipe-category", name = "fermentation" },            -- Fermentation Vat
  { type = "recipe-category", name = "aquaculture" },             -- Aquaculture Pond
  { type = "recipe-category", name = "soil-analysis" },           -- Soil Analyzer
  { type = "recipe-category", name = "heredity-analysis" },       -- Heredity Station
  { type = "recipe-category", name = "seed-incubation" },         -- Seed Incubator
  { type = "recipe-category", name = "genome-sequencing" },       -- Genome Sequencer
  { type = "recipe-category", name = "crispr-editing" },          -- CRISPR Station
  { type = "recipe-category", name = "tissue-culture" },          -- Tissue Culture Lab
  { type = "recipe-category", name = "genome-authoring" },        -- Genome Authoring Platform
  { type = "recipe-category", name = "organism-fusion" },         -- Organism Fusion Chamber
  { type = "recipe-category", name = "evolution-engine" },        -- Evolution Engine
  { type = "recipe-category", name = "bioreactor" },              -- Bioreactor
  { type = "recipe-category", name = "living-architecture" },     -- Living Architecture
  { type = "recipe-category", name = "neural-mesh" },             -- Neural Mesh
  { type = "recipe-category", name = "arcology" },                -- Arcology Module
})
