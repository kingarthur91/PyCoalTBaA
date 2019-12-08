
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'nexelit-pulp-01',
        category = 'chemistry', --pyfe pan
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = 'item', name = 'ore-nexelit-low', amount = 3},
            {type = 'fluid', name = 'glycerol', amount = 25},
            {type = 'fluid', name = 'syngas', amount = 75}
            --pyfe sodium chlorate
        },
        results = {
            {type = 'fluid', name = 'nexelit-pulp-01', amount = 10}
        },
        main_product = 'nexelit-pulp-01',
        subgroup = 'py-rawores-recipes',
        order = 'q-2'
    }:add_unlock('nexelit-mk03'):change_category('pan'):add_ingredient({type = 'item', name = 'sodium-chlorate', amount = 2})
else
    RECIPE {
        type = 'recipe',
        name = 'nexelit-pulp-01',
        category = 'chemistry', --pyfe pan
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = 'item', name = 'fine-nexelit-powder', amount = 1},
            {type = 'fluid', name = 'glycerol', amount = 25},
            {type = 'fluid', name = 'syngas', amount = 75}
            --pyfe sodium chlorate
        },
        results = {
            {type = 'fluid', name = 'nexelit-pulp-01', amount = 10}
        },
        main_product = 'nexelit-pulp-01',
        subgroup = 'py-rawores-nexelit',
        order = 'q-2'
    }:add_unlock('nexelit-mk03'):change_category('pan'):add_ingredient({type = 'item', name = 'sodium-chlorate', amount = 2})
end

FLUID {
    type = 'fluid',
    name = 'nexelit-pulp-01',
    icon = '__pyrawores__/graphics/icons/nexelit-pulp-01.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0, g = 0.545, b = 0.733},
    flow_color = {r = 0, g = 0.545, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-rawores-nexelit',
    order = 'c'
}
