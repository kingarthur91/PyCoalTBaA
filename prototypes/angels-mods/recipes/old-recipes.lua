
--angel related recipes
if mods["angelspetrochem"] then

if mods["angelsrefining"] then
data:extend(
{
	{
		type = "recipe",
		name = "water-mineralized-abcd",
		category = "liquifying",
		subgroup = "water-treatment",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="fluid", name="water", amount=100},
			{type="item", name="stone-crushed", amount=10},
		},
		results=
		{
			{type="fluid", name="water-mineralized", amount=100},
		},
		icon = "__angelsrefining__/graphics/icons/water-mineralized.png",
		icon_size = 32,
		order = "a[water-water-mineralized]",
	}
}
)
	end

if mods["boblibrary"] and not mods["pyrawores"] then
data:extend(
{
	{
    type = "recipe",
    name = "glass-sand4",
    category = "hpf",
    enabled = "true",
    energy_required = 3,
    ingredients ={
        {type="item", name="pure-sand", amount=15},
        {type="fluid", name="coal-gas", amount=100},
        {type="item", name="angels-ore6-crushed", amount=10},
    },
    results={
        {type="item", name="glass", amount=5},
		{type="item", name="slag", amount=3}

    },
    main_product= "glass",
    icon = "__bobplates__/graphics/icons/glass.png",
	icon_size = 32,
    subgroup = "py-items-hpf",
    order = "i",
	}
}
)
	end


if mods["angelssmelting"] then

	local CrushedOres = {'iron','copper'}

	if mods["bobores"] and not mods["pyrawores"] then

		table.insert(CrushedOres,'bauxite')
		table.insert(CrushedOres,'gold')
		table.insert(CrushedOres,'lead')
		--table.insert(CrushedOres,'quartz')
		table.insert(CrushedOres,'nickel')
		table.insert(CrushedOres,'rutile')
		table.insert(CrushedOres,'silver')
		table.insert(CrushedOres,'tin')
		table.insert(CrushedOres,'tungsten')
		table.insert(CrushedOres,'zinc')

	end

	for i, Ore in ipairs(CrushedOres) do

	local ore

		if Ore == "bauxite" then

			ore = Ore
			Ore = "aluminium"

		elseif Ore == "rutile" then

			ore = Ore
			Ore = "titanium"

		else

			ore = Ore

		end

	data:extend(
		{
			{
				type = "recipe",
				name = tostring(Ore) .. "-Processed-to-Crushed",
				category = "crusher",
				subgroup = "angels-" .. tostring(Ore),
				energy_required = 2,
				enabled = "true",
				ingredients ={{"processed-" .. tostring(Ore), 2}},
				results=
				{
				  {type="item", name="crushed-" .. tostring(ore), amount=6}
				},
				icon = "__pycoalprocessinggraphics__/graphics/icons/crush-" .. tostring(ore) .. ".png",
				icon_size = 32,
				order = "ab",
			},
			{
				type = "recipe",
				name = tostring(Ore) .. "-Crushed-to-Pellet",
				category = "pellet-pressing",
				subgroup = "angels-" .. tostring(Ore),
				energy_required = 2,
				enabled = "true",
				ingredients ={{"crushed-" .. tostring(ore), 5}},
				results=
				{
				  {type="item", name="pellet-" .. tostring(Ore), amount=4}
				},
				icon = "__pycoalprocessinggraphics__/graphics/icons/crush-" .. tostring(ore) .. ".png",
				icon_size = 32,
				order = "ac",
			}
		}
	)

	end

end


data:extend(
    {
	{
	type = "recipe",
    name = "sand from stone",
	category = "ore-sorting-t1",
	subgroup = "processing-crafting",
	subgroup = "ore-processing-a",
    energy_required = 4,
	enabled = "true",
    ingredients ={{"stone-crushed", 2}},
    results=
    {
      {type="item", name="sand", amount=2}
    },
	icon = "__PyCoalTBaA__/graphics/icons/sand.png",
	icon_size = 32,
	order = "a[angelsore1-crushed-hand]",
    },

	{
    type = "recipe",
    name = "angelsore6-crushed-hand",
	category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 4,
	enabled = "true",
    ingredients ={{"angels-ore6", 2}},
    results=
    {
      {type="item", name="angels-ore6-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
	icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
	icon_size = 32,
    order = "a[angelsore1-crushed-hand]",
	},
	{
    type = "recipe",
    name = "water-mineralized-2000",
    category = "washer",
    enabled = "false",
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "coarse", amount = 50},
        {type = "fluid", name = "water", amount = 300}
    },
    results = {
        {type = "item", name = "stone", amount = 4},
        {type = "fluid", name = "water-mineralized", amount = 250}
    },
    main_product = "water-mineralized",
    icon = "__pycoalprocessinggraphics__/graphics/icons/coarse-washer.png",
    icon_size = 32,
    subgroup = "py-washer",
    order = "b"
}

}
)

end
