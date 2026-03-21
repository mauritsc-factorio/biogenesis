-- Biogenesis: Utility library
-- Adapted from SeaBlock's lib.lua for recipe/tech manipulation.

biogenesis = biogenesis or {}
biogenesis.lib = {}

-------------------------------------------------------------------------------
-- TABLE HELPERS
-------------------------------------------------------------------------------
function biogenesis.lib.tablefind(t, item)
  for k, v in pairs(t) do
    if v == item then return k end
  end
  return nil
end

-------------------------------------------------------------------------------
-- RECIPE MANIPULATION
-------------------------------------------------------------------------------

-- Apply a function to a recipe (Factorio 2.0: flat format only, no normal/expensive)
function biogenesis.lib.iteraterecipes(recipe, func)
  func(recipe)
end

-- Substitute an ingredient in a recipe
function biogenesis.lib.substingredient(name, from, to, count)
  local t = data.raw.recipe[name]
  if not t then return end
  local function dosubst(recipe)
    for _, ing in pairs(recipe.ingredients) do
      local nameidx = ing.name and "name" or 1
      local amountidx = ing.amount and "amount" or 2
      if ing[nameidx] == from then
        if to ~= nil then ing[nameidx] = to end
        if count ~= nil then ing[amountidx] = count end
      end
    end
  end
  biogenesis.lib.iteraterecipes(t, dosubst)
end

-- Remove an ingredient from a recipe
function biogenesis.lib.removeingredient(name, ingredient)
  local t = data.raw.recipe[name]
  if not t then return end
  local function doremove(recipe)
    for k, v in pairs(recipe.ingredients) do
      if v[1] == ingredient or v.name == ingredient then
        table.remove(recipe.ingredients, k)
        return
      end
    end
  end
  biogenesis.lib.iteraterecipes(t, doremove)
end

-------------------------------------------------------------------------------
-- VISIBILITY CONTROL
-------------------------------------------------------------------------------

-- Hide a recipe from the crafting menu
function biogenesis.lib.hide_recipe(recipe_name)
  local recipe = data.raw.recipe[recipe_name]
  if not recipe then return end
  recipe.hidden = true
end

-- Hide a technology from the tech tree
function biogenesis.lib.hide_technology(tech_name)
  local tech = data.raw.technology[tech_name]
  if not tech then return end
  tech.hidden = true
  tech.enabled = false
end

-- Hide an item (add "hidden" flag)
function biogenesis.lib.hide_item(item_name)
  -- Search all item types
  for _, item_type in pairs({"item", "tool", "armor", "gun", "ammo",
    "capsule", "module", "rail-planner", "item-with-entity-data",
    "item-with-inventory", "item-with-label", "item-with-tags",
    "selection-tool", "spidertron-remote"}) do
    local item = data.raw[item_type] and data.raw[item_type][item_name]
    if item then
      if not item.flags then item.flags = {} end
      if not biogenesis.lib.tablefind(item.flags, "hidden") then
        table.insert(item.flags, "hidden")
      end
      return
    end
  end
  -- Try fluid
  local fluid = data.raw.fluid and data.raw.fluid[item_name]
  if fluid then
    fluid.hidden = true
  end
end

-- Hide an entity
function biogenesis.lib.hide_entity(entity_type, entity_name)
  local entity = data.raw[entity_type] and data.raw[entity_type][entity_name]
  if not entity then return end
  if not entity.flags then entity.flags = {} end
  if not biogenesis.lib.tablefind(entity.flags, "hidden") then
    table.insert(entity.flags, "hidden")
  end
end

-------------------------------------------------------------------------------
-- TECHNOLOGY HELPERS
-------------------------------------------------------------------------------

-- Find which technology unlocks a recipe
function biogenesis.lib.findtechunlock(recipe_name)
  for _, tech in pairs(data.raw.technology) do
    for _, effect in pairs(tech.effects or {}) do
      if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
        return tech
      end
    end
  end
end

-- Remove a specific effect from a technology
function biogenesis.lib.remove_effect(tech_name, effect_type, effect_key, effect_value)
  local tech = data.raw.technology[tech_name]
  if not tech or not tech.effects then return end
  for i, effect in pairs(tech.effects) do
    if effect.type == effect_type and effect[effect_key] == effect_value then
      table.remove(tech.effects, i)
      return
    end
  end
end
