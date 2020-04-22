TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk01',
    icon = '__pyrawores__/graphics/technology/nexelit-1.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk02',
    icon = '__pyrawores__/graphics/technology/nexelit-2.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk02','nexelit-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk03',
    icon = '__pyrawores__/graphics/technology/nexelit-3.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'machines-mk03','nexelit-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'nexelit-mk04',
    icon = '__pyrawores__/graphics/technology/nexelit-4.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nexelit-mk03','machines-mk04'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 60
    }
}

