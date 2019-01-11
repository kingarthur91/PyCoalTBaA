data.raw.item["landfill"].stack_size = 1000
data.raw["furnace"]["py-sinkhole"].crafting_speed = 10

--bob recipes
if mods["boblibrary"] then

if mods["bobores"] and not mods["pyrawores"] then

    --BAUXITE
    RECIPE {
        type = "recipe",
        name = "crushing-bauxite",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "bauxite-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-bauxite", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-bauxite",
        icon = "__pycoalprocessing__/graphics/icons/crush-bauxite.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "f"
    }:add_unlock("crusher")
    --GOLD
    RECIPE {
        type = "recipe",
        name = "crushing-gold",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "gold-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-gold", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-gold",
        icon = "__pycoalprocessing__/graphics/icons/crush-gold.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "g"
    }:add_unlock("crusher")
    --LEAD
    RECIPE {
        type = "recipe",
        name = "crushing-lead",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "lead-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-lead", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-lead",
        icon = "__pycoalprocessing__/graphics/icons/crush-lead.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "h"
    }:add_unlock("crusher")
    --QUARTZ
    RECIPE {
        type = "recipe",
        name = "crushing-quartz",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "quartz", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-quartz", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-quartz",
        icon = "__pycoalprocessing__/graphics/icons/crush-quartz.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "i"
    }:add_unlock("crusher")
    --NICKEL
    RECIPE {
        type = "recipe",
        name = "crushing-nickel",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "nickel-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-nickel", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-nickel",
        icon = "__pycoalprocessing__/graphics/icons/crush-nickel.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "j"
    }:add_unlock("crusher")
    --RUTILE
    RECIPE {
        type = "recipe",
        name = "crushing-rutile",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "rutile-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-rutile", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-rutile",
        icon = "__pycoalprocessing__/graphics/icons/crush-rutile.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "k"
    }:add_unlock("crusher")
    --SILVER
    RECIPE {
        type = "recipe",
        name = "crushing-silver",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "silver-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-silver", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-silver",
        icon = "__pycoalprocessing__/graphics/icons/crush-silver.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "l"
    }:add_unlock("crusher")
    --TIN
    RECIPE {
        type = "recipe",
        name = "crushing-tin",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "tin-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-tin", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-tin",
        icon = "__pycoalprocessing__/graphics/icons/crush-tin.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "m"
    }:add_unlock("crusher")
    --TUNGSTEN
    RECIPE {
        type = "recipe",
        name = "crushing-tungsten",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "tungsten-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-tungsten", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-tungsten",
        icon = "__pycoalprocessing__/graphics/icons/crush-tungsten.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "n"
    }:add_unlock("crusher")
    --ZINC
    RECIPE {
        type = "recipe",
        name = "crushing-zinc",
        category = "crusher",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "zinc-ore", amount = 5}
        },
        results = {
            {type = "item", name = "crushed-zinc", amount = 5},
            {type = "item", name = "stone", amount = 1}
        },
        main_product = "crushed-zinc",
        icon = "__pycoalprocessing__/graphics/icons/crush-zinc.png",
        icon_size = 32,
        subgroup = "py-crusher",
        order = "o"
    }:add_unlock("crusher")

