RECIPE {
    type = "recipe",
    name = "nickel-pulp-01",
    category = "chemistry", --pyfe agitator
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "limestone", amount = 2},
        {type = "item", name = "salt", amount = 5},
        {type = "fluid", name = "prepared-nickel-pulp", amount = 100},
    },
    results = {
        {type = "fluid", name = "nickel-pulp-01", amount = 100},
    },
    main_product = "nickel-pulp-01",
    subgroup = "py-rawores-nickel",
    order = "q-2"
}:add_unlock("nickel-mk03"):change_category('agitator')


FLUID {
    type = "fluid",
    name = "nickel-pulp-01",
    icon = "__pyrawores__/graphics/icons/nickel-pulp-01.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.164, g = 0.388, b = 0.192},
    flow_color = {r = 0.164, g = 0.388, b = 0.192},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-nickel",
    order = "c"
}
