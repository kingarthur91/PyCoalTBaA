
--new recipes go here

--all recipes will start with tba- to make them seperate from the other mods recipes
--(ORE SORTING)--
	--Angels ore 1--
	--Crushed--
fun.Recipe
	{
    name = "tba-angelsore4-crushed-processing",
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
			{name="tba-ore4-crushed-slag", amount=6},
		},
    },
	ingredients =
		{
			{
				{name="angels-ore4-crushed", amount="add_results"}
			}
		},
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed-sorting.png",
    order = "a[angelsore4-crushed-processing]",
	}
	--Chunk--
		--Contains borax--
fun.Recipe
	{
    name = "tba-angelsore4-chunk-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore4-chunk", amount=6}
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
			{name="tba-ore4-chunk-slag", amount=4}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk-sorting.png",
    order = "a[angelsore4-chunk-processing]",
	}
	--Crystal--
fun.Recipe
	{
    name = "tba-angelsore4-crystal-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore4-crystal", amount=6}
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
			{name="tba-ore4-crystal-slag", amount=2}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal-sorting.png",
    order = "a[angelsore4-crystal-processing]",
	}
	--Pure--
fun.Recipe
	{
    name = "tba-angelsore4-pure-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore4-pure", amount=6}
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
    icon = "__angelsrefining__/graphics/icons/angels-ore4-pure-sorting.png",
    order = "a[angelsore4-pure-processing]",
	}
