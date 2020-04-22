RECIPE {
    type = "recipe",
    name = "u-79",
    category = "scrubber",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-75", amount = 100},
        {type = "fluid", name = "organic-solvent", amount = 100}, --pyfe industrial solvent
        {type = "item", name = "sand", amount = 10},
    },
    results = {
        {type = "fluid", name = "u-79", amount = 100},
        {type = "fluid", name = "u-waste", amount = 100},
    },
    main_product = "u-79",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:replace_ingredient("organic-solvent", "industrial-solvent")

RECIPE {
    type = "recipe",
    name = "u-79-2",
    category = "scrubber",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-75", amount = 100},
        {type = "fluid", name = "organic-solvent", amount = 100}, --pyfe industrial solvent
        {type = "item", name = "sand", amount = 10},
    },
    results = {
        {type = "fluid", name = "u-79", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "u-79",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:add_unlock("uranium-mk04"):replace_ingredient("organic-solvent", "industrial-solvent")



FLUID {
    type = "fluid",
    name = "u-79",
    icon = "__pyrawores__/graphics/icons/u-79.png",
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
