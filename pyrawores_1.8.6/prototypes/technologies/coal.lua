TECHNOLOGY {
    type = "technology",
    name = "coal-mk01",
    icon = "__pyrawores__/graphics/technology/coal-1.png",
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
    name = 'coal-mk02',
    icon = '__pyrawores__/graphics/technology/coal-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','coal-mk01','coal-processing-2'},
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
    name = 'coal-mk03',
    icon = '__pyrawores__/graphics/technology/coal-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','coal-mk02'},
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
    name = 'coal-mk04',
    icon = '__pyrawores__/graphics/technology/coal-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','coal-mk03'},
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
