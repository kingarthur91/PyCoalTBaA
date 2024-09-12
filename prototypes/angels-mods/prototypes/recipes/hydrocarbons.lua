RECIPE {
    type = "recipe",
    name = "crude-distilling",
    category = "distilator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'fluid', name = 'crude-oil', amount = 250},
    },
    results = {
        {type = 'fluid', name = 'heavy-crude-oil', amount = 150},
        {type = 'fluid', name = 'middle-oil', amount = 100},
    },
    main_product = 'heavy-crude-oil'
}:add_unlock('petroleum-gas-mk01')

RECIPE {
    type = "recipe",
    name = "middle-upgrading",
    category = "gas-refining",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'middle-oil', amount = 250},
        {type = 'fluid', name = 'gas-hydrogen', amount = 250},
    },
    results = {
        {type = 'fluid', name = 'naphtha', amount = 200},
        {type = 'fluid', name = 'fuel-oil', amount = 150},
        {type = 'fluid', name = 'gas-butane', amount = 100},
    },
    main_product = 'naphtha'
}:add_unlock('petroleum-gas-mk01')

RECIPE {
    type = "recipe",
    name = "heavy-upgrading",
    category = "gas-refining",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'heavy-crude-oil', amount = 250},
    },
    results = {
        {type = 'fluid', name = 'middle-oil', amount = 200},
        {type = 'fluid', name = 'flue-gas', amount = 150},
    },
    main_product = 'flue-gas'
}:add_unlock('oil-sands')

RECIPE {
    type = "recipe",
    name = "shale-upgrading",
    category = "cracker",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'fluid', name = 'scrude', amount = 250},
        {type = 'fluid', name = 'gas-propene', amount = 100},
        {type = 'fluid', name = 'steam', amount = 500},
    },
    results = {
        {type = 'fluid', name = 'bitumen', amount = 150},
        {type = 'fluid', name = 'middle-oil', amount = 100},
    },
    main_product = 'bitumen'
}:add_unlock('oil-sands')

RECIPE {
    type = "recipe",
    name = "bitumen-upgrading",
    category = "cracker",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'fluid', name = 'bitumen', amount = 250},
        {type = 'fluid', name = 'gas-hydrogen', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'heavy-crude-oil', amount = 250},
        {type = 'fluid', name = 'naphtha', amount = 50, catalyst_amount = 50},
    },
    main_product = 'heavy-crude-oil'
}:add_unlock('oil-sands')