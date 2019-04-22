if settings.startup["uberhaul"].value then
local FUN = require("functions/functions")

--new oil recipes
data:extend(
{
	--light crude distillation
	{
	type = "recipe",
	name = "light-crude-distillation",
	energy_required = 3,
	category = "gas-refinery",
	enabled = false,
	ingredients =
		{
			{type = "fluid", name = "light-crude-oil", amount = 100}
		},
	results =
		{
			{type = "fluid", name = "light-distallates", amount = 40},
			{type = "fluid", name = "kerosene", amount = 10},
			{type = "fluid", name = "heavy-distallates", amount = 50}
		}
	},
	--light distallates processing
	{
	type = "recipe",
	name = "light-distallates-processing",
	energy_required = 3,
	category = "gas-refinery",
	enabled = false,
	ingredients =
		{
			{type = "fluid", name = "light-distallates", amount = 100}
		},
	results =
		{
			{type = "fluid", name = "lpg-gases", amount = 25},
			{type = "fluid", name = "light-naphtha", amount = 35},
			{type = "fluid", name = "heavy-naphtha", amount = 40}
		}
	},
	--heavy distallates processing
	{
	type = "recipe",
	name = "heavy-distallates-processing",
	energy_required = 3,
	category = "gas-refinery",
	enabled = false,
	ingredients =
		{
			{type = "fluid", name = "heavy-distallates", amount = 100}
		},
	results =
		{
			{type = "fluid", name = "diesel", amount = 40},
			{type = "fluid", name = "atmo-gas-oil", amount = 40},
			{type = "fluid", name = "atmo-bottoms", amount = 20}
		}
	},
	--lpg gas processing
	{
	type = "recipe",
	name = "lpg-gas-processing",
	energy_required = 4,
	category = "gas-refinery",
	enabled = false,
	ingredients =
		{
			{type = "fluid", name = "lpg-gases", amount = 80}
		},
	results =
		{
			{type = "fluid", name = "fuel-gas", amount = 30},
			{type = "fluid", name = "lpg", amount = 30},
			{type = "fluid", name = "butane", amount = 20}
		},
	},
	--light naphtha processing
	{
	type = "recipe",
	name = "light-naphtha-processing",
	energy_required = 4,
	category = "gas-refinery",
	enabled = false,
	ingredients =
		{
			{type = "fluid", name = "light-naptha", amount = 80},
			{type = "fluid", name = "hydrogen", amount = 20},
			{type = "item", name = "clorinated-alumina", amount = 10, catalyst_amount = 10}
		},
	results =
		{
			{type = "fluid", name = "lpg-gases", amount = 30},
			{type = "fluid", name = "isomerate", amount = 30},
			{type = "item", name = "clorinated-alumina", amount = 9, catalyst_amount = 9}
		}
	},
	--heavy naphtha processing
	{
	
	},
}