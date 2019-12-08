RECIPE {
    type = "recipe",
    name = "gold-precipitate",
    category = "chemistry", --pyfe agitator
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "chromium-rejects", amount = 50},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "item", name = "gold-precipitate", amount = 5}
    },
    main_product = "gold-precipitate",
    subgroup = "py-rawores-gold",
}:add_unlock("gold"):change_category("agitator")

RECIPE {
    type = "recipe",
    name = "gold-concentrate",
    category = "leaching",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 100}, --pyht cyanic-acid
        {type = "item", name = "gold-precipitate", amount = 5}
    },
    results = {
        {type = "item", name = "gold-concentrate", amount = 1}
    },
    main_product = "gold-concentrate",
    subgroup = "py-rawores-gold",
}:add_unlock("gold"):replace_ingredient("sulfuric-acid", "cyanic-acid")

RECIPE {
    type = "recipe",
    name = "gold-precipitate-2",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 3.5,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 150},
        {type = "item", name = "gold-concentrate", amount = 1}
    },
    results = {
        {type = "item", name = "gold-precipitate-2", amount = 1}
    },
    main_product = "gold-precipitate-2",
    subgroup = "py-rawores-gold",
}:add_unlock("gold")

RECIPE {
    type = "recipe",
    name = "purified-gold",
    category = "electrolyzer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "gold-solution", amount = 100},
        {type = "item", name = "iron-oxide", amount = 2},
        {type = "item", name = "nichrome", amount = 4}
        --pyht graphite
    },
    results = {
        {type = "item", name = "purified-gold", amount = 5}
    },
    main_product = "purified-gold",
    subgroup = "py-rawores-gold",
}:add_unlock("gold")

RECIPE {
    type = "recipe",
    name = "gold-plate",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "oxygen", amount = 200},
        {type = "item", name = "purified-gold", amount = 1}
        --pyht graphite
    },
    results = {
        {type = "item", name = "gold-plate", amount = 4}
    },
    main_product = "gold-plate",
    subgroup = "py-rawores-gold",
    order = "aaa"
}:add_unlock("gold")
