RECIPE {
    type = "recipe",
    name = "gold-solution",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "gold-precipitate-2", amount = 1},
        {type = "item", name = "coal-dust", amount = 10},
        {type = "fluid", name = "water", amount = 200} --pyht ammonia
    },
    results = {
        {type = "fluid", name = "gold-solution", amount = 100}
    },
    main_product = "gold-solution",
    subgroup = "py-rawores-gold",
    order = "q-2"
}:add_unlock("gold"):replace_ingredient("water", "ammonia")

FLUID {
    type = "fluid",
    name = "gold-solution",
    icon = "__pyrawores__/graphics/icons/gold-solution.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.952, g = 0.796, b = 0.0},
    flow_color = {r = 0.952, g = 0.796, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-gold",
    order = "c"
}
