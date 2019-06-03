	require("functions/functions")

	require("updates.aai-updates")

	require("prototypes.overrides-Fusion")

	require("prototypes.Ores.Molybdenum")

	require("prototypes.overrides-Hightech")

	require("prototypes.Ores.Borax")

	require("prototypes.Ores.Niobium")
   
	require("prototypes.PyAngelStacking")
   
	require("prototypes.overrides-bioindustries")
	
	require("prototypes.overrides-pyscience")
	
	require("prototypes.overrides-Rawores")

		if mods["bobplates"] then
			if mods["pyfusionenergy"] then
				log(serpent.block(data.raw.recipe["heavy-water"]))
				data.raw.recipe["heavy-water"].icon_size=32
				data.raw.recipe["heavy-water"].icon = "__pyfusionenergy__/graphics/icons/heavy-water.png"
				data.raw.recipe["heavy-water"].main_product="heavy-water"
			end
		end

   if mods["angelspetrochem"] then
	
	   angelsmods.functions.OV.execute()
   
   --log(serpent.block(data.raw.recipe))
   
	-- hide recipes with "angels-void" or "slag" as main product
	for name, recipe in pairs(data.raw.recipe) do
		if recipe.main_product == "angels-void" or recipe.main_product == "slag" then
			log("hide " .. name)
			data.raw.recipe[name].hidden = true
		end
		
		if recipe.results ~= nil then
			
			--log(serpent.block(recipe))
			
			if recipe.results[1] ~= nil then
			
				if recipe.results[1].name == "slag" and recipe.results[2] == nil then
				
				data.raw.recipe[name].hidden = true
				
				end
				
				if recipe.results[1].name == "angels-void" and recipe.results[2] == nil then
				
				data.raw.recipe[name].hidden = true
				
				end
			
			end
			
		end
	end
	
end
--[[
if mods["bobrevamp"] then

	if not data.raw.item["enriched-fuel"] then
	
		for t, tech in pairs(data.raw.technology["hydrazine"].effects) do
		
			if tech.recipe == "enriched-fuel-from-hydrazine" then
			
				table.remove(data.raw.technology["hydrazine"].effects, t)
				log(serpent.block(data.raw.technology["hydrazine"]))
				
			end
			
		end
		
	end
	
end
]]--
if settings.startup["py-prod-adjust"].value == true then

recipe_output_mod()

end

--productivity recipe checker
--try copying limitation list and resetting it to updated list afterwards
--[[
log("assembly machine recipes")
log(serpent.block(data.raw.recipe["assembling-machine-1"]))
log(serpent.block(data.raw.recipe["assembling-machine-2"]))
log(serpent.block(data.raw.recipe["assembling-machine-3"]))

local recipecount = 0

for _,r in pairs(data.raw.recipe) do

	recipecount = recipecount + 1
	
end

log(recipecount)
]]--
--[[
local fcount = 0

for _, f in pairs(data.raw.fluid) do

	log(f.name)
	--log(f.fuel_value)
	fcount=fcount+1
end

log(fcount)
]]--
--[[
for _, i in pairs(data.raw["item-group"]) do

	data.raw["item-group"]["py-rawores"] = nil
	for _, g in pairs(data.raw["item-subgroup"]) do
		if g.group == "py-rawores" then
			g.group = "test-group"
		end
	end
	
	log(i.name)
	
end
]]--

--recipe ingredients deduper

