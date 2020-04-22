RECIPE {
    type = "recipe",
    name = "xylenol-1",
    category = "distilator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "tar", amount = 200},
    },
    results = {
        {type = "fluid", name = "xylenol", amount = 25},
    },
    main_product = "xylenol",
    subgroup = "py-rawores-fluids",
    order = "q-1"
}:add_unlock("machines-mk03")

RECIPE {
    type = "recipe",
    name = "xylenol-2",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "methanol", amount = 100},
        {type = "item", name = "iron-oxide", amount = 10},
        --pyht phenol
    },
    results = {
        {type = "fluid", name = "xylenol", amount = 100},
    },
    main_product = "xylenol",
    subgroup = "py-rawores-fluids",
    order = "q-1"
}:add_unlock("machines-mk03"):add_ingredient({type = "item", name = "phenol", amount = 10})


FLUID {
    type = "fluid",
    name = "xylenol",
    icon = "__pyrawores__/graphics/icons/xylenol.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.082, g = 0.352, b = 0.125},
    flow_color = {r = 0.082, g = 0.352, b = 0.125},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
