--if not settings.startup["uberhaul"].value then


if mods["Bio_Industries"] then

if mods["pyhightech"] then

local items_list = {"fertiliser"}

local replacement_item = "py-fertilizer"

local items_dict = {["fertiliser"] = "py-fertilizer",["bi-ash"] = "ash"}

--local recipes_list = {"bi_recipe_seed_3"}

local ingredients_list = {}
local n_e_recipes = {}

local results_list = {}
local result_list = {}

for i, recipe in pairs(data.raw.recipe) do

	if recipe.ingredients then
		
		table.insert(ingredients_list,recipe.name)
	
	elseif recipe.normal.ingredients then
	
		table.insert(n_e_recipes,recipe.name)

	end
end
	
for i, recipe in pairs(data.raw.recipe) do

	if recipe.results then
		
		table.insert(results_list,recipe.name)
	
	elseif recipe.result then
	
		table.insert(result_list,recipe.name)

	end
end
	
for i, recipe_name in ipairs(ingredients_list) do

	local ingredients = table.deepcopy(data.raw.recipe[recipe_name].ingredients)
	
	for k, ingredient in ipairs(ingredients) do
		
		for j,l in pairs(items_dict) do
		
			if ingredient.name == j then
			
				local recipeingredamount = (table.deepcopy(data.raw.recipe[recipe_name].ingredients[k].amount))
			
				data.raw.recipe[recipe_name].ingredients[k] = {l, recipeingredamount}
				
			end
		
		end
		
	end
	
end

if mods["pyhightech"] then

data.raw.recipe["bi_recipe_seed_bomb_standard"].normal.ingredients[2] = {"py-fertilizer", 200}

end

--[[for i, recipe_name in ipairs(n_e_recipes) do

	local ingredients = table.deepcopy(data.raw.recipe[recipe_name].normal.ingredients)
	
	for k, ingredient in ipairs(ingredients) do
		
		for j,l in pairs(items_dict) do
		
			if ingredient.name == j then
			
				local recipeingredamount = table.deepcopy(data.raw.recipe[recipe_name].normal.ingredients[j].amount)
			
				data.raw.recipe[recipe_name].normal.ingredients[j] = {l, recipeingredamount}
				
			end
		
		end
		
	end
	
end
]]--
for i, recipe_name in ipairs(results_list) do

		local results = table.deepcopy(data.raw.recipe[recipe_name].results)
		
		for k, result in ipairs(results) do
			
			for j,l in pairs(items_dict) do
			
				if result.name == j then
				
					local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].results[k].amount))
				
					data.raw.recipe[recipe_name].results[k] = {l, reciperesultamount}
					
				end
			
			end
			
		end

end

for i, recipe_name in ipairs(result_list) do

	local result = table.deepcopy(data.raw.recipe[recipe_name].result)
		
		for j,l in pairs(items_dict) do
			
			if result == j then
				
				local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].result_count))
				
				data.raw.recipe[recipe_name].result = l
					
			end
			
		end
		
end

end

end

--end