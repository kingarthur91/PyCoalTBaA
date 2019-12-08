RECIPE {
    type = "recipe",
    name = "purified-ti-pulp",
    category = "leaching",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "ti-pulp-03", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 150},
    },
    results = {
        {type = "fluid", name = "purified-ti-pulp", amount = 50},
        {type = "fluid", name = "ti-overflow-waste", amount = 50},
    },
    main_product = "purified-ti-pulp",
    subgroup = "py-rawores-titanium",
    order = "q-2"
}:add_unlock("titanium-mk03")

RECIPE {
    type = "recipe",
    name = "purified-ti-pulp-02",
    category = "carbonfilter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "ti-pulp-04", amount = 300},
        {type = "item", name = "biofilm", amount = 1},
    },
    results = {
        {type = "fluid", name = "purified-ti-pulp", amount = 150},
    },
    main_product = "purified-ti-pulp",
    subgroup = "py-rawores-titanium",
    order = "q-2"
}:add_unlock("titanium-mk03")


FLUID {
    type = "fluid",
    name = "purified-ti-pulp",
    icon = "__pyrawores__/graphics/icons/purified-ti-pulp.png",
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
