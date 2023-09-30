if mods['bobrevamp'] then
	if mods['pyalienlife'] then
		RECIPE('bio-oil-4'):replace_result('petroleum-gas', 'sour-gas')
	end
end

if mods['bobelectronics'] then
	if mods['pycoalprocessing'] then
		RECIPE('ferric-chloride-solution'):add_unlock('sulfur-processing')
		RECIPE('ferric-chloride-solution'):set_fields{ category = "chemistry" }:set_fields{energy_required = 3}
		RECIPE('ferric-chloride-solution'):remove_ingredient('iron-ore')
		RECIPE('ferric-chloride-solution'):add_ingredient({type = "fluid", name = "acidgas", amount = 5}):add_ingredient({type = "item", name = "iron-ore", amount = 10})
		table.insert(data.raw.recipe['ferric-chloride-solution'].results, {type = "fluid", name = "acidgas", amount = 6, probability = 0.5})
	end

	if mods['pypetroleumhandling'] then
		RECIPE('synthetic-wood'):add_unlock('heavy-oil-mk01')
		RECIPE('synthetic-wood'):remove_unlock('plastics')
		RECIPE('bob-resin-oil'):add_unlock('heavy-oil-mk01')
	end

	if mods['pyhightech'] then

		data.raw.recipe['module-processer-board-3'] = nil
        data.raw.recipe['multi-layer-circuit-board'] = nil
        data.raw.recipe['processing-electronics'] = nil
        data.raw.recipe['advanced-processing-unit'] = nil

        fun.global_prereq_replacer('advanced-electronics-3', 'nano-tech')

        data.raw.technology['advanced-electronics-3'] = nil

        RECIPE('pcb4'):add_ingredient({type = "fluid", name = "ferric-chloride-solution", amount = 100})

		--[[
        TECHNOLOGY('bob-repair-pack-3'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('bob-drills-2'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('bob-area-drills-2'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('vehicle-energy-sheild-equipment-1'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('personal-roboport-modular-equipment-1'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('fluid-generator-2'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('vehicle-roboport-modular-equipment-1'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('electronics-machine-2'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('bob-electric-energy-accumulators-2'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('electric-substation-2'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('advanced-research'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        TECHNOLOGY('vehicle-laser-defense-equipment-2'):add_prereq('integrated-circuits-1'):remove_prereq('advanced-electronics')
        ]]--
	end

	if mods['pyalienlife'] then
		RECIPE('bob-resin-oil'):remove_ingredient('heavy-oil'):add_ingredient({type = "fluid", name = "heavy-oil", amount = 1}):replace_result('saps', {'saps', amount = 2})
	end
end