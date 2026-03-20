-- Biogenesis: Shared Categories
-- Item groups, subgroups, and recipe categories used across all eras.
-- Only Era 1 subgroups are defined here; later eras will append their own.

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
-- ITEM SUBGROUPS: Era 1
-------------------------------------------------------------------------------
data:extend({
  -- Raw foraged materials (wild plants)
  {
    type = "item-subgroup",
    name = "bio-era1-foraged",
    group = "biogenesis",
    order = "a-a",
  },
  -- Stone tools
  {
    type = "item-subgroup",
    name = "bio-era1-tools",
    group = "biogenesis",
    order = "a-b",
  },
  -- Processed intermediates
  {
    type = "item-subgroup",
    name = "bio-era1-intermediates",
    group = "biogenesis",
    order = "a-c",
  },
  -- Food items
  {
    type = "item-subgroup",
    name = "bio-era1-food",
    group = "biogenesis",
    order = "a-d",
  },
  -- Seeds
  {
    type = "item-subgroup",
    name = "bio-era1-seeds",
    group = "biogenesis",
    order = "a-e",
  },
  -- Machines / workstations (entity items)
  {
    type = "item-subgroup",
    name = "bio-era1-machines",
    group = "biogenesis",
    order = "a-f",
  },
  -- Science
  {
    type = "item-subgroup",
    name = "bio-era1-science",
    group = "biogenesis",
    order = "a-g",
  },
})

-------------------------------------------------------------------------------
-- RECIPE CATEGORIES: Era 1
-- Each maps to a specific workstation (or hand-crafting for "crafting").
-------------------------------------------------------------------------------
data:extend({
  -- Foraging (scripted / special, placeholder category)
  {
    type = "recipe-category",
    name = "foraging",
  },
  -- Knapping (hand-craft variant, used thematically)
  {
    type = "recipe-category",
    name = "knapping",
  },
  -- Grinding Slab recipes
  {
    type = "recipe-category",
    name = "grinding",
  },
  -- Drying Rack recipes
  {
    type = "recipe-category",
    name = "drying",
  },
  -- Leaching Basket recipes
  {
    type = "recipe-category",
    name = "leaching",
  },
  -- Stone-Lined Fire Pit recipes
  {
    type = "recipe-category",
    name = "kiln-firing",
  },
  -- Compost Heap recipes
  {
    type = "recipe-category",
    name = "composting",
  },
  -- Water Wheel (automated grinding)
  {
    type = "recipe-category",
    name = "water-milling",
  },
})
-- Note: "crafting" (vanilla hand-craft) and "research" are built-in categories.
