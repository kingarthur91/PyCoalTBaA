--Poor
RECIPE {
    type = "recipe",
    name = "alien-from-poor",
    category = "genlab",
    energy_required = 15,
    ingredients = {
      	{type = 'item', name = 'alien-sample01', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'blood', amount = 100},
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
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
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
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'fluid', name = 'fatty-acids', amount = 100},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
    },
    results = {
        {type = 'item', name = 'alien-artifact', amount = 100},
    },
}:add_unlock('alien-research')

--Perfect
RECIPE {
    type = "recipe",
    name = "alien-from-perfect",
    category = "genlab",
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'perfect-samples', amount = 1},
        {type = 'item', name = 'super-alloy', amount = 10},
        {type = 'fluid', name = 'psc', amount = 100},
    },
    results = {
        {type = 'item', name = 'alien-artifact', amount = 500},
    },
}:add_unlock('alien-research')