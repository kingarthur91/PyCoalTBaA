if not settings.startup["uberhaul"].value then

if mods["pyhightech"] then

ITEM {
    type = "item",
    name = "cm-electronic-circuit",
    icon = "__pyhightech__/graphics/icons/circuit-board-1.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-hightech-items",
    order = "h",
    stack_size = 100
}
ITEM {
    type = "item",
    name = "cm-advanced-circuit",
    icon = "__pyhightech__/graphics/icons/circuit-board-2.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-hightech-items",
    order = "h",
    stack_size = 100
}
ITEM {
    type = "item",
    name = "cm-processing-unit",
    icon = "__pyhightech__/graphics/icons/circuit-board-3.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-hightech-items",
    order = "h",
    stack_size = 200
}
ITEM {
    type = "item",
    name = "valvea",
    icon = "__pyhightech__/graphics/icons/valve.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-hightech-items",
    order = "f",
    stack_size = 100
}

end

if mods["bobores"] and not mods["pyrawores"] then

-- CRUSHED BAUXITE
ITEM {
    type = "item",
    name = "crushed-bauxite",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-bauxite.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED GOLD
ITEM {
    type = "item",
    name = "crushed-gold",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-gold.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED LEAD
ITEM {
    type = "item",
    name = "crushed-lead",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-lead.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED NICKEL
ITEM {
    type = "item",
    name = "crushed-nickel",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-nickel.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED RUTILE
ITEM {
    type = "item",
    name = "crushed-rutile",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-rutile.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED SILVER
ITEM {
    type = "item",
    name = "crushed-silver",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-silver.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED QUARTZ
ITEM {
    type = "item",
    name = "crushed-quartz",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-quartz.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED TIN
ITEM {
    type = "item",
    name = "crushed-tin",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-tin.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED TUNGSTEN
ITEM {
    type = "item",
    name = "crushed-tungsten",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-tungsten.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

-- CRUSHED ZINC
ITEM {
    type = "item",
    name = "crushed-zinc",
    icon = "__pycoalprocessing__/graphics/icons/crusher/crushed-zinc.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-items",
    order = "g",
    stack_size = 1000
}

end

end