--ground bore recipes

    RECIPE {
        type = "recipe",
        name = "mining-bauxite",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "bauxite-ore", amount = 20}
        },
        main_product = "bauxite-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-bauxite.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "d"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-cobalt",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "cobalt-ore", amount = 20}
        },
        main_product = "cobalt-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-cobalt.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "e"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-gold",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "gold-ore", amount = 20}
        },
        main_product = "gold-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-gold.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "f"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-lead",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "lead-ore", amount = 20}
        },
        main_product = "lead-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-lead.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "g"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-nickel",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "nickel-ore", amount = 20}
        },
        main_product = "nickel-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-nickel.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "h"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-quartz",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "quartz", amount = 20}
        },
        main_product = "quartz",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-quartz.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "i"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-rutile",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "rutile-ore", amount = 20}
        },
        main_product = "rutile-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-rutile.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "j"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-silver",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "silver-ore", amount = 20}
        },
        main_product = "silver-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-silver.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "k"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-tin",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "tin-ore", amount = 20}
        },
        main_product = "tin-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-tin.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "l"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-tungsten",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "tungsten-ore", amount = 20}
        },
        main_product = "tungsten-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-tungsten.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "m"
    }:add_unlock("excavation-2")

    RECIPE {
        type = "recipe",
        name = "mining-zinc",
        category = "ground-borer",
        enabled = false,
        energy_required = 1.2,
        ingredients = {
            {type = "fluid", name = "lubricant", amount = 100},
            {type = "fluid", name = "coal-gas", amount = 100},
            {type = "item", name = "drill-head", amount = 1}
        },
        results = {
            {type = "item", name = "zinc-ore", amount = 20}
        },
        main_product = "zinc-ore",
        icon = "__pycoalprocessing__/graphics/icons/drilling/drilling-zinc.png",
        icon_size = 32,
        subgroup = "py-drilling",
        order = "n"
    }:add_unlock("excavation-2")
	
	--uses bob_carbon
RECIPE {
    type = "recipe",
    name = "tar-carbon",
    category = "tar",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "tar", amount = 40}
    },
    results = {
        {type = "item", name = "carbon", amount = 4}
    },
    main_product = "carbon",
    subgroup = "py-items",
    order = "carbon",
    icon = data.raw.item.carbon.icon,
    icon_size = 32
}:add_unlock("coal-processing-1")
 
--alternative silicon plate
RECIPE {
    type = "recipe",
    name = "silicon-plate2",
    category = "electrolysis",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item", name = "crushed-quartz", amount = 5},
        {type = "item", name = "carbon", amount = 1},
        {type = "item", name = "calcium-chloride", amount = 4}
    },
    results = {
        {type = "item", name = "silicon", amount = 5}
    },
    main_product = "silicon",
    icon = data.raw.item.silicon.icon,
    icon_size = 32
}:add_unlock("silicon-processing")

RECIPE {
    type = "recipe",
    name = "salt-ex",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water-saline", amount = 100}
    },
    results = {
        {type = "item", name = "salt", amount = 1, probability = 0.4}
    },
    main_product = "salt",
    subgroup = "py-items",
    order = "salt",
    icon = "__pycoalprocessing__/graphics/icons/salt.png",
    icon_size = 32
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "saline",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "salt", amount = 10}
    },
    results = {
        {type = "fluid", name = "water-saline", amount = 100}
    },
    main_product = "water-saline",
    subgroup = "py-items",
    order = "saline",
    icon = "__pycoalprocessing__/graphics/icons/water-saline.png",
    icon_size = 32
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "void-flue-gas",
    category = "void-fluid",
    enabled = false,
    hidden = "true",
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 20}
    },
    results = {
        {type = "item", name = "void", amount = 1, probability = 0}
    },
    subgroup = "void",
    icon = "__pycoalprocessing__/graphics/icons/flue-gas.png",
    icon_size = 32,
    order = "flue-gas"
}:add_unlock("void-fluid")

--GLASS PRODUCTION
RECIPE {
    type = "recipe",
    name = "glass-sand",
    category = "hpf",
    enabled = true,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "pure-sand", amount = 15},
        {type = "fluid", name = "coal-gas", amount = 100},
        {type = "item", name = "quartz", amount = 8}
    },
    results = {
        {type = "item", name = "glass", amount = 10}
    },
    main_product = "glass",
    icon = "__bobplates__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-items-hpf",
    order = "i"
}

