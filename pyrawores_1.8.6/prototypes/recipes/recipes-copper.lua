
---PROCESSING RECIPES---

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-2-copper",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-copper", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-copper", amount = 1},
        {type = "item", name = "grade-2-copper", amount = 2}
    },
    main_product = "grade-2-copper",
    icon = "__pyrawores__/graphics/icons/ore-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk01"):change_category("screener")

else

RECIPE {
    type = "recipe",
    name = "grade-2-copper",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "copper-ore", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-copper", amount = 1},
        {type = "item", name = "grade-2-copper", amount = 2}
    },
    main_product = "grade-2-copper",
    icon = "__pyrawores__/graphics/icons/ore-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk01"):change_category("screener")

end

RECIPE {
    type = "recipe",
    name = "grade-1-copper-crush",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-1-copper", amount = 2}
    },
    results = {
        {type = "item", name = "stone", amount = 2},
        {type = "item", name = "grade-2-copper", amount = 1}
    },
    main_product = "grade-2-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk01")
if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-3-copper",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "ore-copper-medium", amount = 3}
    },
    results = {
        {type = "item", name = "grade-3-copper", amount = 1},
        {type = "item", name = "copper-rejects", amount = 1}
    },
    main_product = "grade-3-copper",
    icon = "__pyrawores__/graphics/icons/grade-2-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02"):change_category("screener")

else

RECIPE {
    type = "recipe",
    name = "grade-3-copper",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "grade-2-copper", amount = 2}
    },
    results = {
        {type = "item", name = "grade-3-copper", amount = 1},
        {type = "item", name = "copper-rejects", amount = 1}
    },
    main_product = "grade-3-copper",
    icon = "__pyrawores__/graphics/icons/grade-2-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02"):change_category("screener")

end

RECIPE {
    type = "recipe",
    name = "copper-rejects-recrush",
    category = "impact-crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "copper-rejects", amount = 1}
    },
    results = {
        {type = "item", name = "grade-3-copper", amount = 1, probability = 0.5},
        {type = "item", name = "gravel", amount = 1}
    },
    main_product = "grade-3-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "grade-4-copper",
    category = "solid-separator", --pyfe screener
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "grade-3-copper", amount = 2}
    },
    results = {
        {type = "item", name = "grade-4-copper", amount = 1},
        {type = "item", name = "low-grade-rejects", amount = 2}
    },
    main_product = "grade-4-copper",
    icon = "__pyrawores__/graphics/icons/grade-3-copper-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02"):change_category("screener")

RECIPE {
    type = "recipe",
    name = "classify-low-grade",
    category = "classifier",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "low-grade-rejects", amount = 4}
    },
    results = {
        {type = "item", name = "grade-4-copper", amount = 1, probability = 0.3},
        {type = "item", name = "copper-low-dust", amount = 1}
    },
    main_product = "grade-4-copper",
    icon = "__pyrawores__/graphics/icons/class-copper-low-dust.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "wash-coper-low-dust",
    category = "washer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "copper-low-dust", amount = 1},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "low-grade-copper", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 200}
    },
    main_product = "low-grade-copper",
    icon = "__pyrawores__/graphics/icons/wash-copper-low-dust.png",
    icon_size = 32,
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "high-grade-copper",
    category = "chemistry", --pyfe agitador
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "copper-pregnant-solution", amount = 100}
    },
    results = {
        {type = "item", name = "high-grade-copper", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 100}
    },
    main_product = "high-grade-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk03"):change_category("agitator")

--SINTER and DRP IMPROVEMENTS

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "reduction-copper",
    category = "drp",
    enabled = false,
    energy_required = 5,
    ingredients = {
		{type = "item", name = "ore-copper-trace", amount = 5},
        {type = "item", name = "high-grade-copper", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-copper", amount = 1}
    },
    main_product = "reduced-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

else

RECIPE {
    type = "recipe",
    name = "reduction-copper",
    category = "drp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-copper", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-copper", amount = 1}
    },
    main_product = "reduced-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

end
RECIPE {
    type = "recipe",
    name = "sinter-copper-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-copper", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-copper", amount = 1}
    },
    main_product = "sintered-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-copper-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-copper", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-copper", amount = 2}
    },
    main_product = "sintered-copper",
    subgroup = "py-rawores-copper",
}:add_unlock("copper-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-copper-01",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-copper", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 60}
    },
    main_product = "molten-copper",
    subgroup = "py-rawores-copper",
    order = "baa"
}:add_unlock("copper-mk04")

RECIPE {
    type = "recipe",
    name = "molten-copper-02",
    category = "bof",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sintered-copper", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 47}
    },
    main_product = "molten-copper",
    subgroup = "py-rawores-copper",
    order = "bac"
}:add_unlock("copper-mk04")

RECIPE {
    type = "recipe",
    name = "molten-copper-03",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-copper", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 50}
    },
    main_product = "molten-copper",
    subgroup = "py-rawores-copper",
    order = "bab"
}:add_unlock("copper-mk03")

RECIPE {
    type = "recipe",
    name = "molten-copper-04",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-4-copper", amount = 3},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 21}
    },
    main_product = "molten-copper",
    subgroup = "py-rawores-copper",
    order = "bad"
}:add_unlock("copper-mk02")

----PLATES----

RECIPE {
    type = "recipe",
    name = "copper-plate-1",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-copper", amount = 100},
        {type = "item", name = "borax", amount = 3},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "copper-plate", amount = 60}
    },
    main_product = "copper-plate",
    subgroup = "py-rawores-copper",
    order = "aaa"
}:add_unlock("copper-mk02")

RECIPE {
    type = "recipe",
    name = "copper-plate-4",
    category = "casting",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "grade-2-copper", amount = 5}
    },
    results = {
        {type = "item", name = "copper-plate", amount = 2}
    },
    main_product = "copper-plate",
    subgroup = "py-rawores-copper",
    order = "aab"
}:add_unlock("copper-mk01")

---EXTRA PLATE---

RECIPE {
    type = "recipe",
    name = "low-grade-smelting-copper",
    category = "smelting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "low-grade-copper", amount = 1}
    },
    results = {
        {type = "item", name = "copper-plate", amount = 1, probability = 0.6}
    },
    main_product = "copper-plate",
    subgroup = "py-rawores-copper",
    order = "aac"
}:add_unlock("copper-mk02")
