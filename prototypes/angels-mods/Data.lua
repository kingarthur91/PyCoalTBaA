
if mods["angelsrefining"] then

require("prototypes/angels-mods/items/items")
require("prototypes/angels-mods/fluids/fluids")
require("prototypes/angels-mods/recipes/recipes")

--modified assembly machines
require("prototypes/angels-mods/buildings/assembly-machines")
require("prototypes/angels-mods/buildings/building-updates")
require("prototypes/angels-mods/buildings/solid-separator")

--overrides
require("prototypes/angels-mods/overrides/overrides")
require("prototypes/angels-mods/ores/overrides")

--find and fix game crashing errors first if any

--pycp
--find and remove all fuelrod + x recipes/ something went wrong recipes
--remove all ore-sorting recipes to replace them with my own

--[[
	if data.raw["assembling-machine"]["ore-sorting-facility"] ~= nil then
	
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility"].crafting_categories, "tba-ore-sorting")
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility-2"].crafting_categories, "tba-ore-sorting")
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility-3"].crafting_categories, "tba-ore-sorting")
		table.insert(data.raw["assembling-machine"]["ore-sorting-facility-4"].crafting_categories, "tba-ore-sorting")
		
	end
]]--

--recipe replacement
	--recipe ingredient replace
	--ore1	--fun.ingredient_replace("angelsore1-chunk","angels-ore1-crushed","tba-ore1-crushed-slag")	--fun.ingredient_replace("angelsore1-crystal","angels-ore1-chunk","tba-ore1-chunk-slag")	--fun.ingredient_replace("angelsore1-pure","angels-ore1-crystal","tba-ore1-crystal-slag")
	
	--ore3	--fun.ingredient_replace("angelsore3-chunk","angels-ore3-crushed","tba-ore3-crushed-slag")	--fun.ingredient_replace("angelsore3-crystal","angels-ore3-chunk","tba-ore3-chunk-slag")	--fun.ingredient_replace("angelsore3-pure","angels-ore3-crystal","tba-ore3-crystal-slag")
	
	--log(serpent.block(data.raw.recipe["fawogae-substrate"]))
	--adjust science pack 1
	--will need reviewed after pyaliens is complete as he has also changed the recipe in a similar way
	require("prototypes/angels-mods/recipes/sci1")

--tech additions

	--add new recipes to existing tech
	--fun.tech_add_recipe("ore-crushing", "tba-angelsore1-crushed-processing")
	--fun.tech_add_recipe("ore-floatation", "tba-angelsore1-chunk-processing")
	--fun.tech_add_recipe("ore-leaching", "tba-angelsore1-crystal-processing")
	--fun.tech_add_recipe("ore-refining", "tba-angelsore1-pure-processing")
	--fun.tech_add_recipe("ore-crushing", "tba-angelsore3-crushed-processing")
	--fun.tech_add_recipe("ore-floatation", "tba-angelsore3-chunk-processing")
	--fun.tech_add_recipe("ore-leaching", "tba-angelsore3-crystal-processing")
	--fun.tech_add_recipe("ore-refining", "tba-angelsore3-pure-processing")

--pyfe


--pyht
	--angel mods should be using vanilla circuits if bobs mods are not loaded so no need to fix errors here
	
		--check for bob electronics changes in bobs section

	--new and modified recipes for circuits based on if angels industries is loaded or not
	require("prototypes/angels-mods/recipes/circuits")


--pyin


--pyph

	--require("prototypes/angels-mods/recipes/hydrocarbons")

--pyro


--pyal


--pya

end
