
	--redo circuit tech tree. early game basic circuits based on angels stuff and will slowly shift over to pyanodons pyhightech into the late game

data:extend(
{
	{
	type = "technology",
	name = "exobiology",
	icon_size = 128,
	icon = "__PyCoalTBaA__/graphics/icons/untextured128.png",
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


data:extend(
{
	{
    type = "technology",
    name = "tech-red-circuit",
    icon = "__angelsindustries__/graphics/technology/red-circuit-tech.png",
	icon_size = 128,
	prerequisites =
    {
	
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "circuit-resistor"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-red-board"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-red-loaded"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {'automation-science-pack', 1},
	  },
      time = 60
    },
    order = "a-5"
    },
	{
    type = "technology",
    name = "tech-green-circuit",
    icon = "__angelsindustries__/graphics/technology/green-circuit-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-red-circuit",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "circuit-transistor"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-green-board"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-green-loaded"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {'automation-science-pack', 3},
	  {'logistic-science-pack', 2},
	  },
      time = 60
    },
    order = "a-5"
    },
	{
    type = "technology",
    name = "tech-orange-circuit",
    icon = "__angelsindustries__/graphics/technology/orange-circuit-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-green-circuit",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "circuit-microchip"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-orange-board"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-orange"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-orange-loaded"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {'automation-science-pack', 3},
	  {'logistic-science-pack', 2},
	  },
      time = 60
    },
    order = "a-5"
    },
	{
    type = "technology",
    name = "tech-blue-circuit",
    icon = "__angelsindustries__/graphics/technology/blue-circuit-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-orange-circuit",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "circuit-transformer"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-blue-board"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-blue-loaded"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {'automation-science-pack', 3},
	  {'logistic-science-pack', 2},
	  {'chemical-science-pack', 1},
	  },
      time = 60
    },
    order = "a-5"
    },
	{
    type = "technology",
    name = "tech-yellow-circuit",
    icon = "__angelsindustries__/graphics/technology/yellow-circuit-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-blue-circuit",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "circuit-cpu"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-yellow-board"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-yellow"
      },
	  {
        type = "unlock-recipe",
        recipe = "circuit-yellow-loaded"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {'automation-science-pack', 3},
	  {'logistic-science-pack', 2},
	  {'chemical-science-pack', 1},
	  },
      time = 60
    },
    order = "a-5"
    },
	{
    type = "technology",
    name = "tech-intergrated-circuits",
    icon = "__angelsindustries__/graphics/technology/yellow-circuit-tech.png",
	icon_size = 128,
	prerequisites =
    {
	"tech-yellow-circuit",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "electronic-circuit"
      },
    },
    unit =
    {
      count = 64,
      ingredients = {
	  {'automation-science-pack', 3},
	  {'logistic-science-pack', 2},
	  {'chemical-science-pack', 1},
	  },
      time = 60
    },
    order = "a-5"
    },

}
)


fun.tech_add_prerequisites("basic-electronics", "tech-intergrated-circuits")

--double check this later
if mods["angelspetrochem"] then

data.raw["technology"]["angels-nitrogen-processing-1"].prerequisites = nil

table.insert(data.raw["technology"]["coal-processing-1"].effects, { type = "unlock-recipe", recipe = "water-mineralized-2000" })

end



if mods["pyfusion"] and mods["angelssmelting"] then

data.raw.technology["angels-tungsten-smelting"].unit.ingredients[3] = nil

end