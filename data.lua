require("stdlib/data/data").create_data_globals()
local FUN = require("functions/functions")

	--aaii stuff
	require("prototypes.aaii.prototypes.coal-gas-from-fawogae")
	require("prototypes.aaii.prototypes.science-pack-0")
	--require("prototypes.aaii.prototypes.storage-tank-0")
	--require("prototypes.aaii.prototypes.storage-tank-0-updates")
	
	
	require("prototypes.items")
	--require("prototypes.item")
	-- require("prototypes.entity")
	require("prototypes.technology")
	
	require("prototypes.data-overrides-Fusion")

	require("updates.acid-changes")

	require("updates.pyproductivityadjuster")
	--[[
	require("uberhaul.buildings.assembly-machines")
	require("uberhaul.items.items")
	require("uberhaul.item-groups")
	require("uberhaul.items.fluids")
	require("uberhaul.recipes.recipe")
	require("uberhaul.recipes.recipe-updates")
	require("uberhaul.technology.technology")
	require("uberhaul.technology.technology-updates")
	require("uberhaul.buildings.building-updates")
	
	]]--
	
	if mods["aai-industry"] then

		FUN.findtechswithpack("automation-science-pack")
		FUN.addscipack("science-pack-0")

		FUN.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01"})
	
	end
