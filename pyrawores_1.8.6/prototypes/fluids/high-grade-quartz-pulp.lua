RECIPE {
    type = "recipe",
    name = "high-grade-quartz-pulp",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "purified-quartz", amount = 1},
        {type = "fluid", name = "water", amount = 300},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "high-grade-quartz-pulp", amount = 50},
    },
    main_product = "high-grade-quartz-pulp",
    icon = "__pyrawores__/graphics/icons/high-grade-quartz-pulp.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "q-1"
}:add_unlock("quartz-mk03")


FLUID {
    type = "fluid",
    name = "high-grade-quartz-pulp",
    icon = "__pyrawores__/graphics/icons/high-grade-quartz-pulp.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.647, g = 0.647, b = 0.647},
    flow_color = {r = 0.647, g = 0.647, b = 0.647},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-quartz",
    order = "c"
}
