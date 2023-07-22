RECIPE {
    type = "recipe",
    name = "charcoal-from-pellets",
    category = "electronics",
    energy_required = 1,
    ingredients = {
      	{ "wood-pellets", 2 },
    },
    results = {
        {type = 'item', name = 'charcoal-briquette', amount = 3},
    },
}:add_unlock('energy-3')