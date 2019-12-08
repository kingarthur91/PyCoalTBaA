RECIPE {
    type = "recipe",
    name = "kerosene",
    category = "olefin",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 100},
        {type = "fluid", name = "crude-oil", amount = 250},
        {type = "item", name = "nichrome", amount = 2},
    },
    results = {
        {type = "fluid", name = "kerosene", amount = 100},
        {type = "fluid", name = "diesel", amount = 50},
    },
    main_product = "kerosene",
    icon = "__pyrawores__/graphics/icons/kerosene.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("energy-2")


FLUID {
    type = "fluid",
    name = "kerosene",
    icon = "__pyrawores__/graphics/icons/kerosene.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.839, g = 0.784, b = 0.137},
    flow_color = {r = 0.839, g = 0.784, b = 0.137},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
