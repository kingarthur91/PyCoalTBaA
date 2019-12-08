RECIPE {
    type = "recipe",
    name = "iron-pulp-04",
    category = "flotation",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "iron-pulp-03", amount = 500},
        {type = "fluid", name = "organic-solvent", amount = 50}
    },
    results = {
        {type = "fluid", name = "iron-pulp-04", amount = 500}
        --pyht phosphoric-acid
    },
    main_product = "iron-pulp-04",
    subgroup = "py-rawores-iron",
    order = "q-2"
}:add_unlock("iron-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 150})

FLUID {
    type = "fluid",
    name = "iron-pulp-04",
    icon = "__pyrawores__/graphics/icons/iron-pulp-04.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.086, g = 0.180, b = 0.254},
    flow_color = {r = 0.086, g = 0.180, b = 0.254},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-iron",
    order = "c"
}
