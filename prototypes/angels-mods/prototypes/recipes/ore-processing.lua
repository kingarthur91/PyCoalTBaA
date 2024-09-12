if angelsmods.trigger.smelting_products["iron"].ingot then
    RECIPE {
        type = "recipe",
        name = "unslimed-iron-smelting",
        category = "chemical-smelting",
        subgroup = "angels-iron",
        energy_required = 4,
        ingredients = {
      	    {type = 'item', name = 'unslimed-iron', amount = 6},
        },
        results = {
            {type = 'item', name = 'ingot-iron', amount = 12},
        },
    }:add_unlock('iron-mk02')

    RECIPE {
        type = "recipe",
        name = "high-iron-smelting",
        category = "chemical-smelting",
        subgroup = "angels-iron",
        energy_required = 4,
        ingredients = {
          	{type = 'item', name = 'high-grade-iron', amount = 6},
        },
        results = {
            {type = 'item', name = 'ingot-iron', amount = 12},
        },
    }:add_unlock('iron-mk03')

    RECIPE {
        type = "recipe",
        name = "reduced-iron-smelting",
        category = "chemical-smelting",
        subgroup = "angels-iron",
        energy_required = 4,
        ingredients = {
      	    {type = 'item', name = 'reduced-iron', amount = 3},
        },
        results = {
            {type = 'item', name = 'ingot-iron', amount = 12},
        },
    }:add_unlock('iron-mk04')

    RECIPE {
        type = "recipe",
        name = "sintered-iron-smelting",
        category = "chemical-smelting",
        subgroup = "angels-iron",
        energy_required = 4,
        ingredients = {
      	    {type = 'item', name = 'sintered-iron', amount = 1},
        },
        results = {
            {type = 'item', name = 'ingot-iron', amount = 12},
        },
    }:add_unlock('iron-mk05')
end

if angelsmods.trigger.smelting_products["copper"].ingot then
    if angelsmods.trigger.smelting_products["copper"].plate or
    angelsmods.trigger.smelting_products["copper"].wire then
        RECIPE {
            type = "recipe",
            name = "copper-4-smelting",
            category = "chemical-smelting",
            subgroup = "angels-copper",
            energy_required = 4,
            ingredients = {
                {type = 'item', name = 'grade-4-copper', amount = 12},
            },
            results = {
                {type = 'item', name = 'ingot-copper', amount = 12},
            },
        }:add_unlock('copper-mk02')

        RECIPE {
            type = "recipe",
            name = "high-copper-smelting",
            category = "chemical-smelting",
            subgroup = "angels-copper",
            energy_required = 4,
            ingredients = {
                {type = 'item', name = 'high-grade-copper', amount = 6},
            },
            results = {
                {type = 'item', name = 'ingot-copper', amount = 12},
            },
        }:add_unlock('copper-mk03')

        RECIPE {
            type = "recipe",
            name = "reduced-copper-smelting",
            category = "chemical-smelting",
            subgroup = "angels-copper",
            energy_required = 4,
            ingredients = {
                {type = 'item', name = 'reduced-copper', amount = 3},
            },
            results = {
                {type = 'item', name = 'ingot-copper', amount = 12},
            },
        }:add_unlock('copper-mk04')

        RECIPE {
            type = "recipe",
            name = "sintered-copper-smelting",
            category = "chemical-smelting",
            subgroup = "angels-copper",
            energy_required = 4,
            ingredients = {
                {type = 'item', name = 'sintered-copper', amount = 1},
            },
            results = {
                {type = 'item', name = 'ingot-copper', amount = 12},
            },
        }:add_unlock('copper-mk05')
    end
end