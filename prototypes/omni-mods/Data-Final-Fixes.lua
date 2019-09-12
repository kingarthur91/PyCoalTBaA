
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

	if data.raw.recipe["omnirec-base-6-extraction-2"] ~= nil then

		data.raw.recipe["omnirec-base-6-extraction-2"].icons[2].icon = "__PyCoalTBaA__/graphics/icons/num_6.png"
		
	end

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
--[[
local oilboilercopy = table.deepcopy(data.raw['boiler']['oil-boiler-mk01'])

log(serpent.block(data.raw['assembling-machine']['oil-boiler-mk01-converter']))
data.raw['assembling-machine']['oil-boiler-mk01-converter'].energy_source.fluid_box.pipe_connections.position = {0,4}
--data.raw['boiler']['oil-boiler-mk01'] = {}
--data.raw['boiler']['oil-boiler-mk01'] = table.deepcopy(oilboilercopy)
log(serpent.block(data.raw['boiler']['oil-boiler-mk01']))
]]--