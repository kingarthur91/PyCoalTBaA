fun = require("functions/functions")

require("prototypes/recipe-category")

--Angels Mods
require("prototypes/angels-mods/Data")

--all changes to bobs mods should only happen if they havnt already been edited by angels mods or angel compatibility changes
--Bob Mods
require("prototypes/bobs-mods/Data")

require("prototypes/aai-industries/Data")

require("prototypes/bio-industries/Data")

require("prototypes/dl-stacking/Data")

require("prototypes/kaoextended/Data")

require("prototypes/madclowns-mods/Data")

require("prototypes/mining-space-industries/Data")

require("prototypes/omni-mods/Data")

require("prototypes/space-exploration/Data")

require("prototypes/industrialrevolution-WIP/Data")
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