for i, ings in pairs(data.raw.recipe) do
--log(serpent.block(ings))
local inglist = {}

	if ings.ingredients ~= nil then
	
		for a,ing in pairs(ings.ingredients) do
		
			if ing.name ~= nil then
				
				if not inglist[ing.name] then
					--log(serpent.block(ing))
					--log(ing.name)
					inglist[ing.name] = true
				
				else
				
					data.raw.recipe[ings.name].ingredients[a] = nil
					
				end
			
			elseif type(ing[1]) == "string" then
			
				--log(serpent.block(ing))
				if not inglist[ing[1]] then
				
					inglist[ing[1]] = true
					
				else
				
					data.raw.recipe[ings.name].ingredients[a] = nil
					
				end
				
			end
			
		end
		
	end
	
	if ings.normal ~= nil then
	
		for a,ing in pairs(ings.normal.ingredients) do
		
			if ing.name ~= nil then
				
				if not inglist[ing.name] then
					--log(serpent.block(ing))
					--log(ing.name)
					inglist[ing.name] = true
				
				else
				
					data.raw.recipe[ings.name].normal.ingredients[a] = nil
					
				end
			
			elseif type(ing[1]) == "string" then
			
				--log(serpent.block(ing))
				if not inglist[ing[1]] then
				
					inglist[ing[1]] = true
					
				else
				
					data.raw.recipe[ings.name].normal.ingredients[a] = nil
					
				end
				
			end
			
		end
		
	end
	
	--reset inglist for expensive ingredients
	inglist = {}
	
	if ings.expensive ~= nil then
		--log(serpent.block(ings))
		--log(serpent.block(ings.expensive))
		if ings.expensive ~= false then
			if ings.expensive.ingredients ~= nil then
				
				for a,ing in pairs(ings.expensive.ingredients) do
				
					if ing.name ~= nil then
						
						if not inglist[ing.name] then
							--log(serpent.block(ing))
							--log(ing.name)
							inglist[ing.name] = true
						
						else
						
							data.raw.recipe[ings.name].expensive.ingredients[a] = nil
							
						end
					
					elseif type(ing[1]) == "string" then
					
						--log(serpent.block(ing))
						if not inglist[ing[1]] then
						
							inglist[ing[1]] = true
							
						else
						
							data.raw.recipe[ings.name].expensive.ingredients[a] = nil
							
						end
						
					end
					
				end
				
			end
			
		end
	end
	
end

if mods["Advanced-Solar"] then

	data.raw.technology["electric-energy-accumulators-2"].prerequisites = {"electric-energy-accumulators"}
	
end

if mods["BlackMarket"] then

	data.raw.technology["black-market-energy"].prerequisites = { "black-market-item", "electric-energy-accumulators" }
	
end

if mods["omnimatter"] then
-- need to find recipe with num 6 graphic and replace it
	for r, rec in pairs(data.raw.recipe) do
	
		if rec.icons ~= nil then
		
			for i, icon in pairs(rec.icons) do
				--log(serpent.block(icon))
				if type(icon) == "string" then
				
					if string.find(icon, "num_6.png") then
					
						--log(serpent.block(rec))
						icon = "__PyCoalTBaA__/graphics/icons/num_6.png"
						
					end
					--log(serpent.block(rec))
				else
				
					--log(serpent.block(rec))
				
				end
			end
		end
		
	end

data.raw.recipe["omnirec-base-6-extraction-2"].icons[2].icon = "__PyCoalTBaA__/graphics/icons/num_6.png"
	
end



if mods["omnimatter_wood"] then

local limit = {}

		if data.raw.module["productivity-module"].limitation ~= nil then
			for l, lim in pairs(data.raw.module["productivity-module"].limitation) do
				if lim ~= "log1" and lim ~= "log2" and lim ~= "log3" and lim ~= "log4" and lim ~= "log5" and lim ~= "log6" and lim ~= "log-organics" and lim ~= "log-wood" and lim ~= "botanical-nursery" then
					table.insert(limit, lim)
				end
			end
		end
	
--log(serpent.block(limit))
data.raw.module["productivity-module"].limitation = limit
data.raw.module["productivity-module-2"].limitation = limit
data.raw.module["productivity-module-3"].limitation = limit

for m, mod in pairs(data.raw.module) do
	if mod.name:find("productivity%-module") and mod.limitation then
		mod.limitation = limit
	end
end

end

for _, i in pairs(data.raw.recipe) do

	if i.icon == "__pycoalprocessing__/graphics/icons/sand.png" then
	
		log(serpent.block(i.name))
		log(serpent.block(i))
		
	end
	
end