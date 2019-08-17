
if mods["angelspetrochem"] then

	local OV = angelsmods.functions.OV

	if settings.startup["pymods-acid-increase"].value then

	local recipes_list = {'concrete-richclay','heavy-oleo','oleo-heavy','explosive-glycerol'}
	local items_list = {'sulfuric-acid'}
	local factor = 3

	if mods["pyfusionenergy"] then
	table.insert(recipes_list, 'washing-crude')
	table.insert(recipes_list,'methyl-acrylate')
	end

	if mods["pyhightech"] then
	table.insert(recipes_list,'ree-concentrate3')
	table.insert(recipes_list,'rare-earth-beneficiation')
	table.insert(recipes_list,'pdms-graphene')
	table.insert(recipes_list,'plastic2')
	table.insert(recipes_list,'rayon')
	table.insert(recipes_list,'lithium-chloride')
	table.insert(recipes_list,'coal-briquette3')

	end

	for i, recipe_name in ipairs(recipes_list) do
		
		local ingredients = data.raw.recipe[recipe_name].ingredients
		for k, ingredient in ipairs(ingredients) do
		for j, item_name in ipairs(items_list) do
		if ingredient.name == item_name then
		
		OV.patch_recipes({
		{
		name = recipe_name, ingredients = 
			{
				{
				name = "sulfuric-acid", type = "fluid", amount = ingredient.amount * factor
				}
			}
		}
		
		})
		end
		end
		end
		end
	end

end