
--check for bob logistics and update rare earth mine if its active
	if mods["boblogistics"] then
		if settings.startup["bobmods-logistics-inserteroverhaul"].value then
		fun.ingredient_replace("rare-earth-mine","fast-inserter","long-handed-inserter")
		end
	end
	
if mods["boblibrary"] then

	require("prototypes/bobs-mods/overrides/overrides")
	
end

	--data-updates overrides
--global replacement
fun.global_item_replacer('basic-circuit-board', 'pcb1')
fun.global_item_replacer('circuit-board', 'pcb2')
fun.global_item_replacer('superior-circuit-board', 'pcb3')
fun.global_item_replacer('electronic-circuit', 'cm-electronic-circuit')
fun.global_item_replacer('advanced-circuit', 'cm-advanced-circuit')
fun.global_item_replacer('processing-unit', 'cm-processing-unit')
fun.global_item_replacer('advanced-processing-unit', 'intelligent-unit')
fun.global_item_replacer('bauxite-ore', 'ore-aluminium')
fun.global_item_replacer('tin-ore', 'ore-tin')
fun.global_item_replacer('lead-ore', 'ore-lead')
fun.global_item_replacer('nickel-ore', 'ore-nickel')
fun.global_item_replacer('zinc-ore', 'ore-zinc')
fun.global_item_replacer('rutile-ore', 'ore-titanium')
fun.global_item_replacer('tinned-copper-cable', 'tinned-cable')
