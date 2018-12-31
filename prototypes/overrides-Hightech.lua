if mods["pyhightech"] then

--bob mods stuff
if mods["boblibrary"] then

	--[[bob-updates.lua]] -- luacheck: globals bobmods

local add_result = bobmods.lib.recipe.add_result
local remove_result = bobmods.lib.recipe.remove_result


--new code
RECIPE("module-circuit-board"):replace_ingredient('phenolic-board','phenolicboard')

--ingredient_replace ("cm-electronic-circuit","valve","valvea")

	if mods["bobelectronics"] then
		--TODO:
		global_item_replacer("basic-circuit-board","pcb1")
		global_item_replacer("circuit-board","pcb2")
		global_item_replacer("superior-circuit-board","pcb3")
		global_item_replacer("electronic-circuit","cm-electronic-circuit")
		global_item_replacer("advanced-circuit","cm-advanced-circuit")
		global_item_replacer("processing-unit","cm-processing-unit")
		global_item_replacer("advanced-processing-unit","intelligent-unit")
	end
	
--old py code
RECIPE("electronic-circuit"):remove_unlock("electronics")
RECIPE("basic-electronic-components"):remove_unlock("electronics")
--RECIPE("silicon-plate"):remove_unlock("basic-electronics"):remove_unlock("silicon-processing")
RECIPE("phenolic-board"):remove_unlock("advanced-electronics")
RECIPE("electronic-components"):remove_unlock("advanced-electronics")
RECIPE("intergrated-electronics"):remove_unlock("advanced-electronics-2")
RECIPE("fibreglass-board"):remove_unlock("advanced-electronics-2")
RECIPE("superior-circuit-board"):remove_unlock("advanced-electronics-2")
RECIPE("circuit-board"):remove_unlock("advanced-electronics")
RECIPE("advanced-circuit"):remove_unlock("advanced-electronics")
--RECIPE("advanced-logic-board"):remove_unlock("advanced-electronics-2")
RECIPE("processing-electronics"):remove_unlock("advanced-electronics-3")
RECIPE("gilded-copper-cable"):remove_unlock("advanced-electronics-3"):add_unlock('nano-tech')
RECIPE("advanced-processing-unit"):remove_unlock("advanced-electronics-3")
RECIPE("multi-layer-circuit-board"):remove_unlock("advanced-electronics-3")
RECIPE("module-processor-board-3"):remove_unlock("advanced-electronics-3")
RECIPE("module-processor-board-2"):remove_unlock("advanced-electronics-2")
RECIPE("module-processor-board"):remove_unlock("modules")
RECIPE("silicon-nitride"):remove_unlock("ceramics")
RECIPE("bob-silicon-plate"):remove_unlock("silicon-processing")
RECIPE("silicon-plate2"):remove_unlock("silicon-processing")
RECIPE("silicon-wafer"):remove_unlock("silicon-processing")
RECIPE("wooden-board"):set_enabled(false)
RECIPE("basic-circuit-board"):set_enabled(false):remove_unlock()
RECIPE("wood-board"):set_enabled(false):remove_unlock()


RECIPE("phosphate-glass"):replace_ingredient('glass-fiber', 'crushed-quartz')
RECIPE("silicon-wafer"):add_ingredient({type = 'item', name = 'crushed-quartz', amount = 2})
RECIPE('small-lamp'):replace_ingredient('basic-circuit-board', 'copper-plate')
RECIPE("nano-wires"):add_ingredient({type = 'item', name = 'crushed-gold', amount = 10})

RECIPE("robot-brain-logistic"):add_ingredient({type = "item", name = "paramagnetic-material", amount = 1}):add_ingredient({type = "item", name = "inductor2", amount = 5})
RECIPE("robot-brain-construction"):add_ingredient({type = "item", name = "paramagnetic-material", amount = 1}):add_ingredient({type = "item", name = "diode", amount = 3})
RECIPE("robot-brain-logistic-2"):add_ingredient({type = "item", name = "capacitor2", amount = 3}):add_ingredient({type = "item", name = "inductor2", amount = 5}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 1})
RECIPE("robot-brain-construction-2"):add_ingredient({type = "item", name = "capacitor2", amount = 5}):add_ingredient({type = "item", name = "diode", amount = 3}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 1})
RECIPE("robot-brain-logistic-3"):add_ingredient({type = "item", name = "capacitor3", amount = 3}):add_ingredient({type = "item", name = "diode3", amount = 5}):add_ingredient({type = "item", name = "processor", amount = 2}):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 1})
RECIPE("robot-brain-construction-3"):add_ingredient({type = "item", name = "inductor3", amount = 5}):add_ingredient({type = "item", name = "resistor3", amount = 5}):add_ingredient({type = "item", name = "processor", amount = 1}):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 1})
RECIPE("robot-brain-logistic-4"):add_ingredient({type = "item", name = "supercapacitor", amount = 3}):add_ingredient({type = "item", name = "csle-diode", amount = 5}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 1})
RECIPE("robot-brain-construction-4"):add_ingredient({type = "item", name = "fault-current-inductor", amount = 3}):add_ingredient({type = "item", name = "paradiamatic-resistor", amount = 5}):add_ingredient({type = "item", name = "hyperelastic-material", amount = 1})

