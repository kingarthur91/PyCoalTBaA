TECHNOLOGY {
    type = "technology",
    name = "uranium-mk01",
    icon = "__pyrawores__/graphics/technology/uranium-1.png",
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
    name = 'uranium-mk02',
    icon = '__pyrawores__/graphics/technology/uranium-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','uranium-mk01'},
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
    name = 'uranium-mk03',
    icon = '__pyrawores__/graphics/technology/uranium-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','uranium-mk02'},
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
    name = 'uranium-mk04',
    icon = '__pyrawores__/graphics/technology/uranium-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk04','uranium-mk03'},
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
