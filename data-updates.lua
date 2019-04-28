require("stdlib/data/data").create_data_globals()
local FUN = require("functions/functions")

require("prototypes.recipe")
require("prototypes.tailings-recipes")
require("prototypes.overrides-CoalProcessing")
require("prototypes.data-updates-overrides-Rawores")

if mods["angelspetrochem"] then	

	-- EXECUTE OVERRIDES
	angelsmods.functions.OV.execute()

end

require("prototypes.Overrides-Omnimatter")
