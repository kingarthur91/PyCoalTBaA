RECIPE {
    type = "recipe",
    name = "nickel-tailings",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nickel-overflow", amount = 100},
        {type = "fluid", name = "methanol", amount = 50},
    },
    results = {
        {type = "fluid", name = "nickel-slime", amount = 50},
        {type = "fluid", name = "nickel-tailings", amount = 50},
    },
    main_product = "nickel-tailings",
    subgroup = "py-rawores-nickel",
    order = "q-2"
}:add_unlock("nickel-mk03")


FLUID {
    type = "fluid",
    name = "nickel-tailings",
    icon = "__pyrawores__/graphics/icons/nickel-tailings.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.164, g = 0.388, b = 0.192},
    flow_color = {r = 0.164, g = 0.388, b = 0.192},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-nickel",
    order = "c"
}
