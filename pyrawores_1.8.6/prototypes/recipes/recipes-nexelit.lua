
if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "nexelit-ore-1",
    category = "evaporator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "dirty-water", amount = 400}
    },
    results = {
        {type = "item", name = "ore-nexelit", amount_min = 1, amount_max = 1, probability = 0.1},
		{type = "item", name = "ore-nexelit-medium", amount_min = 1, amount_max = 1, probability = 0.15},
		{type = "item", name = "ore-nexelit-low", amount_min = 1, amount_max = 1, probability = 0.3},
		{type = "item", name = "ore-nexelit-trace", amount_min = 1, amount_max = 1, probability = 0.45},
        {type = "item", name = "tailings-dust", amount = 1, probability = 0.4}
    },
    main_product = "ore-nexelit-trace",
    subgroup = "py-rawores-nexelit",
    order = "q-2"
}:add_unlock("nexelit-mk01")

else

RECIPE {
    type = "recipe",
    name = "nexelit-ore-1",
    category = "evaporator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "dirty-water", amount = 400}
    },
    results = {
        {type = "item", name = "nexelit-ore", amount = 1},
        {type = "item", name = "tailings-dust", amount = 1, probability = 0.4}
    },
    main_product = "nexelit-ore",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk01")

end

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "clean-nexelit",
    category = "washer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-nexelit", amount = 3},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "item", name = "clean-nexelit", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 100}
    },
    main_product = "clean-nexelit",
    icon = "__pyrawores__/graphics/icons/wash-nexelit.png",
    icon_size = 32,
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk01")

else

RECIPE {
    type = "recipe",
    name = "clean-nexelit",
    category = "washer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "nexelit-ore", amount = 3},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "item", name = "clean-nexelit", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 100}
    },
    main_product = "clean-nexelit",
    icon = "__pyrawores__/graphics/icons/wash-nexelit.png",
    icon_size = 32,
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk01")

end

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-1-nexelit",
    category = "crusher",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "ore-nexelit-medium", amount = 2}
    },
    results = {
        {type = "item", name = "grade-1-nexelit", amount = 1},
        {type = "item", name = "stone", amount = 1}
    },
    main_product = "grade-1-nexelit",
    icon = "__pyrawores__/graphics/icons/crusher-nexelit.png",
    icon_size = 32,
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk02")

else

RECIPE {
    type = "recipe",
    name = "grade-1-nexelit",
    category = "crusher",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "clean-nexelit", amount = 1}
    },
    results = {
        {type = "item", name = "grade-1-nexelit", amount = 1},
        {type = "item", name = "stone", amount = 1}
    },
    main_product = "grade-1-nexelit",
    icon = "__pyrawores__/graphics/icons/crusher-nexelit.png",
    icon_size = 32,
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk02")

end

RECIPE {
    type = "recipe",
    name = "grade-3-nexelit",
    category = "solid-separator", --pyFE screener
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "grade-1-nexelit", amount = 1}
    },
    results = {
        {type = "item", name = "grade-2-nexelit", amount = 1, probability = 0.6},
        {type = "item", name = "grade-3-nexelit", amount = 1},
        {type = "item", name = "nexelit-rejects", amount = 1}
    },
    main_product = "grade-3-nexelit",
    icon = "__pyrawores__/graphics/icons/nexelit-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk02"):change_category("screener")

RECIPE {
    type = "recipe",
    name = "nexelit-rejects-recrush",
    category = "impact-crusher",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "nexelit-rejects", amount = 1}
    },
    results = {
        {type = "item", name = "grade-1-nexelit", amount = 1, probability = 0.6}
    },
    main_product = "grade-1-nexelit",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk02")

RECIPE {
    type = "recipe",
    name = "nex-grade-2-crush",
    category = "crusher", --pyfe secondary-crusher
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "grade-2-nexelit", amount = 1}
    },
    results = {
        {type = "item", name = "grade-3-nexelit", amount = 1},
        {type = "item", name = "sand", amount = 1}
    },
    main_product = "grade-3-nexelit",
    icon = "__pyrawores__/graphics/icons/recrush-grade-2-nexelit.png",
    icon_size = 32,
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk02"):change_category("secondary-crusher")

RECIPE {
    type = "recipe",
    name = "fine-nexelit-powder",
    category = "scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-3-nexelit", amount = 1},
        {type = "item", name = "sand", amount = 8},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "item", name = "fine-nexelit-powder", amount = 1}
    },
    main_product = "fine-nexelit-powder",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk02")

