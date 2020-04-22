--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-silver",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-silver", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-silver", amount = 1},
    },
    main_product = "reduced-silver",
    subgroup = "py-rawores-silver",
}:add_unlock("lead-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-silver-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-silver", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-silver", amount = 1},
    },
    main_product = "sintered-silver",
    subgroup = "py-rawores-silver",
}:add_unlock("lead-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-silver-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-silver", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-silver", amount = 2},
    },
    main_product = "sintered-silver",
    subgroup = "py-rawores-silver",
}:add_unlock("lead-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION


RECIPE {
    type = "recipe",
    name = "molten-silver-01",
    category = "bof",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "lead-refined-dust-03", amount = 2},
        {type = "item", name = "borax", amount = 2},
        {type = "fluid", name = "oxygen", amount = 60},
    },
    results = {
        {type = "fluid", name = "molten-silver", amount = 20},
    },
    main_product = "molten-silver",
    subgroup = "py-rawores-silver",
    order = "bad"
}:add_unlock("lead-mk03")

if settings.startup['processing-mod'].value then
RECIPE {
    type = "recipe",
    name = "molten-silver-02",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-silver", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60},
    },
    results = {
        {type = "fluid", name = "molten-silver", amount = 300},
    },
    main_product = "molten-silver",
    subgroup = "py-rawores-silver",
    order = "bac"

}:add_unlock("lead-mk04")

else

RECIPE {
    type = "recipe",
    name = "molten-silver-02",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-silver", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60},
    },
    results = {
        {type = "fluid", name = "molten-silver", amount = 300},
    },
    main_product = "molten-silver",
    subgroup = "py-rawores-silver",
    order = "bac"
}:add_unlock("lead-mk03")

end

RECIPE {
    type = "recipe",
    name = "molten-silver-03",
    category = "bof",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "reduced-silver", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60},
    },
    results = {
        {type = "fluid", name = "molten-silver", amount = 520},
    },
    main_product = "molten-silver",
    subgroup = "py-rawores-silver",
    order = "baa"
}:add_unlock("lead-mk04")

RECIPE {
    type = "recipe",
    name = "molten-silver-04",
    category = "bof",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "sintered-silver", amount = 1},
        {type = "item", name = "borax", amount = 3},
        {type = "fluid", name = "oxygen", amount = 60},
    },
    results = {
        {type = "fluid", name = "molten-silver", amount = 420},
    },
    main_product = "molten-silver",
    subgroup = "py-rawores-silver",
    order = "bab"
}:add_unlock("lead-mk04")


--CASTINGS


RECIPE {
    type = "recipe",
    name = "silver-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-silver", amount = 100},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "silver-plate", amount = 10}
    },
    main_product= "silver-plate",
    subgroup = "py-rawores-silver",
    order = "aaa"
}:add_unlock("lead-mk03")


--INITIAL PLATE


RECIPE {
    type = "recipe",
    name = "silver-plate-1",
    category = "smelting",
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "item", name = "lead-dust", amount = 27}
    },
    results = {
        {type = "item", name = "silver-plate", amount = 9}
    },
    subgroup = "py-rawores-silver",
    order = "aab"
}:add_unlock("lead-mk02")

--PLATES

RECIPE {
    type = "recipe",
    name = "silver-plate-2",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "sl-01", amount = 100},
        {type = "item", name = "sand-casting", amount = 1},
        {type = "item", name = "fuelrod-mk01", amount = 1},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "item", name = "silver-plate", amount = 3}
    },
    subgroup = "py-rawores-silver",
    order = "aac"
}:add_unlock("lead-mk03")