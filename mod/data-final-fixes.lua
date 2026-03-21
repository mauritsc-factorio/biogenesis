-- Biogenesis: data-final-fixes phase
-- Final cleanup after all mods have run their data-updates.
-- This is where we ensure no unobtainable vanilla content leaks through.

-- Disable the freeplay scenario's starting items and crashsite
-- (handled at runtime in control.lua, but belt-and-suspenders here)

-- Ensure our recipes are correctly enabled/disabled
-- All bio- recipes that are enabled=true should stay enabled
-- All bio- recipes that are enabled=false should stay disabled (tech-gated)
for name, recipe in pairs(data.raw.recipe) do
  if string.match(name, "^bio%-") then
    -- Don't touch our recipes — they're set correctly in recipes.lua
  else
    -- Double-check: all non-bio recipes should be hidden
    if not recipe.hidden then
      recipe.hidden = true
    end
  end
end

-- Ensure no vanilla tech is visible
for name, tech in pairs(data.raw.technology) do
  if not string.match(name, "^bio%-") then
    if not tech.hidden then
      tech.hidden = true
      tech.enabled = false
    end
  end
end

-- Remove Space Age content if present
if mods["space-age"] then
  -- Hide space platform recipes and items
  for _, platform in pairs(data.raw["space-platform-hub"] or {}) do
    if not platform.flags then platform.flags = {} end
    table.insert(platform.flags, "hidden")
  end
end
