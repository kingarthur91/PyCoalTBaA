RECIPE {
    type = "recipe",
    name = "u-50",
    category = "chemistry", --hydrocyclone
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "u-rich-pulp", amount = 100},
    },
    results = {
        {type = "fluid", name = "u-50", amount = 50},
        {type = "fluid", name = "u-45", amount = 50},
    },
    main_product = "u-50",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:add_unlock("uranium-mk03"):change_category('hydrocyclone')


FLUID {
    type = "fluid",
    name = "u-50",
    icon = "__pyrawores__/graphics/icons/u-50.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-uranium",
    order = "c"
}
