RECIPE {
    type = "recipe",
    name = "grade-1-nickel",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-nickel", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-nickel", amount = 1},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-nickel",
    icon = "__pyrawores__/graphics/icons/crusher-nickel.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk01")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-3-nickel",
    category = "solid-separator", --pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-nickel-medium", amount = 3}
    },
    results = {
        {type = "item", name = "grade-3-nickel", amount = 1, probability = 0.5},
        {type = "item", name = "grade-2-nickel", amount = 1},
        {type = "item", name = "nickel-rejects", amount = 1},
        {type = "item", name = "gravel", amount = 1}
    },
    main_product = "grade-3-nickel",
    icon = "__pyrawores__/graphics/icons/grade-1-nickel-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk02"):change_category("screener")

else

RECIPE {
    type = "recipe",
    name = "grade-3-nickel",
    category = "solid-separator", --pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-1-nickel", amount = 2}
    },
    results = {
        {type = "item", name = "grade-3-nickel", amount = 1, probability = 0.5},
        {type = "item", name = "grade-2-nickel", amount = 1},
        {type = "item", name = "nickel-rejects", amount = 1},
        {type = "item", name = "gravel", amount = 1}
    },
    main_product = "grade-3-nickel",
    icon = "__pyrawores__/graphics/icons/grade-1-nickel-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk02"):change_category("screener")

end

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "nickel-rejects-recrush",
    category = "crusher", --pyfe secondary-crusher
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "nickel-rejects", amount = 3}
    },
    results = {
        {type = "item", name = "grade-1-nickel", amount = 1, probability = 0.35},
		{type = "item", name = "ore-nickel-medium", amount = 1, probability = 0.35}
    },
    main_product = "grade-1-nickel",
    icon = "__pyrawores__/graphics/icons/recrush-nickel-rejects.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk02"):change_category("secondary-crusher")

else

RECIPE {
    type = "recipe",
    name = "nickel-rejects-recrush",
    category = "crusher", --pyfe secondary-crusher
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "nickel-rejects", amount = 3}
    },
    results = {
        {type = "item", name = "grade-1-nickel", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-nickel",
    icon = "__pyrawores__/graphics/icons/recrush-nickel-rejects.png",
    icon_size = 32,
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk02"):change_category("secondary-crusher")

end

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-2-nickel-recrush",
    category = "impact-crusher",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "item", name = "grade-2-nickel", amount = 1}
    },
    results = {
        {type = "item", name = "grade-1-nickel", amount = 1, probability = 0.35},
		{type = "item", name = "ore-nickel-low", amount = 1, probability = 0.45},
        {type = "item", name = "sand", amount = 1}
    },
    main_product = "grade-1-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk02")

else

RECIPE {
    type = "recipe",
    name = "grade-2-nickel-recrush",
    category = "impact-crusher",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "item", name = "grade-2-nickel", amount = 1}
    },
    results = {
        {type = "item", name = "grade-1-nickel", amount = 1, probability = 0.5},
        {type = "item", name = "sand", amount = 1}
    },
    main_product = "grade-1-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk02")

end

RECIPE {
    type = "recipe",
    name = "grade-4-nickel",
    category = "ball-mill",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "item", name = "grade-3-nickel", amount = 1}
    },
    results = {
        {type = "item", name = "grade-4-nickel", amount = 1}
    },
    main_product = "grade-4-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk02")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "high-grade-nickel",
    category = "carbonfilter",
    enabled = false,
    energy_required = 3.0,
    ingredients = {
        {type = "fluid", name = "nickel-prepared-solution", amount = 300},
        {type = "item", name = "biofilm", amount = 1}
    },
    results = {
        {type = "item", name = "high-grade-nickel", amount = 3}
    },
    main_product = "high-grade-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk04")

else

RECIPE {
    type = "recipe",
    name = "high-grade-nickel",
    category = "carbonfilter",
    enabled = false,
    energy_required = 3.0,
    ingredients = {
        {type = "fluid", name = "nickel-prepared-solution", amount = 300},
        {type = "item", name = "biofilm", amount = 1}
    },
    results = {
        {type = "item", name = "high-grade-nickel", amount = 3}
    },
    main_product = "high-grade-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk03")

end

--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-nickel",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-nickel", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-nickel", amount = 1}
    },
    main_product = "reduced-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-nickel-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-nickel", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-nickel", amount = 1}
    },
    main_product = "sintered-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-nickel-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-nickel", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-nickel", amount = 2}
    },
    main_product = "sintered-nickel",
    subgroup = "py-rawores-nickel",
}:add_unlock("nickel-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-nickel-00",
    category = "electrolyzer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "nickel-pulp-02", amount = 100},
        {type = "fluid", name = "boric-acid", amount = 300},
        {type = "item", name = "aluminium-plate", amount = 2}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 50},
        {type = "item", name = "pyrite", amount = 1}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "baf"
}:add_unlock("nickel-mk03")

RECIPE {
    type = "recipe",
    name = "molten-nickel-01",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-4-nickel", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60},
        {type = "item", name = "borax", amount = 3}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 50}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "bae"
}:add_unlock("nickel-mk02")

RECIPE {
    type = "recipe",
    name = "molten-nickel-02",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "nickel-pulp-01", amount = 100},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 40}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "bag"
}:add_unlock("nickel-mk03")

RECIPE {
    type = "recipe",
    name = "molten-nickel-02-2",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "nickel-pulp-04", amount = 100},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 150}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "bad"
}:add_unlock("nickel-mk03")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "molten-nickel-03",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-nickel", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 90}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 180}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "bac"
}:add_unlock("nickel-mk04")

else

RECIPE {
    type = "recipe",
    name = "molten-nickel-03",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-nickel", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 90}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 180}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "bac"
}:add_unlock("nickel-mk03")

end

if not settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "molten-nickel-04",
    category = "bof",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "reduced-nickel", amount = 2},
        {type = "item", name = "borax", amount = 5},
        {type = "fluid", name = "oxygen", amount = 200}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 530}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "baa"
}:add_unlock("nickel-mk04")

end

RECIPE {
    type = "recipe",
    name = "molten-nickel-05",
    category = "bof",
    enabled = false,
    energy_required = 9,
    ingredients = {
        {type = "item", name = "sintered-nickel", amount = 2},
        {type = "item", name = "borax", amount = 5},
        {type = "fluid", name = "oxygen", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-nickel", amount = 400}
    },
    main_product = "molten-nickel",
    subgroup = "py-rawores-nickel",
    order = "bab"
}:add_unlock("nickel-mk04")

--CASTINGS

RECIPE {
    type = "recipe",
    name = "nickel-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-nickel", amount = 100},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "nickel-plate", amount = 50}
    },
    main_product = "nickel-plate",
    subgroup = "py-rawores-nickel",
    order = "aaa"
}:add_unlock("nickel-mk02")

--INITIAL PLATE

RECIPE {
    type = "recipe",
    name = "nickel-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "ore-nickel", amount = 10}
    },
    results = {
        {type = "item", name = "nickel-plate", amount = 1}
    },
    --main_product= "glass",
    subgroup = "py-rawores-nickel",
    order = "aac"
}

--PLATES

RECIPE {
    type = "recipe",
    name = "nickel-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "grade-1-nickel", amount = 1}
    },
    results = {
        {type = "item", name = "nickel-plate", amount = 1}
    },
    --main_product= "glass",
    subgroup = "py-rawores-nickel",
    order = "aab"
}:add_unlock("nickel-mk01")
