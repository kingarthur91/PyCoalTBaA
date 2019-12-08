
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'zinc-overflow',
        category = 'chemistry', --pyfe jig
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'item', name = 'ore-zinc-low', amount = 5},
            {type = 'fluid', name = 'water', amount = 100},
            {type = 'fluid', name = 'kerosene', amount = 50}
        },
        results = {
            {type = 'fluid', name = 'zinc-overflow', amount = 50},
            {type = 'fluid', name = 'dirty-water', amount = 50}
        },
        main_product = 'zinc-overflow',
        icon = '__pyrawores__/graphics/icons/zinc-overflow.png',
        icon_size = 32,
        subgroup = 'py-rawores-fluids',
        order = 'q-2'
    }:add_unlock('zinc-mk03'):change_category('jig')
else
    RECIPE {
        type = 'recipe',
        name = 'zinc-overflow',
        category = 'chemistry', --pyfe jig
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'item', name = 'powdered-zinc', amount = 5},
            {type = 'fluid', name = 'water', amount = 100},
            {type = 'fluid', name = 'kerosene', amount = 50}
        },
        results = {
            {type = 'fluid', name = 'zinc-overflow', amount = 50},
            {type = 'fluid', name = 'dirty-water', amount = 50}
        },
        main_product = 'zinc-overflow',
        icon = '__pyrawores__/graphics/icons/zinc-overflow.png',
        icon_size = 32,
        subgroup = 'py-rawores-zinc',
        order = 'q-2'
    }:add_unlock('zinc-mk03'):change_category('jig')
end

FLUID {
    type = 'fluid',
    name = 'zinc-overflow',
    icon = '__pyrawores__/graphics/icons/zinc-overflow.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.6, g = 0.901, b = 0.847},
    flow_color = {r = 0.6, g = 0.901, b = 0.847},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-rawores-zinc',
    order = 'c'
}
