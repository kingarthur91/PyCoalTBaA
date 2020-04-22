RECIPE {
    type = "recipe",
    name = "coal-pulp-01",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "conditioned-fines", amount = 100},
        {type = "fluid", name = "xylenol", amount = 100},
        --pyFE air
    },
    results = {
        {type = "fluid", name = "coal-pulp-01", amount = 50},
        {type = "fluid", name = "coal-pulp-02", amount = 50},
        {type = "fluid", name = "dirty-water", amount = 50},
    },
    main_product = "coal-pulp-01",
    subgroup = "py-rawores-coal",
    order = "q-2"
}:add_unlock("coal-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 150})


FLUID {
    type = "fluid",
    name = "coal-pulp-01",
    icon = "__pyrawores__/graphics/icons/coal-pulp-01.png",
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
