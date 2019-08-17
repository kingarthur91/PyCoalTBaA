require("prototypes/aai-industries/overrides/overrides")
require("prototypes/aai-industries/items/items")
require("prototypes/aai-industries/fluids/fluids")
require("prototypes/aai-industries/recipes/recipes")

if mods["aai-industry"] then

		FUN.findtechswithpack("automation-science-pack")
		FUN.addscipack("science-pack-0")

		FUN.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01"})
	
	end