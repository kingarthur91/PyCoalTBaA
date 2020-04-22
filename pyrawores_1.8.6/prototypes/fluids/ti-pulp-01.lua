
if settings.startup['processing-mod'].value then
    RECIPE {
        type = 'recipe',
        name = 'ti-pulp-01',
        category = 'hydroclassifier',
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'fluid', name = 'water', amount = 100},
            {type = 'item', name = 'ore-titanium-low', amount = 4},
            {type = 'item', name = 'sodium-carbonate', amount = 2} --pyfe sodium chlorate
        },
        results = {
            {type = 'fluid', name = 'ti-pulp-01', amount = 300}
        },
        main_product = 'ti-pulp-01',
        subgroup = 'py-rawores-fluids',
        order = 'q-2'
    }:add_unlock('titanium-mk03'):replace_ingredient('sodium-carbonate', 'sodium-chlorate')
else
    RECIPE {
        type = 'recipe',
        name = 'ti-pulp-01',
        category = 'hydroclassifier',
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = 'fluid', name = 'water', amount = 100},
            {type = 'item', name = 'ti-enriched-dust', amount = 6},
            {type = 'item', name = 'sodium-carbonate', amount = 2} --pyfe sodium chlorate
        },
        results = {
            {type = 'fluid', name = 'ti-pulp-01', amount = 300}
        },
        main_product = 'ti-pulp-01',
        subgroup = 'py-rawores-titanium',
        order = 'q-2'
    }:add_unlock('titanium-mk03'):replace_ingredient('sodium-carbonate', 'sodium-chlorate')
end

FLUID {
    type = 'fluid',
    name = 'ti-pulp-01',
    icon = '__pyrawores__/graphics/icons/ti-pulp-01.png',
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
