--remove angels sorting recipes

for _, recipe in pairs(data.raw.recipe) do

if recipe.category == "ore-sorting" then

log(serpent.block(recipe.name))

end

end

fun.recipe_category_remove("ore-sorting")

-- add borax and niobium to angels ores

--borax added to shapirite and crotinium


--niobium added to stirite and jivolite.
