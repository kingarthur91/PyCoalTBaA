if mods['pyalienlife'] then
	--msp fixes
	TECHNOLOGY('logistics'):add_prereq('optics')
	TECHNOLOGY('laser-turret'):remove_prereq('chemical-science-pack'):add_prereq('py-science-pack-mk02'):remove_pack('chemical-science-pack')
	TECHNOLOGY('tank'):remove_prereq('chemical-science-pack'):remove_pack('chemical-science-pack')
	TECHNOLOGY('military-science-pack'):add_prereq('circuit-network'):add_prereq('oil-processing'):add_prereq('electric-energy-accumulators')
	TECHNOLOGY('py-science-pack-mk02'):add_prereq('rail-signals')
	TECHNOLOGY('py-science-pack-mk03'):add_prereq('productivity-module-2')
	TECHNOLOGY('production-science-pack'):add_prereq('automation-3')

	fun.results_replacer('more-science-pack-21', 'exoskeleton-equipment', 'belt-immunity-equipment')
	if mods['pyhightech'] then
		TECHNOLOGY('tank'):add_prereq('basic-electronics')
		RECIPE('more-science-pack-25'):add_ingredient('intelligent-unit')
	else
		TECHNOLOGY('tank'):add_prereq('py-science-pack-mk02')
	end
	if mods['pyalternativeenergy'] then
		RECIPE('more-science-pack-9'):remove_ingredient('solar-panel-mk01')
		TECHNOLOGY('py-science-pack-mk03'):add_prereq('electric-energy-distribution-4')
	end
	if mods['bobtech'] then
		bobmods.lib.recipe.remove_ingredient("production-science-pack", "assembling-machine-2")
		bobmods.lib.recipe.remove_ingredient("production-science-pack", "chemical-plant")
	end
	--make all research
	for i=1,30 do
		RECIPE("more-science-pack-"..i):change_category('research')
	end 
end