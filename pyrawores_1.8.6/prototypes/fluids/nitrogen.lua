RECIPE {
    type = "recipe",
    name = "nitrogen",
    category = "carbonfilter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "purest-nitrogen-gas", amount = 100},
        {type = "item", name = "filtration-media", amount = 1}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 200}
    },
    main_product = "nitrogen",
    subgroup = "py-rawores-fluids",
    order = "daa"
}:add_unlock("filtration")

FLUID {
    type = "fluid",
    name = "nitrogen",
    icon = "__pyrawores__/graphics/icons/nitrogen.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.113, g = 0.364, b = 1},
    flow_color = {r = 0.113, g = 0.364, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
