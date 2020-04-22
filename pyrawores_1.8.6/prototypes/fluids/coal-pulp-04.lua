RECIPE {
    type = "recipe",
    name = "coal-pulp-04",
    category = "chemistry", --pyfe Jig
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "coal-pulp-03", amount = 100},
        {type = "item", name = "pyrite", amount = 4},
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 50},
        {type = "fluid", name = "coal-pulp-04", amount = 100},
        {type = "item", name = "ash", amount = 20},
    },
    main_product = "coal-pulp-04",
    subgroup = "py-rawores-coal",
    order = "q-2"
}:add_unlock("coal-mk04"):change_category('jig')


FLUID {
    type = "fluid",
    name = "coal-pulp-04",
    icon = "__pyrawores__/graphics/icons/coal-pulp-04.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.0, g = 0.0, b = 0.0},
    flow_color = {r = 0.0, g = 0.0, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-coal",
    order = "c"
}
