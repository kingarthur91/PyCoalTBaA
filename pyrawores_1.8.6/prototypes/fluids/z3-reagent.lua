RECIPE {
    type = "recipe",
    name = "z3-reagent",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 100}, --pyht phosphorous acid
        {type = "fluid", name = "organic-solvent", amount = 100}, --pyht carbon-sulfide
        {type = "fluid", name = "methanol", amount = 100},
    },
    results = {
        {type = "fluid", name = "z3-reagent", amount = 300},
    },
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("machines-mk03"):replace_ingredient("sulfuric-acid", "phosphorous-acid"):replace_ingredient("organic-solvent", "carbon-sulfide")


FLUID {
    type = "fluid",
    name = "z3-reagent",
    icon = "__pyrawores__/graphics/icons/z3-reagent.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.784, g = 0.329, b = 0.670},
    flow_color = {r = 0.784, g = 0.329, b = 0.670},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-fluids",
    order = "c"
}
