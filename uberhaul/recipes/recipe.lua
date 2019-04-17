if settings.startup["uberhaul"].value then
local FUN = require("functions/functions")

--New recipes
data:extend(
{
	--bio-sample
	{
	type = "recipe",
	name = "bio-sample",
	energy_required = 2,
	category = "crafting",
	enabled = true,
	ingredients =
		{
			{type = "item", name = "fawogae-substrate", amount = 2},
			{type = "item", name = "ground-sample01", amount = 5}
		},
	results =
		{
			{type = "item", name = "bio-sample", amount = 1}
		}
	},
	--basic magnet
	{
	type = "recipe",
	name = "iron-magnet-1",
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
	name = "copper-winding",
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
	name = "empty-caseing",
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
	name = "assembled-shaft-1",
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
	name = "complete-casing-1",
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
	name = "electric-motor-1",
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
	name = "flasks-1",
	energy_required = 1,
	category = "crafting-with-fluid",
	enabled = true,
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
	name = "glass-sheet-1",
	energy_required = 1,
	category = "crafting-with-fluid",
	enabled = true,
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