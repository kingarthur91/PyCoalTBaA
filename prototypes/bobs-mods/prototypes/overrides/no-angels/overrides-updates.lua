if mods['bobrevamp'] then
	if mods['pyalienlife'] then
		RECIPE('bio-oil-4'):replace_result('petroleum-gas', 'sour-gas')
	end
end

if mods['bobplates'] then
	if mods['pyrawores'] then

		fun.remove_recipe_unlock('salt')

		data.raw.recipe['salt'] = nil

		if mods['bobores'] then
			--zinc
            data.raw.resource['ore-zinc'] = nil
            data.raw['autoplace-control']['ore-zinc'] = nil
            data.raw.resource['zinc-ore'].minable.fluid_amount = 40
            data.raw.resource['zinc-ore'].minable.required_fluid = 'aromatics'
            --lead
            data.raw.resource['ore-lead'] = nil
            data.raw['autoplace-control']['ore-lead'] = nil
            --aluminuminum
            data.raw.resource['ore-aluminium'] = nil
            data.raw['autoplace-control']['ore-aluminium'] = nil
            data.raw.resource['bauxite-ore'].minable.fluid_amount = 100
        	data.raw.resource['bauxite-ore'].minable.required_fluid = "coal-gas"
            --nickel
            data.raw.resource['ore-nickel'] = nil
            data.raw['autoplace-control']['ore-nickel'] = nil
            data.raw.resource['nickel-ore'].minable.fluid_amount = 40
            data.raw.resource['nickel-ore'].minable.required_fluid = "syngas"
            --titanium
            data.raw.resource['ore-titanium'] = nil
            data.raw['autoplace-control']['ore-titanium'] = nil
            data.raw.resource['rutile-ore'].minable.fluid_amount = 40
            data.raw.resource['rutile-ore'].minable.required_fluid = (mods["pyfusionenergy"] and "acetylene" or "syngas")
            --tin
            data.raw.resource['ore-tin'] = nil
            data.raw['autoplace-control']['ore-tin'] = nil
            data.raw.resource['tin-ore'].minable.fluid_amount = 100
            data.raw.resource['tin-ore'].minable.required_fluid = "steam"
		end

		data.raw.recipe['silver-plate'].enabled = false
    	data.raw.recipe['silver-plate'].hidden = true

    	RECIPE('silver-plate-1'):add_ingredient({type = "item", name = "silver-ore", amount = 18})
    	RECIPE('slz-pulp-01'):add_ingredient({type = "item", name = "silver-ore", amount = 4})
    	RECIPE('sl-01-2'):add_ingredient({type = "item", name = "silver-ore", amount = 6})
    	RECIPE('molten-silver-01'):add_ingredient({type = "item", name = "silver-ore", amount = 4})

        TECHNOLOGY('lead-processing'):add_prereq('silver-mk01')

        RECIPE('bob-gold-plate'):remove_ingredient('gold-ore')
        RECIPE('bob-gold-plate'):add_ingredient({type = "item", name = "gold-ore", amount = 10})

        RECIPE('gold-precipitate'):add_ingredient({type = "item", name = "gold-ore", amount = 5})

        TECHNOLOGY('nickel-mk01'):add_prereq('nickel-procesing')

        TECHNOLOGY('invar-processing'):remove_prereq('logistic-science-pack')
        TECHNOLOGY('invar-processing'):remove_pack('logistic-science-pack')
	end
    RECIPE('silicon-nitride'):add_ingredient({type = "item", name = "ceramic", amount = 5})

    if settings.startup["bobmods-plates-purewater"].value and settings.startup["bobmods-assembly-distilleries"].value then
        for i, machine in pairs(data.raw['assembling-machine']) do
            for c, machinecat in pairs(machine.crafting_categories) do
                if machinecat == 'distillery' then
                    machine.crafting_categories[c] = nil
                end
            end
        end

        bobmods.lib.machine.add_category(data.raw['assembling-machine']['bob-distillery'], 'distillery')
        bobmods.lib.machine.add_category(data.raw['assembling-machine']['bob-distillery-2'], 'distillery')
        bobmods.lib.machine.add_category(data.raw['assembling-machine']['bob-distillery-3'], 'distillery')
        bobmods.lib.machine.add_category(data.raw['assembling-machine']['bob-distillery-4'], 'distillery')
        bobmods.lib.machine.add_category(data.raw['assembling-machine']['bob-distillery-5'], 'distillery')

        data.raw.furnace['bob-distillery'].allowed_effects = {"speed", "consumption"}
        data.raw.furnace['bob-distillery-2'].allowed_effects = {"speed", "consumption"}
        data.raw.furnace['bob-distillery-3'].allowed_effects = {"speed", "consumption"}
        data.raw.furnace['bob-distillery-4'].allowed_effects = {"speed", "consumption"}
        data.raw.furnace['bob-distillery-5'].allowed_effects = {"speed", "consumption"}
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

    if mods['pyrawores'] then
        --data.raw.recipe['tinned-copper-cable'].hidden = true
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

        TECHNOLOGY('bob-repair-pack-3'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('bob-drills-2'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('bob-area-drills-2'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('vehicle-energy-sheild-equipment-1'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('personal-roboport-modular-equipment-1'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('fluid-generator-2'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('vehicle-roboport-modular-equipment-1'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('electronics-machine-2'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('bob-electric-energy-accumulators-2'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('electric-substation-2'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('advanced-research'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
        TECHNOLOGY('vehicle-laser-defense-equipment-2'):add_prereq('basic-electronics'):remove_prereq('advanced-electronics')
	end

	if mods['pyalienlife'] then
		RECIPE('bob-resin-oil'):remove_ingredient('heavy-oil'):add_ingredient({type = "fluid", name = "heavy-oil", amount = 1}):replace_result('saps', {'saps', amount = 2})
	end
end

if mods['bobrevamp'] then
    if bobmods.plates and settings.startup["bobmods-revamp-rtg"].value and settings.startup["bobmods-revamp-hardmode"].value then
        bobmods.lib.recipe.remove_result('ammoniated-brine', 'ammoniated-brine')
        bobmods.lib.recipe.add_result("ammoniated-brine", { type = "fluid", name = "ammoniated-brine", amount = 35 })
        if mods['pyalternativeenergy'] then
            require('__PyCoalTBaA__/prototypes/bobs-mods/prototypes/recipes/sodium-carbonate')
            bobmods.lib.recipe.remove_result('ammonium-chloride-recycling', 'ammonia')
                bobmods.lib.recipe.add_result("ammonium-chloride-recycling", { type = "fluid", name = "ammonia", amount = 30 })

            bobmods.lib.tech.add_prerequisite('nuclear-power-mk02', 'rtg')
            bobmods.lib.tech.add_prerequisite('spidertron', 'nuclear-power-mk02')

            fun.tech_remove_recipe('rtg', 'rtg')
        end
    end
end