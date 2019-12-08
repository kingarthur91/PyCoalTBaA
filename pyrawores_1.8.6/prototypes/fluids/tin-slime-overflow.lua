RECIPE {
    type = "recipe",
    name = "tin-slime-overflow",
    category = "chemistry", --pyfe thickener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "tin-slime", amount = 100},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "tin-slime-overflow", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 50},
    },
    main_product = "tin-slime-overflow",
    subgroup = "py-rawores-tin",
    order = "q-2"
}:add_unlock("tin-mk03"):change_category('thickener')


FLUID {
    type = "fluid",
    name = "tin-slime-overflow",
    icon = "__pyrawores__/graphics/icons/tin-slime-overflow.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.258, g = 0.180, b = 0.807},
    flow_color = {r = 0.258, g = 0.180, b = 0.807},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-tin",
    order = "c"
}
