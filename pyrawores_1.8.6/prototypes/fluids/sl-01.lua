RECIPE {
    type = "recipe",
    name = "sl-01",
    category = "flotation",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "slz-pulp-02", amount = 100},
        {type = "fluid", name = "z3-reagent", amount = 50},
        --pyfe pressured air
    },
    results = {
        {type = "fluid", name = "sl-01", amount = 50},
        --{type = "fluid", name = "zn-pulp-01", amount = 50},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "sl-01",
    subgroup = "py-rawores-lead",
    order = "q-1"
}:add_unlock("lead-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 50})

RECIPE {
    type = "recipe",
    name = "sl-01-2",
    category = "flotation",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "lead-refined-dust-03", amount = 3},
        {type = "fluid", name = "oleochemicals", amount = 150},
        {type = "fluid", name = "z3-reagent", amount = 150},
        --pyfe pressured air
    },
    results = {
        {type = "fluid", name = "sl-01", amount = 150},
    },
    main_product = "sl-01",
    subgroup = "py-rawores-lead",
    order = "q-1"
}:add_unlock("lead-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 350})


FLUID {
    type = "fluid",
    name = "sl-01",
    icon = "__pyrawores__/graphics/icons/sl-01.png",
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
