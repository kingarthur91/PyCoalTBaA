if mods['pyhightech'] then

    RECIPE('basic-circuit-board'):set_fields{enabled = false}
	RECIPE('wooden-board'):set_fields{enabled = false}
	fun.tech_remove_recipe("omnitech-anbaricity", "basic-circuit-board")
	fun.tech_remove_recipe("omnitech-anbaricity", "wooden-board")
	fun.global_item_replacer("basic-circuit-board", "electronic-circuit")
	fun.ingredient_replace("blast-furnace", "pcb1", "electronic-circuit")
	fun.ingredient_replace("angels-chemical-furnace", "pcb1", "electronic-circuit")
	fun.ingredient_replace("induction-furnace", "pcb1", "electronic-circuit")
	fun.ingredient_replace("casting-machine", "pcb1", "electronic-circuit")
	fun.ingredient_replace("radar", "pcb1", "electronic-circuit")
	fun.ingredient_replace("ammo-nano-termites", "pcb1", "electronic-circuit")
	fun.ingredient_replace("gun-nano-emitter", "pcb1", "electronic-circuit")
	
	fun.add_ingredient("ammon-nano-constructors", "repair-pack")
	
	fun.tech_remove_recipe("electronics", "electronic-circuit")
	fun.tech_remove_recipe("electronics", "basic-electronic-components")
	fun.tech_remove_recipe("basic-electronics", "silicon-plate")
	fun.tech_remove_recipe("silicon-processing", "silicon-plate")
	fun.tech_remove_recipe("advanced-electronics", "phenolic-board")
	fun.tech_remove_recipe("advanced-electronics", "electronic-components")
	fun.tech_remove_recipe("advanced-electronics-2", "intergrated-electronics")
	fun.tech_remove_recipe("advanced-electronics-2", "fibreglass-board")
	fun.tech_remove_recipe("advanced-electronics-2", "superior-circuit-board")
	fun.tech_remove_recipe("advanced-electronics", "circuit-board")
	fun.tech_remove_recipe("advanced-electronics", "advanced-circuit")
	fun.tech_remove_recipe("advanced-electronics-2", "advanced-logic-board")
	fun.tech_remove_recipe("advanced-electronics-3", "processing-electronics")
	fun.tech_remove_recipe("advanced-electronics-3", "gilded-copper-cable")
	fun.tech_remove_recipe("advanced-electronics-3", "advanced-processing-unit")
	fun.tech_remove_recipe("advanced-electronics-3", "multi-layer-circuit-board")
	fun.tech_remove_recipe("advanced-electronics-3", "module-processor-board-3")
	fun.tech_remove_recipe("advanced-electronics-2", "module-processor-board-2")
	fun.tech_remove_recipe("modules", "module-processor-board")
	fun.tech_remove_recipe("ceramics", "silicon-nitride")
	fun.tech_remove_recipe("silicon-processing", "bob-silicon-plate")
	fun.tech_remove_recipe("silicon-processing", "silicon-plate2")
	fun.tech_remove_recipe("silicon-processing", "silicon-wafer")
	fun.tech_remove_recipe("chemical-processing-2", "ferric-chloride-solution")

end
