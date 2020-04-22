RECIPE {
    type = "recipe",
    name = "outlet-gas-02",
    category = "chemistry", --pyfe gasseparator -- pyht fbreactor
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "outlet-gas-01", amount = 100},
        {type = "fluid", name = "organic-solvent", amount = 50}, --pyfe ethanolamine
    },
    results = {
        {type = "fluid", name = "outlet-gas-02", amount = 100},
        {type = "item", name = "sulfur", amount = 20},
    },
    main_product = "outlet-gas-02",
    subgroup = "py-rawores-coke",
    order = "q-2"
}:add_unlock("coke-mk02"):change_category('gas-separator')

FLUID {
    type = "fluid",
    name = "outlet-gas-02",
    icon = "__pyrawores__/graphics/icons/outlet-gas-02.png",
	icon_size = 32,
    default_temperature = 15, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.960, g = 0.701, b = 0.207},
    flow_color = {r = 0.960, g = 0.701, b = 0.207},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-coke",
    order = "c"
}