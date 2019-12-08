RECIPE {
    type = "recipe",
    name = "coal-fines",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "thickened-coal-fines", amount = 100},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "coal-fines", amount = 100},
        {type = "fluid", name = "high-ash-fines", amount = 20},
        {type = "item", name = "pyrite", amount = 1},
    },
    main_product = "coal-fines",
    subgroup = "py-rawores-coal",
    order = "q-2"
}:add_unlock("coal-mk04"):change_category('jig')


FLUID {
    type = "fluid",
    name = "coal-fines",
    icon = "__pyrawores__/graphics/icons/coal-fines.png",
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