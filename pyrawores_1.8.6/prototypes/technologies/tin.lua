TECHNOLOGY {
    type = "technology",
    name = "tin-mk01",
    icon = "__pyrawores__/graphics/technology/tin-1.png",
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
    name = 'tin-mk02',
    icon = '__pyrawores__/graphics/technology/tin-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','tin-mk01'},
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
    name = 'tin-mk03',
    icon = '__pyrawores__/graphics/technology/tin-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','tin-mk02'},
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
    name = 'tin-mk04',
    icon = '__pyrawores__/graphics/technology/tin-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','tin-mk03'},
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
