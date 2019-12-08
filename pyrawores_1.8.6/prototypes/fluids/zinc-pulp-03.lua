RECIPE {
    type = "recipe",
    name = "zinc-pulp-03",
    category = "flotation",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "zinc-pulp-02", amount = 300},
        {type = "fluid", name = "aerofloat-15", amount = 20},
    },
    results = {
        {type = "fluid", name = "zinc-pulp-03", amount = 300},
        {type = "fluid", name = "zinc-waste", amount = 150},
    },
    main_product = "zinc-pulp-03",
    subgroup = "py-rawores-zinc",
    order = "q-2"
}:add_unlock("zinc-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 250})

FLUID {
    type = "fluid",
    name = "zinc-pulp-03",
    icon = "__pyrawores__/graphics/icons/zinc-pulp-03.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.6, g = 0.903, b = 0.847},
    flow_color = {r = 0.6, g = 0.903, b = 0.847},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-zinc",
    order = "c"
}
