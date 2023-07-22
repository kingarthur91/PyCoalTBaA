-- DATA UPDATES STAGE OVERRIDES

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
    table.insert(data.raw['assembling-machine']['washer'].crafting_categories, 'filtering')
    data.raw.recipe['washing-plant'] = nil
    fun.remove_recipe_unlock('washing-plant')
    --merge angels filters to py
    table.insert(data.raw['assembling-machine']['carbon-filter'].crafting_categories, 'filtering')
    data.raw.recipe['filtration-unit'] = nil
    fun.remove_recipe_unlock('filtration-unit')
    if mods['pyrawores'] then
        --mk02
        table.insert(data.raw['assembling-machine']['carbon-filter-mk02'].crafting_categories, 'filtering')
        data.raw.recipe['filtration-unit-2'] = nil
        fun.remove_recipe_unlock('filtration-unit-2')
        --mk03
        table.insert(data.raw['assembling-machine']['carbon-filter-mk03'].crafting_categories, 'filtering')
        data.raw.recipe['filtration-unit-3'] = nil
        fun.remove_recipe_unlock('filtration-unit-3')
        --mk04
        table.insert(data.raw['assembling-machine']['carbon-filter-mk04'].crafting_categories, 'filtering')
        --merge angel's washers to py's
        --mk02
        table.insert(data.raw['assembling-machine']['washer-mk02'].crafting_categories, 'filtering')
        data.raw.recipe['washing-plant-2'] = nil
        fun.remove_recipe_unlock('washing-plant-2')
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
        if angelsmods.trigger.ores["lead"] then
            data.raw.resource['ore-lead'] = nil
            data.raw['autoplace-control']['ore-lead'] = nil
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
            fun.tech_remove_recipe('mining-with-fluid', 'tin-plate-1')
            fun.tech_add_prerequisites('solder-mk01', 'ore-crushing')
        end
        if angelsmods.trigger.ores["zinc"] then
            data.raw.resource['ore-zinc'] = nil
            data.raw['autoplace-control']['ore-zinc'] = nil
            fun.tech_add_prerequisites('solder-mk01', 'ore-crushing')
        end
    end
end

if mods['angelspetrochem'] then
    if mods['pyrawores'] then
        data.raw.recipe['air-separation'] = nil
        fun.remove_recipe_unlock('air-separation')
    end
    if mods['pyfusionenergy'] then
        fun.tech_remove_recipe('fluid-pressurization', 'pressured-air')
        RECIPE('angels-air-filter'):replace_ingredient('basic-circuit-board', 'small-parts-01')
        if mods['pyhightech'] then
            TECHNOLOGY('basic-chemistry'):add_prereq('vacuum-tube-electronics')
            TECHNOLOGY('vacuum-tube-electronics'):add_prereq('angels-nitrogen-processing-1')
        end
    end
end

if mods['angelssmelting'] then
    if mods['pyrawores'] then
        RECIPE('angels-solder-mixture'):remove_ingredient('angels-plate-lead'):add_ingredient({type = "item", name = "angels-plate-lead", amount = 4})

        TECHNOLOGY('angels-solder-smelting-basic'):add_prereq('acetylene')

        fun.tech_remove_recipe('solder-mk01', 'solder-0')
        fun.tech_remove_recipe('solder-mk01', 'lead-plate-1')

        fun.tech_add_recipe('angels-solder-smelting-basic', 'lead-plate-1')

        data.raw.recipe['solder-0'] = nil
    end
end

