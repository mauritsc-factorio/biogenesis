-- Biogenesis Era 1: Logistics
-- Kelp-Stalk Belt (half vanilla speed) and Kelp-Stalk Inserter (half vanilla speed).
-- Uses deep-copied vanilla prototypes with modified speeds.

local DARK_TEAL = {r = 0.1, g = 0.5, b = 0.4, a = 1}
local function tinted_icon(base_icon, tint)
  return {{icon = base_icon, icon_size = 64, tint = tint}}
end

-------------------------------------------------------------------------------
-- KELP-STALK BELT: transport-belt at half speed
-- Vanilla speed = 0.03125, ours = 0.015625
-------------------------------------------------------------------------------
local belt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
belt.name = "bio-era1-kelp-stalk-belt"
belt.icons = tinted_icon("__base__/graphics/icons/transport-belt.png", DARK_TEAL)
belt.minable.result = "bio-era1-kelp-stalk-belt"
belt.speed = 0.015625  -- Half vanilla speed (~7.5 items/sec)
belt.max_health = 80
belt.next_upgrade = nil  -- No upgrade chain
belt.fast_replaceable_group = "transport-belt"
belt.order = "a[transport-belt]-a[kelp-stalk-belt]"
belt.subgroup = "bio-era1-logistics"

data:extend({belt})

-------------------------------------------------------------------------------
-- KELP-STALK INSERTER: inserter at half speed
-- Vanilla rotation_speed = 0.014, extension_speed = 0.03
-- Ours = 0.007 rotation, 0.015 extension
-------------------------------------------------------------------------------
local inserter = table.deepcopy(data.raw["inserter"]["inserter"])
inserter.name = "bio-era1-kelp-stalk-inserter"
inserter.icons = tinted_icon("__base__/graphics/icons/inserter.png", DARK_TEAL)
inserter.minable.result = "bio-era1-kelp-stalk-inserter"
inserter.rotation_speed = 0.007    -- Half vanilla
inserter.extension_speed = 0.015   -- Half vanilla
inserter.max_health = 60
inserter.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  buffer_capacity = "5kJ",
}
inserter.energy_per_movement = "2.5kJ"
inserter.energy_per_rotation = "2.5kJ"
inserter.next_upgrade = nil
inserter.fast_replaceable_group = "inserter"
inserter.order = "a[inserter]-a[kelp-stalk-inserter]"
inserter.subgroup = "bio-era1-logistics"

data:extend({inserter})

-------------------------------------------------------------------------------
-- KELP-STALK POLE: electric-pole with short range
-- Deep-copy vanilla small-electric-pole, reduce wire reach.
-------------------------------------------------------------------------------
local pole = table.deepcopy(data.raw["electric-pole"]["small-electric-pole"])
pole.name = "bio-era1-kelp-stalk-pole"
pole.icons = tinted_icon("__base__/graphics/icons/small-electric-pole.png", DARK_TEAL)
pole.minable.result = "bio-era1-kelp-stalk-pole"
pole.maximum_wire_distance = 7.5  -- Same as vanilla small pole
pole.supply_area_distance = 2.5   -- Same as vanilla small pole
pole.max_health = 50
pole.next_upgrade = nil
pole.order = "a[energy]-a[kelp-stalk-pole]"
pole.subgroup = "bio-era1-logistics"

data:extend({pole})
