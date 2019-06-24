if mods["angelsrefining"] then

--new items go here
data:extend(
{

--add new types of unrefined slags from sorting for each stage and angel ore
	--crushed
	--chunk
	--crystal
	{
	type = "item",
	name = "tba-ore1-crushed-slag",
	icon = "__PyCoalTBaA__/graphics/icons/slag/ore1-crushed-slag.png",
	icon_size = 32,
	subgroup = "ore-processing-a",
	order = "a[angels-ore1-crushed]",
	stack_size = 200
	},
	{
	type = "item",
	name = "tba-ore1-chunk-slag",
	icon = "__PyCoalTBaA__/graphics/icons/slag/ore1-chunk-slag.png",
	icon_size = 32,
	subgroup = "ore-processing-a",
	order = "a[angels-ore1-crushed]",
	stack_size = 200
	},
	{
	type = "item",
	name = "tba-ore1-crystal-slag",
	icon = "__PyCoalTBaA__/graphics/icons/slag/ore1-crystal-slag.png",
	icon_size = 32,
	subgroup = "ore-processing-a",
	order = "a[angels-ore1-crushed]",
	stack_size = 200
	},
	{
	type = "item",
	name = "tba-ore3-crushed-slag",
	icon = "__PyCoalTBaA__/graphics/icons/slag/ore3-crushed-slag.png",
	icon_size = 32,
	subgroup = "ore-processing-a",
	order = "a[angels-ore3-crushed]",
	stack_size = 200
	},
	{
	type = "item",
	name = "tba-ore3-chunk-slag",
	icon = "__PyCoalTBaA__/graphics/icons/slag/ore3-chunk-slag.png",
	icon_size = 32,
	subgroup = "ore-processing-a",
	order = "a[angels-ore3-crushed]",
	stack_size = 200
	},
	{
	type = "item",
	name = "tba-ore3-crystal-slag",
	icon = "__PyCoalTBaA__/graphics/icons/slag/ore3-crystal-slag.png",
	icon_size = 32,
	subgroup = "ore-processing-a",
	order = "a[angels-ore3-crushed]",
	stack_size = 200
	},




}
)

end