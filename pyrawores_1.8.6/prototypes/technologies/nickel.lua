TECHNOLOGY {
    type = "technology",
    name = "nickel-mk01",
    icon = "__pyrawores__/graphics/technology/nickel-1.png",
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
    name = 'nickel-mk02',
    icon = '__pyrawores__/graphics/technology/nickel-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','nickel-mk01'},
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
    name = 'nickel-mk03',
    icon = '__pyrawores__/graphics/technology/nickel-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','nickel-mk02'},
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
    name = 'nickel-mk04',
    icon = '__pyrawores__/graphics/technology/nickel-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','nickel-mk03'},
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
