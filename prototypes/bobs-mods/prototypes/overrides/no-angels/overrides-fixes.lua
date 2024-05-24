if mods['boblogistics'] then
	if mods['pyindustry'] then
		if mods['underground-pipe-pack'] then
			data.raw['pipe-to-ground']['underground-i-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['underground-L-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['underground-t-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['underground-cross-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-one-forward-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-one-left-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-one-right-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-one-reverse-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-perpendicular-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-parallel-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-perpendicular-secondary-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-parallel-secondary-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-L-FL-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-L-FR-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-L-RR-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-two-L-RL-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-three-forward-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-three-left-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-three-right-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-three-reverse-t3-pipe'].next_upgrade = nil
			data.raw['pipe-to-ground']['one-to-four-t3-pipe'].next_upgrade = nil
		end
	end
end
if mods['bobassembly'] then
	data.raw['assembling-machine']['chemical-plant'].next_upgrade = nil
end

if mods['bobrevamp'] then
	if mods['bobplates'] then
		fun.global_prereq_replacer('chemical-plant', 'machines-mk01')
	end
	if data.raw.technology['chemical-plant-4'] ~= nil then
		data.raw.technology['chemical-plant-4'] = nil
	end
	if data.raw.technology['chemical-plant-3'] ~= nil then
		data.raw.technology['chemical-plant-3'] = nil
	end
	if data.raw.technology['chemical-plant-2'] ~= nil then
		data.raw.technology['chemical-plant-2'] = nil
	end
	if data.raw.technology['chemical-plant'] ~= nil then
		data.raw.technology['chemical-plant'] = nil
	end
end

if mods['bobequipment'] then
	if mods['pyalternativeenergy'] then
		TECHNOLOGY('exoskeleton-equipment'):remove_prereq('machine-components-mk04'):remove_prereq('power-armor')
		TECHNOLOGY('exoskeleton-equipment'):add_prereq('machine-components-mk03'):add_prereq('modular-armor'):add_prereq('low-density-structure')

		data.raw.technology['exoskeleton-equipment'].unit = {
    		count = 3600,
    		ingredients = {
      			{
        			amount = 20,
        			name = "automation-science-pack",
        			type = "item"
      			},
      			{
        			amount = 6,
        			name = "logistic-science-pack",
        			type = "item"
      			},
      			{
        			amount = 2,
        			name = "chemical-science-pack",
        			type = "item"
      			},
      			{
        			amount = 1,
        			name = "py-science-pack-3",
        			type = "item"
      			},
      			{
        			amount = 3,
        			name = "py-science-pack-2",
        			type = "item"
      			},
      			{
        			amount = 10,
        			name = "py-science-pack-1",
        			type = "item"
      			},
      			{
        			amount = 3,
        			name = "military-science-pack",
        			type = "item"
      			}
    		},
    		time = 300
  		}

		TECHNOLOGY('exoskeleton-equipment-2'):remove_prereq('chemical-science-pack')
		TECHNOLOGY('exoskeleton-equipment-2'):add_pack('production-science-pack')
		TECHNOLOGY('exoskeleton-equipment-2'):add_prereq('machine-components-mk04'):add_prereq('power-armor')

		TECHNOLOGY('laika'):remove_prereq('exoskeleton-equipment')
		TECHNOLOGY('laika'):add_prereq('exoskeleton-equipment-2')

		fun.results_replacer('exoskeleton-equipment', 'exoskeleton-equipment', 'exoskeleton-equipment-2')
		fun.results_replacer('exoskeleton-equipment-2', 'exoskeleton-equipment-2', 'exoskeleton-equipment')

		fun.tech_add_recipe('exoskeleton-equipment', 'exoskeleton-equipment-2')
		fun.tech_add_recipe('exoskeleton-equipment-2', 'exoskeleton-equipment')

		fun.tech_remove_recipe('exoskeleton-equipment', 'exoskeleton-equipment')
		fun.tech_remove_recipe('exoskeleton-equipment-2', 'exoskeleton-equipment-2')

		data.raw.recipe['exoskeleton-equipment-2'].ingredients = nil
		RECIPE('exoskeleton-equipment-2'):add_ingredient({type = "item", name = "low-density-structure", amount = 2}):add_ingredient({type = "item", name = "mechanical-parts-03", amount = 1}):add_ingredient({type = "item", name = "brake-03", amount = 1}):add_ingredient({type = "item", name = "gearbox-mk03", amount = 1}):add_ingredient({type = "item", name = "hydraulic-system-mk01", amount = 1})

	end
end
