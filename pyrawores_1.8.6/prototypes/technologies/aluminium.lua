TECHNOLOGY {
    type = "technology",
    name = "aluminium-mk01",
    icon = "__pyrawores__/graphics/technology/aluminium-1.png",
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
    name = 'aluminium-mk02',
    icon = '__pyrawores__/graphics/technology/aluminium-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','aluminium-mk01','coal-processing-2'},
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
    name = 'aluminium-mk03',
    icon = '__pyrawores__/graphics/technology/aluminium-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','aluminium-mk02'},
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
    name = 'aluminium-mk04',
    icon = '__pyrawores__/graphics/technology/aluminium-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','aluminium-mk03'},
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
