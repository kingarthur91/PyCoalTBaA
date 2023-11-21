-- DATA UPDATES STAGE OVERRIDES
local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if mods['angelsrefining'] then
    OV = angelsmods.functions.OV
    -- replace miner fluid
    if data.raw.fluid['gas-synthesis'] ~= nil then
        if data.raw.resource['borax'] ~= nil then
            data.raw.resource['borax'].minable.required_fluid = 'gas-synthesis'
        end
        if data.raw.resource['phosphate-rock'] ~= nil then
            data.raw.resource['phosphate-rock'].minable.required_fluid = 'gas-synthesis'
        end
        if data.raw.resource['ore-nickel'] ~= nil then
            data.raw.resource['ore-nickel'].minable.required_fluid = 'gas-synthesis'
        end
    end
    --merge angel's washers to py's
    table.insert(data.raw['assembling-machine']['washing-plant'].crafting_categories, 'washer')
    data.raw.recipe['washing-washer'] = nil
    fun.remove_recipe_unlock('washer')
    --merge angels filters to py
    table.insert(data.raw['assembling-machine']['carbon-filter'].crafting_categories, 'filtering')
    data.raw.recipe['filtration-unit'] = nil
    fun.remove_recipe_unlock('filtration-unit')
    if mods['pyalienlife'] then TECHNOLOGY('soil-washing'):add_prereq('water-washing-1') end
    if mods['pyrawores'] then
        --mk02
        table.insert(data.raw['assembling-machine']['carbon-filter-mk02'].crafting_categories, 'filtering')
        table.insert(data.raw['assembling-machine']['carbon-filter-mk02'].crafting_categories, 'filtering-2')
        data.raw.recipe['filtration-unit-2'] = nil
        fun.remove_recipe_unlock('filtration-unit-2')
        --mk03
        table.insert(data.raw['assembling-machine']['carbon-filter-mk03'].crafting_categories, 'filtering')
        table.insert(data.raw['assembling-machine']['carbon-filter-mk03'].crafting_categories, 'filtering-2')
        table.insert(data.raw['assembling-machine']['carbon-filter-mk03'].crafting_categories, 'filtering-3')
        data.raw.recipe['filtration-unit-3'] = nil
        fun.remove_recipe_unlock('filtration-unit-3')
        --mk04
        table.insert(data.raw['assembling-machine']['carbon-filter-mk04'].crafting_categories, 'filtering')
        table.insert(data.raw['assembling-machine']['carbon-filter-mk04'].crafting_categories, 'filtering-2')
        table.insert(data.raw['assembling-machine']['carbon-filter-mk04'].crafting_categories, 'filtering-3')
        --merge angel's washers to py's
        --mk02
        table.insert(data.raw['assembling-machine']['washing-plant-2'].crafting_categories, 'washer')
        data.raw.recipe['washer-mk02'] = nil
        fun.remove_recipe_unlock('washer-mk02')
        if mods['ExtendedAngels'] then
            --mk03
            table.insert(data.raw['assembling-machine']['washing-plant-3'].crafting_categories, 'washer')
            data.raw.recipe['washer-mk03'] = nil
            fun.remove_recipe_unlock('washer-mk03')
            --mk04
            table.insert(data.raw['assembling-machine']['washing-plant-4'].crafting_categories, 'washer')
            data.raw.recipe['washer-mk04'] = nil
            fun.remove_recipe_unlock('washer-mk04')
        end
        -- merge angels flotation cell into pys cell
        -- mk01
        table.insert(data.raw['assembling-machine']['flotation-cell-mk01'].crafting_categories, 'ore-refining-t2')
        data.raw.recipe['ore-floatation-cell'] = nil
        fun.remove_recipe_unlock('ore-floatation-cell')
        -- mk02
        table.insert(data.raw['assembling-machine']['flotation-cell-mk02'].crafting_categories, 'ore-refining-t2')
        data.raw.recipe['ore-floatation-cell-2'] = nil
        fun.remove_recipe_unlock('ore-floatation-cell-2')
        -- mk03
        table.insert(data.raw['assembling-machine']['flotation-cell-mk03'].crafting_categories, 'ore-refining-t2')
        data.raw.recipe['ore-floatation-cell-3'] = nil
        fun.remove_recipe_unlock('ore-floatation-cell-3')
        -- add category to py mk04
        table.insert(data.raw['assembling-machine']['flotation-cell-mk04'].crafting_categories, 'ore-refining-t2')
        -- merge angels leaching stations into pys stati9ons
        -- mk01
        table.insert(data.raw['assembling-machine']['leaching-station-mk01'].crafting_categories, 'ore-refining-t3')
        data.raw.recipe['ore-leaching-plant'] = nil
        fun.remove_recipe_unlock('ore-leaching-plant')
        -- mk02
        table.insert(data.raw['assembling-machine']['leaching-station-mk02'].crafting_categories, 'ore-refining-t3')
        data.raw.recipe['ore-leaching-plant-2'] = nil
        fun.remove_recipe_unlock('ore-leaching-plant-2')
        -- mk03
        table.insert(data.raw['assembling-machine']['leaching-station-mk03'].crafting_categories, 'ore-refining-t3')
        data.raw.recipe['ore-leaching-plant-3'] = nil
        fun.remove_recipe_unlock('ore-leaching-plant-3')
        -- add category to py mk04
        table.insert(data.raw['assembling-machine']['leaching-station-mk04'].crafting_categories, 'ore-refining-t3')
    end
    -- change barreling machine
    if mods['pyindustry'] then
        data.raw.recipe['barreling-pump'] = nil
        fun.remove_recipe_unlock('barreling-pump')
    end
    if mods['pyalienlife'] then
        RECIPE('empty-planter-box'):remove_ingredient('stone-brick'):add_ingredient({type = "item", name = "stone-brick", amount = 2})
    end
    if mods['pyrawores'] then
        if mods['SeaBlock'] then goto skipseablock end
        if angelsmods.trigger.ores["lead"] then
            data.raw.resource['ore-lead'] = nil
            data.raw['autoplace-control']['ore-lead'] = nil
            data.raw.resource['angels-ore5'].category = 'basic-with-fluid'
            data.raw.resource['angels-ore5'].minable.fluid_amount = 100
            data.raw.resource['angels-ore5'].minable.required_fluid = 'acetylene'
            fun.tech_add_prerequisites('solder-mk01', 'ore-crushing')
        end
        if angelsmods.trigger.ores["nickel"] then
            data.raw.resource['ore-nickel'] = nil
            data.raw['autoplace-control']['ore-nickel'] = nil
            fun.tech_add_prerequisites('nickel-mk01', 'ore-crushing')
        end
        if angelsmods.trigger.ores["tin"] then
            data.raw.resource['ore-tin'] = nil
            data.raw['autoplace-control']['ore-tin'] = nil
            data.raw.recipe['tin-plate-1'].hidden = true
            data.raw.resource['angels-ore6'].category = 'basic-with-fluid'
            data.raw.resource['angels-ore6'].minable.fluid_amount = 100
            data.raw.resource['angels-ore6'].minable.required_fluid = 'steam'
            fun.tech_remove_recipe('mining-with-fluid', 'tin-plate-1')
            fun.tech_add_prerequisites('solder-mk01', 'ore-crushing')
        end
        if angelsmods.trigger.ores["zinc"] then
            data.raw.resource['ore-zinc'] = nil
            data.raw['autoplace-control']['ore-zinc'] = nil
            fun.tech_add_prerequisites('solder-mk01', 'ore-crushing')
        end
        ::skipseablock::
    end
    if mods['pyhardmode'] then
        data.raw.recipe['stone-crushed'].normal.enabled = false
        data.raw.recipe['stone-crushed'].normal.hidden = true
        data.raw.recipe['stone-crushed'].expensive.enabled = false
        data.raw.recipe['stone-crushed'].expensive.hidden = true

        RECIPE('hpf-stone-from-crush'):add_ingredient({type = "fluid", name = "carbolic-oil", amount = 10})

        data.raw.resource['angels-ore3'].minable.fluid_amount = 200
        data.raw.resource['angels-ore3'].minable.required_fluid = 'water'
    end
    if mods['pyblock'] then
        RECIPE('fawogae-to-iron'):set_fields{ results = {{type = "item", name = "angels-ore1", amount = 5}} }
    end
