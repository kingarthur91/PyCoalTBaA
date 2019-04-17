if settings.startup["uberhaul"].value then

data:extend(
{
	{
	type = "technology",
	name = "exobiology",
	icon_size = 128,
	icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured128.png",
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "lab-instrument"
			},
			{
			type = "unlock-recipe",
			recipe = "petri-dish"
			},
			{
			type = "unlock-recipe",
			recipe = "substrate-dish"
			},
			{
			type = "unlock-recipe",
			recipe = "seeded-dish"
			}
		},
	unit =
		{
		count = 100,
		ingredients =
			{
				{"automation-science-pack", 1}
			},
		time = 5
		},
	order = "a-a"
	},
}
)



end