local FUN = require("functions/functions")

if not settings.startup["uberhaul"].value then

if mods["pyrawores"] then

	if mods["aai-industry"] and not mods["space-exploration"] then
	
	data.raw.technology["electric-lab"].prerequisites = {"electronics"}
	data.raw.technology["glass-processing"] = nil
	--data.raw.technology["sand-processing"] = nil
	
	--lazy dont wanna make function. will do manual for now
		for _, t in pairs(data.raw.technology) do
		
			if t.prerequisites ~= nil then
			
				for _, p in pairs(t.prerequisites) do
					
					if p == "glass-processing" then
					
						p = ""
						
					end
					
				end
				
			end
		
		end
	
	end

	if mods["aai-industry-sp0"] then
	
		table.remove(data.raw.technology["electric-mining"].unit.ingredients, 1)
	
	end

	--bob mods stuff
	if mods["boblibrary"] then
			
		if mods["pyhightech"] then
		log(serpent.block(data.raw.recipe["valvea"]))
			if data.raw.recipe["valvea"].normal ~= nil then
			
				table.insert(data.raw.recipe["valvea"].normal.ingredients,{type = "item", name = "glass", amount = 2})
				
			end
			if data.raw.recipe["valvea"].expensive ~= nil then
			
				table.insert(data.raw.recipe["valvea"].expensive.ingredients,{type = "item", name = "glass", amount = 4})
			
			end
			if data.raw.recipe["valvea"].ingredients ~= nil then
			
				table.insert(data.raw.recipe["valvea"].ingredients,{type = "item", name = "glass", amount = 2})
			
			end
		
		end
		
		--[[bob-updates.lua]] -- luacheck: globals bobmods

	local add_result = bobmods.lib.recipe.add_result
	local remove_result = bobmods.lib.recipe.remove_result

		if mods["bobores"] then

		--log(serpent.block(data.raw["autoplace-control"]))
			data.raw.resource["bauxite-ore"] = nil
			data.raw["autoplace-control"]["bauxite-ore"] = nil

			data.raw.resource["cobalt-ore"] = nil
			data.raw["autoplace-control"]["cobalt-ore"] = nil

			data.raw.resource["gem-ore"] = nil
			data.raw["autoplace-control"]["gem-ore"] = nil

			data.raw.resource["gold-ore"] = nil
			data.raw["autoplace-control"]["gold-ore"] = nil

			data.raw.resource["lead-ore"] = nil
			data.raw["autoplace-control"]["lead-ore"] = nil

			data.raw.resource["nickel-ore"] = nil
			data.raw["autoplace-control"]["nickel-ore"] = nil

			data.raw.resource["quartz"] = nil
			data.raw["autoplace-control"]["quartz"] = nil

			data.raw.resource["rutile-ore"] = nil
			data.raw["autoplace-control"]["rutile-ore"] = nil

			data.raw.resource["silver-ore"] = nil
			data.raw["autoplace-control"]["silver-ore"] = nil

			data.raw.resource["sulfur"] = nil
			data.raw["autoplace-control"]["sulfur"] = nil

			data.raw.resource["tin-ore"] = nil
			data.raw["autoplace-control"]["tin-ore"] = nil

			data.raw.resource["tungsten-ore"] = nil
			data.raw["autoplace-control"]["tungsten-ore"] = nil

			data.raw.resource["zinc-ore"] = nil
			data.raw["autoplace-control"]["zinc-ore"] = nil

			--data.raw.resource["lithia-water"] = nil
			--data.raw["autoplace-control"]["lithia-water"] = nil

			--data.raw.resource["ground-water"] = nil
			--data.raw["autoplace-control"]["ground-water"] = nil
			
			data.raw["map-gen-presets"]["default"]["rail-world"]["basic_settings"] = nil
			data.raw["map-gen-presets"]["default"]["rich-resources"]["basic_settings"] = nil
			
			FUN.results_replacer("tailings-tin-lead","tin-ore","ore-tin")
			FUN.results_replacer("tailings-tin-lead","lead-ore","ore-lead")
			
			FUN.results_replacer("tailings-nickel-zinc","nickel-ore","ore-nickel")
			FUN.results_replacer("tailings-nickel-zinc","zinc-ore","ore-zinc")
			
			--FUN.results_replacer("tailings-gold-silver","gold-ore","ore-gold")
			--FUN.results_replacer("tailings-gold-silver","silver-ore","ore-silver")
			
			FUN.results_replacer("tailings-bauxite-cobalt","bauxite-ore","ore-aluminium")
			--FUN.results_replacer("tailings-bauxite-cobalt","cobalt-ore","ore-cobalt")
			
			FUN.results_replacer("tailings-rutile-tungsten","rutile-ore","ore-titanium")
			--FUN.results_replacer("tailings-rutile-tungsten","","")
			
				-- tailings_nickel_zinc
				-- tailings_tin_lead
				-- tailings_gold_silver
				-- tailings_gemstones
				-- tailings_bauxite_cobalt
				-- tailings_rutile_tungsten
				
			FUN.global_item_replacer("bauxite-ore","ore-aluminium")
			FUN.global_item_replacer("tin-ore","ore-tin")
			FUN.global_item_replacer("lead-ore","ore-lead")
			FUN.global_item_replacer("nickel-ore","ore-nickel")
			FUN.global_item_replacer("zinc-ore","ore-zinc")
			FUN.global_item_replacer("rutile-ore","ore-titanium")
				
		end
		
		if mods["bobelectronics"] then
		
			if mods["pyhightech"] then

				RECIPE('electronic-circuit'):remove_ingredient('solder')
				RECIPE('advanced-circuit'):remove_ingredient('solder')
				RECIPE('processing-unit'):remove_ingredient('solder')

			end
			
			FUN.global_item_replacer("tinned-copper-cable","tinned-cable")

			--data.raw.recipe["tinned-copper-cable"] = null
			data.raw.item["tinned-copper-cable"] = null
			
		end
	
	FUN.ingredient_replace("gun-turret","duralumin","aluminium-plate")
	
		--remove bob techs and remove them from prerequisites script
		--TODO: convert into callable funtion and move to a functions file 
		local TechList = {}

		table.insert(TechList, 'electrolysis-1')
		table.insert(TechList, 'electrolyser-2')
		table.insert(TechList, 'electrolyser-3')
		table.insert(TechList, 'electrolyser-4')
		table.insert(TechList, 'nickel-processing')

		local AllTechs = table.deepcopy(data.raw.technology)

		for t, tech in pairs(TechList) do

			data.raw.technology[tech] = null
			
			for at, alltech in pairs(AllTechs) do
			
			--log(serpent.block(alltech))
			
				if alltech.prerequisites ~= null then
				
					for p, prereq in pairs(alltech.prerequisites) do
					
						--log(tech)
						--log(prereq)
					
						if tech == prereq then
						
						--log("is this working")
						--log(p)
						--log(serpent.block(alltech.prerequisites))
						
							table.remove(data.raw.technology[alltech.name].prerequisites, p)
							
						end
						
					end
					
				end
				
			end
			
		end

		--remove unneeded recipes
		TECHNOLOGY("chemical-processing-2"):remove_effect('ferric-chloride-solution')
			
		local recipe = table.deepcopy(data.raw.recipe)

		for r, rec in pairs(recipe) do
		
			if rec.category == "electrolysis" then
			
				data.raw.recipe[rec.name].category = "electrolyzer"
				
			end
		
		end
		
	end
	
