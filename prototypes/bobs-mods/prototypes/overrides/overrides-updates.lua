
if mods['bobelectronics'] and mods['pyhightech'] then
    fun.global_item_replacer('basic-circuit-board', 'pcb1')
    data.raw.recipe['basic-circuit-board'].enabled = false
end

if mods['boblogistics'] and settings.startup['bobmods-logistics-inserteroverhaul'].value == true then
    fun.ingredient_replace('rare-earth-mine','fast-inserter','red-inserter')
end
