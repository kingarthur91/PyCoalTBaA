local fun = require("functions/functions")

RECIPE {
    type = "recipe",
    name = "latex0",
    category = "pulp-basic",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'latex-slab', amount = 2},
    },
    results = {
        {type = 'item', name = 'latex', amount = 1}
    },
}:change_category('pulp')

RECIPE {
    type = 'recipe',
    name = 'omni-science-pack',
    category = 'crafting',
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'omniplate', amount = 2},
        {type = 'item', name = 'moss', amount = 3},
        {type = 'item', name = 'iron-ore', amount = 2},
        {type = 'item', name = 'copper-ore', amount = 2},
        {type = 'item', name = 'omnite-brick', amount = 1}
    },
    results = {
        {type = 'item', name = 'omni-science-pack', amount = 4},
    },
}