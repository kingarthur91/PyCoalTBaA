TECHNOLOGY {
    type = "technology",
    name = "zinc-mk01",
    icon = "__pyrawores__/graphics/technology/zinc-1.png",
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
    name = 'zinc-mk02',
    icon = '__pyrawores__/graphics/technology/zinc-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','zinc-mk01'},
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
    name = 'zinc-mk03',
    icon = '__pyrawores__/graphics/technology/zinc-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','zinc-mk02'},
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
    name = 'zinc-mk04',
    icon = '__pyrawores__/graphics/technology/zinc-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','zinc-mk03'},
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
