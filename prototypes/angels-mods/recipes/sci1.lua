
--TODO: sci 1 
	-- add recipes to get carbon dioxide + ash from burning wood, coal, coke
	-- make a cheaper solid seperator that isnt locked behind tech
	-- move coarse faction to mineral water to game start
	-- add recipe to coarse faction at game start
	
--enable ground sample and add it to sci 1
if data.raw.recipe["ground-sample01"] ~= nil then

	data.raw.recipe["ground-sample01"].enabled = true

end

if data.raw.recipe["fawogae-substrate"] ~= nil then

	data.raw.recipe["fawogae-substrate"].ingredients = 
		{
		{type = "item", name = "fawogae", amount = 5},
		{type = "item", name = "algae-green", amount = 5},
		}

end

--add fawogae-substrate and ground sample together to make biosample
fun.Recipe
	{
	name = "bio-sample",
	energy_required = 2,
	enabled = true,
	ingredients =
		{
			{
				{type = "item", name = "fawogae-substrate", amount = 2}
			},
			{
				{type = "item", name = "ground-sample01", amount = 5}
			}
		},
	results =
		{
			{
				{type = "item", name = "bio-sample", amount = 1}
			}
		}
	}
	
--add that to the sci 1 recipe with flasks
fun.ingredient_replace("automation-science-pack","fawogae-substrate","bio-sample")

--added red hot molten glass.
--update py flask recipe to be a handcraft recipe only for game start
fun.ingredient_replace("flask","glass","ore-quartz")

if data.raw.recipe["flask"] ~= nil then

	data.raw.recipe["flask"].category = "handcrafting"

end