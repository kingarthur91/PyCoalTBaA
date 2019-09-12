require("prototypes/omni-mods/overrides/overrides")
--require("prototypes/omni-mods/items/items")
--require("prototypes/omni-mods/fluids/fluids")
--require("prototypes/omni-mods/recipes/recipes")
--[[
if mods['omnimatter_fluid'] then

data.raw.recipe['oil-boiler-1'] = nil
data.raw.item['oil-boiler-1'] = nil
data.raw.boiler['oil-boiler-1'] = nil

	for r, rec in pairs(data.raw.technology['oil-machines-mk01'].effects) do

		if rec.recipe == 'oil-machines-mk01' then
			
			table.remove(data.raw.technology['oil-boiler-1'].effects, r)
			
		end

	end

end
]]--