--GLASS PRODUCTION2
RECIPE {
    type = "recipe",
    name = "glass-sand2",
    category = "hpf",
    enabled = true,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "pure-sand", amount = 15},
        {type = "fluid", name = "coal-gas", amount = 100},
        {type = "item", name = "crushed-quartz", amount = 4}
    },
    results = {
        {type = "item", name = "glass", amount = 14}
    },
    main_product = "glass",
    icon = "__bobplates__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-items-hpf",
    order = "j"
}

--GLASS PRODUCTION3 - compatibility with angels
RECIPE {
    type = "recipe",
    name = "glass-sand3",
    category = "smelting",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sand", amount = 20}
    },
    results = {
        {type = "item", name = "glass", amount = 1}
    },
    --main_product= "glass",
    icon = "__bobplates__/graphics/icons/glass.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "j"
}

-- TUNGSTEN POWDER
RECIPE {
    type = "recipe",
    name = "tungsten-powder",
    category = "ball-mill",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "crushed-tungsten", amount = 10}
    },
    results = {
        {type = "item", name = "powdered-tungsten", amount = 10}
    },
    main_product = "powdered-tungsten",
    icon = "__bobplates__/graphics/icons/powdered-tungsten.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "c"
}:add_unlock("crusher")

--SMELT CRUSHED TIN
RECIPE {
    type = "recipe",
    name = "crushed-tin",
    category = "smelting",
    enabled = false,
    energy_required = 3.5,
    ingredients = {{"crushed-tin", 1}},
    results = {
        {"tin-plate", 1}
    },
    result_count = 2
}:add_unlock("crusher")

--SMELT CRUSHED LEAD
RECIPE {
    type = "recipe",
    name = "crushed-lead",
    category = "smelting",
    enabled = false,
    energy_required = 3.5,
    ingredients = {{"crushed-lead", 1}},
    results = {
        {"lead-plate", 1}
    },
    result_count = 2
}:add_unlock("crusher")

--SMELT CRUSHED SILVER
RECIPE {
    type = "recipe",
    name = "crushed-silver",
    category = "smelting",
    enabled = false,
    energy_required = 3.5,
    ingredients = {{"crushed-silver", 1}},
    results = {
        {type = "item", name = "silver-plate", amount = 2}
    }
}:add_unlock("crusher")

--BOB SMELT GOLD |override?|
RECIPE {
    type = "recipe",
    name = "crushed-gold",
    category = "chemical-furnace",
    energy_required = 3.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "crushed-gold", amount = 1},
        {type = "fluid", name = "chlorine", amount = 5}
    },
    results = {
        {"gold-plate", 1}
    },
    result_count = 2
}:add_unlock("crusher")

--BOB SMELT ZINC |override?|
RECIPE {
    type = "recipe",
    name = "crushed-zinc",
    category = "electrolysis",
    energy_required = 3.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "crushed-zinc", amount = 1},
        {type = "fluid", name = "sulfuric-acid", amount = 10}
    },
    results = {
        {"zinc-plate", 1}
    },
    result_count = 2
}:add_unlock("crusher")

--BOB SMELT NICKEL |override?|
RECIPE {
    type = "recipe",
    name = "crushed-nickel",
    category = "electrolysis",
    energy_required = 3.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "crushed-nickel", amount = 1},
        {type = "fluid", name = "oxygen", amount = 10}
    },
    results = {
        {type = "fluid", name = "sulfur-dioxide", amount = 20},
        {type = "item", name = "nickel-plate", amount = 2}
    },
    main_product = "nickel-plate",
    icon = "__bobplates__/graphics/icons/plate/nickel-plate.png",
    icon_size = 32,
    order = "c-a-f[nickel-plate]"
}:add_unlock("crusher")

--BOB SMELT RUTILE |override?|
RECIPE {
    type = "recipe",
    name = "crushed-rutile",
    category = "electrolysis",
    energy_required = 6,
    enabled = false,
    ingredients = {
        {type = "item", name = "calcium-chloride", amount = 2},
        {type = "item", name = "carbon", amount = 1},
        {type = "item", name = "crushed-rutile", amount = 2}
    },
    results = {
        {"titanium-plate", 1}
    },
    result_count = 4
}:add_unlock("crusher")

