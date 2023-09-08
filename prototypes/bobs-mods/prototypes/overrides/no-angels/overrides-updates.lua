if mods['bobrevamp'] then
	if mods['pyalienlife'] then
		RECIPE('bio-oil-4'):replace_result('petroleum-gas', 'sour-gas')
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

if mods['bobclasses'] then
	if mods['pyhightech'] then
		RECIPE('player-power-core'):set_fields{ category = "pa" }:set_fields{energy_required = 45}
		RECIPE('player-power-core'):remove_ingredient('battery-mk01'):remove_ingredient('rtg'):remove_ingredient('processing-unit')
		RECIPE('player-power-core'):add_ingredient({type = "item", name = "nexelit-battery", amount = 5}):add_ingredient({type = "item", name = "nuclear-sample", amount = 1}):add_ingredient({type = "item", name = "processing-unit", amount = 15})
	end
	if mods['pyalternativeenergy'] then
		--mk01
		TECHNOLOGY('bodies'):add_pack("py-science-pack-3")
		TECHNOLOGY('bodies'):add_prereq("simik-mk01")

		TECHNOLOGY('fighter-body'):remove_prereq('exoskeleton-equipment'):add_prereq('energy-shield-mk2-equipment'):add_pack('py-science-pack-3')
		TECHNOLOGY('builder-body'):add_pack('py-science-pack-3')
		TECHNOLOGY('miner-body'):add_pack('py-science-pack-3')

		RECIPE('player-brain'):set_fields{ category = "data-array" }:set_fields{energy_required = 30}
		RECIPE('player-brain'):remove_ingredient('superior-circuit-board'):remove_ingredient('intergrated-electronics'):remove_ingredient('basic-electronic-components'):remove_ingredient('electronic-components')
		RECIPE('player-brain'):add_ingredient({type = "item", name = "neuroprocessor", amount = 5})

		RECIPE('player-head'):set_fields{energy_required = 50}
		RECIPE('player-head'):remove_ingredient('steel-plate'):add_ingredient({type = "item", name = "bones", amount = 22})

		RECIPE('player-boots'):set_fields{ category = "crafting-with-fluid" }:set_fields{energy_required = 50}
		RECIPE('player-boots'):remove_ingredient('steel-plate')
		RECIPE('player-boots'):add_ingredient({type = "fluid", name = "flue-gas", amount = 200}):add_ingredient({type = "item", name = "skin", amount = 10})

		RECIPE('player-gloves'):set_fields{ category = "nano" }:set_fields{energy_required = 70}
		RECIPE('player-gloves'):remove_ingredient('steel-plate'):remove_ingredient('small-parts-01')
		RECIPE('player-gloves'):add_ingredient({type = "item", name = "rayon", amount = 20}):add_ingredient({type = "item", name = "diamond-wire", amount = 5}):add_ingredient({type = "item", name = "latex", amount = 2})

		RECIPE('player-frame'):set_fields{ category = "nano" }:set_fields{energy_required = 70}
		RECIPE('player-frame'):remove_ingredient('steel-plate'):remove_ingredient('advanced-circuit'):remove_ingredient('electric-engine-unit')
		RECIPE('player-frame'):add_ingredient({type = "item", name = "super-steel", amount = 15}):add_ingredient({type = "item", name = "red-wire", amount = 10}):add_ingredient({type = "item", name = "green-wire", amount = 10}):add_ingredient({type = "item", name = "tinned-cable", amount = 50})

		RECIPE('character'):set_fields{ category = "creature-chamber" }:set_fields{energy_required = 500}
		RECIPE('character'):remove_ingredient('assembling-machine-2')
		RECIPE('character'):add_ingredient({type = "item", name = "bones", amount = 184}):add_ingredient({type = "item", name = "bio-sample", amount = 20}):add_ingredient({type = "item", name = "bio-sample", amount = 10}):add_ingredient({type = "item", name = "alien-sample-03", amount = 5}):add_ingredient({type = "item", name = "strorix-unknown-sample", amount = 2}):add_ingredient({type = "item", name = "earth-generic-sample", amount = 4})
		RECIPE('character'):add_ingredient({type = "fluid", name = "fetal-serum", amount = 100}):add_ingredient({type = "fluid", name = "artificial-blood", amount = 300}):add_ingredient({type = "fluid", name = "blood", amount = 700})

		RECIPE('bob-character-builder'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-builder'):remove_ingredient('player-frame'):remove_ingredient('assembling-machine-2')
		RECIPE('bob-character-builder'):add_ingredient({type = "item", name = "character", amount = 1}):add_ingredient({type = "item", name = "mechanical-parts-02", amount = 5})

		RECIPE('bob-character-fighter'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-fighter'):remove_ingredient('assembling-machine-2'):remove_ingredient('exoskeleton-equipment'):remove_ingredient('player-frame')
		RECIPE('bob-character-fighter'):add_ingredient({type = "item", name = "character", amount = 1}):add_ingredient({type = "item", name = "gunpowder", amount = 20}):add_ingredient({type = "item", name = "pu-239", amount = 15}):add_ingredient({type = "item", name = "energy-shield-mk2-equipment", amount = 1})

		RECIPE('bob-character-miner'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-miner'):remove_ingredient('assembling-machine-2'):remove_ingredient('electric-furnace'):remove_ingredient('player-frame')
		RECIPE('bob-character-miner'):add_ingredient({type = "item", name = "character", amount = 1}):add_ingredient({type = "item", name = "drill-head", amount = 5}):add_ingredient({type = "fluid", name = "drilling-fluid-1", amount = 200})
		--mk02
		TECHNOLOGY('bodies-2'):remove_prereq('production-science-pack'):remove_prereq('nano-tech'):add_prereq('mass-production'):add_pack('utility-science-pack')
		TECHNOLOGY('fighter-body-2'):remove_prereq('exoskeleton-equipment-2'):add_prereq('bob-energy-shield-equipment-3'):add_pack('utility-science-pack')
		TECHNOLOGY('miner-body-2'):add_prereq('drilling-fluid-mk04'):add_pack('utility-science-pack')
		TECHNOLOGY('builder-body-2'):add_pack('utility-science-pack')
		TECHNOLOGY('engineer-body'):add_pack('utility-science-pack')
		TECHNOLOGY('prospector-body'):add_pack('utility-science-pack')

		RECIPE('player-brain-2'):set_fields{ category = "data-array" }:set_fields{energy_required = 30}
		RECIPE('player-brain-2'):remove_ingredient('superior-circuit-board'):remove_ingredient('intergrated-electronics'):remove_ingredient('basic-electronic-components'):remove_ingredient('electronic-components'):remove_ingredient('processing-electronics')
		RECIPE('player-brain-2'):add_ingredient({type = "item", name = "laboratory-grown-brain", amount = 1}):add_ingredient({type = "item", name = "strorix-unknown-sample", amount = 5})

		RECIPE('player-boots-2'):set_fields{ category = "crafting-with-fluid" }:set_fields{energy_required = 50}
		RECIPE('player-boots-2'):remove_ingredient('titanium-plate'):remove_ingredient('rubber')
		RECIPE('player-boots-2'):add_ingredient({type = "fluid", name = "flue-gas", amount = 200}):add_ingredient({type = "item", name = "skin", amount = 10}):add_ingredient({type = "item", name = "super-alloy", amount = 10})

		RECIPE('player-head-2'):set_fields{ category = "bio-printer" }:set_fields{energy_required = 60}
		RECIPE('player-head-2'):remove_ingredient('titanium-plate')
		RECIPE('player-head-2'):add_ingredient({type = "item", name = "bio-scafold", amount = 2})
		RECIPE('player-head-2'):add_ingredient({type = "fluid", name = "psc", amount = 100}):add_ingredient({type = "fluid", name = "fetal-serum", amount = 100})

		RECIPE('player-gloves-2'):set_fields{ category = "nano" }:set_fields{energy_required = 70}
		RECIPE('player-gloves-2'):remove_ingredient('titanium-plate'):remove_ingredient('small-parts-01')
		RECIPE('player-gloves-2'):add_ingredient({type = "item", name = "nano-mesh", amount = 20}):add_ingredient({type = "item", name = "biofilm", amount = 10}):add_ingredient({type = "item", name = "aramid", amount = 10}):add_ingredient({type = "item", name = "kevlar", amount = 30}):add_ingredient({type = "item", name = "silver-foam", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2})

		RECIPE('player-frame-2'):set_fields{ category = "nano" }:set_fields{energy_required = 70}
		RECIPE('player-frame-2'):remove_ingredient('titanium-plate'):remove_ingredient('advanced-circuit'):remove_ingredient('electric-engine-unit'):remove_ingredient('processing-unit')
		RECIPE('player-frame-2'):add_ingredient({type = "item", name = "super-steel", amount = 15}):add_ingredient({type = "item", name = "red-wire", amount = 10}):add_ingredient({type = "item", name = "green-wire", amount = 10}):add_ingredient({type = "item", name = "tinned-cable", amount = 50}):add_ingredient({type = "item", name = "quantum-dots", amount = 10})

		RECIPE('bob-character-balanced-2'):set_fields{ category = "creature-chamber" }:set_fields{energy_required = 120}
		RECIPE('bob-character-balanced-2'):remove_ingredient('assembling-machine-2')
		RECIPE('bob-character-balanced-2'):add_ingredient({type = "item", name = "scafold-free-bones", amount = 1}):add_ingredient({type = "item", name = "in-vitro-meat", amount = 1}):add_ingredient({type = "item", name = "bioartificial-guts", amount = 1}):add_ingredient({type = "item", name = "biomimetic-skin", amount = 1}):add_ingredient({type = "item", name = "tissue-engineered-fat", amount = 1})
		RECIPE('bob-character-balanced-2'):add_ingredient({type = "fluid", name = "fetal-serum", amount = 100}):add_ingredient({type = "fluid", name = "artificial-blood", amount = 50}):add_ingredient({type = "fluid", name = "tholins", amount = 100})

		RECIPE('bob-character-builder-2'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-builder-2'):remove_ingredient('player-frame-2')
		RECIPE('bob-character-builder-2'):add_ingredient({type = "item", name = "bob-character-balanced-2", amount = 1}):add_ingredient({type = "item", name = "mechanical-parts-04", amount = 5})

		RECIPE('bob-character-engineer'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-engineer'):remove_ingredient('player-frame-2'):remove_ingredient('electric-furnace'):remove_ingredient('assembling-machine-3')
		RECIPE('bob-character-engineer'):add_ingredient({type = "item", name = "bob-character-balanced-2", amount = 1}):add_ingredient({type = "item", name = "mechanical-parts-04", amount = 10}):add_ingredient({type = "item", name = "mega-drill-head", amount = 5})

		RECIPE('bob-character-fighter-2'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-fighter-2'):remove_ingredient('assembling-machine-2'):remove_ingredient('exoskeleton-equipment-2'):remove_ingredient('player-frame-2')
		RECIPE('bob-character-fighter-2'):add_ingredient({type = "item", name = "bob-character-balanced-2", amount = 1}):add_ingredient({type = "item", name = "exoskeleton-equipment", amount = 1}):add_ingredient({type = "item", name = "energy-shield-mk3-equipment", amount = 1}):add_ingredient({type = "fluid", name = "helium", amount = 100})

		RECIPE('bob-character-miner-2'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-miner-2'):remove_ingredient('assembling-machine-2'):remove_ingredient('electric-furnace-2'):remove_ingredient('player-frame-2')
		RECIPE('bob-character-miner-2'):add_ingredient({type = "item", name = "bob-character-balanced-2", amount = 1}):add_ingredient({type = "item", name = "mega-drill-head", amount = 10}):add_ingredient({type = "fluid", name = "drilling-fluid-3", amount = 200})

		RECIPE('bob-character-prospector'):set_fields{ category = "biofactory" }:set_fields{energy_required = 50}
		RECIPE('bob-character-prospector'):remove_ingredient('assembling-machine-2'):remove_ingredient('electric-furnace'):remove_ingredient('player-frame-2')
		RECIPE('bob-character-prospector'):add_ingredient({type = "item", name = "bob-character-balanced-2", amount = 1}):add_ingredient({type = "item", name = "mega-drill-head", amount = 5})

		require('__PyCoalTBaA__/prototypes/bobs-mods/prototypes/recipes/bodies')
	end
end