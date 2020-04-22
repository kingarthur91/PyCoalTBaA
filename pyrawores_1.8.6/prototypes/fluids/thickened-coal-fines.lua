RECIPE {
    type = "recipe",
    name = "thickened-coal-fines",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "fines-pulp", amount = 100},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "thickened-coal-fines", amount = 100},
        {type = "fluid", name = "high-ash-fines", amount = 10},
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "item", name = "coal", amount = 7},
    },
    main_product = "thickened-coal-fines",
    subgroup = "py-rawores-coal",
    order = "q-2"
}:add_unlock("coal-mk03")


FLUID {
    type = "fluid",
    name = "thickened-coal-fines",
    icon = "__pyrawores__/graphics/icons/thickened-coal-fines.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.0, g = 0.0, b = 0.0},
    flow_color = {r = 0.0, g = 0.0, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-coal",
    order = "c"
}
