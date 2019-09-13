
--new recipes go here
--[[
--create all the slag processing recipes
for i=1,10,1 do
	for r=1,3 do
		local refstage =
			{
			"crushed",
			"chunk",
			"crystal",
			}
		if data.raw.item["tba-ore"..i.."-"..refstage[r].."-slag"] ~= nil then

			fun.Recipe
				{
				name = "tba-ore"..i.."-"..refstage[r].."-slag-processing-dissolution",
				category = "liquifying",
				subgroup = "liquifying",
				energy_required = 3,
				ingredients =
					{
						{
							{type="item", name="tba-ore"..i.."-"..refstage[r].."-slag", amount=2}
						},
						{
							{type="fluid", name="sulfuric-acid", amount=15}
						}
				},
				results=
				{
					{
						{type="fluid", name="slag-slurry", amount=50}
					}
				},
				icon = "__angelsrefining__/graphics/icons/slag-slurry.png",
				order = "i [slag-processing-dissolution]",
				}

			--insert into slag processing tech
			if data.raw.technology["slag-processing-"..r] ~= nil then
				table.insert(data.raw.technology["slag-processing-"..r].effects,{type="unlock-recipe",recipe="tba-ore"..i.."-"..refstage[r].."-slag-processing-dissolution"})
			else
				table.insert(data.raw.technology["slag-processing-1"].effects,{type="unlock-recipe",recipe="tba-ore"..i.."-"..refstage[r].."-slag-processing-dissolution"})
			end
		end
	end
end

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
	--check if it exists first
	if data.raw.recipe[g] ~= nil then
		--get the recipe
		local r = data.raw.recipe[g]
		--get old amount to multiply it by 10 molten glass
		local amount = r.results[1].amount * 10

		--replace type, name, amount
		data.raw.recipe[g].results = {{type = "fluid", name = "molten-glass", amount = amount}}
		data.raw.recipe[g].icon = "__PyCoalTBaA__/graphics/icons/moltenglass.png"
	end
end
--replace angels molten glass with my own
fun.global_item_replacer("liquid-molten-glass","molten-glass")

--angel gear
fun.Recipe
{
	name = "angels-gear",
	energy_required = 0.5,
	category = "crafting",
	enabled = true,
	ingredients =
	{
		{
			{type = "item", name = "angels-rod-iron", amount = 1},
		}
	},
	results = {
		{
			{type = "item", name = "angels-gear", amount = 2},
		}
	},
	main_product = "angels-gear"
}

--basic magnet
fun.Recipe
	{
	name = "iron-magnet-1",
	ingredients =
		{
			{
				{type = "item", name = "angels-rod-iron", amount = 1}
			}
		},
	results =
		{
			{
				{type = "item", name = "iron-magnet-1", amount = 1}
			}
		}
	}

--copper-winding
fun.Recipe
	{
	name = "copper-winding",
	energy_required = 2,
	category = "crafting",
	ingredients =
		{
			{
				{type = "item", name = "copper-cable", amount = 5}
			}
		},
	results =
		{
			{
				{type = "item", name = "copper-winding", amount = 1}
			}
		}
	}
	--empty-casing
fun.Recipe
	{
	name = "empty-caseing",
	energy_required = 2.5,
	category = "crafting",
	ingredients =
		{
			{
				{type = "item", name = "iron-plate", amount = 3}
			}
		},
	results =
		{
			{
				{type = "item", name = "empty-caseing", amount = 1}
			}
		}
	}
	--assemble shaft and center magnet
fun.Recipe
	{
	name = "assembled-shaft-1",
	energy_required = 2.5,
	category = "crafting",
	ingredients =
		{
			{
				{type = "item", name = "angels-axle", amount = 1}
			},
			{
				{type = "item", name = "iron-magnet-1", amount = 2}
			}
		},
	results =
		{
			{
				{type = "item", name = "assembled-shaft", amount = 1}
			}
		}
	}
	--assemble case and coil windings
fun.Recipe
	{
	name = "complete-casing-1",
	energy_required = 2.5,
	category = "crafting",
	ingredients =
		{
			{
				{type = "item", name = "copper-winding", amount = 2}
			},
			{
				{type = "item", name = "empty-caseing", amount = 1}
			}
		},
	results =
		{
			{
				{type = "item", name = "complete-casing", amount = 1}
			}
		}
	}
	--assemble outer and inner parts
fun.Recipe
	{
	name = "electric-motor-1",
	energy_required = 2.5,
	category = "crafting",
	ingredients =
		{
			{
				{type = "item", name = "assembled-shaft", amount = 1}
			},
			{
				{type = "item", name = "complete-casing", amount = 1}
			}
		},
	results =
		{
			{
				{type = "item", name = "electric-motor-1", amount = 1}
			}
		}
	}
	--molten glass to flasks
fun.Recipe
	{
	name = "flasks-1",
	category = "crafting-with-fluid",
	enabled = true,
	ingredients =
		{
			{
				{type = "fluid", name = "molten-glass", amount = 50}
			}
		},
	results =
		{
			{
				{type = "item", name = "flask", amount = 1}
			}
		},
	icon = "__pycoalprocessing__/graphics/icons/mip/glassware-01.png",
	}
	--molten glass to glass sheet
fun.Recipe
	{
	name = "glass-sheet-1",
	category = "crafting-with-fluid",
	enabled = true,
	ingredients =
		{
			{
				{type = "fluid", name = "molten-glass", amount = 50}
			}
		},
	results =
		{
			{
				{type = "item", name = "glass", amount = 1}
			}
		},
	icon = "__pyrawores__/graphics/icons/glass.png",
	}
	--add few more glass recipes that give cheap panes and different types
]]--
	--slag to pyore recipes
