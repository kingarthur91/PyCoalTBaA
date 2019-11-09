--replace duplicated items
fun.global_item_replacer('coke', 'solid-coke')
fun.global_item_replacer('limestone', 'solid-limestone')
fun.global_item_replacer('acidgas', 'gas-acid')
fun.global_item_replacer('salt', 'solid-salt')
fun.global_item_replacer('sand', 'solid-sand')
fun.global_item_replacer('syngas', 'gas-synthesis')
fun.global_item_replacer('methanol', 'gas-methanol')
fun.global_item_replacer('carbon-dioxide', 'gas-carbon-dioxide')
fun.global_item_replacer('carbon', 'solid-carbon')
fun.global_item_replacer('lime', 'solid-lime')
fun.global_item_replacer('angels-plate-chrome', 'chromium')
fun.global_item_replacer('basic-circuit-board', 'pcb1')
fun.global_item_replacer('solid-clay', 'clay')
fun.global_item_replacer('phenolic-board', 'phenolicboard')
fun.global_item_replacer('fibreglass-board', 'fiberglass')
fun.global_item_replacer('fertiliser', 'py-fertilizer')
fun.global_item_replacer('solid-fertilizer', 'py-fertilizer')
fun.global_item_replacer('benzene', 'gas-benzene')
fun.global_item_replacer('propene', 'gas-propene')
fun.global_item_replacer('acetone', 'gas-acetone')
fun.global_item_replacer('chloromethane', 'gas-chlor-methane')
fun.global_item_replacer('methane', 'gas-methane')
fun.global_item_replacer('methanal', 'gas-formaldehyde')
fun.global_item_replacer('ammonia', 'gas-ammonia')
fun.global_item_replacer('ech', 'gas-epichlorhydrin')
fun.global_item_replacer('ethylene', 'gas-ethylene')
fun.global_item_replacer('glass-fiber', 'angels-coil-glass-fiber')
fun.global_item_replacer('wooden-board', 'fiberboard')
fun.global_item_replacer('advanced-processing-unit', 'intelligent-unit')
fun.global_item_replacer('multi-layer-circuit-board', 'pcb4')
fun.global_item_replacer('electronic-components', 'transistor')
fun.global_item_replacer('basic-electronic-components', 'resistor2')
fun.global_item_replacer('processing-electronics', 'kondo-processor')
fun.global_item_replacer('intergrated-electronics', 'microchip')
fun.global_item_replacer('module-processor-board', 'pcb2')
fun.global_item_replacer('module-processor-board-2', 'pcb3')
fun.global_item_replacer('module-processor-board-3', 'pcb4')
fun.global_item_replacer('solid-sodium-chlorate', 'sodium-chlorate')
fun.global_item_replacer('black-liquor', 'liquid-black-liquor')
fun.global_item_replacer('acetic-acid', 'liquid-acetic-acid')
fun.global_item_replacer('bio-raw-meat', 'meat')
fun.global_item_replacer('liquid-molten-aluminium', 'molten-aluminium')
fun.global_item_replacer('liquid-molten-copper', 'molten-copper')
fun.global_item_replacer('liquid-molten-iron', 'molten-iron')
fun.global_item_replacer('liquid-molten-lead', 'molten-lead')
fun.global_item_replacer('liquid-molten-silver', 'molten-silver')
fun.global_item_replacer('liquid-molten-nickel', 'molten-nickel')
fun.global_item_replacer('liquid-molten-steel', 'molten-steel')
fun.global_item_replacer('liquid-molten-tin', 'molten-tin')
fun.global_item_replacer('liquid-molten-titanium', 'molten-titanium')
fun.global_item_replacer('liquid-molten-zinc', 'molten-zinc')
fun.global_item_replacer('liquid-molten-chrome', 'molten-chromium')
fun.global_item_replacer('hydrogen', 'gas-hydrogen')
fun.global_item_replacer('chlorine', 'gas-chlorine')
fun.global_item_replacer('oxygen', 'gas-oxygen')
fun.global_item_replacer('nitrogen', 'gas-nitrogen')
fun.global_item_replacer('hydrogen-chloride', 'gas-hydrogen-chloride')
fun.global_item_replacer('solid-salt', 'salt')
fun.global_item_replacer('solid-sodium-carbonate', 'sodium-carbonate')
fun.global_item_replacer('solid-sodium-hydroxide', 'sodium-hydroxide')
fun.global_item_replacer('solid-sodium-sulfate', 'sodium-sulfate')

