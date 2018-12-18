global_item_replacer = function (old, new)

ingredient_replace(old,new)

results_replacer(old,new)

end

ingredient_replace = function (old, new)

local recipes = table.deepcopy(data.raw.recipe)

	for i, recipe in pairs(recipes) do
	
		if recipe.ingredients ~= null then
			
			local ingredients = recipe.ingredients
			
			for i, ing in pairs(ingredients) do
			
			--log("get past for loop into ingredients")
			
				if ing.name ~= nil then
				
					if ing.name == old then
					
					--log("pasted check for if ingredients = old item")
					--log(recipe.name)
					--log(serpent.block(ing))
					
					local T = table.deepcopy(ing.type)
					local A = table.deepcopy(ing.amount)
					
					data.raw.recipe[recipe.name].ingredients[i] = {type = T, name = new, amount = A}
					
					--log(recipe.name)
					--log(serpent.block(recipe.ingredients))
					--log("hit count")
					
					end
					
				else
				
					for j, v in pairs(ing) do
					--TODO:fix duplicated ingredients on some items
						if ing[1] == old then
						
						--log("pasted check for if ingredients = old item")
						--log(recipe.name)
						--log(serpent.block(ing))
						
						--local T = table.deepcopy(ing.type)
						local A = table.deepcopy(ing[2])
						
						--log(new)
						--log(A)
						
						data.raw.recipe[recipe.name].ingredients[i] = {new, A}
						
						--log(recipe.name)
						--log(serpent.block(data.raw.recipe[recipe.name].ingredients))
						--log("hit count")
						
						end
				
					end
				
				end
			
			end
			--TODO:need to check for ingredients that dont have name declared
		elseif recipe.normal or recipe.expensive then
		
			local ningredients = recipe.normal.ingredients 
			local eingredients = recipe.expensive.ingredients
			
			if recipe.normal then
			
			--log(serpent.block(recipe.normal))
			
				for i, ing in pairs(ningredients) do
			
				--log("get past for loop into normal ingredients")
				--log("ningredients")
				--log(serpent.block(ningredients))
				--log("ing name")
				--log(serpent.block(ing))
				
					if ing.name ~= nil then
						
						if ing == old then
						
							--log("pasted check for if ingredients = old item")
							--log(recipe.name)
							--log(serpent.block(ing))
							
							local T = table.deepcopy(ing.type)
							local A = table.deepcopy(ing.amount)
							
							data.raw.recipe[recipe.name].normal.ingredients[i] = {type = T, name = new, amount = A}
								
							--log(recipe.name)
							--log(serpent.block(recipe.ingredients))
							--log("hit count")
								
						end
					
					else
					
						for j,v in pairs(ing) do
						
							if ing[1] == old then
							
							local A = table.deepcopy(ing[2])
							
							data.raw.recipe[recipe.name].normal.ingredients[i] = {new, A}
							
							end
							
						end
					
					end
					
				end
				
			end

			if recipe.expensive then
				
				for i, ing in pairs(eingredients) do
				
				--log("get past for loop into ingredients")
				
					if ing.name ~= nil then
						
						if ing.name == old then
						
							--log("pasted check for if ingredients = old item")
							--log(recipe.name)
							--log(serpent.block(ing))
							
							local T = table.deepcopy(ing.type)
							local A = table.deepcopy(ing.amount)
							
							data.raw.recipe[recipe.name].expensive.ingredients[i] = {type = T, name = new, amount = A}
							
							--log(recipe.name)
							--log(serpent.block(recipe.ingredients))
							--log("hit count")
							
						end
					
					else
					
						for j,v in pairs(ing) do
						
							if ing[1] == old then
							
							local A = table.deepcopy(ing[2])
							
							data.raw.recipe[recipe.name].normal.ingredients[i] = {new, A}
							
							end
							
						end
					
					end
					
				end
				
			end
		
		end
			
	end

end

results_replacer = function (old, new)

	local Recipes = table.deepcopy(data.raw.recipe)
	
	for i, recipe in pairs(Recipes) do
	
	--log(recipe.name)
	--log(serpent.block(recipe))
	
		if recipe.result then
		
			if recipe.result == old then
			
			data.raw.recipe[recipe.name].result = new
			
			end
			
		end
		
		if recipe.results then
		
			for r, result in pairs(recipe.results) do
			
				if result.name == old then
				
					data.raw.recipe[recipe.name].results[r].name = new
					
				end
				
			end
			
		end
		
		if recipe.main_product ~= nil then
		
		--log("should replace main_product")
			if recipe.main_product == old then
				--log("getting here for iron plate 1?")
				data.raw.recipe[recipe.name].main_product = new
				
			end
			
		end
		
		if recipe.normal or recipe.expensive then
		
			if recipe.normal then
			
				if recipe.normal.result then
		
					if recipe.normal.result == old then
					
						data.raw.recipe[recipe.name].normal.result = new
					
					end
					
				end
		
				if recipe.normal.results then
				
					for r, result in pairs(recipe.normal.results) do
					
						if result.name == old then
						
							data.raw.recipe[recipe.name].normal.results[r].name = new
							
						end
						
					end
					
				end
				
				if recipe.normal.main_product then
				
					if recipe.normal.main_product == old then
					
						data.raw.recipe[recipe.name].normal.main_product = new
						
					end
					
				end
				
			end
			
			if recipe.expensive then
			
				if recipe.expensive.result then
				
					if recipe.expensive.result == old then
					
						data.raw.recipe[recipe.name].expensive.result = new
						
					end
					
				end
				
				if recipe.expensive.results then
				
					for r, result in pairs(recipe.expensive.results) do
					
						if result.name == old then
						
							data.raw.recipe[recipe.name].expensive.results[r].name = new
							
						end
						
					end
					
				end
				
				if recipe.expensive.main_product then
				
					if recipe.expensive.main_product == old then
					
						data.raw.recipe[recipe.name].expensive.main_product = new
						
					end
					
				end
				
			end
			
		end
				
	end

end