-- Biogenesis: Vanilla Content Disabling (data-updates phase)
-- Total conversion: hide all vanilla recipes, technologies, and items
-- that conflict with our biological progression.
-- Items themselves still exist (wood, stone, etc.) for use in our recipes.

-------------------------------------------------------------------------------
-- HIDE ALL VANILLA RECIPES
-- Keep only bio-prefixed recipes visible.
-------------------------------------------------------------------------------
for name, recipe in pairs(data.raw.recipe) do
  if not string.match(name, "^bio%-") then
    recipe.hidden = true
  end
end

-------------------------------------------------------------------------------
-- HIDE ALL VANILLA TECHNOLOGIES
-- Keep only bio-prefixed technologies visible.
-------------------------------------------------------------------------------
for name, tech in pairs(data.raw.technology) do
  if not string.match(name, "^bio%-") then
    tech.hidden = true
    tech.enabled = false
  end
end

-------------------------------------------------------------------------------
-- DISABLE SPECIFIC VANILLA ENTITIES
-- Prevent placement of: mining drills, pumpjacks, oil refineries,
-- nuclear, military, rocket silo, Space Age platforms.
-------------------------------------------------------------------------------
local entities_to_disable = {
  ["mining-drill"] = {
    "electric-mining-drill", "burner-mining-drill",
  },
  ["furnace"] = {
    -- Keep stone-furnace and steel-furnace (may be useful as base for bio-smelter)
  },
  ["assembling-machine"] = {
    "oil-refinery", "chemical-plant",
    "centrifuge",
  },
  ["reactor"] = {
    "nuclear-reactor",
  },
  ["rocket-silo"] = {
    "rocket-silo",
  },
}

for entity_type, names in pairs(entities_to_disable) do
  for _, name in pairs(names) do
    local entity = data.raw[entity_type] and data.raw[entity_type][name]
    if entity then
      if not entity.flags then entity.flags = {} end
      table.insert(entity.flags, "hidden")
      -- Remove from crafting menu by hiding the item
      local item = data.raw.item[name]
      if item then
        if not item.flags then item.flags = {} end
        table.insert(item.flags, "hidden")
      end
    end
  end
end

-------------------------------------------------------------------------------
-- DISABLE MILITARY
-- No biters, no military. Peaceful world.
-------------------------------------------------------------------------------
local military_items = {
  "pistol", "submachine-gun", "shotgun", "combat-shotgun",
  "rocket-launcher", "flamethrower",
  "firearm-magazine", "piercing-rounds-magazine",
  "uranium-rounds-magazine", "shotgun-shell", "piercing-shotgun-shell",
  "cannon-shell", "explosive-cannon-shell", "uranium-cannon-shell",
  "explosive-uranium-cannon-shell", "artillery-shell",
  "rocket", "explosive-rocket", "atomic-bomb",
  "flamethrower-ammo",
  "grenade", "cluster-grenade", "poison-capsule", "slowdown-capsule",
  "defender-capsule", "distractor-capsule", "destroyer-capsule",
  "light-armor", "heavy-armor", "modular-armor", "power-armor",
  "power-armor-mk2",
  "gun-turret", "laser-turret", "flamethrower-turret", "artillery-turret",
  "radar",
  "stone-wall", "gate",
  "land-mine",
}

for _, name in pairs(military_items) do
  for _, item_type in pairs({"item", "gun", "ammo", "armor", "capsule", "tool"}) do
    local item = data.raw[item_type] and data.raw[item_type][name]
    if item then
      if not item.flags then item.flags = {} end
      if not biogenesis.lib.tablefind(item.flags, "hidden") then
        table.insert(item.flags, "hidden")
      end
    end
  end
end

-------------------------------------------------------------------------------
-- REMOVE VANILLA LAB INPUTS MODIFICATION
-- Our Field Notebook Station is the only research building.
-- Don't add TOK to vanilla lab — hide the vanilla lab instead.
-------------------------------------------------------------------------------
local vanilla_lab = data.raw["lab"]["lab"]
if vanilla_lab then
  if not vanilla_lab.flags then vanilla_lab.flags = {} end
  table.insert(vanilla_lab.flags, "hidden")
  -- Hide the lab item too
  local lab_item = data.raw.item["lab"]
  if lab_item then
    if not lab_item.flags then lab_item.flags = {} end
    table.insert(lab_item.flags, "hidden")
  end
end
