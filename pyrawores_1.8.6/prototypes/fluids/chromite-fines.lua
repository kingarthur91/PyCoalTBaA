RECIPE {
    type = "recipe",
    name = "chromite-fines",
    category = "scrubber",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "chromite-mix", amount = 100},
        {type = "item", name = "gravel", amount = 15},
    },
    results = {
        {type = "fluid", name = "chromite-fines", amount = 50},
    },
    main_product = "chromite-fines",
    subgroup = "py-rawores-chromium",
    order = "q-2"
}:add_unlock("gold")


FLUID {
    type = "fluid",
    name = "chromite-fines",
    icon = "__pyrawores__/graphics/icons/chromite-fines.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.213, g = 0.656, b = 0.668},
    flow_color = {r = 0.213, g = 0.656, b = 0.668},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-chromium",
    order = "c"
}
