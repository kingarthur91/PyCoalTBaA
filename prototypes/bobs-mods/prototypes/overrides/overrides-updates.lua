local table = require "__stdlib__.stdlib.utils.table"

if mods['bobelectronics'] then
    if mods['pyhightech'] then
        data.raw.recipe['silicon-wafer'].enabled = false
        data.raw.recipe['bob-rubber'].enabled = false
        data.raw.recipe['bob-rubber'].hidden = true

        if settings.startup["angels-enable-components"].value then
            data.raw.recipe['wooden-board'].enabled = false
            data.raw.recipe['basic-circuit-board'].enabled = false
            data.raw.recipe['wooden-board'].energy_required = 10
            fun.Mod_Category('wooden-board', 'pulp')
            fun.tech_add_recipe('coal-processing-1', 'pulp-mill-mk01')
            fun.tech_add_recipe('coal-processing-1', 'wooden-board')
            RECIPE('offshore-pump'):remove_ingredient('basic-circuit-board')
            RECIPE('lab'):replace_ingredient('basic-circuit-board', 'inductor1')
            RECIPE('assembling-machine-1'):replace_ingredient('basic-circuit-board', 'primitive-circuit-board')
            RECIPE('algae-farm'):replace_ingredient('basic-circuit-board', 'primitive-circuit-board')
            RECIPE('algae-farm-2'):replace_ingredient('basic-circuit-board', 'electronic-circuit')
            TECHNOLOGY('automation'):add_prereq('coal-processing-1')
            if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
                TECHNOLOGY('logistics-0'):add_prereq('coal-processing-1')
            end
            
            if mods['boblogistics'] then
                RECIPE('splitter'):remove_ingredient('basic-circuit-board')
                RECIPE('basic-splitter'):remove_ingredient('wood'):add_ingredient({type = "item", name = "primitive-circuit-board", amount = 3})
            end
        end
    end
end

if mods['boblogistics'] then
    data.raw.recipe['underground-belt'].enabled = false
    RECIPE('repair-pack-2'):remove_ingredient("iron-gear-wheel"):add_ingredient("repair-pack")
    if settings.startup['bobmods-logistics-inserteroverhaul'].value == true then
        fun.ingredient_replace('rare-earth-mine','fast-inserter','red-inserter')
    end
    if mods['pyindustry'] then
        fun.tech_remove_recipe('fluid-handling', 'bob-storage-tank-all-corners')
    end
    if mods['pyhightech'] then
      --more robot stuff
      RECIPE('repair-pack-2'):remove_ingredient("electronic-circuit"):add_ingredient("pcb1")
      RECIPE('robot-brain-construction'):remove_ingredient("advanced-circuit")
      RECIPE('robot-brain-construction'):add_ingredient({type = "item", name = "plastic-bar", amount = 5})
      RECIPE('py-construction-robot-01'):add_ingredient("robot-brain-construction")
      RECIPE('py-construction-robot-01'):add_ingredient("robot-tool-construction")
      RECIPE('py-construction-robot-01'):remove_ingredient("electronic-circuit")
      RECIPE('roboport-antenna-1'):replace_ingredient("advanced-circuit", "electronic-circuit")
      RECIPE('roboport-chargepad-1'):replace_ingredient("advanced-circuit", "electronic-circuit")
    end
    settings.startup["bobmods-logistics-beltperlevel"].hidden = true
    if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
        data.raw['underground-belt']['basic-underground-belt'].max_distance = 5
        data.raw['underground-belt']['turbo-underground-belt'].max_distance = 65
        data.raw['underground-belt']['ultimate-underground-belt'].max_distance = 129
    end
end

if mods['bobpower'] then
    if mods['pyalienlife'] then
        fun.ingredient_replace('collector','steam-engine','bob-burner-generator')
    end
end

