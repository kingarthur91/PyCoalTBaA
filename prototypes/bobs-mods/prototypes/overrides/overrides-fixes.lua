if mods['bobassembly'] then
    TECHNOLOGY('automation'):add_prereq('basic-automation')
end
if mods['bobplates'] then
    data.raw['assembling-machine']['assembling-machine-3'].module_specification.module_slots = 0
    if mods['pyrawores'] then
        data.raw.technology['electrolysis-1'] = nil

        RECIPE('ball-mill-mk01'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
        RECIPE('ball-mill-mk02'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
        RECIPE('ball-mill-mk03'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
        RECIPE('ball-mill-mk04'):add_ingredient({type = "item", name = "steel-bearing-ball", amount = 1000})
    end
end