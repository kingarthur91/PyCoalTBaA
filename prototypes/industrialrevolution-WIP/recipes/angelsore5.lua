--new recipes go here

--all recipes will start with tba- to make them seperate from the other mods recipes
--(ORE SORTING)--

--[[
--Angels ore 5--
--Crushing--
fun.Recipe {
    type = 'recipe',
    name = 'angelsore5-crushed',
    category = 'ore-sorting-t1',
    subgroup = 'ore-processing-a',
    energy_required = 1,
    enabled = true,
	ingredients =
	{
        {
			{type = "item", name = 'angels-ore5', amount = 2}
        }
    },
    results = {
        {
            {type = 'item', name = 'angels-ore5-crushed', amount = 2}
        },
        {
            {type = 'item', name = 'stone-crushed', amount = 1}
        }
    },
    icon = '__angelsrefining__/graphics/icons/angels-ore5-crushed.png',
    order = 'a[angelsore5-crushed]'
}

fun.Recipe {
    type = 'recipe',
    name = 'angelsore5-crushed-hand',
    category = 'handcrafting',
    subgroup = 'processing-crafting',
    energy_required = 4,
    enabled = true,
	ingredients =
	{
        {
			{type = "item", name = 'angels-ore5', amount = 2}
		}
    },
	results =
	{
        {
            {type = 'item', name = 'angels-ore5-crushed', amount = 2}
        },
        {
            {type = 'item', name = 'stone-crushed', amount = 1}
        }
    },
    icon = '__angelsrefining__/graphics/icons/angels-ore5-crushed.png',
    order = 'a[angelsore5-crushed-hand]'
}
--Crushed smelting--
fun.Recipe {
    name = 'tba-angelsore5-crushed-smelting',
    category = 'smelting',
    subgroup = 'raw-material',
    enabled = true,
    allow_decomposition = false,
    energy_required = 7,
    ingredients = {
        {
            {type = "item", name = 'angels-ore5-crushed', amount = 20}
        }
    },
    results = {
        {
            {type = 'fluid', name = 'molten-glass', amount = 25}
        },
        {
            {type = 'item', name = 'slag', amount = 5}
        }
	},
	main_product = "molten-glass",
    icon = '__angelsrefining__/graphics/icons/iron-plate-crushed.png',
    order = 'a-a [angelsore1-crushed-smelting]'
}
 --

fun.Recipe {
    name = 'tba-angelsore5-crushed-smelting',
    category = 'smelting',
    subgroup = 'raw-material',
    enabled = true,
    allow_decomposition = false,
    energy_required = 7,
	ingredients =
		{
			{
				{'angels-ore5-crushed', 3}
			}
		},
	results =
		{
			{
				{type = 'item', name = 'ore-quartz', amount = 2}
			}
		},
    icon = '__angelsrefining__/graphics/icons/iron-plate-crushed.png',
    order = 'a-a [angelsore1-crushed-smelting]'
}
 --Crushed--
fun.Recipe {
    name = 'tba-angelsore5-crushed-processing',
    category = 'tba-ore-sorting',
    subgroup = 'ore-sorting-t1',
    results = {
        {
            {name = 'ore-quartz', amount = 2},
            {name = 'angels-iron-nugget', amount = 2}
        },
        {
            {name = 'angels-iron-pebbles', amount = 2}
        },
        {
            {name = 'tba-ore5-crushed-slag', amount = 6}
        }
    },
    ingredients = {
        {
            {name = 'angels-ore5-crushed', amount = 'add_results'}
        }
    },
    icon = '__angelsrefining__/graphics/icons/angels-ore5-crushed-sorting.png',
    order = 'a[angelsore5-crushed-processing]'
}
--Chunk--
--Contains borax--
fun.Recipe {
    name = 'tba-angelsore5-chunk-processing',
    category = 'tba-ore-sorting',
    subgroup = 'ore-sorting-t1',
    ingredients = {
        {
            {name = 'angels-ore5-chunk', amount = 6}
        }
    },
    results = {
        {
            {name = 'angels-iron-nugget', amount = 2}
        },
        {
            {name = 'angels-iron-pebbles', amount = 2}
        },
        {
            {name = 'raw-borax', amount = 2}
        },
        {
            {name = 'tba-ore5-chunk-slag', amount = 4}
        }
    },
    icon = '__angelsrefining__/graphics/icons/angels-ore5-chunk-sorting.png',
    order = 'a[angelsore5-chunk-processing]'
}
--Crystal--
fun.Recipe {
    name = 'tba-angelsore5-crystal-processing',
    category = 'tba-ore-sorting',
    subgroup = 'ore-sorting-t1',
    ingredients = {
        {
            {name = 'angels-ore5-crystal', amount = 6}
        }
    },
    results = {
        {
            {name = 'angels-iron-nugget', amount = 3}
        },
        {
            {name = 'angels-iron-pebbles', amount = 2}
        },
        {
            {name = 'raw-borax', amount = 3}
        },
        {
            {name = 'tba-ore5-crystal-slag', amount = 2}
        }
    },
    icon = '__angelsrefining__/graphics/icons/angels-ore5-crystal-sorting.png',
    order = 'a[angelsore5-crystal-processing]'
}
--Pure--
fun.Recipe {
    name = 'tba-angelsore5-pure-processing',
    category = 'tba-ore-sorting',
    subgroup = 'ore-sorting-t1',
    ingredients = {
        {
            {name = 'angels-ore5-pure', amount = 6}
        }
    },
    results = {
        {
            {name = 'angels-iron-nugget', amount = 3}
        },
        {
            {name = 'angels-iron-pebbles', amount = 3}
        },
        {
            {name = 'raw-borax', amount = 4}
        }
    },
    icon = '__angelsrefining__/graphics/icons/angels-ore5-pure-sorting.png',
    order = 'a[angelsore5-pure-processing]'
}
]]--