--LUBRICANT FROM GLYCEROL
RECIPE {
    type = "recipe",
    name = "lube-glycerol",
    category = "chemistry",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "glycerol", amount = 100},
        {type = "fluid", name = "lithia-water", amount = 200}
    },
    results = {
        {type = "fluid", name = "lubricant", amount = 100}
    },
    main_product = "lubricant",
    icon = "__pycoalprocessing__/graphics/icons/lube-glycerol.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "a [coal-gas]"
}:add_unlock("coal-processing-2")

--RESIN FROM GLYCEROL
RECIPE {
    type = "recipe",
    name = "resin-glycerol",
    category = "hpf",
    enabled = false,
    energy_required = 3.0,
    ingredients = {
        {type = "fluid", name = "glycerol", amount = 150},
        {type = "item", name = "coke", amount = 5}
    },
    results = {
        {type = "item", name = "resin", amount = 20}
    },
    main_product = "resin",
    icon = "__pycoalprocessing__/graphics/icons/resin-glycerol.png",
    icon_size = 32,
    subgroup = "py-items-hpf",
    order = "k"
}:add_unlock("coal-processing-2")

--SYNGAS DISTILATION
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

--WOOD-TO-WOODEN BOARD override bobs?
RECIPE {
    type = "recipe",
    name = "wood-board",
    category = "wpu",
    enabled = true,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "wood", amount = 1}
    },
    results = {
        {type = "item", name = "wooden-board", amount = 1}
    },
    icon = "__bobelectronics__/graphics/icons/wooden-board.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "a8"
}

--HYDROGEN to CM1
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

--SODIUM HYDROXIDE
RECIPE {
    type = "recipe",
    name = "py-sodium-hydroxide",
    category = "chemistry",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "slacked-lime", amount = 50},
        {type = "item", name = "salt", amount = 20}
    },
    results = {
        {type = "item", name = "sodium-hydroxide", amount = 10},
        {type = "item", name = "limestone", amount = 1}
    },
    icon = "__bobplates__/graphics/icons/sodium-hydroxide.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "a8"
}:add_unlock("coal-processing-2")

--COAL DUST to CARBON
RECIPE {
    type = "recipe",
    name = "coaldust-carbon",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "coal-dust", amount = 20}
    },
    results = {
        {type = "item", name = "carbon", amount = 1}
    },
    icon = "__bobplates__/graphics/icons/carbon.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "m"
}:add_unlock("crusher")

--alumina
RECIPE {
    type = "recipe",
    name = "alumina2",
    category = "chemical-furnace",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "sodium-hydroxide", amount = 1},
        {type = "item", name = "crushed-bauxite", amount = 1}
    },
    results = {
        {type = "item", name = "alumina", amount = 2}
    },
    icon = "__bobplates__/graphics/icons/corundum.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "m"
}:add_unlock("aluminium-processing")

end

if mods["bobplates"] and mods["pyhightech"] then

RECIPE {
    type = "recipe",
    name = "ammonia2",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 100},
        {type = "fluid", name = "hydrogen", amount = 300},
    },
    results = {
        {type = "fluid", name = "ammonia", amount = 100},
    },
}:add_unlock("advanced-electronics")

if mods["pyfusion"] then

RECIPE {
    type = "recipe",
    name = "pa-cobalt",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 1},
    },
    results = {
        {type = "item", name = "cobalt-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "cobalt-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-cobalt.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")


RECIPE {
    type = "recipe",
    name = "pa-oxygen",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "graphite", amount = 5},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "fluid", name = "oxygen", amount = 200},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "oxygen",
    icon = "__pyhightech__/graphics/icons/pa/pa-oxygen.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-helium",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 1000},
        {type = "item", name = "proton-donor", amount = 20},
    },
    results = {
        {type = "fluid", name = "helium", amount = 100},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "helium",
    icon = "__pyhightech__/graphics/icons/pa/pa-helium.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("helium-processing")

RECIPE {
    type = "recipe",
    name = "pa-hydrogen",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "helium", amount = 100},
        {type = "item", name = "proton-receiver", amount = 4},
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 1000},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "hydrogen",
    icon = "__pyhightech__/graphics/icons/pa/pa-hydrogen.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("helium-processing")

