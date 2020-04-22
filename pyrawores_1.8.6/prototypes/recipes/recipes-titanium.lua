RECIPE {
    type = "recipe",
    name = "grade-1-ti",
    category = "solid-separator",
     --pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-titanium", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-ti", amount = 1},
        {type = "item", name = "grade-2-ti", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-ti",
    icon = "__pyrawores__/graphics/icons/ore-titanium-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk01"):change_category("screener")

RECIPE {
    type = "recipe",
    name = "grade-2-ti-crush",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-2-ti", amount = 1}
    },
    results = {
        {type = "item", name = "stone", amount = 1},
        {type = "item", name = "grade-1-ti", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-3-ti",
    category = "solid-separator",
     --pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-1-ti", amount = 3}
    },
    results = {
        {type = "item", name = "grade-3-ti", amount = 1},
        {type = "item", name = "ti-rejects", amount = 1, probability = 0.5}
    },
    main_product = "grade-3-ti",
    icon = "__pyrawores__/graphics/icons/grade-1-ti-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk01"):change_category("screener")

RECIPE {
    type = "recipe",
    name = "ti-rejects-recrush",
    category = "crusher",
     --pyFE secondary-crusher
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ti-rejects", amount = 1}
    },
    results = {
        {type = "item", name = "gravel", amount = 1},
        {type = "item", name = "grade-3-ti", amount = 1, probability = 0.3}
    },
    main_product = "grade-3-ti",
    icon = "__pyrawores__/graphics/icons/recrush-ti-rejects.png",
    icon_size = 32,
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk01"):change_category("secondary-crusher")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-4-ti",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ore-titanium-medium", amount = 2}
    },
    results = {
        {type = "item", name = "grade-4-ti", amount = 1}
    },
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk02")

else

RECIPE {
    type = "recipe",
    name = "grade-4-ti",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-3-ti", amount = 2}
    },
    results = {
        {type = "item", name = "grade-4-ti", amount = 1}
    },
    main_product = "grade-4-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk02")

end

RECIPE {
    type = "recipe",
    name = "powdered-ti",
    category = "chemistry", --pyFE jig
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-4-ti", amount = 1},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "mibc", amount = 75}
    },
    results = {
        {type = "item", name = "powdered-ti", amount = 1},
        {type = "fluid", name = "ti-pulp-03", amount = 20},
        {type = "fluid", name = "dirty-water", amount = 20},
    },
    main_product = "powdered-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk02"):change_category("jig")

RECIPE {
    type = "recipe",
    name = "ti-enriched-dust",
    category = "solid-separator",
     --pyFE screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "powdered-ti", amount = 1}
    },
    results = {
        {type = "item", name = "ti-enriched-dust", amount = 1},
        {type = "item", name = "ti-rejects", amount = 1, probability = 0.5}
    },
    main_product = "ti-enriched-dust",
    icon = "__pyrawores__/graphics/icons/powdered-ti-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk02"):change_category("screener")

RECIPE {
    type = "recipe",
    name = "high-grade-ti-powder",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "purified-ti-pulp", amount = 100}
    },
    results = {
        {type = "item", name = "high-grade-ti-powder", amount = 1}
    },
    main_product = "high-grade-ti-powder",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk03")

RECIPE {
    type = "recipe",
    name = "concentrated-ti",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-ti-powder", amount = 1}
    },
    results = {
        {type = "item", name = "concentrated-ti", amount = 1},
        {type = "item", name = "nexelit-ore", amount = 1, probability = 0.5},
        {type = "item", name = "iron-oxide", amount = 1, probability = 0.5}
    },
    main_product = "concentrated-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk03")

RECIPE {
    type = "recipe",
    name = "high-grade-ti",
    category = "electrolyzer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "concentrated-ti", amount = 1},
        {type = "item", name = "aluminium-plate", amount = 2}
        --pyht graphite
    },
    results = {
        {type = "item", name = "high-grade-ti", amount = 1}
    },
    main_product = "high-grade-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk03")

--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-titanium",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-ti", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-ti", amount = 1}
    },
    main_product = "reduced-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

if not settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "sinter-titanium-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-ti", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-ti", amount = 1}
    },
    main_product = "sintered-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

end

RECIPE {
    type = "recipe",
    name = "sinter-titanium-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-ti", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-ti", amount = 2}
    },
    main_product = "sintered-ti",
    subgroup = "py-rawores-titanium",
}:add_unlock("titanium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-titanium-01",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ti-enriched-dust", amount = 2},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 40}
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-titanium",
    order = "bae"
}:add_unlock("titanium-mk02")

RECIPE {
    type = "recipe",
    name = "molten-titanium-02",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "concentrated-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 510}
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-titanium",
    order = "bac"
}:add_unlock("titanium-mk03")

RECIPE {
    type = "recipe",
    name = "molten-titanium-03",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 600}
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-titanium",
    order = "bab"
}:add_unlock("titanium-mk03")

if not settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "molten-titanium-04",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "reduced-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 650}
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-titanium",
    order = "baa"
}:add_unlock("titanium-mk04")

end

RECIPE {
    type = "recipe",
    name = "molten-titanium-05",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "sintered-ti", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-titanium", amount = 400}
    },
    main_product = "molten-titanium",
    subgroup = "py-rawores-titanium",
    order = "bad"
}:add_unlock("titanium-mk04")

--CASTINGS

RECIPE {
    type = "recipe",
    name = "titanium-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-titanium", amount = 100},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 20}
    },
    main_product = "titanium-plate",
    subgroup = "py-rawores-titanium",
    order = "aaa"
}:add_unlock("titanium-mk02")

--INITIAL PLATE

RECIPE {
    type = "recipe",
    name = "titanium-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "ore-titanium", amount = 40}
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 4}
    },
    main_product = "titanium-plate",
    subgroup = "py-rawores-titanium",
    order = "aad"
}

--PLATES

RECIPE {
    type = "recipe",
    name = "titanium-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "grade-3-ti", amount = 5}
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 10}
    },
    main_product = "titanium-plate",
    subgroup = "py-rawores-titanium",
    order = "aac"
}:add_unlock("titanium-mk01")

if not settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "titanium-plate-4",
    category = "smelting",
    enabled = false,
    energy_required = 35,
    ingredients = {
        {type = "item", name = "grade-4-ti", amount = 28}
    },
    results = {
        {type = "item", name = "titanium-plate", amount = 147}
    },
    main_product = "titanium-plate",
    subgroup = "py-rawores-titanium",
    order = "aab"
}:add_unlock("titanium-mk02")

end
