RECIPE {
    type = "recipe",
    name = "chromite-pulp-05",
    category = "flotation",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "chromite-pulp-06", amount = 100},
        {type = "fluid", name = "glycerol", amount = 100},
    },
    results = {
        {type = "fluid", name = "chromite-pulp-05", amount = 50},
        {type = "item", name = "high-chromite", amount = 1, probability = 0.2},
    },
    main_product = "chromite-pulp-05",
    subgroup = "py-rawores-chromium",
    order = "q-2"
}:add_unlock("chromium-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 150})

FLUID {
    type = "fluid",
    name = "chromite-pulp-05",
    icon = "__pyrawores__/graphics/icons/chromite-pulp-05.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.862, g = 0.294, b = 0.031},
    flow_color = {r = 0.862, g = 0.294, b = 0.031},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-chromium",
    order = "c"
}
