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

if settings.startup["py-prod-adjust"].value == true then

recipe_output_mod()

end

--productivity recipe checker
--try copying limitaion list and resetting it to updated list afterwards
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
----[[
local fcount = 0

for _, f in pairs(data.raw.fluid) do

	log(f.name)
	--log(f.fuel_value)
	fcount=fcount+1
end

log(fcount)
--]]--
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