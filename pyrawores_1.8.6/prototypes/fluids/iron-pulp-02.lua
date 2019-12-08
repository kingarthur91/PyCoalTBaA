
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'iron-pulp-02-from-sludge',
        category = 'chemistry', --pyfe pan
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'fluid', name = 'iron-slime-sludge', amount = 75},
            {type = 'fluid', name = 'petroleum-sulfonates', amount = 50},
            {type = 'fluid', name = 'oleochemicals', amount = 50}
        },
        results = {
            {type = 'fluid', name = 'iron-pulp-02', amount = 75}
        },
        main_product = 'iron-pulp-02',
        subgroup = 'py-rawores-recipes',
        order = 'q-2'
    }:add_unlock('iron-mk04'):change_category('pan')

    RECIPE {
        type = 'recipe',
        name = 'iron-pulp-02',
        category = 'chemistry', --pyfe pan
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'item', name = 'ore-iron-trace', amount = 20},
            {type = 'fluid', name = 'petroleum-sulfonates', amount = 50},
            {type = 'fluid', name = 'oleochemicals', amount = 50}
        },
        results = {
            {type = 'fluid', name = 'iron-pulp-02', amount = 200}
        },
        main_product = 'iron-pulp-02',
        subgroup = 'py-rawores-recipes',
        order = 'q-2'
    }:add_unlock('iron-mk04'):change_category('pan')
else
    RECIPE {
        type = 'recipe',
        name = 'iron-pulp-02',
        category = 'chemistry', --pyfe pan
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'item', name = 'unslimed-iron', amount = 7},
            {type = 'fluid', name = 'petroleum-sulfonates', amount = 50},
            {type = 'fluid', name = 'oleochemicals', amount = 50}
        },
        results = {
            {type = 'fluid', name = 'iron-pulp-02', amount = 350}
        },
        main_product = 'iron-pulp-02',
        subgroup = 'py-rawores-iron',
        order = 'q-2'
    }:add_unlock('iron-mk03'):change_category('pan')
end

FLUID {
    type = 'fluid',
    name = 'iron-pulp-02',
    icon = '__pyrawores__/graphics/icons/iron-pulp-02.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.086, g = 0.180, b = 0.254},
    flow_color = {r = 0.086, g = 0.180, b = 0.254},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-rawores-iron',
    order = 'c'
}
