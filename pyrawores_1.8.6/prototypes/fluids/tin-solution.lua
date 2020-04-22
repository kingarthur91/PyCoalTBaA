RECIPE {
    type = "recipe",
    name = "tin-solution",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "organic-solvent", amount = 80},
        {type = "item", name = "powdered-tin", amount = 10},
    },
    results = {
        {type = "fluid", name = "tin-solution", amount = 50},
        {type = "fluid", name = "tin-slime", amount = 50},
    },
    main_product = "tin-solution",
    subgroup = "py-rawores-tin",
    order = "q-2"
}:add_unlock("tin-mk03")


FLUID {
    type = "fluid",
    name = "tin-solution",
    icon = "__pyrawores__/graphics/icons/tin-solution.png",
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
