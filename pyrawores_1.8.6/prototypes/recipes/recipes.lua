RECIPE {
    type = "recipe",
    name = "powdered-ralesia-seeds",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ralesia-seeds", amount = 15}
    },
    results = {
        {type = "item", name = "powdered-ralesia-seeds", amount = 1}
    },
    main_product= "powdered-ralesia-seeds",
    icon = "__pyrawores__/graphics/icons/powdered-ralesia-seeds.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "starch",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "powdered-ralesia-seeds", amount = 1}
    },
    results = {
        {type = "item", name = "starch", amount = 3},
        {type = "item", name = "organics", amount = 5},
    },
    main_product= "starch",
    icon = "__pyrawores__/graphics/icons/starch.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02"):add_ingredient({type = 'item', name = 'fiberboard', amount = 1})

RECIPE {
    type = "recipe",
    name = "starch-2",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "powdered-ralesia-seeds", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 1},
    },
    results = {
        {type = "item", name = "starch", amount = 10},
        {type = "item", name = "organics", amount = 5},
    },
    main_product= "starch",
    icon = "__pyrawores__/graphics/icons/starch.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02"):add_ingredient({type = 'item', name = 'fiberboard', amount = 1})

RECIPE {
    type = "recipe",
    name = "water-saline",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "salt", amount = 10},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "fluid", name = "water-saline", amount = 100},
    },
    --main_product= "starch",
    icon = "__pycoalprocessing__/graphics/icons/water-saline.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "py-sodium-hydroxide",
    category = "chemistry",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "slacked-lime", amount = 50},
        {type = "item", name = "salt", amount = 10}
    },
    results = {
        {type = "item", name = "sodium-hydroxide", amount = 10},
        {type = "item", name = "limestone", amount = 5}
    },
    icon = "__pyrawores__/graphics/icons/sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "a8"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "salt-ex",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water-saline", amount = 230}
    },
    results = {
        {type = "item", name = "salt", amount = 23}
    },
    main_product = "salt",
    subgroup = "py-items",
    order = "salt",
    icon = "__pyrawores__/graphics/icons/salt.png",
    icon_size = 32
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "syngas2",
    category = "gasifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-gas", amount = 40},
        {type = "fluid", name = "oxygen", amount = 60},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "fluid", name = "syngas", amount = 100},
        {type = "fluid", name = "tar", amount = 30},
        {type = "item", name = "ash", amount = 1}
    },
    icon = "__pycoalprocessing__/graphics/icons/syngas.png",
    icon_size = 32,
    subgroup = "py-syngas",
    order = "a-b-[syn-gas]"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "syngas-distilation",
    category = "distilator",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 150}
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 50}
    },
    main_product = "hydrogen",
    icon = "__pycoalprocessing__/graphics/icons/syngas-distilation.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "a [coal-gas]"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "hydrogen-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 200},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "coke", amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 520},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pycoalprocessing__/graphics/icons/combustion-hydrogen.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-1")

RECIPE {
    type = "recipe",
    name = "bonemeal-salt",
    category = "ulric",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "ralesia", amount = 10},
        {type = "item", name = "salt", amount = 10},
    },
    results = {
        {type = "item", name = "bonemeal", amount = 10}
    },
    main_product = "bonemeal",
    icon = "__pycoalprocessing__/graphics/icons/bonemeal.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "g"
}:add_unlock("machines-mk02")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-fat-salt',
    category = 'mukmoux',
    enabled = 'false',
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesia-seeds', amount = 30},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'ash', amount = 10}
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 30}
    },
}:add_unlock("machines-mk02")

RECIPE {
    type = 'recipe',
    name = 'p2s5',
    category = 'hpf',
    enabled = 'false',
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'stone', amount = 15},
        {type = 'item', name = 'pyrite', amount = 10},
    },
    results = {
        {type = 'item', name = 'p2s5', amount = 1},
        {type = 'item', name = 'iron-ore', amount = 3},
    },
    main_product = "p2s5",
}:add_unlock("machines-mk03"):replace_ingredient("stone", "phosphate-rock")

