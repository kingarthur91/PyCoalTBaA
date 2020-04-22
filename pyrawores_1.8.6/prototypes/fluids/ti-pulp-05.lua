
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'ti-pulp-05',
        category = 'chemistry', --pyfe hydrocyclone
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'item', name = 'ti-residue', amount = 1},
            {type = 'item', name = 'ore-titanium-trace', amount = 3},
            {type = 'fluid', name = 'water', amount = 1000}
        },
        results = {
            {type = 'item', name = 'grade-4-ti', amount = 1, probability = 0.3},
            {type = 'fluid', name = 'ti-pulp-05', amount = 500}
        },
        main_product = 'ti-pulp-05',
        subgroup = 'py-rawores-recipes',
        order = 'q-2'
    }:add_unlock('titanium-mk04'):change_category('hydrocyclone')
else
    RECIPE {
        type = 'recipe',
        name = 'ti-pulp-05',
        category = 'chemistry', --pyfe hydrocyclone
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'item', name = 'ti-residue', amount = 3},
            {type = 'fluid', name = 'water', amount = 1000}
        },
        results = {
            {type = 'item', name = 'grade-4-ti', amount = 1, probability = 0.3},
            {type = 'fluid', name = 'ti-pulp-05', amount = 500}
        },
        main_product = 'ti-pulp-05',
        subgroup = 'py-rawores-titanium',
        order = 'q-2'
    }:add_unlock('titanium-mk03'):change_category('hydrocyclone')
end

FLUID {
    type = 'fluid',
    name = 'ti-pulp-05',
    icon = '__pyrawores__/graphics/icons/ti-pulp-05.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.713, g = 0.643, b = 0.733},
    flow_color = {r = 0.713, g = 0.643, b = 0.733},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-rawores-titanium',
    order = 'c'
}
