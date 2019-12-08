RECIPE {
    type = "recipe",
    name = "classify-iron-ore-dust",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "iron-ore-dust", amount = 3},
        {type = "fluid", name = "water", amount = 300},
    },
    results = {
        {type = "fluid", name = "iron-pulp-high-concentrate", amount = 50},
        {type = "fluid", name = "iron-slime", amount = 50}
    },
    main_product = "iron-pulp-high-concentrate",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("iron-mk02")


FLUID {
    type = "fluid",
    name = "iron-pulp-high-concentrate",
    icon = "__pyrawores__/graphics/icons/iron-pulp-high-concentrate.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.086, g = 0.180, b = 0.254},
    flow_color = {r = 0.086, g = 0.180, b = 0.254},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
