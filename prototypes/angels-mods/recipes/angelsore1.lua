
--new recipes go here

--all recipes will start with tba- to make them seperate from the other mods recipes
--(ORE SORTING)--

--add unrefinded slag to crushing
--Crushed--
fun.add_result("angelsore1-crushed",{name = "tba-ore1-crushed-slag", amount = 3})
fun.Patch
	{
		name = "angelsore1-crushed-processing",
		ingredients =
			{
				{name = "angels-ore1-crushed", amount = "+4"}
			},
		results =
			{
				{name = "iron-ore", amount = "+4"},
				{name = "copper-ore", amount = "+2"}
			}
	}
	
	--Chunks--
fun.ingredient_replace("angelsore1-chunk","angels-ore1-crushed","tba-ore1-crushed-slag")
fun.add_result("angelsore1-chunk",{name = "tba-ore1-chunk-slag", amount = 4})
fun.Patch
	{
		name = "angelsore1-chunk-processing",
		ingredients =
			{
				{name = "angles-ore1-chunk", amount = "+4"}
			},
		results =
			{
				{name = "iron-ore", amount = "+2"},
				{name = "copper-ore", amount = "+2"},
				{name = "quartz", amount = "+4"},
				{name = "nickel-ore", amount = "+3"}
			}
	}
	
	--Crystal--
fun.ingredient_replace("angelsore1-crystal","angels-ore1-chunk","tba-ore1-chunk-slag")
fun.add_result("angelsore1-crystal",{name = "tba-ore1-crystal-slag", amount = 7})
fun.Patch
	{
		name = "angelsore1-crystal-processing",
		ingredients =
			{
				{name = "angles-ore1-crystal", amount = "+6"}
			},
		results =
			{
				{name = "iron-ore", amount = "+1"},
				{name = "copper-ore", amount = "+1"},
				{name = "quartz", amount = "+3"},
				{name = "nickel-ore", amount = "+4"}
			}
	}
	
fun.ingredient_replace("angelsore1-pure","angels-ore1-crystal","tba-ore1-crystal-slag")
fun.Patch
	{
		name = "angelsore1-pure-processing", 
		results = 
			{
				 {name = "iron-ore", amount = "+1"},
				 {name = "copper-ore", amount = "+2"},
				 {name = "quartz", amount = "+2"},
				 {name = "nickel-ore", amount = "+1"},
				 {name = "rutile-ore", amount = "+3"},
				 {name = "zinc-ore", amount = "+4"}
			} 
	}


--[[
	--Angels ore 1--
	--Crushed--
fun.Recipe	
	{
    name = "tba-angelsore1-crushed-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    results=
    {
		{
			{name="ore-aluminium",amount=2},
			{name="angels-iron-nugget", amount=2},
		},
		{
			{name="angels-iron-pebbles", amount=2},
		},
		{
			{name="tba-ore1-crushed-slag", amount=6},
		},
    },
	ingredients =
		{
			{
				{name="angels-ore1-crushed", amount="add_results"}
			}
		},
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed-sorting.png",
    order = "a[angelsore1-crushed-processing]",
	}
	--Chunk--
		--Contains borax--
fun.Recipe	
	{
    name = "tba-angelsore1-chunk-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore1-chunk", amount=6}
		}
    },
    results=
    {
		{
			{name="angels-iron-nugget", amount=2}
		},
		{
			{name="angels-iron-pebbles", amount=2}
		},
		{
			{name="raw-borax", amount=2}
		},
		{
			{name="tba-ore1-chunk-slag", amount=4}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk-sorting.png",
    order = "a[angelsore1-chunk-processing]",
	}
	--Crystal--
fun.Recipe	
	{
    name = "tba-angelsore1-crystal-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore1-crystal", amount=6}
		}
    },
    results=
    {
		{
			{name="angels-iron-nugget", amount=3}
		},
		{
			{name="angels-iron-pebbles", amount=2}
		},
		{
			{name="raw-borax", amount=3}
		},
		{
			{name="tba-ore1-crystal-slag", amount=2}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal-sorting.png",
    order = "a[angelsore1-crystal-processing]",
	}
	--Pure--
fun.Recipe
	{
    name = "tba-angelsore1-pure-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore1-pure", amount=6}
		}
	},
    results=
    {
		{
			{name="angels-iron-nugget", amount=3}
		},
		{
			{name="angels-iron-pebbles", amount=3}
		},
		{
			{name="raw-borax", amount=4}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-pure-sorting.png",
    order = "a[angelsore1-pure-processing]",
	}
]]--