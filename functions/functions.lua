global_item_replacer = function (old, new)

local recipes = table.deepcopy(data.raw.recipe)

	for i, recipe in pairs(recipes) do
	
		if recipe.ingredients ~= null then
			
			local ingredients = recipe.ingredients
			
			for i, ing in pairs(ingredients) do
			
			--log("get past for loop into ingredients")
			
				if ing.name ~= nil then
				
					if ing.name == old then
					
					--log("pasted check for if ingredients = old item")
					
					log(recipe.name)
					log(serpent.block(ing))
					
					local T = table.deepcopy(ing.type)
					local A = table.deepcopy(ing.amount)
					
					data.raw.recipe[recipe.name].ingredients[i] = {type = T, name = new, amount = A}
					
					log(recipe.name)
					
					log(serpent.block(recipe.ingredients))
					
					log("hit count")
					
					end
					
				else
				
					for j, v in pairs(ing) do
					--TODO:fix duplicated ingredients on some items
						if ing[1] == old then
						
						--log("pasted check for if ingredients = old item")
					
						log(recipe.name)
						log(serpent.block(ing))
						
						--local T = table.deepcopy(ing.type)
						local A = table.deepcopy(ing[2])
						
						log(new)
						log(A)
						
						data.raw.recipe[recipe.name].ingredients[i] = {new, A}
						
						log(recipe.name)
						
						log(serpent.block(data.raw.recipe[recipe.name].ingredients))
						
						log("hit count")
						
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
			
				log("get past for loop into normal ingredients")
				log("ningredients")
				log(serpent.block(ningredients))
				log("ing name")
				log(serpent.block(ing))
				
					if ing == old then
					
						log("pasted check for if ingredients = old item")
						
						log(recipe.name)
						log(serpent.block(ing))
						
						local T = table.deepcopy(ing.type)
						local A = table.deepcopy(ing.amount)
						
						data.raw.recipe[recipe.name].normal.ingredients[i] = {type = T, name = new, amount = A}
							
						log(recipe.name)
							
						log(serpent.block(recipe.ingredients))
							
						log("hit count")
							
					end
				
				end
				
			end

			if recipe.expensive then
				
				for i, ing in pairs(eingredients) do
				
				--log("get past for loop into ingredients")
				
					if ing.name == old then
					
						--log("pasted check for if ingredients = old item")
						
						log(recipe.name)
						log(serpent.block(ing))
						
						local T = table.deepcopy(ing.type)
						local A = table.deepcopy(ing.amount)
						
						data.raw.recipe[recipe.name].expensive.ingredients[i] = {type = T, name = new, amount = A}
						
						log(recipe.name)
							
						log(serpent.block(recipe.ingredients))
							
						log("hit count")
						
					end
				
				end
				
			end
		
		end
			
	end

end