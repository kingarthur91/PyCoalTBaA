RECIPE {
    type = "recipe",
    name = "ti-pulp-06",
    category = "chemistry", --pyfe pan
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "kerosene", amount = 100},
        {type = "fluid", name = "ti-pulp-05", amount = 500},
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "fluid", name = "ti-pulp-06", amount = 100},
    },
    main_product = "ti-pulp-06",
    subgroup = "py-rawores-titanium",
    order = "q-2"
}:add_unlock("titanium-mk03"):change_category('pan')


FLUID {
    type = "fluid",
    name = "ti-pulp-06",
    icon = "__pyrawores__/graphics/icons/ti-pulp-06.png",
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
