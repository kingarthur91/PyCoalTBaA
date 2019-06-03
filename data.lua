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

	if mods["Mining-Space-Industries"] then

local pu = table.deepcopy(data.raw.recipe["processing-unit"])

table.insert(data.raw.recipe["processing-unit"],normal)

table.insert(data.raw.recipe["processing-unit"],expensive)

data.raw.recipe["processing-unit"].normal =
	{
	ingredients = pu.ingredients,
	enabled = false,
	energy_required = pu.energy_required,
	results = pu.results,
	}

data.raw.recipe["processing-unit"].expensive =
	{
	ingredients = pu.ingredients,
	enabled = false,
	energy_required = pu.energy_required,
	results = pu.results,
	}

local ac = table.deepcopy(data.raw.recipe["advanced-circuit"])

table.insert(data.raw.recipe["advanced-circuit"],normal)

table.insert(data.raw.recipe["advanced-circuit"],expensive)

data.raw.recipe["advanced-circuit"].normal =
	{
	ingredients = ac.ingredients,
	enabled = false,
	energy_required = ac.energy_required,
	results = ac.results,
	}

data.raw.recipe["advanced-circuit"].expensive =
	{
	ingredients = ac.ingredients,
	enabled = false,
	energy_required = ac.energy_required,
	results = ac.results,
	}


end