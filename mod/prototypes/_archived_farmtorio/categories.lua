-- Biogenesis: Item groups, subgroups, and recipe categories

data:extend({
  -- Main tab in crafting menu
  {
    type = "item-group",
    name = "biogenesis",
    order = "f",
    icon = "__base__/graphics/icons/wood.png", -- TODO: custom icon
    icon_size = 64,
  },

  -- Subgroups (rows within the tab)
  {type = "item-subgroup", name = "farm-seeds",      group = "biogenesis", order = "a"},
  {type = "item-subgroup", name = "farm-raw-crops",   group = "biogenesis", order = "b"},
  {type = "item-subgroup", name = "farm-processed",   group = "biogenesis", order = "c"},
  {type = "item-subgroup", name = "farm-food",        group = "biogenesis", order = "d"},
  {type = "item-subgroup", name = "farm-soil",        group = "biogenesis", order = "e"},
  {type = "item-subgroup", name = "farm-machines",    group = "biogenesis", order = "f"},
  {type = "item-subgroup", name = "farm-science",     group = "biogenesis", order = "z"},

  -- Recipe categories (what each machine type can craft)
  {type = "recipe-category", name = "farming"},
  {type = "recipe-category", name = "composting"},
  {type = "recipe-category", name = "milling"},
  {type = "recipe-category", name = "drying"},
  {type = "recipe-category", name = "cooking"},
  {type = "recipe-category", name = "research"},
})