RECIPE {
    type = 'recipe',
    name = 'p2s5-2',
    category = 'hpf',
    enabled = 'false',
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'stone', amount = 15},
        {type = 'item', name = 'sulfur', amount = 20},
    },
    results = {
        {type = 'item', name = 'p2s5', amount = 1},
        {type = 'item', name = 'pyrite', amount = 1},
    },
    main_product = "p2s5",
}:add_unlock("machines-mk03"):replace_ingredient("stone", "phosphate-rock")

RECIPE {
    type = "recipe",
    name = "ammonium-chloride",
    category = "rectisol", --pyht fbreactor
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 200},
        {type = "fluid", name = "water", amount = 100}, --pyht ammonia
        {type = "fluid", name = "nitrogen", amount = 200},
        {type = "item", name = "salt", amount = 20},
    },
    results = {
        {type = "item", name = "ammonium-chloride", amount = 2},
        {type = "item", name = "sodium-carbonate", amount = 1},
    },
    main_product = "ammonium-chloride",
    icon = "__pyrawores__/graphics/icons/ammonium-chloride.png",
    icon_size = 32,
    subgroup = "py-rawores-items",
    order = "q-2"
}:add_unlock("machines-mk02"):change_category('fbreactor'):replace_ingredient("water", "ammonia")

RECIPE {
    type = "recipe",
    name = "duralumin-1",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "aluminium-plate", amount = 4},
        {type = "item", name = "copper-plate", amount = 2},
    },
    results = {
        {type = "item", name = "duralumin", amount = 1}
    },
    main_product= "duralumin",
    icon = "__pyrawores__/graphics/icons/duralumin.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk01")

RECIPE {
    type = "recipe",
    name = "duralumin-2",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-aluminium", amount = 100},
        {type = "fluid", name = "molten-copper", amount = 100},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "duralumin", amount = 20}
    },
    main_product= "duralumin",
    icon = "__pyrawores__/graphics/icons/duralumin.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk02")

RECIPE {
    type = "recipe",
    name = "battery-1",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "lead-plate", amount = 6},
        {type = "item", name = "glass", amount = 2}, --pyht glass-fiber
        {type = "fluid", name = "sulfuric-acid", amount = 50},
    },
    results = {
        {type = "item", name = "battery", amount = 2}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("battery"):add_ingredient({type = 'item', name = 'rayon', amount = 2})

RECIPE {
    type = "recipe",
    name = "battery-2",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "lead-plate", amount = 4},
        {type = "item", name = "coke", amount = 5},
        {type = "item", name = "pyrite", amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 50},
    },
    results = {
        {type = "item", name = "battery", amount = 2}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("battery"):add_ingredient({type = 'item', name = 'rayon', amount = 2})

RECIPE {
    type = "recipe",
    name = "mega-drill-head",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "super-steel", amount = 10},
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "fluid", name = "nitrogen", amount = 50}, --pyfe helium
        --pyfe diamond
        --pyfe super-alloy
        --pyfe boron-carbide
    },
    results = {
        {type = "item", name = "mega-drill-head", amount = 3}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk03"):add_ingredient({type = 'item', name = 'diamond', amount = 3}):add_ingredient({type = 'item', name = 'boron-carbide', amount = 5}):replace_ingredient("super-steel", "super-alloy"):replace_ingredient("nitrogen", "helium")

RECIPE {
    type = "recipe",
    name = "tinned-cable",
    category = "crafting",
    enabled = true,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "copper-cable", amount = 2},
        {type = "item", name = "tin-plate", amount = 1},
    },
    results = {
        {type = "item", name = "tinned-cable", amount = 1}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}

RECIPE {
    type = "recipe",
    name = "aramid",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tpa", amount = 50},
        {type = "item", name = "titanium-plate", amount = 15},
        {type = "item", name = "sodium-hydroxide", amount = 10},
        {type = "item", name = "aluminium-plate", amount = 3},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "item", name = "aramid", amount = 8}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("machines-mk02"):add_ingredient({type = 'item', name = 'molybdenum-plate', amount = 5}):change_category('nmf')

RECIPE {
    type = "recipe",
    name = "solder-0",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 1},
        {type = "item", name = "lead-plate", amount = 2},
    },
    results = {
        {type = "item", name = "solder", amount = 1}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}

