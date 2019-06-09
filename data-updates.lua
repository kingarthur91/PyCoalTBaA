require("stdlib/data/data").create_data_globals()
local FUN = require("functions/functions")

require("prototypes.recipe")
require("prototypes.tailings-recipes")
require("prototypes.overrides-CoalProcessing")
require("prototypes.data-updates-overrides-Rawores")

if mods["aai-industry"] then

data.raw.technology["oil-processing"].prerequisites =
	{
  "automation",
  "fluid-handling",
  "electronics",
  "iron-mk02"
}

end

if data.raw.technology["se-thruster-suit"] ~= nil then

if data.raw.technology["se-thruster-suit"].prerequisites[1] == nil then

data.raw.technology["se-thruster-suit"].prerequisites =
	{
	"modular-armor",
    "rocket-silo",
    "se-space-lifesupport-facility"
	}
	
end

end

--[[
if mods["Mining-Space-Industries"] then

local pu = table.deepcopy(data.raw.recipe["advanced-circuit"])

table.insert(data.raw.recipe["advanced-circuit"],normal)

table.insert(data.raw.recipe["advanced-circuit"],expensive)

data.raw.recipe["advanced-circuit"].normal =
	{
	ingredients = pu.ingredients,
	enabled = false,
	energy_required = pu.energy_required,
	results = pu.results,
	}

data.raw.recipe["advanced-circuit"].expensive =
	{
	ingredients = pu.ingredients,
	enabled = false,
	energy_required = pu.energy_required,
	results = pu.results,
	}

end
]]--

if mods["angelspetrochem"] then	

	-- EXECUTE OVERRIDES
	angelsmods.functions.OV.execute()

end

require("prototypes.Overrides-Omnimatter")