RECIPE {
    type = "recipe",
    name = "high-grade-nexelit-1",
    category = "evaporator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nexelit-refined-pulp", amount = 25}
    },
    results = {
        {type = "item", name = "high-grade-nexelit", amount = 1}
    },
    main_product = "high-grade-nexelit",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk04")

RECIPE {
    type = "recipe",
    name = "high-grade-nexelit-2",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nexelit-slurry", amount = 25},
        {type = "fluid", name = "boric-acid", amount = 50},
        {type = "fluid", name = "methanol", amount = 50}
    },
    results = {
        {type = "item", name = "high-grade-nexelit", amount = 1}
    },
    main_product = "high-grade-nexelit",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk04")

--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-nexelit",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-nexelit", amount = 6},
        {type = "item", name = "sodium-sulfate", amount = 1},
        {type = "fluid", name = "diesel", amount = 150}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-nexelit", amount = 1}
    },
    main_product = "reduced-nexelit",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 450})

if not settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "sinter-nexelit-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-nexelit", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-nexelit", amount = 1}
    },
    main_product = "sintered-nexelit",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

end

RECIPE {
    type = "recipe",
    name = "sinter-nexelit-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-nexelit", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-nexelit", amount = 2}
    },
    main_product = "sintered-nexelit",
    subgroup = "py-rawores-nexelit",
}:add_unlock("nexelit-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-nexelit-01",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fine-nexelit-powder", amount = 10},
        {type = "item", name = "borax", amount = 2}
    },
    results = {
        {type = "fluid", name = "molten-nexelit", amount = 35}
    },
    main_product = "molten-nexelit",
    subgroup = "py-rawores-nexelit",
    order = "bad"
}:add_unlock("nexelit-mk02")

RECIPE {
    type = "recipe",
    name = "molten-nexelit-02",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nexelit-pulp-04", amount = 50},
        {type = "item", name = "borax", amount = 3}
    },
    results = {
        {type = "fluid", name = "molten-nexelit", amount = 50}
    },
    main_product = "molten-nexelit",
    subgroup = "py-rawores-nexelit",
    order = "bab"
}:add_unlock("nexelit-mk03")

if not settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "molten-nexelit-03",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-nexelit", amount = 1},
        {type = "item", name = "borax", amount = 1}
    },
    results = {
        {type = "fluid", name = "molten-nexelit", amount = 17}
    },
    main_product = "molten-nexelit",
    subgroup = "py-rawores-nexelit",
    order = "bae"
}:add_unlock("nexelit-mk04")

RECIPE {
    type = "recipe",
    name = "molten-nexelit-04",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "reduced-nexelit", amount = 1},
        {type = "item", name = "borax", amount = 1}
    },
    results = {
        {type = "fluid", name = "molten-nexelit", amount = 40}
    },
    main_product = "molten-nexelit",
    subgroup = "py-rawores-nexelit",
    order = "bac"
}:add_unlock("nexelit-mk04")

end

RECIPE {
    type = "recipe",
    name = "molten-nexelit-05",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "sintered-nexelit", amount = 2},
        {type = "item", name = "borax", amount = 4}
    },
    results = {
        {type = "fluid", name = "molten-nexelit", amount = 135}
    },
    main_product = "molten-nexelit",
    subgroup = "py-rawores-nexelit",
    order = "baa"
}:add_unlock("nexelit-mk04")

--CASTINGS

RECIPE {
    type = "recipe",
    name = "nexelit-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-nexelit", amount = 100},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "nexelit-plate", amount = 20}
    },
    main_product = "nexelit-plate",
    subgroup = "py-rawores-nexelit",
    order = "j"
}:add_unlock("nexelit-mk02")

--INITIAL PLATE

RECIPE {
    type = "recipe",
    name = "nexelit-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "nexelit-ore", amount = 30}
    },
    results = {
        {type = "item", name = "nexelit-plate", amount = 6}
    },
    subgroup = "py-rawores-nexelit",
    order = "aab"
}

--PLATES

RECIPE {
    type = "recipe",
    name = "nexelit-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "clean-nexelit", amount = 18}
    },
    results = {
        {type = "item", name = "nexelit-plate", amount = 18}
    },
    --main_product= "glass",
    subgroup = "py-rawores-nexelit",
    order = "aaa"
}:add_unlock("nexelit-mk01")
