RECIPE {
    type = "recipe",
    name = "aerofloat-15",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "cresylic-acid", amount = 100},
        {type = "fluid", name = "aromatics", amount = 100},
        {type = "item", name = "p2s5", amount = 2},
    },
    results = {
        {type = "fluid", name = "aerofloat-15", amount = 100},
    },
    main_product = "aerofloat-15",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("machines-mk03")


FLUID {
    type = "fluid",
    name = "aerofloat-15",
    icon = "__pyrawores__/graphics/icons/aerofloat-15.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.086, g = 0.164, b = 0.243},
    flow_color = {r = 0.086, g = 0.164, b = 0.243},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