fun.Recipe
	{
		name = "slag-processing-nio",
		category = "crystallizing",
		subgroup = "slag-processing-1",
		energy_required = 8,
		ingredients =
		{
			{
				{type="fluid", name="mineral-sludge", amount=50}
			}
		},
		results=
		{
			{
				{type = "item", name = "niobium-ore", amount_min = 1, amount_max = 2, probability = 0.36}
			}
		},
		icon = "__PyCoalTBaA__/graphics/icons/slag-processing-mol.png",
		order = "a-a [slag-processing-up]",
}

fun.Recipe
	{
		name = "angelsore-crystal-mix-nio-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		ingredients =
			{
				{
					{type="item", name="angels-ore2-crystal", amount=1}
				},
				{
					{type="item", name="angels-ore4-crystal", amount=1}
				},
				{
					{type="item", name="angels-ore5-crystal", amount=1}
				},
				{
					{type="item", name="catalysator-brown", amount=1}
				},
			},
		results=
			{
				{
					{type = "item", name = "niobium-ore", amount = 4}
				}
			},
		icon = "__PyCoalTBaA__/graphics/icons/angels-ore-mix-mol-sorting.png",
		order = "c-i-g[angelsore-crystal-mix-mol-processing]",
     }

fun.Recipe
	{
		  name = "slag-processing-bor",
		  category = "crystallizing",
		  subgroup = "slag-processing-1",
		  energy_required = 8,
		  ingredients =
		  {
			{
				{type="fluid", name="mineral-sludge", amount=50}
			}
		},
		results=
		{
			{
				{type = "item", name = "raw-borax", amount_min = 1, amount_max = 2, probability = 0.36},
			}
		},
		icon = "__PyCoalTBaA__/graphics/icons/slag-processing-mol.png",
		icon_size = 32,
		order = "a-a [slag-processing-up]",
	}
fun.Recipe
	{
		name = "angelsore-crystal-mix-bor-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		ingredients =
			{
				{
					{type="item", name="angels-ore3-crystal", amount=1}
				},
				{
					{type="item", name="angels-ore4-crystal", amount=1}
				},
				{
					{type="item", name="angels-ore5-crystal", amount=1}
				},
				{
					{type="item", name="catalysator-brown", amount=1}
				},
			},
		results=
			{
				{
					{type = "item", name = "raw-borax", amount = 4}
				}
			},
		icon = "__PyCoalTBaA__/graphics/icons/angels-ore-mix-mol-sorting.png",
		order = "c-i-g[angelsore-crystal-mix-mol-processing]",
	}
