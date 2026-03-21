-- Biogenesis Era 1: Fluids
-- Water-like substances that flow through pipes, not belts.

data:extend({
  {
    type = "fluid",
    name = "bio-era1-saltwater",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.7, b = 0.7},
    flow_color = {r = 0.3, g = 0.7, b = 0.7},
    order = "a[saltwater]",
  },
  {
    type = "fluid",
    name = "bio-era1-brackish-water",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    default_temperature = 15,
    base_color = {r = 0.55, g = 0.5, b = 0.35},
    flow_color = {r = 0.55, g = 0.5, b = 0.35},
    order = "b[brackish-water]",
  },
  {
    type = "fluid",
    name = "bio-era1-freshwater",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.5, b = 0.8},
    flow_color = {r = 0.3, g = 0.5, b = 0.8},
    order = "c[freshwater]",
  },
  {
    type = "fluid",
    name = "bio-era1-concentrated-brine",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    default_temperature = 15,
    base_color = {r = 0.8, g = 0.6, b = 0.2},
    flow_color = {r = 0.8, g = 0.6, b = 0.2},
    order = "d[concentrated-brine]",
  },
})
