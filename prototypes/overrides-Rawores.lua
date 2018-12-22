if mods["pyrawores"] then

	--bob mods stuff
	if mods["boblibrary"] then

		--[[bob-updates.lua]] -- luacheck: globals bobmods

	local add_result = bobmods.lib.recipe.add_result
	local remove_result = bobmods.lib.recipe.remove_result

		if mods["bobores"] then

		--log(serpent.block(data.raw["autoplace-control"]))

			if data.raw.resource["rutile-ore"] then
				data.raw.resource["rutile-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["rutile"] = nil
			end
			
			if data.raw.resource["cobalt-ore"] then
				data.raw.resource["cobalt-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["cobalt-ore"] = nil
			end
			
			if data.raw.resource["bauxite-ore"] then
				data.raw.resource["bauxite-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["bauxite"] = nil
			end
			
			if data.raw.resource["zinc-ore"] then
				data.raw.resource["zinc-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["zinc"] = nil
			end
			
			if data.raw.resource["tungsten-ore"] then
				data.raw.resource["tungsten-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["tungsten"] = nil
			end
			
			if data.raw.resource["tin-ore"] then
				data.raw.resource["tin-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["tin"] = nil
			end
			
			if data.raw.resource["silver-ore"] then
				data.raw.resource["silver-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["silver"] = nil
			end
			
			if data.raw.resource["quartz"] then
				data.raw.resource["quartz"]["autoplace"] = nil
				data.raw["autoplace-control"]["quartz-ore"] = nil
			end
			
			if data.raw.resource["nickel-ore"] then
				data.raw.resource["nickel-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["nickel"] = nil
			end
			
			if data.raw.resource["lead-ore"] then
				data.raw.resource["lead-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["lead"] = nil
			end
			
			if data.raw.resource["gold-ore"] then
				data.raw.resource["gold-ore"]["autoplace"] = nil
				data.raw["autoplace-control"]["gold"] = nil
			end
				
			results_replacer("tailings-tin-lead","tin-ore","ore-tin")
			results_replacer("tailings-tin-lead","lead-ore","ore-lead")
			
			results_replacer("tailings_nickel_zinc","nickel-ore","ore-nickel")
			results_replacer("tailings_nickel_zinc","zinc-ore","ore-zinc")
			
			results_replacer("tailings_gold_silver","gold-ore","ore-gold")
			results_replacer("tailings_gold_silver","silver-ore","ore-silver")
			
			results_replacer("tailings_bauxite_cobalt","bauxite-ore","ore-aluminium")
			--results_replacer("tailings_bauxite_cobalt","cobalt-ore","ore-cobalt")
			
			--results_replacer("tailings_rutile_tungsten","","")
			--results_replacer("tailings_rutile_tungsten","","")
			
				-- tailings_nickel_zinc
				-- tailings_tin_lead
				-- tailings_gold_silver
				-- tailings_gemstones
				-- tailings_bauxite_cobalt
				-- tailings_rutile_tungsten
				
		end
		
		if mods["bobelectronics"] then
		
			if mods["pyhightech"] then

				RECIPE('electronic-circuit'):remove_ingredient('solder')
				RECIPE('advanced-circuit'):remove_ingredient('solder')
				RECIPE('processing-unit'):remove_ingredient('solder')

			end
			
			data.raw.recipe["tinned-copper-cable"] = null
			data.raw.item["tinned-copper-cable"] = null
		
		end
	
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
			
	end

end