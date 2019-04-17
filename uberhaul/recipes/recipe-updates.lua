if settings.startup["uberhaul"].value then

local FUN = require("functions/functions")

-- remove all recipes and remake them?
-- NO

--TODO: sci 1 
	-- add recipes to get carbon dioxide + ash from burning wood, coal, coke
	-- make a cheaper solid seperator that isnt locked behind tech
	-- move coarse faction to mineral water to game start
	-- add recipe to coarse faction at game start
	
--enable ground sample and add it to sci 1
data.raw.recipe["ground-sample01"].enabled = true

data.raw.recipe["fawogae-substrate"].ingredients = 
	{
	{type = "item", name = "fawogae", amount = 5},
	{type = "item", name = "algae-green", amount = 5},
	}
	
--add fawogae-substrate and ground sample together to make biosample 
--done in recipes file
--add that to the sci 1 recipe with flasks
FUN.ingredient_replace("automation-science-pack","fawogae-substrate","bio-sample")

--added red hot molten glass.
--update py flask recipe to be a handcraft recipe only for game start
FUN.ingredient_replace("flask","glass","ore-quartz")
data.raw.recipe["flask"].category = "handcrafting"

--change quartz recipes to give molten glass and flask made from molten glass. glass panes made from molten glass
--replace glass in results of recipes
local glassrecipes =
	{
	"glass-1",
	"glass-2",
	"glass-3",
	"glass-4",
	"glass-5",
	"glass-6"
	}
	
for _,g in pairs(glassrecipes) do
	--get the recipe
	local r = data.raw.recipe[g]
	--get old amount to multiply it by 10 molten glass
	local amount = r.results[1].amount * 10
	
	--replace type, name, amount
	data.raw.recipe[g].results = {{type = "fluid", name = "molten-glass", amount = amount}}
	data.raw.recipe[g].icon = "__PyCoalTBaA__/graphics/uberhaul/icons/moltenglass.png"
	
end
--replace angels molten glass with my own
FUN.global_item_replacer("liquid-molten-glass","molten-glass")

--need to seperate angels oil processing and py oil processing into light crude and heavy crude oil

end