if mods["angelspetrochem"] then

	if mods["angelssmelting"] then
	
		FUN.global_item_replacer("liquid-molten-aluminium","molten-aluminium")
		FUN.global_item_replacer("liquid-molten-copper","molten-copper")
		FUN.global_item_replacer("liquid-molten-iron","molten-iron")
		FUN.global_item_replacer("liquid-molten-lead","molten-lead")
		FUN.global_item_replacer("liquid-molten-silver","molten-silver")
		FUN.global_item_replacer("liquid-molten-nickel","molten-nickel")
		FUN.global_item_replacer("liquid-molten-steel","molten-steel")
		FUN.global_item_replacer("liquid-molten-tin","molten-tin")
		FUN.global_item_replacer("liquid-molten-titanium","molten-titanium")
		FUN.global_item_replacer("liquid-molten-zinc","molten-zinc")
		FUN.global_item_replacer("liquid-molten-chrome","molten-chromium")
	
	end
	
	if mods["angelsrefining"] then
	
		FUN.results_replacer("angelsore5-crushed-processing","ore-nickel","ore-aluminium")
		
		if settings.startup["pymods-remove-regular-ores"].value then
		
			data.raw.resource["ore-aluminium"] = nil
			data.raw["autoplace-control"]["ore-aluminium"] = nil
			
			data.raw.resource["ore-chromium"] = nil
			data.raw["autoplace-control"]["ore-chromium"] = nil
			
			data.raw.resource["ore-lead"] = nil
			data.raw["autoplace-control"]["ore-lead"] = nil
			
			data.raw.resource["ore-nickel"] = nil
			data.raw["autoplace-control"]["ore-nickel"] = nil
			
			data.raw.resource["ore-quartz"] = nil
			data.raw["autoplace-control"]["ore-quartz"] = nil
			
			data.raw.resource["raw-coal"] = nil
			data.raw["autoplace-control"]["raw-coal"] = nil
			
			data.raw.resource["ore-tin"] = nil
			data.raw["autoplace-control"]["ore-tin"] = nil
			
			data.raw.resource["ore-titanium"] = nil
			data.raw["autoplace-control"]["ore-titanium"] = nil
			
			data.raw.resource["ore-zinc"] = nil
			data.raw["autoplace-control"]["ore-zinc"] = nil

		end
		
		if settings.startup["pymods-remove-regular-alum"].value then
		
			data.raw.resource["ore-aluminium"] = nil
			data.raw["autoplace-control"]["ore-aluminium"] = nil
			
		end
		if settings.startup["pymods-remove-regular-chrom"].value then
			
			data.raw.resource["ore-chromium"] = nil
			data.raw["autoplace-control"]["ore-chromium"] = nil
		
		end
		if settings.startup["pymods-remove-regular-lead"].value then
			
			data.raw.resource["ore-lead"] = nil
			data.raw["autoplace-control"]["ore-lead"] = nil
		
		end
		if settings.startup["pymods-remove-regular-nickel"].value then
			
			data.raw.resource["ore-nickel"] = nil
			data.raw["autoplace-control"]["ore-nickel"] = nil
		
		end
		if settings.startup["pymods-remove-regular-quartz"].value then
			
			data.raw.resource["ore-quartz"] = nil
			data.raw["autoplace-control"]["ore-quartz"] = nil
		
		end
		if settings.startup["pymods-remove-regular-rawcoal"].value then
			
			data.raw.resource["raw-coal"] = nil
			data.raw["autoplace-control"]["raw-coal"] = nil
		
		end
		if settings.startup["pymods-remove-regular-tin"].value then
			
			data.raw.resource["ore-tin"] = nil
			data.raw["autoplace-control"]["ore-tin"] = nil
		
		end
		if settings.startup["pymods-remove-regular-titan"].value then
			
			data.raw.resource["ore-titanium"] = nil
			data.raw["autoplace-control"]["ore-titanium"] = nil
		
		end
		if settings.startup["pymods-remove-regular-zinc"].value then
			
			data.raw.resource["ore-zinc"] = nil
			data.raw["autoplace-control"]["ore-zinc"] = nil
		
		end
			
	end

	FUN.global_item_replacer("hydrogen","gas-hydrogen")
	FUN.global_item_replacer("chlorine","gas-chlorine")
	FUN.global_item_replacer("oxygen","gas-oxygen")
	FUN.global_item_replacer("nitrogen","gas-nitrogen")
	FUN.global_item_replacer("hydrogen-chloride","gas-hydrogen-chloride")
	FUN.global_item_replacer("solid-salt","salt")
	FUN.global_item_replacer("solid-sodium-carbonate","sodium-carbonate")
	FUN.global_item_replacer("solid-sodium-hydroxide","sodium-hydroxide")
	FUN.global_item_replacer("solid-sodium-sulfate","sodium-sulfate")
	
	
end
	
end

end