RECIPE {
    type = "recipe",
    name = "pa-boron",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "lithium", amount = 5},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "item", name = "boron", amount = 10},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "boron",
    icon = "__pyhightech__/graphics/icons/pa/pa-boron.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-coal2",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 1000},
        {type = "item", name = "proton-receiver", amount = 2},
    },
    results = {
        {type = "item", name = "coal", amount = 100},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "coal",
    icon = "__pyhightech__/graphics/icons/pa/pa-coal.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-aluminium",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "silicon", amount = 10},
        {type = "item", name = "proton-receiver", amount = 1},
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 10},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "aluminium-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-aluminium.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-nickel",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "proton-receiver", amount = 1},
    },
    results = {
        {type = "item", name = "nickel-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "nickel-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-nickel.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-zinc",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 1},
    },
    results = {
        {type = "item", name = "zinc-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "zinc-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-zinc.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-silver",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "copper-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "item", name = "silver-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "silver-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-silver.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-gold",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "silver-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "item", name = "gold-plate", amount = 20},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "gold-plate",
    icon = "__pyhightech__/graphics/icons/pa/pa-gold.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("nucleo")

RECIPE {
    type = "recipe",
    name = "pa-vanadium2",
    category = "pa",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 10},
        {type = "item", name = "proton-donor", amount = 2},
    },
    results = {
        {type = "item", name = "vanadium-oxide", amount = 10},
        {type = "item", name = "crystallographic-substrate", amount = 1, probability = 0.3},
    },
    main_product = "vanadium-oxide",
    icon = "__pyhightech__/graphics/icons/pa/pa-vanadium.png",
	icon_size = 32,
    subgroup = "py-hightech-recipes",
    order = "f"
}:add_unlock("vanadium-processing")

end

end

if mods["pyhightech"] then

RECIPE {
    type = 'recipe',
    name = 'electronic-circuit-initial',
    category = 'handcrafting',
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'copper-plate', amount = 10},
        {type = 'item', name = 'copper-cable', amount = 10},
        {type = 'item', name = 'wood', amount = 2}
    },
    results = {
        {type = 'item', name = 'pcb1', amount = 3}
    }
}

RECIPE {
    type = 'recipe',
    name = 'cm-electronic-circuit',
    category = 'chip',
    enabled = true,
    energy_required = 6,
    ingredients = {
        {type = 'item', name = 'pcb1', amount = 1},
        {type = 'item', name = 'valvea', amount = 3},
        {type = 'item', name = 'inductor1', amount = 3},
        {type = 'item', name = 'capacitor1', amount = 5},
        {type = 'item', name = 'resistor1', amount = 6}
    },
    results = {
        {type = 'item', name = 'cm-electronic-circuit', amount = 5}
    },
    main_product = 'cm-electronic-circuit'
}

RECIPE {
    type = 'recipe',
    name = 'cm-advanced-circuit',
    category = 'chip',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'pcb2', amount = 1},
        {type = 'item', name = 'cm-electronic-circuit', amount = 1},
        {type = 'item', name = 'transistor', amount = 3},
        {type = 'item', name = 'microchip', amount = 3},
        {type = 'item', name = 'inductor2', amount = 4},
        {type = 'item', name = 'diode', amount = 3},
        {type = 'item', name = 'capacitor2', amount = 5},
        {type = 'item', name = 'resistor2', amount = 15}
    },
    results = {
        {type = 'item', name = 'cm-advanced-circuit', amount = 5}
    },
    main_product = 'cm-advanced-circuit'
}:add_unlock('basic-electronics')