RECIPE('construction-robot-ht'):replace_ingredient('construction-robot', 'bob-construction-robot-4')
RECIPE('logistic-robot-ht'):replace_ingredient('logistic-robot', 'bob-logistic-robot-4')

RECIPE('high-flux-core'):replace_ingredient('liquid-pure-air', 'liquid-nitrogen')
RECIPE('diode-core'):replace_ingredient('liquid-pure-air', 'liquid-nitrogen')
RECIPE('capacitor-termination'):replace_ingredient('boric-acid', 'liquid-nitrogen')
RECIPE('carbon-aerogel'):replace_ingredient('syngas', 'nitrogen')
RECIPE('superconductor'):replace_ingredient('liquid-helium', 'liquid-nitrogen')

end

--angels mod stuff
if mods["angelspetrochem"] then

--data.raw.["assembling-machine"]["chipshooter"].ingredient_count = 15

local OV = angelsmods.functions.OV

OV.global_replace_item('basic-circuit-board', 'pcb1')
OV.global_replace_item('solid-clay', 'clay')
OV.global_replace_item('phenolic-board','phenolicboard')
OV.global_replace_item('glass-fiber','angels-coil-glass-fiber')
OV.global_replace_item('fibreglass-board','fiberglass')
OV.global_replace_item('fertiliser','py-fertilizer')
OV.global_replace_item('solid-fertilizer','py-fertilizer')
OV.global_replace_item("benzene", "gas-benzene")
OV.global_replace_item('propene','gas-propene')
OV.global_replace_item('acetone','gas-acetone')
OV.global_replace_item('chloromethane','gas-chlor-methane')
OV.global_replace_item('methane','gas-methane')
OV.global_replace_item('methanal','gas-formaldehyde')
OV.global_replace_item('ammonia','gas-ammonia')
--OV.global_replace_item('solid-clay','clay')
OV.global_replace_item('ech','gas-epichlorhydrin')
OV.global_replace_item('ethylene','gas-ethylene')

--OV.global_replace_item("electronic-circuit","cm-electronic-circuit")
--OV.global_replace_item("advanced-circuit","cm-advanced-circuit")
--OV.global_replace_item("processing-unit","cm-processing-unit")

data.raw.resource["phosphate-rock"].minable.required_fluid = "gas-synthesis"

if mods["omnimatter_permutation"] then

	data:extend(
	{
		{
		type = "recipe",
		name = "nitrobenzene",
		category = "fbreactor",
		enabled = false,
		energy_required = 4,
		ingredients = 
			{
				{type = "fluid", name = "benzene", amount = 50},
				{type = "fluid", name = "sulfuric-acid", amount = 100},
				{type = "fluid", name = "ammonia", amount = 30}
			},
		results = 
			{
				{type = "fluid", name = "nitrobenzene", amount = 100}
			}
		}
	}
	)
	
end

--fix tech replacement
table.insert(data.raw["technology"] ["angels-sulfur-processing-1"].effects, { type = "unlock-recipe", recipe = "nitrobenzene" })

if mods["bobelectronics"] then

OV.global_replace_item('wooden-board','fiberboard')
OV.global_replace_item('advanced-processing-unit','intelligent-unit')
OV.global_replace_item('multi-layer-circuit-board','pcb4')
OV.global_replace_item('electronic-components','transistor')

	if mods["MomoTweak"] then
	
		data:extend(
		{
			{
				type = "recipe",
				name = "carbon-to-carbon",
				category = "crafting",
				energy_required = .1,
				enabled = "true",
				ingredients = 
					{
					{type = "item", name = "solid-carbon", amount = 1}
					},
				results = 
					{
					{type = "item", name = "carbon", amount = 1}
					},
				icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
				icon_size = 32,
				
			}
		}
		)
	end

end

if mods["bobmodules"] then

