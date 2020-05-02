

RECIPE {
    type = "recipe",
    name = "exploration-science-pack",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "flask", amount = 4},
		{type = "item", name = "tin-plate", amount = 4},
		{type = "item", name = "lead-plate", amount = 4},
		{type = "item", name = "temperate-3", amount = 4},
		--maybe use cellulose fiber?
		{type = "item", name = "cellulose", amount = 4}
    },
    results = {
        {type = "item", name = "exploration-science-pack", amount = 6}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/science-pack-1.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "a1"
}
