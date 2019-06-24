if mods["angelsrefining"] then
--new recipes go here
data:extend(
{
--all recipes will start with tba- to make them seperate from the other mods recipes
--(ORE SORTING)--
	--Angels ore 1--
	--Crushed--
		--is iron only--
	{
    type = "recipe",
    name = "tba-angelsore1-crushed-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
		{
			{"angels-ore1-crushed", 6}
		},
    results=
    {
	  {type="item", name="angels-iron-nugget", amount=2},
	  {type="item", name="angels-iron-pebbles", amount=2},
	  {type="item", name="tba-ore1-crushed-slag", amount=6}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-crushed-processing]",
	},
	--Chunk--
		--Contains borax--
	{
    type = "recipe",
    name = "tba-angelsore1-chunk-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
	{
		{"angels-ore1-chunk", 6}
    },
    results=
    {
	  {type="item", name="angels-iron-nugget", amount=2},
	  {type="item", name="angels-iron-pebbles", amount=2},
	  {type="item", name="raw-borax", amount=2},
	  {type="item", name="tba-ore1-chunk-slag", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-chunk-processing]",
	},
	--Crystal--
	{
    type = "recipe",
    name = "tba-angelsore1-crystal-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
	{
		{"angels-ore1-crystal", 6}
    },
    results=
    {
	  {type="item", name="angels-iron-nugget", amount=3},
	  {type="item", name="angels-iron-pebbles", amount=2},
	  {type="item", name="raw-borax", amount=3},
	  {type="item", name="tba-ore1-crystal-slag", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-crystal-processing]",
	},
	--Pure--
	{
    type = "recipe",
    name = "tba-angelsore1-pure-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
	{
		{"angels-ore1-pure", 6}
	},
    results=
    {
	  {type="item", name="angels-iron-nugget", amount=3},
	  {type="item", name="angels-iron-pebbles", amount=3},
	  {type="item", name="raw-borax", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-pure-sorting.png",
	icon_size = 32,
    order = "a[angelsore1-pure-processing]",
	},
	
}
)
end