if mods['bobassembly'] then
    if settings.startup["burner-start"].value == true then
        local burner = {
            type = "burner",
            fuel_categories = {"chemical", "biomass"},
            effectivity = 1,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
            emissions_per_minute = 12,
        }
        --modify assembly machine 4
        data.raw['assembling-machine']['assembling-machine-4'].ingredient_count = 6
        data.raw['assembling-machine']['assembling-machine-4'].crafting_speed = 6
        data.raw['assembling-machine']['assembling-machine-4'].energy_source = table.deep_copy(burner)
        table.insert(data.raw['assembling-machine']['assembling-machine-4'].energy_source.fuel_categories, "jerry")
        data.raw['assembling-machine']['assembling-machine-4'].allowed_effects = {}
        data.raw['assembling-machine']['assembling-machine-4'].module_specification.module_slots = 0
        --modify assembly machine 5
        data.raw['assembling-machine']['assembling-machine-5'].ingredient_count = 7
        data.raw['assembling-machine']['assembling-machine-5'].crafting_speed = 8
        data.raw['assembling-machine']['assembling-machine-5'].energy_source = table.deep_copy(burner)
        table.insert(data.raw['assembling-machine']['assembling-machine-5'].energy_source.fuel_categories, "jerry")
        data.raw['assembling-machine']['assembling-machine-5'].allowed_effects = {}
        data.raw['assembling-machine']['assembling-machine-5'].module_specification.module_slots = 0
        --modify assembly machine 6
        data.raw['assembling-machine']['assembling-machine-6'].ingredient_count = 8
        data.raw['assembling-machine']['assembling-machine-6'].crafting_speed = 10
        data.raw['assembling-machine']['assembling-machine-6'].energy_source = table.deep_copy(burner)
        table.insert(data.raw['assembling-machine']['assembling-machine-6'].energy_source.fuel_categories, "jerry")
        data.raw['assembling-machine']['assembling-machine-6'].allowed_effects = {}
        data.raw['assembling-machine']['assembling-machine-6'].module_specification.module_slots = 0
        --modify steam assembly machine
        if settings.startup["bobmods-assembly-burner"].value == true then
            data.raw['assembling-machine']['steam-assembling-machine'].ingredient_count =3
            data.raw['assembling-machine']['steam-assembling-machine'].crafting_speed = 0.5
            data.raw['assembling-machine']['steam-assembling-machine'].allowed_effects = {}
            --mechanical assembler
            data.raw['assembling-machine']['burner-assembling-machine'].energy_source.type = "void"
            data.raw['assembling-machine']['burner-assembling-machine'].crafting_speed = 0.1
            data.raw['assembling-machine']['burner-assembling-machine'].allowed_effects = {}
        end
    end

    if mods['pyalternativeenergy'] then
        require('__PyCoalTBaA__/prototypes/bobs-mods/prototypes/entity/furnace')
    end
    
    if mods['pyhightech'] then
        data:extend({
            {
                type = "recipe-category",
                name = "circuits",
            },
        })
        data.raw.recipe["electronic-circuit"].category = "circuits"
        data.raw.recipe["advanced-circuit"].category = "circuits"
        data.raw.recipe["processing-unit"].category = "circuits"
        data.raw.recipe["intelligent-unit"].category = "circuits"
        table.insert(data.raw['assembling-machine']['electronics-machine-1'].crafting_categories, 'circuits')
        table.insert(data.raw['assembling-machine']['electronics-machine-2'].crafting_categories, 'circuits')
        table.insert(data.raw['assembling-machine']['electronics-machine-3'].crafting_categories, 'circuits')
        data.raw['assembling-machine']['electronics-machine-1'].allowed_effects = { 'speed', 'consumption', 'pollution' }
        data.raw['assembling-machine']['electronics-machine-2'].allowed_effects = { 'speed', 'consumption', 'pollution' }
        data.raw['assembling-machine']['electronics-machine-3'].allowed_effects = { 'speed', 'consumption', 'pollution' }
        table.insert(data.raw['assembling-machine']['chipshooter-mk01'].crafting_categories, 'circuits')
        data.raw['assembling-machine']['chipshooter-mk01'].crafting_speed = 2
        table.insert(data.raw['assembling-machine']['chipshooter-mk02'].crafting_categories, 'circuits')
        data.raw['assembling-machine']['chipshooter-mk02'].crafting_speed = 4
        table.insert(data.raw['assembling-machine']['chipshooter-mk03'].crafting_categories, 'circuits')
        data.raw['assembling-machine']['chipshooter-mk03'].crafting_speed = 6
        table.insert(data.raw['assembling-machine']['chipshooter-mk04'].crafting_categories, 'circuits')
        data.raw['assembling-machine']['chipshooter-mk04'].crafting_speed = 8
        if not mods['angelsindustries'] then
            TECHNOLOGY('electronics-machine-1'):add_prereq('vacuum-tube-electronics')
        end
    end

    if mods['pyalternativeenergy'] then
        -- merge bobs centrifuges into pys centrifuges
        -- mk01
        data.raw["assembling-machine"]["centrifuge"].minable = { mining_time = 0.5, result = "centrifuge-mk01" },
        fun.remove_recipe_unlock('centrifuge')
        -- mk02
        data.raw["assembling-machine"]["centrifuge-2"].minable = { mining_time = 0.5, result = "centrifuge-mk02" },
        fun.remove_recipe_unlock('centrifuge-2')
        -- mk03
        data.raw["assembling-machine"]["centrifuge-3"].minable = { mining_time = 0.5, result = "centrifuge-mk03" },
        fun.remove_recipe_unlock('centrifuge-3')
    end