RECIPE {
    type = 'recipe',
    name = 'cm-processing-unit',
    category = 'chip',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'pcb3-2', amount = 1},
        {type = 'item', name = 'cm-advanced-circuit', amount = 1},
        {type = 'item', name = 'resistor3', amount = 3},
        {type = 'item', name = 'inductor3', amount = 3},
        {type = 'item', name = 'capacitor3', amount = 3},
        {type = 'item', name = 'microchip', amount = 3},
        {type = 'item', name = 'optical-fiber', amount = 3},
        {type = 'item', name = 'processor', amount = 1},
        {type = 'item', name = 'diode3', amount = 5}
    },
    results = {
        {type = 'item', name = 'cm-processing-unit', amount = 5}
    }
}:add_unlock('advanced-electronics')

RECIPE {
    type = 'recipe',
    name = 'valvea',
    category = 'electronic',
    enabled = true,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'iron-plate', amount = 5},
        {type = 'item', name = 'copper-plate', amount = 2},
        {type = 'item', name = 'graphite', amount = 2}
    },
    results = {
        {type = 'item', name = 'valvea', amount = 2}
    },
    main_product = 'valvea'
}:add_ingredient({type = 'fluid', name = 'vacuum', amount = 50})

end

--pycoal bob recipes
RECIPE {
    type = "recipe",
    name = "methanol-from-hydrogen",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 30},
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "item", name = "zinc-plate", amount = 1},
        {type = "item", name = "nichrome", amount = 2}
    },
    results = {
        {type = "fluid", name = "methanol", amount = 40}
    },
    subgroup = "py-methanol",
    icon = "__pycoalprocessing__/graphics/icons/methanol.png",
    icon_size = 32,
    order = "b"
}:add_unlock("methanol-processing-2")

RECIPE {
    type = "recipe",
    name = "syngas2",
    category = "gasifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "coal-gas", amount = 40},
        {type = "fluid", name = "oxygen", amount = 50},
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


--Pyfusion bob recipes
RECIPE {
    type = "recipe",
    name = "liquid-nitrogen",
    category = "compressor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 50},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5},
        {type = "fluid", name = "steam", amount = 100}
    },
    main_product = "liquid-nitrogen",
    icon = "__pyfusionenergy__/graphics/icons/compress-nitrogen.png",
	icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "a"
}:add_unlock("helium-processing")

RECIPE {
    type = "recipe",
    name = "evaporate-nitrogen",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 50}
    },
    main_product = "nitrogen",
    icon = "__bobplates__/graphics/icons/nitrogen.png",
	icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "b"
}:add_unlock("helium-processing")

end

--angel related recipes
if mods["angelspetrochem"] then

if mods["angelsrefining"] then
data:extend(
{
	{
		type = "recipe",
		name = "water-mineralized-abcd",
		category = "liquifying",
		subgroup = "water-treatment",
		energy_required = 1,
		enabled = "false",
		ingredients ={
			{type="fluid", name="water", amount=100},
			{type="item", name="stone-crushed", amount=10},
		},
		results=
		{
			{type="fluid", name="water-mineralized", amount=100},
		},
		icon = "__angelsrefining__/graphics/icons/water-mineralized.png",
		icon_size = 32,
		order = "a[water-water-mineralized]",
	}
}
)	
	end
	
if mods["boblibrary"] then
data:extend(
{	
	{
    type = "recipe",
    name = "glass-sand4",
    category = "hpf",
    enabled = "true",
    energy_required = 3,
    ingredients ={
        {type="item", name="pure-sand", amount=15},
        {type="fluid", name="coal-gas", amount=100},
        {type="item", name="angels-ore6-crushed", amount=10},
    },
    results={
        {type="item", name="glass", amount=5},
		{type="item", name="slag", amount=3}

    },
    main_product= "glass",
    icon = "__bobplates__/graphics/icons/glass.png",
	icon_size = 32,
    subgroup = "py-items-hpf",
    order = "i",
	}
}
)
	end
	
   
