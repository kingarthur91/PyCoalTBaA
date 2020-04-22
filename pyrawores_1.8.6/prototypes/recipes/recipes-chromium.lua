RECIPE {
    type = "recipe",
    name = "grade-1-chromite",
    category = "crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-chromium", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-chromite", amount = 1},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-chromite",
    icon = "__pyrawores__/graphics/icons/crusher-chromium.png",
    icon_size = 32,
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk01")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "grade-3-chromite",
    category = "impact-crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-chromium-medium", amount = 2}
    },
    results = {
        {type = "item", name = "grade-3-chromite", amount = 1},
        {type = "item", name = "grade-2-chromite", amount = 1, probability = 0.4}
    },
    main_product = "grade-3-chromite",
    icon = "__pyrawores__/graphics/icons/grade-3-chromite.png",
    icon_size = 32,
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk02")

else

RECIPE {
    type = "recipe",
    name = "grade-3-chromite",
    category = "impact-crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "grade-1-chromite", amount = 2}
    },
    results = {
        {type = "item", name = "grade-3-chromite", amount = 1},
        {type = "item", name = "grade-2-chromite", amount = 1, probability = 0.4}
    },
    main_product = "grade-3-chromite",
    icon = "__pyrawores__/graphics/icons/grade-3-chromite.png",
    icon_size = 32,
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk02")

end

RECIPE {
    type = "recipe",
    name = "grade-2-chromite-beneficiation",
    category = "solid-separator", --pyFE screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-2-chromite", amount = 1}
    },
    results = {
        {type = "item", name = "grade-1-chromite", amount = 1, probability = 0.5},
        {type = "item", name = "gravel", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-chromite",
    icon = "__pyrawores__/graphics/icons/chromite-2-grade-screener.png",
    icon_size = 32,
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk02"):change_category("screener")

RECIPE {
    type = "recipe",
    name = "grade-4-chromite",
    category = "chemistry",
     --pyFE hydrocyclone
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-3-chromite", amount = 1},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "item", name = "grade-4-chromite", amount = 1},
        {type = "item", name = "chromite-rejects", amount = 1}
    },
    main_product = "grade-4-chromite",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk02")

RECIPE {
    type = "recipe",
    name = "chromite-rejects-processing",
    category = "ball-mill",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "chromite-rejects", amount = 3}
    },
    results = {
        {type = "item", name = "grade-3-chromite", amount = 1, probability = 0.6}
    },
    main_product = "grade-3-chromite",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk02")

RECIPE {
    type = "recipe",
    name = "high-chromite",
    category = "flotation",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "chromite-pulp-01", amount = 200},
        {type = "fluid", name = "aerofloat-15", amount = 50}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "high-chromite", amount = 4},
        {type = "fluid", name = "chromite-solution", amount = 200}
    },
    main_product = "high-chromite",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "recrush-processed-chromite",
    category = "impact-crusher",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "processed-chromite", amount = 1}
    },
    results = {
        {type = "item", name = "high-chromite", amount = 1, probability = 0.4},
        {type = "item", name = "sand", amount = 1, probability = 0.4}
    },
    main_product = "high-chromite",
    icon = "__pyrawores__/graphics/icons/recrush-high-chromite.png",
    icon_size = 32,
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk03"):change_category("secondary-crusher")

--CHROMITE SAND YIELDS

RECIPE {
    type = "recipe",
    name = "tier-5-chromite-sand",
    category = "evaporator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "chromite-solution", amount = 200}
    },
    results = {
        {type = "item", name = "chromite-sand", amount = 15}
    },
    main_product = "chromite-sand",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk03")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "tier-4-chromite-sand",
    category = "scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "sand", amount = 10},
        {type = "fluid", name = "chromite-pulp-07", amount = 100},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "chromite-sand", amount = 55}
    },
    main_product = "chromite-sand",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk04")

else

RECIPE {
    type = "recipe",
    name = "tier-4-chromite-sand",
    category = "scrubber",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "sand", amount = 10},
        {type = "fluid", name = "chromite-pulp-07", amount = 100},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "chromite-sand", amount = 55}
    },
    main_product = "chromite-sand",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk03")

end

