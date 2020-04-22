RECIPE {
    type = "recipe",
    name = "ti-pulp-03",
    category = "chemistry", --pyfe grease table
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "ti-pulp-02", amount = 100},
        {type = "fluid", name = "heavy-oil", amount = 100}, --pyfe grease
        {type = "item", name = "filtration-media", amount = 1},
    },
    results = {
        {type = "fluid", name = "ti-pulp-03", amount = 100},
    },
    main_product = "ti-pulp-03",
    subgroup = "py-rawores-titanium",
    order = "q-2"
}:add_unlock("titanium-mk03"):change_category('grease'):replace_ingredient("heavy-oil", "grease")


FLUID {
    type = "fluid",
    name = "ti-pulp-03",
    icon = "__pyrawores__/graphics/icons/ti-pulp-03.png",
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
