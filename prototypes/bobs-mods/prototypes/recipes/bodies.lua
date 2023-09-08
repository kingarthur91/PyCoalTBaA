RECIPE {
    type = 'recipe',
    name = 'player-head-2-immunosupressants',
    category = 'bio-printer',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'fluid', name = 'psc', amount = 100},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'item', name = 'player-brain-2', amount = 1},
        {type = 'item', name = 'bio-scafold', amount = 2},
        {type = 'item', name = 'immunosupressants', amount = 1},
    },
    results = {
        {type = 'item', name = 'player-head-2', amount = 2},
    },
}:add_unlock("bodies-2")
