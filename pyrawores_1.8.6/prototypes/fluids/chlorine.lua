RECIPE {
    type = "recipe",
    name = "chlorine",
    category = "electrolyzer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water-saline", amount = 100}
    },
    results = {
        {type = "fluid", name = "chlorine", amount = 20},
        {type = "fluid", name = "hydrogen", amount = 20},
        {type = "item", name = "sodium-hydroxide", amount = 2}
    },
    --main_product = "chlorine",
    icon = "__pyrawores__/graphics/icons/water-saline-electrolyzer.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "baa"
}:add_unlock("machines-mk01")

FLUID {
    type = "fluid",
    name = "chlorine",
    icon = "__pyrawores__/graphics/icons/chlorine.png",
    icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.462, g = 0.741, b = 0.137},
    flow_color = {r = 0.462, g = 0.741, b = 0.137},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
