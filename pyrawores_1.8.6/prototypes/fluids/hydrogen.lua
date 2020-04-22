RECIPE {
    type = "recipe",
    name = "hydrogen",
    category = "electrolyzer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water", amount = 300}
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 200},
        {type = "fluid", name = "oxygen", amount = 100}
    },
    --main_product = "hydrogen",
    icon = "__pyrawores__/graphics/icons/water-electrolysis.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "aaa"
}:add_unlock("machines-mk01")

FLUID {
    type = "fluid",
    name = "hydrogen",
    icon = "__pyrawores__/graphics/icons/hydrogen.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
