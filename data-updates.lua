require("stdlib/data/data").create_data_globals()

require("prototypes.recipe")
require("prototypes.tailings-recipes")
require("prototypes.overrides-CoalProcessing")
require("prototypes.data-updates-overrides-Rawores")

if mods["angelspetrochem"] then	

	-- EXECUTE OVERRIDES
	angelsmods.functions.OV.execute()

end

require("prototypes.Overrides-Omnimatter")

table.remove(data.raw.recipe["rocket-fuel"],ingredients)

log(serpent.block(data.raw.recipe["rocket-fuel"]))