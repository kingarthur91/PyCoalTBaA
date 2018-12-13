	local recipes_list = 
	{
		"biofilm",
		"mukmoux-fat",
		"cladding",
		"copper-coating",
		"filtration-media",
		"kevlar",
		"kevlar-coating",
		"nbfe-alloy",
		"nbfe-coating",
		"rich-clay",
		"ground-sample01",
		"bio-sample01",
		"alien-sample01",
		"equipment-chassi",
		"lab-instrument",
		"zinc-chloride",
		"drill-head",
		"niobium-oxide",
		"niobium-plate",
		"ppd",
		"lithium-peroxide",
		"nexelit-cartridge",
		"glycerol-hydrogen",
		"explosive-glycerol",
		"zinc-chloride",
		"slacked-lime",
		"fawogae-substrate",
		"ralesia-seeds",
		"sand-brick",
		"treated-wood",
		"organics-from-wood",
		"acetylene",
		"boric-acid",
		"diborane",
		"niobium-complex",
		"organic-solvent",
		
	}
	
	if mods["bobmods"] then
	
		table.insert(recipes_list, "py-sodium-hydroxide")
		table.insert(recipes_list, "flask")
		table.insert(recipes_list, "glass-sand3")
		table.insert(recipes_list, "coaldust-carbon")
		table.insert(recipes_list, "saline")
		table.insert(recipes_list, "lube-glycerol")
		
	
	end
	
	local Cat_list = {
		"coal-processing",
		"distilator",
		"rectisol",
		"carbonfilter",
		"gasifier",
		"tar",
		"methanol",
		"hpf",
		"quenching-tower",
		"combustion",
		"cooling",
		"evaporator",
		"desulfurization",
		"olefin",
		"soil-extraction",
		"ground-borer",
		"fts-reactor",
		"solid-separator",
		"washer",
		"classifier",
		"advanced-foundry",
		"co2",
		"fluid-separator",
		"fawogae",
		"ralesia",
		"ulric",
		"borax",
		"niobium",
		"crusher",
		"ball-mill",
		"sand-extractor",
		"mukmoux",
		"rare-earth",
		"advanced-crafting",
		"nursery",
		"wpu",
		"borax",
		"niobium",
		"drill"
		}
			
if mods["pyfusionenergy"] then
	
		table.insert(Cat_list, 'agitator')
		table.insert(Cat_list, "thickener")
		table.insert(Cat_list, "vacuum")
		table.insert(Cat_list, "plankton")
		table.insert(Cat_list, "xyhiphoe")
		table.insert(Cat_list, "hydrocyclone")
		table.insert(Cat_list, "mixer")
		table.insert(Cat_list, "screener")
		table.insert(Cat_list, "secondary-crusher")
		table.insert(Cat_list, "pan")
		table.insert(Cat_list, "jig")
		table.insert(Cat_list, "grease")
		table.insert(Cat_list, "compressor")
		table.insert(Cat_list, "genlab")
		table.insert(Cat_list, "kmauts")
		table.insert(Cat_list, "bio-reactor")
		table.insert(Cat_list, "gas-separator")
		table.insert(Cat_list, "nmf")
		table.insert(Cat_list, "fusion-01")
		table.insert(Cat_list, "fusion-02")
		table.insert(Cat_list, "heat-exchanger")
		table.insert(recipes_list, "molybdenum-plate")
		table.insert(recipes_list, "sodium-chlorate")
		table.insert(recipes_list, "kmauts-ration")
		table.insert(recipes_list, "control-unit")
		table.insert(recipes_list, "divertor")
		table.insert(recipes_list, "lead-container")
		table.insert(recipes_list, "sc-coil")
		table.insert(recipes_list, "sc-wire")
		
end
	
if mods["pyhightech"] then
	
		table.insert(Cat_list, "phosphate")
		table.insert(Cat_list, "rare-earth")
		table.insert(Cat_list, "clay")
		table.insert(Cat_list, "moon")
		table.insert(Cat_list, "auog")
		table.insert(Cat_list, "arum")
		table.insert(Cat_list, "electronic")
		table.insert(Cat_list, "pulp")
		table.insert(Cat_list, "chip")
		table.insert(Cat_list, "pcb")
		table.insert(Cat_list, "fbreactor")
		table.insert(Cat_list, "nano")
		table.insert(Cat_list, "kicalk")
		table.insert(Cat_list, "zipir")
		table.insert(Cat_list, "quantum")
		table.insert(Cat_list, "pa")
		table.insert(Cat_list, "handcrafting")
		table.insert(Cat_list, "erase")
		
		table.insert(recipes_list, "ammonia-urea")
		table.insert(recipes_list, "bisphenol-a")
		table.insert(recipes_list, "logistic-robot-ht")
		table.insert(recipes_list, "construction-robot-ht")
		table.insert(recipes_list, "fiber")
		table.insert(recipes_list, "nylon-parts")
		
