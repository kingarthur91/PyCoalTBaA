
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'tin-pulp-02',
        category = 'flotation',
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = 'fluid', name = 'oleochemicals', amount = 50},
            {type = 'fluid', name = 'kerosene', amount = 100},
            {type = 'item', name = 'ore-tin-trace', amount = 4}
        },
        results = {
            {type = 'fluid', name = 'sulfuric-acid', amount = 200},
            {type = 'fluid', name = 'tin-pulp-02', amount = 250}
        },
        main_product = 'tin-pulp-02',
        subgroup = 'py-rawores-fluids',
        order = 'q-2'
    }:add_unlock('tin-mk04'):add_ingredient({type = 'fluid', name = 'pressured-air', amount = 250})
else
    RECIPE {
        type = 'recipe',
        name = 'tin-pulp-02',
        category = 'flotation',
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = 'fluid', name = 'oleochemicals', amount = 50},
            {type = 'fluid', name = 'kerosene', amount = 100},
            {type = 'item', name = 'high-tin-concentrate', amount = 8}
        },
        results = {
            {type = 'fluid', name = 'sulfuric-acid', amount = 200},
            {type = 'fluid', name = 'tin-pulp-02', amount = 250}
        },
        main_product = 'tin-pulp-02',
        subgroup = 'py-rawores-tin',
        order = 'q-2'
    }:add_unlock('tin-mk04'):add_ingredient({type = 'fluid', name = 'pressured-air', amount = 250})
end

FLUID {
    type = 'fluid',
    name = 'tin-pulp-02',
    icon = '__pyrawores__/graphics/icons/tin-pulp-02.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.258, g = 0.180, b = 0.807},
    flow_color = {r = 0.258, g = 0.180, b = 0.807},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-rawores-tin',
    order = 'c'
}
