
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'chromite-pulp-02',
        category = 'chemistry',
         --pyFE pan
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = 'item', name = 'ore-chromium-trace', amount = 2},
            {type = 'fluid', name = 'water', amount = 300}
        },
        results = {
            {type = 'fluid', name = 'chromite-pulp-02', amount = 100},
            {type = 'item', name = 'processed-chromite', amount = 1}
        },
        main_product = 'processed-chromite',
        subgroup = 'py-rawores-fluids',
        order = 'q-2'
    }:add_unlock('chromium-mk04'):change_category('pan')
else
    RECIPE {
        type = 'recipe',
        name = 'chromite-pulp-02',
        category = 'chemistry',
         --pyFE pan
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = 'item', name = 'high-chromite', amount = 1},
            {type = 'fluid', name = 'water', amount = 300}
        },
        results = {
            {type = 'fluid', name = 'chromite-pulp-02', amount = 100},
            {type = 'item', name = 'processed-chromite', amount = 1}
        },
        main_product = 'processed-chromite',
        subgroup = 'py-rawores-chromium',
        order = 'q-2'
    }:add_unlock('chromium-mk03'):change_category('pan')
end

FLUID {
    type = 'fluid',
    name = 'chromite-pulp-02',
    icon = '__pyrawores__/graphics/icons/chromite-pulp-02.png',
    icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.862, g = 0.294, b = 0.031},
    flow_color = {r = 0.862, g = 0.294, b = 0.031},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-rawores-chromium',
    order = 'c'
}