end

if mods["pyindustry"] then

	table.insert(recipes_list, "py-logistic-robot-01")
	table.insert(recipes_list, "py-construction-robot-01")

	--add_items("py-logistic-robot-01")
	
end
	
add_items = function (recipe_item, cat_item)

	if recipe_item ~= nil then
	
		table.insert(recipes_list, recipe_item)
		
	end
	
	if cat_item ~= nil then
	
		table.insert(Cat_list, cat_item)
		
	end
		
end

recipe_output_mod = function ()	
		
		--log(serpent.block(Cat_list))
		
		local AllRecipes = table.deepcopy(data.raw.recipe)

for i, Recipe in pairs(AllRecipes) do

	for k, Cat in ipairs(Cat_list) do

		if Recipe.category == Cat then

		local Name = table.deepcopy(Recipe.name)
		
		table.insert(recipes_list, Name)
		
		end
		
	end
	
end
	
	--log(serpent.block(recipes_list))
	
	local factor = settings.startup["SpaceX"].value

if not mods["bobmods"] then

	data.raw.recipe["nichrome"].results = {{type = "item", name = "nichrome", amount = 1}}

end


	for i, recipe_name in ipairs(recipes_list) do
		
		if data.raw.recipe[recipe_name] ~= nil then
		--log(recipe_name)
		--log(serpent.block(data.raw.recipe[recipe_name]))
		
		--data.raw.recipe[recipe_name].subgroup = "raw-resource"
		
		if data.raw.recipe[recipe_name].results then
			local results = table.deepcopy(data.raw.recipe[recipe_name].results)
			
			for k, Result in ipairs(results) do
			
				--log(Result)
				--log(recipe_name)
				--log(serpent.block(data.raw.recipe[recipe_name].results))
			
			
				if Result.name ~= "seedling" then

				if data.raw.recipe[recipe_name].results[k].amount ~= nil then
				
				local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].results[k].name)
				--log(data.raw.recipe[recipe_name].results[k].amount)
				local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].results[k].amount) * factor)
				local result_type = table.deepcopy(data.raw.recipe[recipe_name].results[k].type)
				
				local temp
				
					if result_type == "fluid" then
					
						temp = table.deepcopy(data.raw.recipe[recipe_name].results[k].temperature)
						
						data.raw.recipe[recipe_name].results[k] = {type = result_type, name = reciperesultsname, amount = reciperesultamount, temperature = temp}
						
					else
						
						data.raw.recipe[recipe_name].results[k] = {type = result_type, name = reciperesultsname, amount = reciperesultamount}
					
					end
					
				end
					
				end
				
			end
			
		
		elseif data.raw.recipe[recipe_name].main_product then
			
				local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].results.name)
				local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].results.amount) * factor)
				local result_type = table.deepcopy(data.raw.recipe[recipe_name].results.type)
				
				data.raw.recipe[recipe_name].results = {type = result_type, name = reciperesultsname, amount = reciperesultamount}
				
		elseif data.raw.recipe[recipe_name].result then
		
				local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].result.name)
				--local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].result) + factor)
				local result_type = table.deepcopy(data.raw.recipe[recipe_name].result.type)
				
				--data.raw.recipe[recipe_name].result = {type = result_type, name = reciperesultsname, amount = factor}
				
				data.raw.recipe[recipe_name].result_count = factor
		
		elseif data.raw.recipe[recipe_name].normal.result or data.raw.recipe[recipe_name].expensive.result then
		
			if data.raw.recipe[recipe_name].normal.result then
				
				local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].normal.result)
				
				local reciperesultamount 
				
					if data.raw.recipe[recipe_name].normal.result_count then
					
						reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].normal.result_count.amount) * factor)
					
					else
					
						reciperesultamount = factor
						
					end
					
				local result_type = table.deepcopy(data.raw.recipe[recipe_name].normal.result.type)
				
				data.raw.recipe[recipe_name].normal.result = reciperesultsname
				
				data.raw.recipe[recipe_name].normal.result_count = reciperesultamount
			
			end

			if data.raw.recipe[recipe_name].expensive.result then
			
				
				local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].expensive.result)
				
				local reciperesultamount 
				
					if data.raw.recipe[recipe_name].expensive.result_count then
					
						reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].expensive.result_count.amount) * factor)
					
					else
					
						reciperesultamount = factor
						
					end
					
				local result_type = table.deepcopy(data.raw.recipe[recipe_name].expensive.result.type)
				
				data.raw.recipe[recipe_name].expensive.result = reciperesultsname
				
				data.raw.recipe[recipe_name].expensive.result_count = reciperesultamount
				
			end
		
		elseif data.raw.recipe[recipe_name].normal.results then
		
			local Normalresults 
			
			local Expensiveresults
			
				if data.raw.recipe[recipe_name].normal.results then
				
					Normalresults = table.deepcopy(data.raw.recipe[recipe_name].normal.results)
					
				end
				
				if data.raw.recipe[recipe_name].expensive.results then
				
					Expensiveresults = table.deepcopy(data.raw.recipe[recipe_name].expensive.results)
					
				end
		
			for k, Result in ipairs(Normalresults) do
			
				if data.raw.recipe[recipe_name].normal.results then
					
					if data.raw.recipe[recipe_name].normal.results.amount then
					
					local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].normal.results[k].name)
					
					local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].normal.results[k].amount) * factor)
					local result_type = table.deepcopy(data.raw.recipe[recipe_name].normal.results[k].type)
					
					data.raw.recipe[recipe_name].normal.results[k] = {type = result_type, name = reciperesultsname, amount = reciperesultamount}
				
					elseif data.raw.recipe[recipe_name].normal.results.amount_min then
				
					local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].normal.results[k].name)
					
					local reciperesultamount_min = (table.deepcopy(data.raw.recipe[recipe_name].normal.results[k].amount_min) * factor)
					local reciperesultamount_max = (table.deepcopy(data.raw.recipe[recipe_name].normal.results[k].amount_max) * factor)
					
					local result_type = table.deepcopy(data.raw.recipe[recipe_name].normal.results[k].type)
					
					data.raw.recipe[recipe_name].normal.results[k] = {type = result_type, name = reciperesultsname, amount_min = reciperesultamount_min, amount_max = reciperesultamount_max}
				
					end
				
				end
				
			end
			
			for k, Result in ipairs(Expensiveresults) do

				if data.raw.recipe[recipe_name].expensive.results then
				
					if data.raw.recipe[recipe_name].expensive.results.amount then
					
					local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].expensive.results[k].name)
					
					local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].expensive.results[k].amount) * factor)
					local result_type = table.deepcopy(data.raw.recipe[recipe_name].expensive.results[k].type)
					
					data.raw.recipe[recipe_name].expensive.results[k] = {type = result_type, name = reciperesultsname, amount = reciperesultamount}
					
					elseif data.raw.recipe[recipe_name].expensive.results.amount_min then
					
					local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].expensive.results[k].name)
					
					local reciperesultamount_min = (table.deepcopy(data.raw.recipe[recipe_name].expensive.results[k].amount_min) * factor)
					local reciperesultamount_max = (table.deepcopy(data.raw.recipe[recipe_name].expensive.results[k].amount_max) * factor)
					
					local result_type = table.deepcopy(data.raw.recipe[recipe_name].expensive.results[k].type)
					
					data.raw.recipe[recipe_name].expensive.results[k] = {type = result_type, name = reciperesultsname, amount_min = reciperesultamount_min, amount_max = reciperesultamount_max}
					
					end
					
				end
			
			end
		
		
		elseif data.raw.recipe[recipe_name].results ~= nil then
			
				local reciperesultsname = table.deepcopy(data.raw.recipe[recipe_name].results[k].name)
				local reciperesultamount = (table.deepcopy(data.raw.recipe[recipe_name].results[k].amount) * factor)
				local result_type = table.deepcopy(data.raw.recipe[recipe_name].results[k].type)
				
				data.raw.recipe[recipe_name].results[k] = {type = result_type, name = reciperesultsname, amount = reciperesultamount}
		
		end
		
	end
	
	end
	
	recipes_list = {}
	
	Cat_list = {}
	
end
--[[
test some changes to simply script to reduce errors from the multiple options

for i, test in pairs(data.raw.recipe["water-saline-separation"]) do

	log(serpent.block(test))
	
end
]]--