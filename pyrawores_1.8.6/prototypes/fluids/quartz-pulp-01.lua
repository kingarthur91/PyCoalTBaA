RECIPE {
    type = "recipe",
    name = "quartz-pulp-01",
    category = "chemistry", --pyfe hydrocyclone
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "powdered-quartz", amount = 5},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "quartz-pulp-01", amount = 50},
        {type = "fluid", name = "dirty-water", amount = 50}
    },
    main_product = "quartz-pulp-01",
    icon = "__pyrawores__/graphics/icons/quartz-pulp-01.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "q-1"
}:add_unlock("quartz-mk02")


FLUID {
    type = "fluid",
    name = "quartz-pulp-01",
    icon = "__pyrawores__/graphics/icons/quartz-pulp-01.png",
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
