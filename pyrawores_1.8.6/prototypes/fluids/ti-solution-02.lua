RECIPE {
    type = "recipe",
    name = "ti-solution-02",
    category = "flotation",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "ti-solution", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "ti-solution-02", amount = 50},
        {type = "fluid", name = "dirty-water", amount = 50},
    },
    main_product = "ti-solution-02",
    subgroup = "py-rawores-titanium",
    order = "q-2"
}:add_unlock("titanium-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 150})


FLUID {
    type = "fluid",
    name = "ti-solution-02",
    icon = "__pyrawores__/graphics/icons/ti-solution-02.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.713, g = 0.643, b = 0.733},
    flow_color = {r = 0.713, g = 0.643, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-titanium",
    order = "c"
}