RECIPE {
    type = "recipe",
    name = "solder-1",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 1},
        {type = "item", name = "lead-plate", amount = 2},
        {type = "fluid", name = "tar", amount = 30},
    },
    results = {
        {type = "item", name = "solder", amount = 2}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "solder-2",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 3},
        {type = "item", name = "copper-plate", amount = 1},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "fluid", name = "tar", amount = 30},
    },
    results = {
        {type = "item", name = "solder", amount = 4}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("lead-mk02")

RECIPE {
    type = "recipe",
    name = "solder-3",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "tin-plate", amount = 2},
        {type = "item", name = "lead-plate", amount = 5},
        {type = "item", name = "silver-plate", amount = 1},
        {type = "fluid", name = "tar", amount = 50},
    },
    results = {
        {type = "item", name = "solder", amount = 10}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("lead-mk03")

RECIPE {
    type = 'recipe',
    name = 'pyrite-burn',
    category = 'hpf',
    enabled = 'false',
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'pyrite', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'acidgas', amount = 50},
        {type = 'item', name = 'iron-oxide', amount = 12},
    },
    main_product = "iron-oxide",
}:add_unlock("coal-mk01")

RECIPE {
    type = 'recipe',
    name = 'pyrite-make',
    category = 'hpf',
    enabled = 'false',
    energy_required = 6,
    ingredients = {
        {type = 'item', name = 'iron-oxide', amount = 3},
        {type = 'item', name = 'sulfur', amount = 3},
    },
    results = {
        {type = 'item', name = 'pyrite', amount = 1},
    },
    main_product = "pyrite",
}:add_unlock("coal-mk01")

RECIPE {
    type = 'recipe',
    name = 'sulfuric-acid-01',
    category = 'chemistry',
    enabled = 'false',
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'acidgas', amount = 100},
        {type = 'fluid', name = 'water', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'sulfuric-acid', amount = 50},
    },
}:add_unlock("sulfur-processing")

RECIPE {
    type = 'recipe',
    name = 'sodium-carbonate-1',
    category = 'hpf',
    enabled = 'false',
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'sodium-sulfate', amount = 1},
        {type = 'item', name = 'coke', amount = 5},
        {type = 'item', name = 'limestone', amount = 3},
    },
    results = {
        {type = 'item', name = 'sodium-carbonate', amount = 1},
        {type = 'fluid', name = 'carbon-dioxide', amount = 50},
    },
    main_product = "sodium-carbonate",
}:add_unlock("sulfur-processing")

RECIPE {
    type = 'recipe',
    name = 'sodium-sulfate-1',
    category = 'chemistry',
    enabled = 'false',
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'sodium-hydroxide', amount = 10},
        {type = 'fluid', name = 'sulfuric-acid', amount = 50},
    },
    results = {
        {type = 'item', name = 'sodium-sulfate', amount = 1},
        {type = 'fluid', name = 'water', amount = 50},
    },
    main_product = "sodium-sulfate",
}:add_unlock("sulfur-processing")

RECIPE {
    type = 'recipe',
    name = 'ammo-initial',
    category = 'handcrafting',
    enabled = true,
    energy_required = 8,
    ingredients = {
        {type = 'item', name = 'iron-plate', amount = 1},
        {type = 'item', name = 'coal', amount = 2},
        {type = 'item', name = 'stone', amount = 2},
    },
    results = {
        {type = 'item', name = 'firearm-magazine', amount = 1}
    }
}

if not mods["pyhightech"] then

RECIPE {
    type = "recipe",
    name = "electronic-circuit-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "wood", amount = 1},
        {type = "item", name = "copper-plate", amount = 2},
        {type = "item", name = "tinned-cable", amount = 4},
        {type = "item", name = "solder", amount = 2},
        {type = "fluid", name = "boric-acid", amount = 20},
    },
    results = {
        {type = "item", name = "electronic-circuit", amount = 2}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("coal-processing-1")
end

RECIPE {
    type = "recipe",
    name = "nichrome-2",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-nickel", amount = 100},
        {type = "fluid", name = "molten-chromium", amount = 80},
        {type = "item", name = "sand-casting", amount = 1}
    },
    results = {
        {type = "item", name = "nichrome", amount = 10}
    },
    main_product= "nichrome",
    icon = "__pycoalprocessing__/graphics/icons/nichrome.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("nickel-mk03")