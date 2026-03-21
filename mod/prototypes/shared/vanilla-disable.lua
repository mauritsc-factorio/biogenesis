-- Biogenesis: Vanilla Content Disabling (data-updates phase)
-- Total conversion: hide all vanilla recipes, technologies, and items
-- that conflict with our biological progression.
-- Items themselves still exist (wood, stone, etc.) for use in our recipes.
--
-- Factorio 2.0: "hidden" is a boolean property on prototypes, NOT a flag.

-------------------------------------------------------------------------------
-- VANILLA ITEMS TO KEEP (needed until we have bio equivalents)
-------------------------------------------------------------------------------
local keep_items = {
}

-------------------------------------------------------------------------------
-- HIDE ALL VANILLA RECIPES (except kept items)
-------------------------------------------------------------------------------
for name, recipe in pairs(data.raw.recipe) do
  if not string.match(name, "^bio%-") and not keep_items[name] then
    recipe.hidden = true
  end
end

-------------------------------------------------------------------------------
-- HIDE ALL VANILLA TECHNOLOGIES
-------------------------------------------------------------------------------
for name, tech in pairs(data.raw.technology) do
  if not string.match(name, "^bio%-") then
    tech.hidden = true
    tech.enabled = false
  end
end

-------------------------------------------------------------------------------
-- DISABLE SPECIFIC VANILLA ENTITIES
-------------------------------------------------------------------------------
local entities_to_disable = {
  ["mining-drill"] = {
    "electric-mining-drill", "burner-mining-drill",
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
      entity.hidden = true
    end
    -- Hide the corresponding item too
    local item = data.raw.item[name]
    if item then
      item.hidden = true
    end
  end
end

-------------------------------------------------------------------------------
-- DISABLE MILITARY
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
      item.hidden = true
    end
  end
end

-------------------------------------------------------------------------------
-- HIDE VANILLA LAB
-------------------------------------------------------------------------------
local vanilla_lab = data.raw["lab"]["lab"]
if vanilla_lab then
  vanilla_lab.hidden = true
end
local lab_item = data.raw.item["lab"]
if lab_item then
  lab_item.hidden = true
end
