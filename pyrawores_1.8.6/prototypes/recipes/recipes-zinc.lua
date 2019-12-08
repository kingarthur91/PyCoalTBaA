RECIPE {
    type = "recipe",
    name = "grade-1-zinc",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ore-zinc", amount = 5},
        {type = "item", name = "iron-stick", amount = 3}
    },
    results = {
        {type = "item", name = "grade-1-zinc", amount = 1},
        {type = "item", name = "soil", amount = 1, probability = 0.7},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk01")

RECIPE {
    type = "recipe",
    name = "grade-2-zinc",
    category = "impact-crusher",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-1-zinc", amount = 1}
    },
    results = {
        {type = "item", name = "grade-2-zinc", amount = 1},
        {type = "item", name = "sand", amount = 1, probability = 0.5}
    },
    main_product = "grade-2-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk01")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-3-zinc",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ore-zinc-medium", amount = 2},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "grade-3-zinc", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 50}
    },
    main_product = "grade-3-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk02")

else

RECIPE {
    type = "recipe",
    name = "grade-3-zinc",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-2-zinc", amount = 1},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "grade-3-zinc", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 50}
    },
    main_product = "grade-3-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk02")

end

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-4-zinc",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-3-zinc", amount = 1}
    },
    results = {
        {type = "item", name = "grade-4-zinc", amount = 1},
        {type = "item", name = "coal-dust", amount = 1, probability = 0.5}
    },
    main_product = "grade-4-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk02")

else

RECIPE {
    type = "recipe",
    name = "grade-4-zinc",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-3-zinc", amount = 1}
    },
    results = {
        {type = "item", name = "grade-4-zinc", amount = 1},
        {type = "item", name = "coal-dust", amount = 1, probability = 0.5}
    },
    main_product = "grade-4-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk03")

end

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "powdered-zinc",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-4-zinc", amount = 1}
    },
    results = {
        {type = "item", name = "powdered-zinc", amount = 1},
        {type = "item", name = "grade-2-zinc", amount = 1, probability = 0.3}
    },
    main_product = "powdered-zinc",
    icon = "__pyrawores__/graphics/icons/grade-4-zinc-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk02"):change_category("screener")

else

RECIPE {
    type = "recipe",
    name = "powdered-zinc",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-4-zinc", amount = 1}
    },
    results = {
        {type = "item", name = "powdered-zinc", amount = 1},
        {type = "item", name = "grade-2-zinc", amount = 1, probability = 0.3}
    },
    main_product = "powdered-zinc",
    icon = "__pyrawores__/graphics/icons/grade-4-zinc-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk03"):change_category("screener")

end

RECIPE {
    type = "recipe",
    name = "purified-zinc",
    category = "chemistry", --pyfe grease
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "zinc-pulp-03", amount = 200},
        {type = "item", name = "sodium-hydroxide", amount = 5}
    },
    results = {
        {type = "item", name = "purified-zinc", amount = 2},
        {type = "fluid", name = "zinc-overflow", amount = 40}
    },
    main_product = "purified-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk03"):change_category("grease"):add_ingredient({type = "fluid", name = "grease", amount = 25})

RECIPE {
    type = "recipe",
    name = "concentrated-zinc",
    category = "classifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "purified-zinc", amount = 1}
    },
    results = {
        {type = "item", name = "concentrated-zinc", amount = 1},
        {type = "item", name = "lead-dust", amount = 1, probability = 0.5}
    },
    main_product = "concentrated-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk03")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "high-grade-zinc",
    category = "carbonfilter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "zinc-pulp-04", amount = 400},
        {type = "item", name = "filtration-media", amount = 1}
    },
    results = {
        {type = "item", name = "high-grade-zinc", amount = 4}
    },
    main_product = "high-grade-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk04")

else

RECIPE {
    type = "recipe",
    name = "high-grade-zinc",
    category = "carbonfilter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "zinc-pulp-04", amount = 400},
        {type = "item", name = "filtration-media", amount = 1}
    },
    results = {
        {type = "item", name = "high-grade-zinc", amount = 4}
    },
    main_product = "high-grade-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk03")

