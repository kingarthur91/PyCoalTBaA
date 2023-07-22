--Poor
RECIPE {
    type = "recipe",
    name = "alien-from-poor",
    category = "genlab",
    energy_required = 15,
    ingredients = {
      	{ "alien-sample01", 1 },
    },
    results = {
        {type = 'item', name = 'alien-artifact', amount = 50},
    },
}:add_unlock('alien-research')

--Good
RECIPE {
    type = "recipe",
    name = "alien-from-good",
    category = "genlab",
    energy_required = 20,
    ingredients = {
        { "alien-sample-02", 1 },
    },
    results = {
        {type = 'item', name = 'alien-artifact', amount = 75},
    },
}:add_unlock('alien-research')

--Great
RECIPE {
    type = "recipe",
    name = "alien-from-great",
    category = "genlab",
    energy_required = 25,
    ingredients = {
        { "alien-sample-03", 1 },
    },
    results = {
        {type = 'item', name = 'alien-artifact', amount = 100},
    },
}:add_unlock('alien-research')