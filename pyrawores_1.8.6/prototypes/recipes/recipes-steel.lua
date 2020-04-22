RECIPE {
    type = "recipe",
    name = "sponge-iron",
    category = "drp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "iron-oxide", amount = 10},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "light-oil", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sponge-iron", amount = 1},
        {type = "fluid", name = "flue-gas", amount = 400},
    },
    main_product = "sponge-iron",
    subgroup = "py-rawores-iron",
}:add_unlock("iron-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "molten-steel-02",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sponge-iron", amount = 1},
        {type = "item", name = "limestone", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-steel", amount = 50},
    },
    main_product = "molten-steel",
    subgroup = "py-rawores-iron-alloys",
    order = "baa"
}:add_unlock("iron-mk04")

RECIPE {
    type = "recipe",
    name = "molten-steel",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "coke", amount = 10},
        {type = "fluid", name = "molten-iron", amount = 50},
        {type = "fluid", name = "oxygen", amount = 100},
    },
    results = {
        {type = "fluid", name = "molten-steel", amount = 50},
        {type = "fluid", name = "flue-gas", amount = 500},
    },
    main_product = "molten-steel",
    subgroup = "py-rawores-iron-alloys",
    order = "bab"
}:add_unlock("iron-mk02")

RECIPE {
    type = "recipe",
    name = "steel-20",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sand-casting", amount = 2},
        {type = "fluid", name = "molten-steel", amount = 100},
    },
    results = {
        {type = "item", name = "steel-plate", amount = 25},
    },
    main_product = "steel-plate",
    subgroup = "py-rawores-iron-alloys",
    order = "aaa"
}:add_unlock("iron-mk02")

--STAINLESS STEEL

RECIPE {
    type = "recipe",
    name = "molten-stainless-steel",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-steel", amount = 100},
        {type = "item", name = "sulfur", amount = 1},
        {type = "item", name = "chromium", amount = 7},
        {type = "item", name = "copper-plate", amount = 2},
        {type = "item", name = "nickel-plate", amount = 5},
        {type = "item", name = "niobium-plate", amount = 2},
--pyht phosphorous rock
    },
    results = {
        {type = "fluid", name = "molten-stainless-steel", amount = 50},
    },
    main_product = "molten-stainless-steel",
    subgroup = "py-rawores-iron-alloys",
    order = "daa"
}:add_unlock("iron-mk02"):add_ingredient({type = "item", name = "phosphate-rock", amount =4})

RECIPE {
    type = "recipe",
    name = "stainless-steel",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "aramid", amount = 1},
        {type = "fluid", name = "molten-stainless-steel", amount = 100},
    },
    results = {
        {type = "item", name = "stainless-steel", amount = 10},
    },
    main_product = "stainless-steel",
    subgroup = "py-rawores-iron-alloys",
    order = "caa"
}:add_unlock("iron-mk02")

--SUPER STEEL

RECIPE {
    type = "recipe",
    name = "molten-super-steel",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-stainless-steel", amount = 50},
        {type = "item", name = "fuelrod-mk01", amount = 3},
        {type = "item", name = "niobium-plate", amount = 1},
        {type = "item", name = "titanium-plate", amount = 4},
    },
    results = {
        {type = "fluid", name = "molten-super-steel", amount = 50},
    },
    main_product = "molten-super-steel",
    subgroup = "py-rawores-iron-alloys",
    order = "faa"
}:add_unlock("iron-mk03"):add_ingredient({type = "item", name = "molybdenum-plate", amount =1}):add_ingredient({type = "item", name = "vanadium-oxide", amount =2})

RECIPE {
    type = "recipe",
    name = "super-steel",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "aramid", amount = 1},
        {type = "fluid", name = "molten-super-steel", amount = 100},
    },
    results = {
        {type = "item", name = "super-steel", amount = 10},
    },
    main_product = "super-steel",
    subgroup = "py-rawores-iron-alloys",
    order = "eaa"
}:add_unlock("iron-mk03")