if mods["angelssmelting"] then

	local CrushedOres = {'iron','copper'}
	
	if mods["bobores"] and not mods["pyrawores"] then
	
		table.insert(CrushedOres,'bauxite')
		table.insert(CrushedOres,'gold')
		table.insert(CrushedOres,'lead')
		--table.insert(CrushedOres,'quartz')
		table.insert(CrushedOres,'nickel')
		table.insert(CrushedOres,'rutile')
		table.insert(CrushedOres,'silver')
		table.insert(CrushedOres,'tin')
		table.insert(CrushedOres,'tungsten')
		table.insert(CrushedOres,'zinc')

	end
	
	for i, Ore in ipairs(CrushedOres) do
	
	local ore
	
		if Ore == "bauxite" then
		
			ore = Ore
			Ore = "aluminium"
		
		elseif Ore == "rutile" then
		
			ore = Ore
			Ore = "titanium"
		
		else 
		
			ore = Ore
			
		end
	
	data:extend(
		{
			{
				type = "recipe",
				name = tostring(Ore) .. "-Processed-to-Crushed",
				category = "crusher",
				subgroup = "angels-" .. tostring(Ore),
				energy_required = 2,
				enabled = "true",
				ingredients ={{"processed-" .. tostring(Ore), 2}},
				results=
				{
				  {type="item", name="crushed-" .. tostring(ore), amount=6}
				},
				icon = "__pycoalprocessing__/graphics/icons/crush-" .. tostring(ore) .. ".png",
				icon_size = 32,
				order = "ab",
			},
			{
				type = "recipe",
				name = tostring(Ore) .. "-Crushed-to-Pellet",
				category = "pellet-pressing",
				subgroup = "angels-" .. tostring(Ore),
				energy_required = 2,
				enabled = "true",
				ingredients ={{"crushed-" .. tostring(ore), 5}},
				results=
				{
				  {type="item", name="pellet-" .. tostring(Ore), amount=4}
				},
				icon = "__pycoalprocessing__/graphics/icons/crush-" .. tostring(ore) .. ".png",
				icon_size = 32,
				order = "ac",
			}
		}
	)
	
	end

end
   

data:extend(
    {
	{
	type = "recipe",
    name = "sand from stone",
	category = "ore-sorting-t1",
	subgroup = "processing-crafting",
	subgroup = "ore-processing-a",
    energy_required = 4,
	enabled = "true",
    ingredients ={{"stone-crushed", 2}},
    results=
    {
      {type="item", name="sand", amount=2}
    },
	icon = "__PyCoalTBaA__/graphics/icons/sand.png",
	icon_size = 32,
	order = "a[angelsore1-crushed-hand]",
    },
	
	{
    type = "recipe",
    name = "angelsore6-crushed-hand",
	category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 4,
	enabled = "true",
    ingredients ={{"angels-ore6", 2}},
    results=
    {
      {type="item", name="angels-ore6-crushed", amount=2},
      {type="item", name="stone-crushed", amount=1}
    },
	icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed.png",
	icon_size = 32,
    order = "a[angelsore1-crushed-hand]",
	},
	{
    type = "recipe",
    name = "water-mineralized-2000",
    category = "washer",
    enabled = "false",
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "coarse", amount = 50},
        {type = "fluid", name = "water", amount = 300}
    },
    results = {
        {type = "item", name = "stone", amount = 4},
        {type = "fluid", name = "water-mineralized", amount = 250}
    },
    main_product = "water-mineralized",
    icon = "__pycoalprocessing__/graphics/icons/coarse-washer.png",
    icon_size = 32,
    subgroup = "py-washer",
    order = "b"
}

}
)

end