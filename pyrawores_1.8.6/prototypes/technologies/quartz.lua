TECHNOLOGY {
    type = "technology",
    name = "quartz-mk01",
    icon = "__pyrawores__/graphics/technology/quartz-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"machines-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'quartz-mk02',
    icon = '__pyrawores__/graphics/technology/quartz-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','quartz-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'quartz-mk03',
    icon = '__pyrawores__/graphics/technology/quartz-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','quartz-mk02'},
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