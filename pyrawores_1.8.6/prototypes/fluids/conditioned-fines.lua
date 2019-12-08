RECIPE {
    type = "recipe",
    name = "conditioned-fines",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-fines", amount = 100},
        {type = "fluid", name = "kerosene", amount = 50},
    },
    results = {
        {type = "fluid", name = "conditioned-fines", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 50},
    },
    main_product = "conditioned-fines",
    subgroup = "py-rawores-coal",
    order = "q-2"
}:add_unlock("coal-mk04"):change_category('pan')


FLUID {
    type = "fluid",
    name = "conditioned-fines",
    icon = "__pyrawores__/graphics/icons/conditioned-fines.png",
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
