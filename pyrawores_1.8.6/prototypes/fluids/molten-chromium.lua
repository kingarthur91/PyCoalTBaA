FLUID {
    type = "fluid",
    name = "molten-chromium",
    icon = "__pyrawores__/graphics/icons/molten-chromium.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.7, g = 0.7, b = 0.7},
    flow_color = {r = 0.7, g = 0.7, b = 0.7},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-chromium",
    order = "c"
}
