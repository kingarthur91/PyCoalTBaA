RECIPE {
    type = "recipe",
    name = "slz-pulp-02",
    category = "leaching",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "slz-pulp-01", amount = 300},
        {type = "fluid", name = "organic-solvent", amount = 50}, --pyfe soda-ash

    },
    results = {
        {type = "fluid", name = "slz-pulp-02", amount = 300},
    },
    main_product = "slz-pulp-02",
    subgroup = "py-rawores-lead",
    order = "q-1"
}:add_unlock("lead-mk03"):replace_ingredient("organic-solvent", "soda-ash")


FLUID {
    type = "fluid",
    name = "slz-pulp-02",
    icon = "__pyrawores__/graphics/icons/slz-pulp-02.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.4, g = 0.4, b = 0.4},
    flow_color = {r = 0.4, g = 0.4, b = 0.4},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-lead",
    order = "c"
}
