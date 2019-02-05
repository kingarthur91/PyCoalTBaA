if settings.startup["uberhaul"].value then

-- remove all recipes and remake them?

--TODO: sci 1 - fawage substrate replace coke with alge.
	-- add recipes to get carbon dioxide + ash from burning wood, coal, coke
	-- make a cheaper solid seperator that isnt locked behind tech
	-- move coarse faction to mineral water to game start
	-- add recipe to coarse faction at game start
	
data.raw.recipe["fawogae-substrate"].ingredients = 
	{
	{type = "item", name = "fawogae", amount = 10},
	{type = "item", name = "algae-green", amount = 10}
	}
	
--added red hot molten glass. convert 10 rmglass to glass "pane"
--change quartz recipes to give molten glass and flask made from molten glass. glass panes made from molten glass

--made molten glass icon need to update angels molten glass item icon for recipes

end