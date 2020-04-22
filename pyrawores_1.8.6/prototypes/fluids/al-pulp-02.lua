RECIPE {
    type = "recipe",
    name = "al-pulp-02",
    category = "chemistry", --pyfe agitator
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-pulp-01", amount = 100},
        {type = "fluid", name = "steam", amount = 300, temperature = 165},
    },
    results = {
        {type = "fluid", name = "al-pulp-02", amount = 100},
    },
    --main_product = "powdered-aluminium",
    icon = "__pyrawores__/graphics/icons/al-pulp-02.png",
    icon_size = 32,
    subgroup = "py-rawores-aluminium",
    order = "d"
}:add_unlock("aluminium-mk02")


FLUID {
    type = "fluid",
    name = "al-pulp-02",
    icon = "__pyrawores__/graphics/icons/al-pulp-02.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.827, g = 0.568, b = 0.0},
    flow_color = {r = 0.827, g = 0.568, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-aluminium",
    order = "d"
}
