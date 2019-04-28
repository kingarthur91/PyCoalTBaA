data:extend({
	{
    type = "recipe",
    name = "coal-gas-from-fawogae",
    category = "distilator",
    enabled = "true",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "fawogae", amount = 10}
    },
    results = {
        {type = "fluid", name = "coal-gas", amount = 10},
        {type = "fluid", name = "tar", amount = 30},
        {type = "item", name = "iron-oxide", amount = 1, probability = 0.5},
        {type = "item", name = "coal", amount = 5}
    },
    main_product = "coal-gas",
    icon = "__pycoalprocessing__/graphics/icons/coalgas-from-wood.png",
    icon_size = 32,
    subgroup = "py-syngas",
    order = "f"
	},
})