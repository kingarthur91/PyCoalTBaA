if mods["angelsrefining"] then
--new recipes go here
data:extend(
{
--all recipes will start with tba- to make them seperate from the other mods recipes
--(ORE SORTING)--
	--Angels ore 3--
	--Crushed--
		--is copper only--
	{
    type = "recipe",
    name = "tba-angelsore3-crushed-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
		{
			{"angels-ore3-crushed", 4}
		},
    results=
    {
	  {type="item", name="angels-copper-nugget", amount=2},
	  {type="item", name="angels-copper-pebbles", amount=2},
	  {type="item", name="tba-ore3-crushed-slag", amount=6}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed-sorting.png",
	icon_size = 32,
    order = "a[angelsore3-crushed-processing]",
	},
	--Chunk--
		--Contains borax--
	{
    type = "recipe",
    name = "tba-angelsore3-chunk-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
	{
		{"angels-ore3-chunk", 4}
    },
    results=
    {
	  {type="item", name="angels-copper-nugget", amount=2},
	  {type="item", name="angels-copper-pebbles", amount=2},
	  {type="item", name="niobium-ore", amount=2},
	  {type="item", name="tba-ore3-chunk-slag", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk-sorting.png",
	icon_size = 32,
    order = "a[angelsore3-chunk-processing]",
	},
	--Crystal--
	{
    type = "recipe",
    name = "tba-angelsore3-crystal-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
	{
		{"angels-ore3-crystal", 4}
    },
    results=
    {
	  {type="item", name="angels-copper-nugget", amount=3},
	  {type="item", name="angels-copper-pebbles", amount=2},
	  {type="item", name="niobium-ore", amount=3},
	  {type="item", name="tba-ore3-crystal-slag", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal-sorting.png",
	icon_size = 32,
    order = "a[angelsore3-crystal-processing]",
	},
	--Pure--
	{
    type = "recipe",
    name = "tba-angelsore3-pure-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
	allow_decomposition = false,
	ingredients =
	{
		{"angels-ore3-pure", 4}
	},
    results=
    {
	  {type="item", name="angels-copper-nugget", amount=3},
	  {type="item", name="angels-copper-pebbles", amount=3},
	  {type="item", name="niobium-ore", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-pure-sorting.png",
	icon_size = 32,
    order = "a[angelsore3-pure-processing]",
	},

}
)
end