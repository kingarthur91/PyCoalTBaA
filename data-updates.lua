require("stdlib/data/data").create_data_globals()

require("prototypes.recipe")
require("prototypes.tailings-recipes")
require("prototypes.overrides-CoalProcessing")

if mods["angelspetrochem"] then	

	-- EXECUTE OVERRIDES
	angelsmods.functions.OV.execute()

end

require("prototypes.Overrides-Omnimatter")
