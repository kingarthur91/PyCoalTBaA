TECHNOLOGY {
    type = "technology",
    name = "iron-mk01",
    icon = "__pyrawores__/graphics/technology/iron-1.png",
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
    name = 'iron-mk02',
    icon = '__pyrawores__/graphics/technology/iron-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','iron-mk01'},
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
    name = 'iron-mk03',
    icon = '__pyrawores__/graphics/technology/iron-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','iron-mk02'},
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
    name = 'iron-mk04',
    icon = '__pyrawores__/graphics/technology/iron-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','iron-mk03'},
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
