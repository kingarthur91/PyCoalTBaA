-- DATA FINAL FIXES STAGE OVERRIDES
local function set_to_py1(techname)
    if not data.raw.technology[techname] then return end 
    data.raw.technology[techname].unit.ingredients = {
        {"automation-science-pack", 2},
        {"py-science-pack-1", 1}
    }
end

local function set_to_py1_with_bio(techname)
    if not data.raw.technology[techname] then return end 
    data.raw.technology[techname].unit.ingredients = {
        {"token-bio", 1},
        {"automation-science-pack", 2},
        {"py-science-pack-1", 1}
    }
end

if mods['angelsrefining'] then
    if mods['pyalienlife'] then
        set_to_py1('ore-floatation')
        set_to_py1('water-treatment-2')

        fun.tech_merge('soil-washing', 'water-washing-1')
    end
end


if mods['angelspetrochem'] then
    if mods['pypetroleumhandling'] then
        fun.tech_merge('angels-oil-processing', 'petroleum-gas-mk01')

        TECHNOLOGY('petroleum-gas-mk01'):add_prereq('oil-gas-extraction')
        TECHNOLOGY('petroleum-gas-mk01'):remove_prereq('drilling-fluid-mk01')
        TECHNOLOGY('scrude'):add_prereq('oil-machines-mk01')
    end
    if mods['pyhightech'] then
        TECHNOLOGY('angels-nitrogen-processing-1'):remove_prereq('basic-chemistry')
        TECHNOLOGY('vacuum-tube-electronics'):add_prereq('angels-nitrogen-processing-1')
        TECHNOLOGY('mining-with-fluid'):remove_prereq('steel-processing')
    end
    if mods['pyalienlife'] then
        for i, ingredient in pairs(data.raw.technology['basic-chemistry-3'].unit.ingredients) do
            if ingredient.name == "logistic-science-pack" then
                data.raw.technology['basic-chemistry-3'].unit.ingredients[i] = nil
            end
        end

        set_to_py1('angels-advanced-chemistry-1')
        set_to_py1('angels-sulfur-processing-1')
        set_to_py1('basic-chemistry-3')
        set_to_py1('resin-1')
        set_to_py1('resins')
        set_to_py1('scrude')

        if mods['pypetroleumhandling'] then
            TECHNOLOGY('angels-nitrogen-processing-4'):remove_prereq('angels-advanced-chemistry-5'):remove_pack('utility-science-pack')
            TECHNOLOGY('angels-nitrogen-processing-4'):add_prereq('py-science-pack-3')
        end
    end
end

if mods['angelssmelting'] then
    data.raw.recipe['steel-plate'].normal.hidden = false
    data.raw.recipe['steel-plate'].expensive.hidden = false
    RECIPE('steel-plate'):add_unlock('steel-processing'):remove_ingredient('gas-oxygen')

    if mods['pyrawores'] then
        TECHNOLOGY('angels-solder-smelting-basic'):add_prereq('acetylene')

        fun.global_prereq_replacer('solder-mk01', 'angels-solder-smelting-basic')

        data.raw.technology['solder-mk01'].hidden = true
        data.raw.technology['solder-mk01'].enabled = false
        data.raw.technology['solder-mk01'].effects = {}

        TECHNOLOGY('steel-processing'):add_prereq('water-washing-1')

        fun.tech_remove_recipe('coal-processing-1', 'extract-limestone-01')

        data.raw.recipe['extract-limestone-01'].enabled = false
        data.raw.recipe['extract-limestone-01'].hidden = true

        TECHNOLOGY('iron-mk01'):add_prereq('angels-iron-smelting-1')
        TECHNOLOGY('iron-mk02'):add_prereq('angels-iron-casting-2')
        TECHNOLOGY('iron-mk03'):add_prereq('angels-iron-smelting-3')

        TECHNOLOGY('copper-mk03'):add_prereq('angels-copper-smelting-3')
    end
    if mods['pyalternativeenergy'] then
        fun.tech_add_prerequisites('silicon-mk01', 'angels-silicon-smelting-1')
    end
end

if mods['angelsbioprocessing'] then
    data.raw.technology['angels-alien-artifact-red'].unit.ingredients = {
        { type = "item", name = "alien-artifact-red-tool", amount = 1 },
        }
    data.raw.technology['angels-alien-artifact-orange'].unit.ingredients = {
        { type = "item", name = "alien-artifact-orange-tool", amount = 1 },
        }
    data.raw.technology['angels-alien-artifact-yellow'].unit.ingredients = {
        { type = "item", name = "alien-artifact-yellow-tool", amount = 1 },
        }
    data.raw.technology['angels-alien-artifact-green'].unit.ingredients = {
        { type = "item", name = "alien-artifact-green-tool", amount = 1 },
        }
    data.raw.technology['angels-alien-artifact-blue'].unit.ingredients = {
        { type = "item", name = "alien-artifact-blue-tool", amount = 1 },
        }
    data.raw.technology['angels-alien-artifact-purple'].unit.ingredients = {
        { type = "item", name = "alien-artifact-purple-tool", amount = 1 },
        }
    data.raw.technology['angels-alien-artifact'].unit.ingredients = {
        { type = "item", name = "alien-artifact-tool", amount = 1 },
        }
    if mods['pyalienlife'] then
        set_to_py1_with_bio('bio-fermentation')
        set_to_py1_with_bio('bio-arboretum-temperate-1')
    end
    if mods['pyalternativeenergy'] then
        TECHNOLOGY('silicon-mk01'):add_prereq('bio-processing-crystal-splinter-1')
    end
end

if mods['angelsaddons-storage'] then
    if mods['pyalternativeenergy'] then
        TECHNOLOGY('pressure-tanks'):add_prereq('intermetallics-mk02'):add_pack("py-science-pack-2")
        RECIPE('angels-pressure-tank-1'):remove_ingredient("steel-plate"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
    elseif mods['pyalienlife'] then
        TECHNOLOGY("pressure-tanks"):add_prereq("py-science-pack-mk01")
        fun.removescipack('pressure-tanks', 'logistic-science-pack')
    end
    if mods['pyindustry'] then
        RECIPE('angels-pressure-tank-1'):replace_ingredient("pipe", "niobium-pipe")
    end
    if mods['pyfusionenergy'] then
        RECIPE('angels-pressure-tank-1'):change_category('crafting-with-fluid')
        RECIPE('angels-pressure-tank-1'):add_ingredient({type = "item", name = "vacuum-pump-mk01", amount = 5}):add_ingredient({type = "item", name = "advanced-circuit", amount = 1}):add_ingredient({type = "fluid", name = "vacuum", amount = 200})
    end
    if mods['pyrawores'] then
        RECIPE('angels-pressure-tank-1'):replace_ingredient("stone-brick", "stainless-steel")
    end
end
