
if mods['bobelectronics'] and mods['pyhightech'] then
    fun.global_item_replacer('basic-circuit-board', 'pcb1')
    data.raw.recipe['basic-circuit-board'].enabled = false
end

if mods['boblogistics'] and settings.startup['bobmods-logistics-inserteroverhaul'].value == true then
    fun.ingredient_replace('rare-earth-mine','fast-inserter','red-inserter')
end

if mods['bobpower'] and mods['pyalienlife'] then
    fun.ingredient_replace('collector','steam-engine','bob-burner-generator')
end
if mods['boblogistics'] and mods['pyindustry'] then
    fun.tech_remove_recipe('fluid-handling', 'bob-storage-tank-all-corners')
end
