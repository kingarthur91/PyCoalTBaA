RECIPE {
    type = "recipe",
    name = "nexelit-pulp-02",
    category = "flotation",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "nexelit-pulp-01", amount = 100},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "syngas", amount = 50} --pyht acetone
    },
    results = {
        {type = "fluid", name = "nexelit-pulp-02", amount = 100}
    },
    main_product = "nexelit-pulp-02",
    subgroup = "py-rawores-nexelit",
    order = "q-2"
}:add_unlock("nexelit-mk03"):replace_ingredient("syngas", "acetone")

FLUID {
    type = "fluid",
    name = "nexelit-pulp-02",
    icon = "__pyrawores__/graphics/icons/nexelit-pulp-02.png",
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0, g = 0.545, b = 0.733},
    flow_color = {r = 0, g = 0.545, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-nexelit",
    order = "c"
}
