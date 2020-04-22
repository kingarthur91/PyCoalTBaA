RECIPE {
    type = "recipe",
    name = "crushing-quartz",
    category = "crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-quartz", amount = 5}
    },
    results = {
        {type = "item", name = "crushed-quartz", amount = 1},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "crushed-quartz",
    icon = "__pyrawores__/graphics/icons/crush-quartz.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
}:add_unlock("quartz-mk01")

RECIPE {
    type = "recipe",
    name = "powdered-quartz",
    category = "ball-mill",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "crushed-quartz", amount = 5}
    },
    results = {
        {type = "item", name = "powdered-quartz", amount = 5},
        {type = "item", name = "gravel", amount = 1, probability = 0.5}
    },
    main_product = "powdered-quartz",
    icon = "__pyrawores__/graphics/icons/powdered-quartz.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
}:add_unlock("quartz-mk01")

RECIPE {
    type = "recipe",
    name = "purified-quartz",
    category = "washer",--pyFE pan
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "prepared-quartz", amount = 50},
        {type = "fluid", name = "creosote", amount = 80},
    },
    results = {
        {type = "item", name = "purified-quartz", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 50}
    },
    main_product = "purified-quartz",
    icon = "__pyrawores__/graphics/icons/purified-quartz.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
}:add_unlock("quartz-mk02")

RECIPE {
    type = "recipe",
    name = "high-grade-quartz",
    category = "evaporator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "high-grade-quartz-pulp", amount = 50},
        {type = "fluid", name = "syngas", amount = 100},
    },
    results = {
        {type = "item", name = "high-grade-quartz", amount = 2},
        {type = "fluid", name = "dirty-water", amount = 80}
    },
    main_product = "high-grade-quartz",
    icon = "__pyrawores__/graphics/icons/high-grade-quartz.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
}:add_unlock("quartz-mk03")

RECIPE {
    type = "recipe",
    name = "sand-classification2",
    category = "classifier",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "sand", amount = 20}
    },
    results = {
        {type = "item", name = "iron-oxide", amount = 1, probability = 0.5},
        {type = "item", name = "gravel", amount = 4},
        {type = "item", name = "crushed-quartz", amount = 1, probability = 0.5}
    },
    main_product = "gravel",
    icon = "__pyrawores__/graphics/icons/class-sand.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
}:add_unlock("quartz-mk02")


--GLASS--


RECIPE {
    type = "recipe",
    name = "glass-1",
    category = "smelting",
    enabled = true,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "ore-quartz", amount = 24}
    },
    results = {
        {type = "item", name = "glass", amount = 4}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "aag"
}

RECIPE {
    type = "recipe",
    name = "glass-2",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "crushed-quartz", amount = 2},
        {type = "fluid", name = "coal-gas", amount = 100},
    },
    results = {
        {type = "item", name = "glass", amount = 3}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "aaf"
}:add_unlock("quartz-mk01")

RECIPE {
    type = "recipe",
    name = "glass-3",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "powdered-quartz", amount = 2},
        {type = "fluid", name = "coal-gas", amount = 100},
        {type = "item", name = "pure-sand", amount = 10},
    },
    results = {
        {type = "item", name = "glass", amount = 4}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "aae"
}:add_unlock("quartz-mk01")

RECIPE {
    type = "recipe",
    name = "glass-4",
    category = "hpf",
    enabled = false,
    energy_required = 11,
    ingredients = {
        {type = "item", name = "purified-quartz", amount = 3},
        {type = "fluid", name = "coal-gas", amount = 400},
        {type = "item", name = "pure-sand", amount = 20},
        {type = "item", name = "sodium-carbonate", amount = 2},
    },
    results = {
        {type = "item", name = "glass", amount = 150}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "aab"
}:add_unlock("quartz-mk02")

RECIPE {
    type = "recipe",
    name = "glass-5",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "high-grade-quartz-pulp", amount = 100},
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "item", name = "sodium-carbonate", amount = 1},
    },
    results = {
        {type = "item", name = "glass", amount = 180}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "aaa"
}:add_unlock("quartz-mk03")

RECIPE {
    type = "recipe",
    name = "glass-6",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-quartz", amount = 1},
        {type = "item", name = "sodium-carbonate", amount = 1},
        {type = "fluid", name = "syngas", amount = 200},
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "fuelrod-mk01", amount = 1},
    },
    results = {
        {type = "item", name = "glass", amount = 65}
    },
    --main_product= "glass",
    icon = "__pyrawores__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-rawores-quartz",
    order = "aac"
}:add_unlock("quartz-mk03")