end

if mods['angelspetrochem'] then
    if mods['pyindustry'] then
        for name, recipe in pairs(data.raw.recipe) do
            if recipe.category == 'angels-chemical-void' then
                recipe.category = 'py-venting'
            end
        end
    end
    if mods['pypetroleumhandling'] then
        data.raw.recipe['rocket-fuel'].ingredients = {}
        --RECIPE('rocket-fuel'):remove_ingredient('gas-oxygen'):remove_ingredient('kerosene')
        RECIPE('rocket-fuel'):add_ingredient({type = "item", name = "rocket-fuel-capsule", amount = 10}):add_ingredient({type = "item", name = "rocket-oxidizer-capsule", amount = 10})
        RECIPE('rocket-fuel-capsule'):add_ingredient({type = "fluid", name = "kerosene", amount = 50})
        RECIPE('rocket-oxidizer-capsule'):add_ingredient({type = "fluid", name = "gas-oxygen", amount = 75})
    end
    if mods['pyrawores'] then
        data.raw.recipe['air-separation'] = nil
        fun.remove_recipe_unlock('air-separation')
        data.raw['assembling-machine']['advanced-chemical-plant'].ingredient_count = 5
        data.raw['assembling-machine']['advanced-chemical-plant-2'].ingredient_count = 5
        --data.raw['assembling-machine']['advanced-chemical-plant-3'].ingredient_count = 5
        --data.raw['assembling-machine']['advanced-chemical-plant-3'].ingredient_count = 5
    end
    if mods['pyfusionenergy'] then
        fun.tech_remove_recipe('fluid-pressurization', 'pressured-air')
        RECIPE('angels-air-filter'):replace_ingredient('basic-circuit-board', 'small-parts-01')
        if mods['pyhightech'] then
            TECHNOLOGY('water-treatment'):remove_prereq('angels-fluid-control')
            TECHNOLOGY('vacuum-tube-electronics'):add_prereq('angels-nitrogen-processing-1')
            if not mods['SeaBlock'] then
                TECHNOLOGY('basic-chemistry'):add_prereq('vacuum-tube-electronics')
            end
        end
    end
    if mods['pyhardmode'] then
        --This code is by NotNotMelon
        for _, void_machine in pairs{'clarifier', 'angels-flare-stack'} do
            data.raw['assembling-machine'][void_machine] = data.raw.furnace[void_machine]
            data.raw['assembling-machine'][void_machine].type = 'assembling-machine'
            data.raw['assembling-machine'][void_machine].crafting_speed = 1
            data.raw['assembling-machine'][void_machine].energy_source = {
                type = 'electric',
                usage_priority = 'secondary-input',
                emissions_per_minute = 0,
            }
            data.raw['assembling-machine'][void_machine].energy_usage = '100kW'
            data.raw.furnace[void_machine] = nil
        end

        for name, recipe in pairs(data.raw.recipe) do
            if recipe.category == 'angels-water-void' then
                if recipe ~= data.raw.recipe['angels-water-void-water-saline'] then
                    if recipe ~= data.raw.recipe['angels-water-void-water-purified'] then
                        data.raw.recipe[name] = nil
                    end
                end
            end
        end
        fun.tech_remove_recipe('water-treatment', 'clarifier')
    
        RECIPE('clarifier'):add_unlock('water-treatment-2')

        RECIPE('angels-water-void-water-saline'):add_ingredient('filtration-media'):add_unlock('water-treatment-2')
        RECIPE('angels-water-void-water-purified'):add_ingredient('filtration-media'):add_unlock('water-treatment-2')

        TECHNOLOGY('water-treatment-2'):add_prereq('filtration')

        data.raw['assembling-machine']['clarifier'].crafting_speed = 5
    end
