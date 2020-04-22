RECIPE {
    type = "recipe",
    name = "redhot-coke",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "coal", amount = 20},
        {type = "fluid", name = "steam", amount = 200} --pyfe vaccumm
    },
    results = {
        {type = "item", name = "redhot-coke", amount = 5},
        {type = "fluid", name = "coke-oven-gas", amount = 50}
    },
    main_product = "redhot-coke",
    subgroup = "py-rawores-coke",
}:add_unlock("coke-mk01")

RECIPE {
    type = "recipe",
    name = "quench-redcoke",
    category = "quenching-tower",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "redhot-coke", amount = 6},
        {type = "fluid", name = "water", amount = 200}
        --pyfe pressured-air
    },
    results = {
        {type = "item", name = "coke", amount = 40},
        {type = "item", name = "coal-dust", amount = 10},
        {type = "fluid", name = "steam", amount = 100, temperature = 165}
    },
    main_product = "coke",
    subgroup = "py-rawores-coke",
}:add_unlock("coke-mk01"):add_ingredient({type = "fluid", name = "pressured-air", amount = 150})

RECIPE {
    type = "recipe",
    name = "outlet-gas-04-breakdown",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "outlet-gas-04", amount = 100},
        {type = "fluid", name = "light-oil", amount = 50}
        --pyht tall-oil
    },
    results = {
        {type = "fluid", name = "flue-gas", amount = 1000}
        --add benzene
    },
    main_product = "flue-gas",
    subgroup = "py-rawores-coke",
    order = "z"
}:add_unlock("coke-mk03")
