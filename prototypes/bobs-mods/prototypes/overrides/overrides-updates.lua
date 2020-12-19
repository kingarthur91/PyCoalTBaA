
if mods['bobelectronics'] and mods['pyhightech'] then
    fun.global_item_replacer('basic-circuit-board', 'pcb1')
    data.raw.recipe['basic-circuit-board'].enabled = false
end
