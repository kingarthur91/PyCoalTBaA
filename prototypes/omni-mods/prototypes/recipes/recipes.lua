local fun = require("functions/functions")

RECIPE {
    type = "recipe",
    name = "latex0",
    category = "pulp-basic",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'latex-slab', amount = 2},
    },
    results = {
        {type = 'item', name = 'latex', amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "agar0",
    category = "hpf-basic",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'seaweed', amount = 2},
    },
    results = {
        {type = 'item', name = 'agar', amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "log0",
    category = "fwf-basic",
    enabled = true,
    energy_required = 60,
    ingredients = {},
    results = {
        {type = "item", name = "log", amount = 3}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/log.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "c6"
}

RECIPE {
    type = "recipe",
    name = "wood0",
    category = "burner-wpu",
    enabled = true,
    energy_required = 15,
    ingredients = {
		{type = "item", name = "log", amount = 1}
	},
    results = {
        {type = "item", name = "wood", amount = 2}
    },
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64,
    subgroup = "py-items",
    order = "c6"
}

RECIPE {
    type = 'recipe',
    name = 'omni-science-pack',
    category = 'crafting',
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'omnicium-plate', amount = 2},
        {type = 'item', name = 'moss', amount = 3},
        {type = 'item', name = 'iron-ore', amount = 2},
        {type = 'item', name = 'copper-ore', amount = 2},
        {type = 'item', name = 'omnite-brick', amount = 1}
    },
    results = {
        {type = 'item', name = 'omni-science-pack', amount = 4},
    },
}