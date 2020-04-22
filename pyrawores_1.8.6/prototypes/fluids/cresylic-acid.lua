RECIPE {
    type = "recipe",
    name = "cresylic-acid",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "creosote", amount = 100},
        {type = "fluid", name = "aromatics", amount = 100},
        {type = "item", name = "nexelit-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "cresylic-acid", amount = 100},
    },
    main_product = "cresylic-acid",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("machines-mk03"):change_category('mixer')


FLUID {
    type = "fluid",
    name = "cresylic-acid",
    icon = "__pyrawores__/graphics/icons/cresylic-acid.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.478, g = 0, b = 0},
    flow_color = {r = 0.478, g = 0, b = 0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
