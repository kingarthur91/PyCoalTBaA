if settings.startup["uberhaul"].value then

local FUN = require("functions/functions")

-- remove all recipes and remake them?
-- NO

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
	get the recipe
	local r = data.raw.recipe[g]
	--get old amount to multiply it by 10 molten glass
	local amount = r.results[1].amount * 10
	
	--replace type, name, amount
	data.raw.recipe[g].results = {{type = "fluid", name = "molten-glass", amount = amount}}
	
end
--replace angels molten glass with my own
FUN.global_item_replacer("liquid-molten-glass","molten-glass")

--New recipes
data:extend(
{
	--basic magnet
	{
	type = "recipe",
	name = "iron-magnet-1"
	energy_required = 1,
	category = "crafting",
	enabled = false,
	ingredients =
		{
			{type = "item", name = "angels-rod-iron", amount = 1},
		},
	results =
		{
			{type = "item", name = "iron-magnet-1", amount = 1}
		}
	},
	--copper-winding
	{
	type = "recipe",
	name = "copper-winding"
	energy_required = 2,
	category = "crafting",
	enabled = false,
	ingredients =
		{
			{type = "item", name = "copper-cable", amount = 5},
		},
	results =
		{
			{type = "item", name = "copper-winding", amount = 1}
		}
	},
	--empty-casing
	{
	type = "recipe",
	name = "empty-caseing"
	energy_required = 2.5,
	category = "crafting",
	enabled = false,
	ingredients =
		{
			{type = "item", name = "iron-plate", amount = 3},
		},
	results =
		{
			{type = "item", name = "empty-caseing", amount = 1}
		}
	},
	--assemble shaft and center magnet
	{
	type = "recipe",
	name = "assembled-shaft-1"
	energy_required = 2.5,
	category = "crafting",
	enabled = false,
	ingredients =
		{
			{type = "item", name = "angels-axle", amount = 1},
			{type = "item", name = "iron-magnet-1", amount = 2}
		},
	results =
		{
			{type = "item", name = "assembled-shaft", amount = 1}
		}
	},
	--assemble case and coil windings
	{
	type = "recipe",
	name = "complete-casing-1"
	energy_required = 2.5,
	category = "crafting",
	enabled = false,
	ingredients =
		{
			{type = "item", name = "copper-winding", amount = 2},
			{type = "item", name = "empty-caseing", amount = 1}
		},
	results =
		{
			{type = "item", name = "complete-casing", amount = 1}
		}
	},
	--assemble outer and inner parts
	{
	type = "recipe",
	name = "electric-motor-1"
	energy_required = 2.5,
	category = "crafting",
	enabled = false,
	ingredients =
		{
			{type = "item", name = "assembled-shaft", amount = 1},
			{type = "item", name = "complete-casing", amount = 1}
		},
	results =
		{
			{type = "item", name = "electric-motor-1", amount = 1}
		}
	},
	--molten glass to flasks
	{
	type = "recipe",
	name = "flasks-1"
	energy_required = 1,
	category = "crafting-with-fluid",
	enabled = false,
	ingredients =
		{
			{type = "fluid", name = "molten-glass", amount = 50},
		},
	results =
		{
			{type = "item", name = "flask", amount = 1}
		},
	icon = "__pycoalprocessing__/graphics/icons/flask.png",
	icon_size = 32,
	},
	--molten glass to glass sheet
	{
	type = "recipe",
	name = "glass-sheet-1"
	energy_required = 1,
	category = "crafting-with-fluid",
	enabled = false,
	ingredients =
		{
			{type = "fluid", name = "molten-glass", amount = 50},
		},
	results =
		{
			{type = "item", name = "glass", amount = 1}
		},
	icon = "__pyrawores__/graphics/icons/glass.png",
	icon_size = 32,
	},
	--add few more glass recipes that give cheap panes and different types
}
)

end