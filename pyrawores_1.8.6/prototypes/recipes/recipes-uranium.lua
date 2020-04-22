RECIPE {
    type = "recipe",
    name = "grade-1-u",
    category = "crusher",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-ore", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-u", amount = 1},
        {type = "item", name = "stone", amount = 1},
        {type = "item", name = "grade-2-u", amount = 1, probability = 0.2},
    },
    main_product = "grade-1-u",
    icon = "__pyrawores__/graphics/icons/crush-uranium.png",
    icon_size = 32,
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-1-u-recrush",
    category = "impact-crusher",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-1-u", amount = 1}
    },
    results = {
        {type = "item", name = "grade-2-u", amount = 1},
        {type = "item", name = "gravel", amount = 1, probability = 0.5},
    },
    main_product = "grade-2-u",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-2-u-crush",
    category = "crusher", --pyfe secondary crusher
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-2-u", amount = 1}
    },
    results = {
        {type = "item", name = "powdered-u", amount = 1},
        {type = "item", name = "sand", amount = 1, probability = 0.5},
    },
    main_product = "powdered-u",
    icon = "__pyrawores__/graphics/icons/grade-2-u-recrush.png",
    icon_size = 32,
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01"):change_category('secondary-crusher')

RECIPE {
    type = "recipe",
    name = "20-u-powder",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "powdered-u", amount = 1}
    },
    results = {
        {type = "item", name = "20-u-powder", amount = 1},
        {type = "item", name = "sand", amount = 1, probability = 0.3},
    },
    main_product = "20-u-powder",
    icon = "__pyrawores__/graphics/icons/powdered-u-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk01"):change_category('screener')

RECIPE {
    type = "recipe",
    name = "40-u-powder",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-rich-pulp", amount = 100}
    },
    results = {
        {type = "item", name = "40-u-powder", amount = 1},
    },
    main_product = "40-u-powder",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk02")

RECIPE {
    type = "recipe",
    name = "70-u-powder",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-70", amount = 100}
    },
    results = {
        {type = "item", name = "70-u-powder", amount = 1},
    },
    main_product = "70-u-powder",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk03")

RECIPE {
    type = "recipe",
    name = "yellow-cake",
    category = "carbonfilter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-83", amount = 100},
        {type = "item", name = "biofilm", amount = 5}
    },
    results = {
        {type = "item", name = "yellow-cake", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 50},
    },
    main_product = "yellow-cake",
    subgroup = "py-rawores-uranium",
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "20-u-powder", amount = 5},
        {type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "fuelrod-mk02", amount = 1},
    },
    main_product = "fuelrod-mk02",
    subgroup = "py-rawores-uranium",
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "40-u-powder", amount = 5},
        {type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "fuelrod-mk03", amount = 1},
    },
    main_product = "fuelrod-mk03",
    subgroup = "py-rawores-uranium",
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk04",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "70-u-powder", amount = 5},
        {type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "fuelrod-mk04", amount = 1},
    },
    main_product = "fuelrod-mk04",
    subgroup = "py-rawores-uranium",
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk05",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "yellow-cake", amount = 3},
        {type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "fuelrod-mk05", amount = 1},
    },
    main_product = "fuelrod-mk05",
    subgroup = "py-rawores-uranium",
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk02",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell", amount = 1},
        {type = "item", name = "fuelrod-mk02", amount = 2},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk02", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk02",
    subgroup = "py-rawores-uranium",
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk03",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell", amount = 1},
        {type = "item", name = "fuelrod-mk03", amount = 2},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk03", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk03",
    subgroup = "py-rawores-uranium",
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk04",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell", amount = 1},
        {type = "item", name = "fuelrod-mk04", amount = 2},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk04", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk04",
    subgroup = "py-rawores-uranium",
}:add_unlock("nuclear-power")

RECIPE {
    type = "recipe",
    name = "uranium-fuel-cell-mk05",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "uranium-fuel-cell", amount = 1},
        {type = "item", name = "fuelrod-mk05", amount = 2},
        {type = "item", name = "lead-plate", amount = 5},
    },
    results = {
        {type = "item", name = "uranium-fuel-cell-mk05", amount = 1},
    },
    main_product = "uranium-fuel-cell-mk05",
    subgroup = "py-rawores-uranium",
}:add_unlock("nuclear-power")