--replace results
fun.results_replacer('angelsore5-crushed-processing', 'ore-nickel', 'ore-aluminium')

--Fluid Converter Recipes
if mods['angelspetrochem'] then
    angelsmods.functions.make_converter('acidgas', 'gas-acid')
    angelsmods.functions.make_converter('syngas', 'gas-synthesis')
    angelsmods.functions.make_converter('methanol', 'gas-methanol')
    angelsmods.functions.make_converter('carbon-dioxide', 'gas-carbon-dioxide')
    angelsmods.functions.make_converter('gas-benzene', 'benzene')
    angelsmods.functions.make_converter('gas-propene', 'propene')
    angelsmods.functions.make_converter('chloromethane', 'gas-chlor-methane')
    angelsmods.functions.make_converter('methane', 'gas-methane')
    angelsmods.functions.make_converter('ammonia', 'gas-ammonia')
    angelsmods.functions.make_converter('ech', 'gas-epichlorhydrin')
    angelsmods.functions.make_converter('black-liquor', 'liquid-black-liquor')
    angelsmods.functions.make_converter('acetic-acid', 'liquid-acetic-acid')
end

--replace miner fluid
if data.raw.resource['borax'] ~= nil then
    if data.raw.fluid['gas-synthesis'] ~= nil then
        data.raw.resource['borax'].minable.required_fluid = 'gas-synthesis'
    end
end

if data.raw.resource['phosphate-rock'] ~= nil then
    if data.raw.fluid['gas-synthesis'] ~= nil then
        data.raw.resource['phosphate-rock'].minable.required_fluid = 'gas-synthesis'
    end
end
--

--recipe overrides
--[[
fun.Recipe
	{
		name = "angelsore6-crushed",
		enabled = true,
		category = "ore-sorting-t1",
		subgroup = "ore-processing-a"
	}
]] fun.Recipe {
    name = 'solid-alginic-acid',
    category = 'crafting'
}

fun.Recipe {
    name = 'wooden-board-paper',
    category = 'crafting',
    ingredients = {
        {
            {type = 'item', name = 'solid-paper', amount = 4}
        }
    }
}

fun.Mod_Category('biter-small-butchering', 'crafting-with-fluid')
fun.add_result('biter-small-butchering', {type = 'fluid', name = 'blood', amount = 20})
fun.add_result('biter-small-butchering', {name = 'bones', amount = 3})

fun.Mod_Category('biter-medium-butchering', 'crafting-with-fluid')
fun.add_result('biter-medium-butchering', {type = 'fluid', name = 'blood', amount = 30})
fun.add_result('biter-medium-butchering', {name = 'bones', amount = 3})

fun.Mod_Category('biter-big-butchering', 'crafting-with-fluid')
fun.add_result('biter-big-butchering', {type = 'fluid', name = 'blood', amount = 60})
fun.add_result('biter-big-butchering', {name = 'bones', amount = 5})

fun.Mod_Category('fish-butchery-1', 'crafting-with-fluid')
fun.add_result('fish-butchery-1', {type = 'fluid', name = 'blood', amount = 15})
fun.add_result('fish-butchery-1', {name = 'bones', amount = 3})

fun.Mod_Category('fish-butchery-2', 'crafting-with-fluid')
fun.add_result('fish-butchery-2', {type = 'fluid', name = 'blood', amount = 25})
fun.add_result('fish-butchery-2', {name = 'bones', amount = 2})

fun.Mod_Category('fish-butchery-3', 'crafting-with-fluid')
fun.add_result('fish-butchery-3', {type = 'fluid', name = 'blood', amount = 40})
fun.add_result('fish-butchery-3', {name = 'bones', amount = 5})

fun.Recipe {
    type = 'recipe',
    name = 'steak',
    category = 'hpf',
    energy_required = .75,
    ingredients = {
        {
            {type = 'item', name = 'meat', amount = 1}
        }
    },
    results = {
        {
            {type = 'item', name = 'solid-carbon', amount = 1}
        }
    }
}

