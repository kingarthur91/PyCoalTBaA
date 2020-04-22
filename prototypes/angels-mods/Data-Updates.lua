
require("prototypes/angels-mods/overrides/overrides-updates")

--require("prototypes/angels-mods/recipes/angelsore1")
--require("prototypes/angels-mods/recipes/angelsore2")
--require("prototypes/angels-mods/recipes/angelsore3")
--require("prototypes/angels-mods/recipes/angelsore4")
--require("prototypes/angels-mods/recipes/angelsore5")
--require("prototypes/angels-mods/recipes/angelsore6")

--remove angels sorting recipes
--[[
for _, recipe in pairs(data.raw.recipe) do

if recipe.category == "ore-sorting" then

log(serpent.block(recipe.name))

end

end
]]--

data.raw["assembling-machine"]["assembling-machine-1"].enabled = true

if mods["angelsrefining"] then

	--fun.recipe_category_remove("ore-sorting")

end

-- add borax and niobium to angels ores

--borax added to shapirite and crotinium


--niobium added to stirite and jivolite.
