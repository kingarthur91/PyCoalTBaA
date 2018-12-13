RECIPE {
    type = "recipe",
    name = "ammonia2",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 300},
    },
    results = {
        {type = "fluid", name = "ammonia", amount = 100},
    },
}:add_unlock("advanced-electronics")



RECIPE {
    type = "recipe",
    name = "pa-cobalt",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 1},
    },
    results = {
        {type = "item", name = "cobalt-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "cobalt-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-cobalt.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")



RECIPE {
    type = 'recipe',
    name = 'electronic-circuit-initial',
    category = 'handcrafting',
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'copper-plate', amount = 10},
        {type = 'item', name = 'copper-cable', amount = 10},
        {type = 'item', name = 'wood', amount = 2}
    },
    results = {
        {type = 'item', name = 'pcb1', amount = 3}
    }
}
