RECIPE {
    type = "recipe",
    name = "u-73",
    category = "chemistry", --mixer
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "u-70", amount = 100},
        {type = "item", name = "steel-plate", amount = 5}
    },
    results = {
        {type = "fluid", name = "u-73", amount = 100}
    },
    main_product = "u-73",
    subgroup = "py-rawores-uranium",
    order = "q-2"
}:add_unlock("uranium-mk04"):change_category("mixer")

FLUID {
    type = "fluid",
    name = "u-73",
    icon = "__pyrawores__/graphics/icons/u-73.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.180, g = 0.756, b = 0.196},
    flow_color = {r = 0.180, g = 0.756, b = 0.196},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-uranium",
    order = "c"
}
