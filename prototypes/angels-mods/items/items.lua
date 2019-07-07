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

	--replace subgroup with proper subgroups later
	{
    type = "item",
    name = "bio-sample",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},
	{
    type = "item",
    name = "iron-magnet-1",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},
	{
    type = "item",
    name = "copper-winding",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},
	{
    type = "item",
    name = "empty-casing",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},
	{
    type = "item",
    name = "complete-casing",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},
	{
    type = "item",
    name = "assmbled-shaft",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},
	{
    type = "item",
    name = "empty-caseing",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},
	{
    type = "item",
    name = "assembled-shaft",
    icon = "__PyCoalTBaA__/graphics/uberhaul/icons/untextured.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "a",
    stack_size = 100,
	},

}
)

	if mods["angelsindustries"] then
	
	data:extend(
	{
		{
		type = "item",
		name = "electric-motor-1",
		icon = "__angelsindustries__/graphics/icons/electric-motor-1.png",
		icon_size = 32,
		subgroup = "angels-motors",
		order = "a",
		stack_size = 100,
		},
	}
	)
	
	end

end