end

if mods['angelssmelting'] then
    TECHNOLOGY('angels-metallurgy-2'):add_prereq('logistic-science-pack')
    if mods['pyfusionenergy'] then
        RECIPE('angels-mono-silicon-1'):set_fields{ category = "hpf" }
        RECIPE('angels-mono-silicon-2'):set_fields{ category = "hpf" }
    end
    if mods['pyrawores'] then
        RECIPE('angels-solder-mixture'):remove_ingredient('angels-plate-lead'):add_ingredient({type = "item", name = "angels-plate-lead", amount = 4})

        TECHNOLOGY('angels-solder-smelting-basic'):add_prereq('acetylene')

        fun.tech_remove_recipe('solder-mk01', 'solder-0')
        fun.tech_remove_recipe('solder-mk01', 'lead-plate-1')

        fun.tech_add_recipe('angels-solder-smelting-basic', 'lead-plate-1')

        data.raw.recipe['solder-0'] = nil
    end
    if mods['pyalienlife'] then
        TECHNOLOGY('angels-metallurgy-1'):add_prereq('hot-air-mk01')

        TECHNOLOGY('angels-metallurgy-1'):add_pack('py-science-pack-1'):add_prereq('py-science-pack-mk01')
        TECHNOLOGY('angels-copper-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-iron-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-lead-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-tin-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-solder-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-steel-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-manganese-smelting-1'):add_pack('py-science-pack-1')

        TECHNOLOGY('angels-stone-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('powder-metallurgy-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-sulfur-processing-1'):add_pack('py-science-pack-1')
    end
    if mods['pyalternativeenergy'] then
        fun.tech_remove_recipe('silicon-mk01', 'silicon')

        data.raw.recipe['silicon'] = nil

        TECHNOLOGY('angels-silicon-casting-2'):add_prereq('silicon-mk03')
        TECHNOLOGY('angels-silicon-casting-2'):add_pack('production-science-pack')
    end
end

if mods['angelsindustries'] then
    if mods['pyalternativeenergy'] then
        table.insert(data.raw['assembling-machine']['centrifuge-mk02'].crafting_categories, 'centrifuging-2')
        table.insert(data.raw['assembling-machine']['centrifuge-mk03'].crafting_categories, 'centrifuging-2')
        table.insert(data.raw['assembling-machine']['centrifuge-mk03'].crafting_categories, 'centrifuging-3')
        table.insert(data.raw['assembling-machine']['centrifuge-mk04'].crafting_categories, 'centrifuging-2')
        table.insert(data.raw['assembling-machine']['centrifuge-mk04'].crafting_categories, 'centrifuging-3')
    end
end

if mods['angelsbioprocessing'] then
    TECHNOLOGY('bio-processing-green'):add_prereq('vacuum-tube-electronics')

    if mods['pyalienlife'] then
        data.raw.recipe['algae-green-simple'] = nil

        fun.remove_recipe_unlock('algae-green-simple')

        FUN.add_result('puffer-butchery-1', {'gas-bladder', 1})
        data.raw.recipe['puffer-butchery-1'].main_product = "gas-bladder"
    end
    if mods['pyalternativeenergy'] then
        RECIPE('eg-si'):add_ingredient({type = "item", name = "crystal-grindstone", amount = 1})
    end
end

if mods['angelsaddons-storage'] then
    fun.tech_add_recipe('py-storage-tanks', 'angels-storage-tank-3')
    fun.tech_remove_recipe('fluid-handling', 'angels-storage-tank-3')
    TECHNOLOGY('logistic-silos'):remove_pack("py-science-pack-2"):remove_pack("chemical-science-pack")
    TECHNOLOGY('angels-logistic-warehouses'):remove_pack("py-science-pack-2"):remove_pack("chemical-science-pack")
    if mods['bobtech'] then
        TECHNOLOGY('logistic-silos'):remove_pack("advanced-logistic-science-pack")
        TECHNOLOGY('angels-logistic-warehouses'):remove_pack("advanced-logistic-science-pack")
    end  
    if mods['pyrawores'] then
        RECIPE('angels-storage-tank-3'):add_ingredient({type = "item", name = "pipe", amount = 15})
        RECIPE('angels-storage-tank-3'):add_ingredient({type = "item", name = "duralumin", amount = 10})
        RECIPE('angels-storage-tank-3'):add_ingredient({type = "item", name = "lead-plate", amount = 10})
    end
end