end

if mods['bobgreenhouse'] then
    data.raw['assembling-machine']['bob-greenhouse'].energy_usage = "300kW"
    data.raw['assembling-machine']['bob-greenhouse'].allowed_effects = {}
    if mods ['pyalienlife'] and not mods['angelsbioprocessing'] then
        require('__PyCoalTBaA__/prototypes/bobs-mods/prototypes/recipes/charcoal')
        TECHNOLOGY('energy-3'):add_prereq('bob-greenhouse')
    end
end

if mods['bobrevamp'] then
    RECIPE('heat-shield-tile'):add_ingredient({type = "item", name = "coke", amount = 5}):add_ingredient({type = "item", name = "graphite", amount = 1}):add_ingredient({type = "item", name = "saps", amount = 10}):add_ingredient({type = "item", name = "nichrome", amount = 2}):remove_ingredient('steel-plate'):remove_ingredient('plastic-bar')
    if mods['angelssmelting'] then
        data.raw.recipe['heat-shield-tile'].category = 'sintering'

        TECHNOLOGY('heat-shield'):remove_prereq('powder-metallurgy-4'):add_prereq('powder-metallurgy-1'):add_prereq('py-science-pack-mk03')

        OV.remove_science_pack('heat-shield', 'production-science-pack')

        TECHNOLOGY('heat-shield'):add_pack("py-science-pack-3")
    end
end

if mods['bobenemies'] then
    require('__PyCoalTBaA__/prototypes/bobs-mods/prototypes/recipes/alien')
end

if mods['bobtech'] then
    data.raw.lab['lab-2'].allowed_effects = {"consumption", "speed", "productivity"}
    if mods['pyalienlife'] then
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-1')
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-2')
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-3')
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-4')

        data.raw.recipe['alien-science-pack'].category = 'research'
        data.raw.recipe['alien-science-pack-blue'].category = 'research'
        data.raw.recipe['alien-science-pack-orange'].category = 'research'
        data.raw.recipe['alien-science-pack-purple'].category = 'research'
        data.raw.recipe['alien-science-pack-yellow'].category = 'research'
        data.raw.recipe['alien-science-pack-green'].category = 'research'
        data.raw.recipe['alien-science-pack-red'].category = 'research'
    end
end