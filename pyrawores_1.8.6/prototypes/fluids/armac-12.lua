RECIPE {
    type = "recipe",
    name = "armac-12",
    category = "chemistry", --pyfe mixer
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "oleochemicals", amount = 25},
        {type = "fluid", name = "chlorine", amount = 150}, --pyht ammonia
        {type = "item", name = "lead-plate", amount = 1},

    },
    results = {
        {type = "fluid", name = "armac-12", amount = 100},
    },
    main_product = "armac-12",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("coal-processing-2"):change_category('mixer'):replace_ingredient('chlorine','ammonia')


FLUID {
    type = "fluid",
    name = "armac-12",
    icon = "__pyrawores__/graphics/icons/armac-12.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.635, g = 0.482, b = 0.341},
    flow_color = {r = 0.635, g = 0.482, b = 0.341},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