OV.global_replace_item('basic-electronic-components','resistor2')
OV.global_replace_item('processing-electronics','kondo-processor')
OV.global_replace_item('intergrated-electronics','microchip')
OV.global_replace_item('module-processor-board','pcb2')
OV.global_replace_item('module-processor-board-2','pcb3')
OV.global_replace_item('module-processor-board-3','pcb4')

end

if mods["angelsbioprocessing"] then
OV.global_replace_item('black-liquor','liquid-black-liquor')
OV.global_replace_item('acetic-acid','liquid-acetic-acid')
OV.global_replace_item('bio-raw-meat','meat')
angelsmods.functions.make_converter("black-liquor","liquid-black-liquor")
angelsmods.functions.make_converter("acetic-acid","liquid-acetic-acid")

	OV.patch_recipes(
	
		{
			{
				name = "solid-alginic-acid",
				category = "crafting"
			},
			
			{
				name = "wooden-board-paper",
				category = "crafting",
				ingredients = 
				{
					{type = "item", name = "solid-paper", amount = 4}
				}
			},
			
			{
				name = "biter-small-butchering",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 20},
						{type = "item", name = "bones", amount = 3}
					}
			},
		
			{
				name = "biter-medium-butchering",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 30},
						{type = "item", name = "bones", amount = 3}
					}
			},
		
			{
				name = "biter-big-butchering",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 60},
						{type = "item", name = "bones", amount = 5}
					}
			},
		
			{
				name = "fish-butchery-1",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 15},
						{type = "item", name = "bones", amount = 3}
					},
				main_product = "meat"
			},
		
			{
				name = "fish-butchery-2",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 25},
						{type = "item", name = "bones", amount = 2}
					},
				main_product = "meat"
			},
		
			{
				name = "fish-butchery-3",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 40},
						{type = "item", name = "bones", amount = 5}
					},
				main_product = "meat"
			}
		}
		
	)

end

if mods["angelssmelting"] then
OV.patch_recipes(
	{
		{
			name = "angels-glass-fiber-board", 
			energy_required = 25,
			ingredients = 
			{
			{"!!"},
			{type = "item", name = "angels-coil-glass-fiber", amount = 5},
			{type = "item", name = "epoxy", amount = 7},
			{type = "item", name = "plastic-bar", amount = 3},
			{type = "fluid", name = "boric-acid", amount = 150},
			{type = "fluid", name = "steam", amount = 200}
			
			},
			results = 
			{
			{type = "item", name = "fiberglass", amount = 1},
			},
		}
	}
)
end


if mods["Clowns-Processing"] then
data:extend({
{
type = "recipe",
    name = "phosphoric-acid-1",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "phosphorous-acid", amount = 30},
        {type = "fluid", name = "steam", amount = 120, temperature = 165},
        {type = "item", name = "raw-wood", amount = 10},
    },
    results = {
        {type = "fluid", name = "phosphoric-acid", amount = 15},
		{type = "fluid", name = "phosphine-gas", amount = 15},
    },
    main_product = "phosphine-gas",
}
})
table.insert(data.raw["technology"] ["basic-electronics"].effects, {type = "unlock-recipe", recipe = "phosphoric-acid-1"})
OV.global_replace_item('phosphorus-ore','phosphate-rock')
OV.global_replace_item('liquid-phosphoric-acid','phosphoric-acid')
angelsmods.functions.make_converter("liquid-phosphoric-acid","phosphoric-acid")
end

--Fluid Converter Recipes
angelsmods.functions.make_converter("gas-benzene", "benzene")
angelsmods.functions.make_converter("gas-propene","propene")
angelsmods.functions.make_converter("chloromethane","gas-chlor-methane")
angelsmods.functions.make_converter("methane","gas-methane")
angelsmods.functions.make_converter("ammonia","gas-ammonia")
angelsmods.functions.make_converter("ech","gas-epichlorhydrin")


data:extend({
	{
		type = "recipe",
		name = "steak",
		category = "hpf",
		enabled = false,
		energy_required = .75,
		ingredients = 
			{
				{type = "item", name = "meat", amount = 1}
			},
		results = 
			{
				{type = "item", name = "solid-carbon", amount = 1}
			}
	}
})			
		
table.insert(data.raw["technology"] ["bio-refugium-puffer"].effects, {type = "unlock-recipe", recipe = "steak"})	

end

if mods["KaoExtended"] then

	-- all the i/o parts are not updateing to use pyht parts
	RECIPE("simple-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("standart-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("advanced-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("predictive-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("intelligent-unit"):add_ingredient({type = 'item', name = 'predictive-io', amount = 2})
end

end