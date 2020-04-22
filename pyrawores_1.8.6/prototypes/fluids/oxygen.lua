FLUID {
    type = "fluid",
    name = "oxygen",
    icon = "__pyrawores__/graphics/icons/oxygen.png",
	icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.701, g = 0.160, b = 0.180},
    flow_color = {r = 0.701, g = 0.160, b = 0.180},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