fun.Recipe {
    name = 'angels-glass-fiber-board',
    energy_required = 25,
    category = 'crafting-with-fluid',
    ingredients = {
        {
            {type = 'item', name = 'angels-coil-glass-fiber', amount = 5}
        },
        {
            {type = 'item', name = 'epoxy', amount = 7}
        },
        {
            {type = 'item', name = 'plastic-bar', amount = 3}
        },
        {
            {type = 'fluid', name = 'boric-acid', amount = 150}
        },
        {
            {type = 'fluid', name = 'steam', amount = 200}
        }
    },
    results = {
        {
            {type = 'item', name = 'fiberglass', amount = 1}
        }
    }
}
fun.results_replacer('angelsore3-crushed-processing', 'iron-ore', 'raw-borax')
fun.Recipe
	{
        name = "angelsore3-crushed-processing",
        ingredients =
			{
				{
					--{type = "item", name = "angels-ore3-crushed", amount= "+1"}
				}
			},
        results =
			{
				{
					{type = "item", name = "raw-borax", amount=1}
				}
			}
     }
 --[[
fun.Recipe
    {
        name = "angelsore4-crystal-processing",
        ingredients = { {type = "item", name = "angels-ore4-crystal", amount= "+1"} },
        results = { {type = "item", name = "niobium-ore", amount=1} }
    }
   --TIER 4
     {
        name = "angelsore2-pure-processing",
        ingredients = { {type = "item", name = "angels-ore2-pure", amount= "+1"} },
        results = { {type = "item", name = "niobium-ore", amount=1} }
     },
     {
        name = "angelsore4-pure-processing",
        ingredients = { {type = "item", name = "angels-ore4-pure", amount= "+1"} },
        results = { {type = "item", name = "niobium-ore", amount=2} }
     },
     {
        name = "angelsore5-pure-processing",
        ingredients = { {type = "item", name = "angels-ore5-pure", amount= "+1"} },
        results = { {type = "item", name = "niobium-ore", amount=1} }
     },

   --TIER 3
     {
        name = "angelsore3-crystal-processing",
        ingredients = { {type = "item", name = "angels-ore3-crystal", amount= "+1"} },
        results = { {type = "item", name = "raw-borax", amount=1} }
     },
   --TIER 4
     {
        name = "angelsore3-pure-processing",
        ingredients = { {type = "item", name = "angels-ore3-pure", amount= "+1"} },
        results = { {type = "item", name = "raw-borax", amount=1} }
     },
     {
        name = "angelsore4-pure-processing",
        ingredients = { {type = "item", name = "angels-ore4-pure", amount= "+1"} },
        results = { {type = "item", name = "raw-borax", amount=2} }
     },
     {
        name = "angelsore5-pure-processing",
        ingredients = { {type = "item", name = "angels-ore5-pure", amount= "+1"} },
        results = { {type = "item", name = "raw-borax", amount=1} }
     },

		{
		name = "clowns-ore1-crushed-processing",
		ingredients = {{type = "item", name = "clowns-ore1-crushed", amount = "+1"}},
		results = {{type = "item", name = "niobium-ore", amount = 1}}
		},
		{
		name = "clowns-ore1-chunk-processing",
		ingredients = {{type = "item", name = "clowns-ore1-chunk", amount = "+1"}},
		results = {{type = "item", name = "niobium-ore", amount = 1}}
		},
		{
		name = "clowns-ore1-crystal-processing",
		ingredients = {{type = "item", name = "clowns-ore1-crystal", amount = "+1"}},
		results = {{type = "item", name = "niobium-ore", amount = 1}}
		},
		{
		name = "clowns-ore1-pure-processing",
		ingredients = {{type = "item", name = "clowns-ore1-pure", amount = "+1"}},
		results = {{type = "item", name = "niobium-ore", amount = 1}}
		},

		{
		name = "clowns-ore3-crushed-processing",
		ingredients = {{type = "item", name = "clowns-ore3-crushed", amount = "+1"}},
		results = {{type = "item", name = "raw-borax", amount = 1}}
		},
		{
		name = "clowns-ore3-chunk-processing",
		ingredients = {{type = "item", name = "clowns-ore3-chunk", amount = "+1"}},
		results = {{type = "item", name = "raw-borax", amount = 1}}
		},
		{
		name = "clowns-ore3-crystal-processing",
		ingredients = {{type = "item", name = "clowns-ore3-crystal", amount = "+1"}},
		results = {{type = "item", name = "raw-borax", amount = 1}}
		},
		{
		name = "clowns-ore3-pure-processing",
		ingredients = {{type = "item", name = "clowns-ore3-pure", amount = "+1"}},
		results = {{type = "item", name = "raw-borax", amount = 1}}
		},
]] --tech overrides
--
--