RECIPE {
    type = "recipe",
    name = "tier-3-chromite-sand",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-chromite", amount = 1}
    },
    results = {
        {type = "item", name = "chromite-sand", amount = 20}
    },
    main_product = "chromite-sand",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk03")

RECIPE {
    type = "recipe",
    name = "tier-2-chromite-sand",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-4-chromite", amount = 1}
    },
    results = {
        {type = "item", name = "chromite-sand", amount = 8}
    },
    main_product = "chromite-sand",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk02")

RECIPE {
    type = "recipe",
    name = "tier-1-chromite-sand",
    category = "solid-separator",
    enabled = false,
    energy_required = 4.5,
    ingredients = {
        {type = "item", name = "grade-3-chromite", amount = 1}
    },
    results = {
        {type = "item", name = "chromite-sand", amount = 7}
    },
    main_product = "chromite-sand",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk02")

RECIPE {
    type = "recipe",
    name = "tier-0-chromite-sand",
    category = "solid-separator",
    enabled = false,
    energy_required = 4.5,
    ingredients = {
        {type = "item", name = "grade-1-chromite", amount = 1}
    },
    results = {
        {type = "item", name = "chromite-sand", amount = 3}
    },
    main_product = "chromite-sand",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk01")

--CHROMIUM SMELTING YIELDS

RECIPE {
    type = "recipe",
    name = "chromium-01",
    category = "casting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "chromite-sand", amount = 15},
        {type = "item", name = "limestone", amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 150},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "chromium", amount = 5}
    },
    main_product = "chromium",
    subgroup = "py-rawores-chromium",
    order = "aab"
}:add_unlock("chromium-mk01")

RECIPE {
    type = "recipe",
    name = "chromium-02",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-chromium", amount = 100},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "chromium", amount = 25}
    },
    main_product = "chromium",
    subgroup = "py-rawores-chromium",
    order = "aaa"
}:add_unlock("chromium-mk03")

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-chromium-01",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "chromite-sand", amount = 15},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-chromium", amount = 70}
    },
    main_product = "molten-chromium",
    subgroup = "py-rawores-chromium",
    order = "bac"
}:add_unlock("chromium-mk03")

RECIPE {
    type = "recipe",
    name = "molten-chromium-02",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sintered-chromium", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-chromium", amount = 150}
    },
    main_product = "molten-chromium",
    subgroup = "py-rawores-chromium",
    order = "baa"
}:add_unlock("chromium-mk04")

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "molten-chromium-03",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-chromium", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-chromium", amount = 100}
    },
    main_product = "molten-chromium",
    subgroup = "py-rawores-chromium",
    order = "bab"
}:add_unlock("chromium-mk04")

else

RECIPE {
    type = "recipe",
    name = "molten-chromium-03",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-chromium", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 150}
    },
    results = {
        {type = "fluid", name = "molten-chromium", amount = 100}
    },
    main_product = "molten-chromium",
    subgroup = "py-rawores-chromium",
    order = "bab"
}:add_unlock("chromium-mk03")

end

--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "sinter-chromium",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "reduced-chromium", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-chromium", amount = 2}
    },
    main_product = "sintered-chromium",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

if settings.startup['processing-mod'].value then

RECIPE {
    type = "recipe",
    name = "reduction-chromium",
    category = "drp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "chromite-sand", amount = 25},
        {type = "item", name = "sodium-hydroxide", amount = 2},
        {type = "fluid", name = "light-oil", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-chromium", amount = 1}
    },
    main_product = "reduced-chromium",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

else

RECIPE {
    type = "recipe",
    name = "reduction-chromium",
    category = "drp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "chromite-sand", amount = 25},
        {type = "item", name = "sodium-hydroxide", amount = 2},
        {type = "fluid", name = "light-oil", amount = 100}
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-chromium", amount = 1}
    },
    main_product = "reduced-chromium",
    subgroup = "py-rawores-chromium",
}:add_unlock("chromium-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

end

--INITIAL PLATE

RECIPE {
    type = "recipe",
    name = "chromium-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "ore-chromium", amount = 10}
    },
    results = {
        {type = "item", name = "chromium", amount = 1}
    },
    --main_product= "glass",
    icon = "__pycoalprocessing__/graphics/icons/chromium.png",
    icon_size = 32,
    subgroup = "py-rawores-chromium",
    order = "aac"
}
