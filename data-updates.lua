
--Bob Mods
require("prototypes/bobs-mods/Data-Updates")

--Angels Mods - run after bobs to replace things that angel didnt already replace
require("prototypes/angels-mods/Data-Updates")

require("prototypes/aai-industries/Data-Updates")

--require("prototypes/bio-industries/Data-Updates")

--require("prototypes/dl-stacking/Data-Updates")

--require("prototypes/kaoextended/Data-Updates")

--require("prototypes/madclowns-mods/Data-Updates")

--require("prototypes/mining-space-industries/Data-Updates")

require("prototypes/omni-mods/Data-Updates")

--require("prototypes/space-exploration/Data-Updates")

require("prototypes/industrialrevolution-WIP/Data-Updates")

data.raw.item["landfill"].stack_size = 1000

if data.raw["furnace"]["py-sinkhole"] ~= nil then

	data.raw["furnace"]["py-sinkhole"].crafting_speed = 10

end
