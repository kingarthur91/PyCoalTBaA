
if mods['bobelectronics'] then
    if mods['pyhightech'] then
        fun.global_item_replacer('basic-circuit-board', 'pcb1')
        data.raw.recipe['basic-circuit-board'].enabled = false
    end
end

if mods['boblogistics'] then
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
end

if mods['bobpower'] and mods['pyalienlife'] then
    fun.ingredient_replace('collector','steam-engine','bob-burner-generator')
end

if mods['bobtech'] then
    if mods['pyalienlife'] then
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-1')
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-2')
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-3')
        table.insert(data.raw.lab["lab-2"].inputs, 'py-science-pack-4')
    end
end