if mods['angelsindustries'] then
    RECIPE('soil-extractormk01'):remove_ingredient('block-electronics-1'):add_ingredient({type = "item", name = "block-electronics-0", amount = 1}):remove_ingredient('construction-frame-1'):add_ingredient({type = "item", name = "construction-frame-1", amount = 5})
    RECIPE('collector'):replace_ingredient('block-electronics-1', 'block-electronics-0'):remove_ingredient('construction-frame-1')
    RECIPE('hpf'):replace_ingredient('block-electronics-1', 'block-electronics-0')
    RECIPE('distilator'):replace_ingredient('block-electronics-1', 'block-electronics-0')
    RECIPE('wpu'):remove_ingredient('cable-harness-1'):add_ingredient({type = "item", name = "cable-harness-1", amount = 10})
    RECIPE('car'):replace_ingredient('motor-2', 'motor-1')
    RECIPE('mechanical-parts-gear'):replace_ingredient('mechanical-parts', 'small-parts-01')

    TECHNOLOGY('automobilism'):add_prereq('angels-components-mechanical-1')
    if mods['pyhightech'] then
        for _, v in pairs(data.raw.technology['tech-red-circuit'].effects) do
            table.insert(data.raw.technology['vacuum-tube-electronics'].effects, v)
        end
        fun.global_prereq_replacer('tech-red-circuit', 'vacuum-tube-electronics')

        data.raw.technology['tech-red-circuit'].hidden = true
        data.raw.technology['tech-red-circuit'].enabled = false
        data.raw.technology['tech-red-circuit'].effects = {}

        data.raw.recipe['electronic-circuit'].enabled = true
        data.raw.recipe['electronic-circuit'].hidden = false

        data.raw.recipe['circuit-red-loaded'].enabled = false
        data.raw.recipe['circuit-red-loaded'].hidden = true

        data.raw.recipe['circuit-red'].enabled = false
        data.raw.recipe['circuit-red'].hidden = true

        fun.tech_remove_recipe('vacuum-tube-electronics', 'circuit-red-loaded')
        fun.tech_remove_recipe('vacuum-tube-electronics', 'circuit-red')

        fun.tech_add_recipe('vacuum-tube-electronics', 'electronic-circuit')

        RECIPE('circuit-red-board'):add_ingredient({type = "item", name = "formica", amount = 2})
        RECIPE('pcb1'):add_ingredient({type = "item", name = "circuit-red-board", amount = 1}):remove_ingredient('formica')
        RECIPE('electronic-circuit'):add_ingredient({type = "item", name = "circuit-resistor", amount = 2})
    end
    OV.remove_science_pack({'angels-rocket', 'angels-rocket-fusion-reactor', 'angels-rocket-hull', 'angels-rocket-ion-thruster', 'angels-rocket-shield-array'}, 'utility-science-pack')
    OV.remove_science_pack({'angels-rocket', 'angels-rocket-fusion-reactor', 'angels-rocket-hull', 'angels-rocket-ion-thruster', 'angels-rocket-shield-array'}, 'py-science-pack-4')
    OV.remove_science_pack({'angels-rocket', 'angels-rocket-fusion-reactor', 'angels-rocket-hull', 'angels-rocket-ion-thruster', 'angels-rocket-shield-array'}, 'production-science-pack')

    TECHNOLOGY('angels-rocket'):add_pack("py-science-pack-3")
    TECHNOLOGY('angels-rocket-hull'):add_pack("py-science-pack-3")
    TECHNOLOGY('angels-rocket-ion-thruster'):add_pack("py-science-pack-3")
    TECHNOLOGY('angels-rocket-shield-array'):add_pack("py-science-pack-3")
    TECHNOLOGY('angels-rocket-fusion-reactor'):add_pack("py-science-pack-3")

    OV.add_prereq('rocket-silo', {'angels-rocket-fusion-reactor', 'angels-rocket-hull', 'angels-rocket-ion-thruster', 'angels-rocket-shield-array'})
    OV.remove_prereq('rocket-silo', {'low-density-stucture', 'rocket-control-unit', 'rocket-fuel'})

    OV.add_prereq('angels-rocket-fusion-reactor', 'nuclear-power')
    OV.remove_prereq('angels-rocket-fusion-reactor', 'angels-fusion-power-1')

    RECIPE('angels-rocket-fusion-reactor'):replace_ingredient('angels-dueterium-fuel-cell', 'uranium-fuel-cell')

    if mods['pyalienlife'] then
        TECHNOLOGY('angels-metallurgy-1'):add_pack('py-science-pack-1'):add_prereq('py-science-pack-mk01')
        TECHNOLOGY('angels-copper-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-iron-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-lead-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-tin-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-solder-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-steel-smelting-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-manganese-smelting-1'):add_pack('py-science-pack-1')

        TECHNOLOGY('angels-components-construction-2'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-sulfur-processing-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-components-batteries-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('powder-metallurgy-1'):add_pack('py-science-pack-1')
        TECHNOLOGY('angels-stone-smelting-1'):add_pack('py-science-pack-1')
    end

    RECIPE('py-burner'):remove_ingredient('construction-frame-4')
end

if mods['angelsbioprocessing'] then
    TECHNOLOGY('bio-processing-green'):add_prereq('vacuum-tube-electronics')
    if mods['pyalienlife'] then
        data.raw.recipe['algae-green-simple'] = nil
        fun.remove_recipe_unlock('algae-green-simple')
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
