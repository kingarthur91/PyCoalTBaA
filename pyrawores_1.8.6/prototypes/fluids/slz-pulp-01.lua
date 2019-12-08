
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'slz-pulp-01',
        category = 'hydroclassifier',
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = 'item', name = 'ore-lead-low', amount = 4},
            {type = 'fluid', name = 'water', amount = 25} --pyht cyanic acid
        },
        results = {
            {type = 'fluid', name = 'slz-pulp-01', amount = 100},
            {type = 'item', name = 'lead-refined-dust', amount = 1}
        },
        main_product = 'slz-pulp-01',
        icon = '__pyrawores__/graphics/icons/slz-pulp-01.png',
        icon_size = 32,
        subgroup = 'py-rawores-fluids',
        order = 'q-1'
    }:add_unlock('lead-mk03'):replace_ingredient('water', 'cyanic-acid')
else
    RECIPE {
        type = 'recipe',
        name = 'slz-pulp-01',
        category = 'hydroclassifier',
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = 'item', name = 'lead-dust', amount = 2},
            {type = 'fluid', name = 'water', amount = 25} --pyht cyanic acid
        },
        results = {
            {type = 'fluid', name = 'slz-pulp-01', amount = 100},
            {type = 'item', name = 'lead-refined-dust', amount = 1}
        },
        main_product = 'slz-pulp-01',
        icon = '__pyrawores__/graphics/icons/slz-pulp-01.png',
        icon_size = 32,
        subgroup = 'py-rawores-lead',
        order = 'q-1'
    }:add_unlock('lead-mk03'):replace_ingredient('water', 'cyanic-acid')
end

FLUID {
    type = 'fluid',
    name = 'slz-pulp-01',
    icon = '__pyrawores__/graphics/icons/slz-pulp-01.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.4, g = 0.4, b = 0.4},
    flow_color = {r = 0.4, g = 0.4, b = 0.4},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-rawores-lead',
    order = 'c'
}
