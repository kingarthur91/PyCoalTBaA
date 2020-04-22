RECIPE {
    type = "recipe",
    name = "u-81",
    category = "scrubber",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-79", amount = 100},
        {type = "fluid", name = "water", amount = 100}, --pyfe soda-ash
        {type = "item", name = "sand", amount = 10},
    },
    results = {
        {type = "fluid", name = "u-81", amount = 100},
    },
    main_product = "u-81",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:add_unlock("uranium-mk04"):replace_ingredient("water", "soda-ash")


FLUID {
    type = "fluid",
    name = "u-81",
    icon = "__pyrawores__/graphics/icons/u-81.png",
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
