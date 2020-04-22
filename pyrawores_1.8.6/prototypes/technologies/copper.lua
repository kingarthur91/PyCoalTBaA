TECHNOLOGY {
    type = "technology",
    name = "copper-mk01",
    icon = "__pyrawores__/graphics/technology/copper-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {'machines-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'copper-mk02',
    icon = '__pyrawores__/graphics/technology/copper-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','copper-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'copper-mk03',
    icon = '__pyrawores__/graphics/technology/copper-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','copper-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'copper-mk04',
    icon = '__pyrawores__/graphics/technology/copper-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','copper-mk03'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'utility-science-pack', 1}
        },
        time = 60
    }
}
