
	-- if angels industries is availble then we are going to use the inculded items to make early circuits and push pyanodons circuits back to a later state as they are more hightech and advanced circuits
	
if mods["angelsindustries"] then

	require("__angelsindustries__/prototypes/items/components-electronics")
	require("__angelsindustries__/prototypes/recipes/components-electronics-recipes")

end

--remove handcrafted circuit 1
-- add angels electronic cicuits to early game buildings
--order of complexity is gray, red, green, orange, blue, yellow
-- circuits are super cheap at the moment and need to be adjust to use more than one part each

--check that needed parts can be unlocked in a given tech era

--wires need recipes to make them. expensive plate recipes and cheaper/faster liquid to wire recipes

if mods["pyhightech"] then

	data.raw.recipe["electronic-circuit-initial"].enabled = false
	
	data:extend(
{
	--CIRCUIT COMPONENTS
	{
		type = "recipe",
		name = "circuit-resistor",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "solid-paper", amount = 3},
			{type = "item", name = "copper-cable", amount = 2},
		},
		result = "circuit-resistor",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-transistor",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "iron-plate", amount = 2},
			{type = "item", name = "angels-wire-tin", amount = 3},
		},
		result = "circuit-transistor",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-microchip",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "angels-silicon-wafer", amount = 2},
			{type = "item", name = "angels-wire-silver", amount = 6},
			{type = "fluid", name = "liquid-plastic", amount = 10},
			{type = "fluid", name = "liquid-sulfuric-acid", amount = 5},
		},
		result = "circuit-microchip",
		result_count = 3,
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-transformer",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "iron-plate", amount = 2},
			{type = "item", name = "angels-wire-gold", amount = 5},
		},
		result = "circuit-transformer",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-cpu",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "angels-silicon-wafer", amount = 1},
			{type = "item", name = "angels-wire-platinum", amount = 4},
			{type = "fluid", name = "liquid-sulfuric-acid", amount = 10},
		},
		result = "circuit-cpu",
		icon_size = 32,
	},
	--BOARDS
	{
		type = "recipe",
		name = "circuit-grey-board",
		energy_required = 1,
		category = "crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "wood", amount = 1},
		},
		result = "circuit-grey-board",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-red-board",
		energy_required = 3,
		category = "crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "solid-paper", amount = 3},
		},
		result = "circuit-red-board",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-green-board",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "solid-paper", amount = 2},
			{type = "fluid", name = "liquid-resin", amount = 8},
		},
		result = "circuit-green-board",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-orange-board",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "cellulose-fiber", amount = 5},
			{type = "fluid", name = "liquid-plastic", amount = 10},
		},
		result = "circuit-orange-board",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-blue-board",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "angels-coil-glass-fiber", amount = 2},
			{type = "fluid", name = "liquid-resin", amount = 10},
		},
		result = "circuit-blue-board",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-yellow-board",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "angels-coil-glass-fiber", amount = 2},
			{type = "fluid", name = "liquid-resin", amount = 10},
			{type = "fluid", name = "liquid-plastic", amount = 10},
		},
		result = "circuit-yellow-board",
		icon_size = 32,
	},
	--CIRCUIT BOARDS
	{
		type = "recipe",
		name = "circuit-grey",
		energy_required = 1,
		category = "crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-grey-board", amount = 2},
			{type = "item", name = "angels-wire-copper", amount = 4},
		},
		result = "circuit-grey",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-red",
		energy_required = 1,
		category = "crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-red-board", amount = 1},
			{type = "item", name = "angels-wire-copper", amount = 4},
		},
		result = "circuit-red",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-green",
		energy_required = 1,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-green-board", amount = 1},
			{type = "item", name = "angels-wire-tin", amount = 3},
		},
		result = "circuit-green",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-orange",
		energy_required = 1,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-orange-board", amount = 1},
			{type = "item", name = "angels-wire-silver", amount = 6},
			{type = "fluid", name = "liquid-ferric-chloride-solution", amount = 20},
		},
		result = "circuit-orange",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-blue",
		energy_required = 1,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-blue-board", amount = 1},
			{type = "item", name = "angels-wire-gold", amount = 4},
			{type = "fluid", name = "liquid-ferric-chloride-solution", amount = 20},
		},
		result = "circuit-blue",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-yellow",
		energy_required = 1,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-yellow-board", amount = 1},
			{type = "item", name = "angels-wire-platinum", amount = 6},
			{type = "fluid", name = "liquid-ferric-chloride-solution", amount = 20},
		},
		result = "circuit-yellow",
		icon_size = 32,
	},
	--CIRCUIT LOADED
	{
		type = "recipe",
		name = "circuit-red-loaded",
		energy_required = 3,
		category = "crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-red", amount = 1},
			{type = "item", name = "circuit-resistor", amount = 4},
			{type = "item", name = "angels-solder", amount = 4},
		},
		result = "circuit-red-loaded",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-green-loaded",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-green", amount = 1},
			{type = "item", name = "circuit-resistor", amount = 3},
			{type = "item", name = "circuit-transistor", amount = 5},
			{type = "item", name = "angels-solder", amount = 5},
		},
		result = "circuit-green-loaded",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-orange-loaded",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-orange", amount = 1},
			{type = "item", name = "circuit-resistor", amount = 4},
			{type = "item", name = "circuit-transistor", amount = 4},
			{type = "item", name = "circuit-microchip", amount = 2},
			{type = "item", name = "angels-solder", amount = 5},
		},
		result = "circuit-orange-loaded",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-blue-loaded",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-blue", amount = 1},
			{type = "item", name = "circuit-resistor", amount = 4},
			{type = "item", name = "circuit-transistor", amount = 4},
			{type = "item", name = "circuit-microchip", amount = 3},
			{type = "item", name = "circuit-transformer", amount = 1},
			{type = "item", name = "angels-solder", amount = 5},
		},
		result = "circuit-blue-loaded",
		icon_size = 32,
	},
	{
		type = "recipe",
		name = "circuit-yellow-loaded",
		energy_required = 3,
		category = "advanced-crafting",
		enabled = false,
		ingredients ={
			{type = "item", name = "circuit-yellow", amount = 1},
			{type = "item", name = "circuit-resistor", amount = 5},
			{type = "item", name = "circuit-transistor", amount = 4},
			{type = "item", name = "circuit-microchip", amount = 6},
			{type = "item", name = "circuit-transformer", amount = 2},
			{type = "item", name = "circuit-cpu", amount = 1},
			{type = "item", name = "angels-solder", amount = 5},
		},
		result = "circuit-yellow-loaded",
		icon_size = 32,
	},
	--INTERMEDIATES
    {
		type = "recipe",
		name = "angels-silicon-wafer",
		category = "crafting",
		subgroup = "angels-silicon-casting",
		enabled = false,
		energy_required = 2,
		ingredients ={
			{type="item", name="angels-mono-silicon", amount=2}
		},
		results={
			{type="item", name="angels-silicon-wafer", amount=4}
		},
		icon_size = 32,
		order = "l",
    },
}
)

end



--[[
fun.Recipe
		{
		name = "",
		ingredients = 
		{
			{
				{type = "item", name = "", amount = 0}
			},
			{
				{type = "item", name = "", amount = 0}
			}
		},
		results =
		{
			{
				{type = "item", name = "", amount = 0}
			},
			{
				{type = "item", name = "", amount = 0}
			}
		}
		}
]]--