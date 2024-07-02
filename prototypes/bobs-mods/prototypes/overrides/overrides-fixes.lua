
if mods['boblogistics'] then
    data.raw.inserter["steam-inserter"].filter_count = 1
    data.raw.inserter["inserter"].filter_count = 2
    data.raw.inserter["long-handed-inserter"].filter_count = 3
    data.raw.inserter["fast-inserter"].filter_count = 4
    data.raw.inserter["turbo-inserter"].filter_count = 5
    data.raw.inserter["express-inserter"].filter_count = 5

    data.raw.inserter["red-stack-inserter"].filter_count = 3
    data.raw.inserter["stack-inserter"].filter_count = 4
    data.raw.inserter["turbo-stack-inserter"].filter_count = 5
    data.raw.inserter["express-stack-inserter"].filter_count = 5

    RECIPE("yellow-filter-inserter"):remove_unlock("logistics")
    RECIPE("red-filter-inserter"):remove_unlock("fast-inserter")
    RECIPE("filter-inserter-2"):remove_unlock("fast-inserter-2")
    RECIPE("red-stack-filter-inserter"):remove_unlock("stack-inserter")
    RECIPE("filter-inserter"):remove_unlock("express-inserters")
    RECIPE("stack-filter-inserter-2"):remove_unlock("stack-inserter-2")
    RECIPE("turbo-filter-inserter"):remove_unlock("turbo-inserter")
    RECIPE("turbo-stack-filter-inserter"):remove_unlock("stack-inserter-3")
    RECIPE("express-filter-inserter"):remove_unlock("ultimate-inserter")
    RECIPE("express-stack-filter-inserter"):remove_unlock("stack-inserter-4")
end
if mods['bobassembly'] then
    TECHNOLOGY('automation'):add_prereq('basic-automation')
    if mods['pyalternativeenergy'] then
        --[[
        data.raw["assembling-machine"]["centrifuge"].next_upgrade = nil
        data.raw["assembling-machine"]["centrifuge-2"].next_upgrade = nil
        data.raw["assembling-machine"]["centrifuge-3"].next_upgrade = nil
        ]]--
    end

end
if mods['bobplates'] then
    data.raw.recipe['nitrogen'].hidden = false

    data.raw['assembling-machine']['assembling-machine-3'].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

    fun.tech_merge('fluid-canister-processing', 'plastics')
    TECHNOLOGY('plastics'):add_prereq('fluid-handling')
    TECHNOLOGY('gas-canisters'):add_prereq('fluid-barrel-processing')
    TECHNOLOGY('gas-canisters'):remove_pack('logistic-science-pack'):remove_pack('py-science-pack-1')
    if mods['pyrawores'] then
        if not mods['angelspetrochem'] then
            fun.global_prereq_replacer('electrolysis-1', 'electrolysis')
            fun.tech_merge_effects('electrolysis-1', 'electrolysis')
            fun.tech_remove_recipe('electrolysis', 'electrolyser')
        end
        data.raw.technology['electrolysis-1'] = nil

        RECIPE('ball-mill-mk01'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
        RECIPE('ball-mill-mk02'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
        RECIPE('ball-mill-mk03'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
        RECIPE('ball-mill-mk04'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
    end
    if mods['pyalienlife'] then
        TECHNOLOGY('vrauks'):remove_prereq('fluid-handling'):add_prereq('fluid-barrel-processing')
    end
end

if mods['bobwarfare'] then
    if mods['pyalienlife'] then
        TECHNOLOGY('bob-rocket'):remove_pack("production-science-pack"):remove_pack("production-science-pack")
    end
end