--[[
   --TIER 3
fun.Patch
	{
		name = "angelsore2-crystal-processing",
        ingredients =
			{
				{type = "item", name = "angels-ore2-crystal", amount= "+1"}
			},
        results =
			{
				{type = "item", name = "niobium-ore", amount=1}
			}
    }
]] fun.tech_add_recipe('slag-processing-1', 'slag-processing-nio')

fun.tech_add_recipe('advanced-ore-refining-3', 'angelsore-crystal-mix-nio-processing')

fun.tech_add_recipe('slag-processing-1', 'slag-processing-bor')

fun.tech_add_recipe('advanced-ore-refining-3', 'angelsore-crystal-mix-bor-processing')

fun.tech_add_recipe('bio-refugium-puffer', 'steak')

--code still needs delt with

--angels mod stuff
if mods['angelspetrochem'] then
    local OV = angelsmods.functions.OV

    if mods['pyfusionenergy'] then
        angelsmods.functions.OV.patch_recipes(
            {
                --TIER 3
                {
                    name = 'angelsore2-crystal-processing',
                    ingredients = {{type = 'item', name = 'angels-ore2-crystal', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                },
                {
                    name = 'angelsore4-crystal-processing',
                    ingredients = {{type = 'item', name = 'angels-ore4-crystal', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                },
                --TIER 4
                {
                    name = 'angelsore2-pure-processing',
                    ingredients = {{type = 'item', name = 'angels-ore2-pure', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                },
                {
                    name = 'angelsore4-pure-processing',
                    ingredients = {{type = 'item', name = 'angels-ore4-pure', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 2}}
                },
                {
                    name = 'angelsore5-pure-processing',
                    ingredients = {{type = 'item', name = 'angels-ore5-pure', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                }
            }
        )

    end

    if mods['Clowns-Extended-Minerals'] then
        angelsmods.functions.OV.patch_recipes(
            {
                {
                    name = 'clowns-ore6-crushed-processing',
                    ingredients = {{type = 'item', name = 'clowns-ore6-crushed', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                },
                {
                    name = 'clowns-ore6-chunk-processing',
                    ingredients = {{type = 'item', name = 'clowns-ore6-chunk', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                },
                {
                    name = 'clowns-ore6-crystal-processing',
                    ingredients = {{type = 'item', name = 'clowns-ore6-crystal', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                },
                {
                    name = 'clowns-ore6-pure-processing',
                    ingredients = {{type = 'item', name = 'clowns-ore6-pure', amount = '+1'}},
                    results = {{type = 'item', name = 'molybdenum-ore', amount = 1}}
                }
            }
        )
    end

    if mods['angelsbioprocessing'] then
        local MEAT

        if mods['pyhightech'] then
            MEAT = 'meat'
        else
            MEAT = 'bio-raw-meat'
        end
        if mods['pyfusionenergy'] then
            OV.patch_recipes(
                {
                    {
                        name = 'puffer-butchery-1',
                        results = {
                            {type = 'fluid', name = 'xyhiphoe-blood', amount = 5}
                        },
                        main_product = MEAT
                    },
                    {
                        name = 'puffer-butchery-2',
                        results = {
                            {type = 'fluid', name = 'xyhiphoe-blood', amount = 5}
                        },
                        main_product = MEAT
                    },
                    {
                        name = 'puffer-butchery-3',
                        results = {
                            {type = 'fluid', name = 'xyhiphoe-blood', amount = 5}
                        },
                        main_product = MEAT
                    },
                    {
                        name = 'puffer-butchery-4',
                        results = {
                            {type = 'fluid', name = 'xyhiphoe-blood', amount = 5}
                        },
                        main_product = MEAT
                    },
                    {
                        name = 'puffer-butchery-5',
                        results = {
                            {type = 'fluid', name = 'xyhiphoe-blood', amount = 5}
                        },
                        main_product = MEAT
                    }
                }
            )
        end
    end
end
