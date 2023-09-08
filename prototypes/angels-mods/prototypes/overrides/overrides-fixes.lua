-- DATA FINAL FIXES STAGE OVERRIDES

if mods['angelssmelting'] then
    data.raw.recipe['steel-plate'].normal.enabled = true
    data.raw.recipe['steel-plate'].normal.hidden = false
    data.raw.recipe['steel-plate'].expensive.enabled = true
    data.raw.recipe['steel-plate'].expensive.hidden = false

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

    end
    if mods['pyalternativeenergy'] then
        fun.tech_add_prerequisites('silicon-mk01', 'angels-silicon-smelting-1')
    end
end

if mods['angelspetrochem'] then
    if mods['pyhightech'] then
        TECHNOLOGY('angels-nitrogen-processing-1'):remove_prereq('basic-chemistry')
        TECHNOLOGY('vacuum-tube-electronics'):add_prereq('angels-nitrogen-processing-1')
        TECHNOLOGY('mining-with-fluid'):remove_prereq('steel-processing')
    end
end

if mods['angelspetrochem'] then
    if mods['pyhightech'] then
        TECHNOLOGY('angels-nitrogen-processing-1'):remove_prereq('basic-chemistry')
        TECHNOLOGY('vacuum-tube-electronics'):add_prereq('angels-nitrogen-processing-1')
    end
end

if mods['angelsindustries'] then
    TECHNOLOGY('advanced-material-processing'):add_prereq('angels-components-construction-2'):remove_prereq('py-science-pack-mk01')
    TECHNOLOGY('angels-components-mechanical-2'):remove_pack('logistic-science-pack'):remove_prereq('logistic-science-pack')
    TECHNOLOGY('electric-mining-drill'):add_prereq('angels-components-mechanical-2'):remove_prereq('py-science-pack-mk01')
    TECHNOLOGY('fluid-processing-machines-1'):add_prereq('angels-components-construction-2'):remove_prereq('py-science-pack-mk01')
    TECHNOLOGY('crusher-2'):add_prereq('angels-components-construction-2'):remove_prereq('py-science-pack-mk01')
    TECHNOLOGY('py-burner'):add_prereq('angels-components-construction-2'):remove_prereq('py-science-pack-mk01')
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