end

--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduced-zinc",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-zinc", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-zinc", amount = 1}
    },
    main_product = "reduced-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-zinc-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-zinc", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-zinc", amount = 1}
    },
    main_product = "sintered-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-zinc-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-zinc", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-zinc", amount = 2}
    },
    main_product = "sintered-zinc",
    subgroup = "py-rawores-zinc",
}:add_unlock("zinc-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-zinc-01",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "grade-3-zinc", amount = 4},
        {type = "item", name = "limestone", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-zinc", amount = 20}
    },
    main_product = "molten-zinc",
    subgroup = "py-rawores-zinc",
    order = "bae"
}:add_unlock("zinc-mk02")

RECIPE {
    type = "recipe",
    name = "molten-zinc-02",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "concentrated-zinc", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 100}
    },
    results = {
        {type = "fluid", name = "molten-zinc", amount = 45}
    },
    main_product = "molten-zinc",
    subgroup = "py-rawores-zinc",
    order = "bad"
}:add_unlock("zinc-mk03")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "molten-zinc-03",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "high-grade-zinc", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-zinc", amount = 132}
    },
    main_product = "molten-zinc",
    subgroup = "py-rawores-zinc",
    order = "bab"
}:add_unlock("zinc-mk04")

else

RECIPE {
    type = "recipe",
    name = "molten-zinc-03",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "high-grade-zinc", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-zinc", amount = 132}
    },
    main_product = "molten-zinc",
    subgroup = "py-rawores-zinc",
    order = "bab"
}:add_unlock("zinc-mk03")

end

RECIPE {
    type = "recipe",
    name = "molten-zinc-04",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-zinc", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-zinc", amount = 200}
    },
    main_product = "molten-zinc",
    subgroup = "py-rawores-zinc",
    order = "baa"
}:add_unlock("zinc-mk04")

RECIPE {
    type = "recipe",
    name = "molten-zinc-05",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sintered-zinc", amount = 1},
        {type = "item", name = "limestone", amount = 3},
        {type = "fluid", name = "heavy-oil", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-zinc", amount = 130}
    },
    main_product = "molten-zinc",
    subgroup = "py-rawores-zinc",
    order = "bac"
}:add_unlock("zinc-mk04")

--CASTINGS

RECIPE {
    type = "recipe",
    name = "zinc-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-zinc", amount = 100},
        {type = "item", name = "sand-casting", amount = 1},
        {type = "item", name = "borax", amount = 2}
    },
    results = {
        {type = "item", name = "zinc-plate", amount = 50}
    },
    main_product = "zinc-plate",
    subgroup = "py-rawores-zinc",
    order = "aaa"
}:add_unlock("zinc-mk02")

--INITIAL PLATE

RECIPE {
    type = "recipe",
    name = "zinc-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "ore-zinc", amount = 40}
    },
    results = {
        {type = "item", name = "zinc-plate", amount = 4}
    },
    --main_product= "glass",
    subgroup = "py-rawores-zinc",
    order = "aad"
}

--PLATES

RECIPE {
    type = "recipe",
    name = "zinc-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "grade-2-zinc", amount = 20}
    },
    results = {
        {type = "item", name = "zinc-plate", amount = 30}
    },
    subgroup = "py-rawores-zinc",
    order = "aac"
}:add_unlock("zinc-mk01")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "zinc-plate-4",
    category = "smelting",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "powdered-zinc", amount = 10}
    },
    results = {
        {type = "item", name = "zinc-plate", amount = 30}
    },
    subgroup = "py-rawores-plates",
    order = "aab"
}:add_unlock("zinc-mk02")

else

RECIPE {
    type = "recipe",
    name = "zinc-plate-4",
    category = "smelting",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "powdered-zinc", amount = 10}
    },
    results = {
        {type = "item", name = "zinc-plate", amount = 30}
    },
    subgroup = "py-rawores-zinc",
    order = "aab"
}:add_unlock("zinc-mk03")

end
