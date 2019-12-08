RECIPE {
    type = "recipe",
    name = "copper-pulp-03",
    category = "flotation",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "copper-pulp-02", amount = 100},
        {type = "fluid", name = "copper-solution", amount = 10},
        {type = "fluid", name = "acid-solvent", amount = 10},
    },
    results = {
        {type = "fluid", name = "copper-pulp-03", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 50},
        {type = "fluid", name = "copper-pregnant-solution", amount = 20},
    },
    main_product = "copper-pulp-03",
    subgroup = "py-rawores-copper",
    order = "q-2"
}:add_unlock("copper-mk03")


FLUID {
    type = "fluid",
    name = "copper-pulp-03",
    icon = "__pyrawores__/graphics/icons/copper-pulp-03.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 1, g = 0.656, b = 0.1},
    flow_color = {r = 1, g = 0.656, b = 0.1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-copper",
    order = "c"
}
