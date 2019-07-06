if mods["angelsrefining"] then
--new recipes go here

--all recipes will start with tba- to make them seperate from the other mods recipes
--(ORE SORTING)--
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
			{type="item", name="angels-iron-nugget", amount=2},
		},
	  {type="item", name="angels-iron-pebbles", amount=2},
	  {type="item", name="raw-borax", amount=2},
	  {type="item", name="tba-ore1-chunk-slag", amount=4},
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
	  {type="item", name="angels-iron-nugget", amount=3},
	  {type="item", name="angels-iron-pebbles", amount=2},
	  {type="item", name="raw-borax", amount=3},
	  {type="item", name="tba-ore1-crystal-slag", amount=2},
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
	  {type="item", name="angels-iron-nugget", amount=3},
	  {type="item", name="angels-iron-pebbles", amount=3},
	  {type="item", name="raw-borax", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-pure-sorting.png",
    order = "a[angelsore1-pure-processing]",
	}
	
end