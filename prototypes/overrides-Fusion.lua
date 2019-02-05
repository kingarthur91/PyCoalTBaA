require("functions/functions")

if not settings.startup["uberhaul"].value then

if mods["pyfusionenergy"] then

--bob mods stuff
if mods["boblibrary"] then

	--[[bob-updates.lua]] -- luacheck: globals bobmods

local add_result = bobmods.lib.recipe.add_result
local remove_result = bobmods.lib.recipe.remove_result

	if mods["bobores"] then

		--replace result
		remove_result("cobalt-solvent", "ash")
		add_result("cobalt-solvent", {type = "item", name = "cobalt-ore", amount = 5})

		remove_result("calcinate-separation", "iron-ore")
		remove_result("calcinate-separation", "copper-ore")
		add_result("calcinate-separation", {type = "item", name = "quartz", amount = 1, probability = 0.6})
		add_result("calcinate-separation", {type = "item", name = "lead-ore", amount = 1, probability = 0.3})
		add_result("calcinate-separation", {type = "item", name = "zinc-ore", amount = 1, probability = 0.3})
		add_result("calcinate-separation", {type = "item", name = "silver-ore", amount = 1, probability = 0.3})


	end

if not mods["pyrawores"] then

RECIPE("molybdenum-oxide"):add_ingredient({type = "fluid", name = "oxygen", amount = 100})
RECIPE("bio-reactor"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("nmf"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("genlab"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("molybdenum-plate"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100})
RECIPE("helium"):add_ingredient({type = "fluid", name = "hydrogen", amount = 10})
RECIPE("sc-unit"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 100})
RECIPE("boron-mixture"):add_ingredient({type = "item", name = "aluminium-plate", amount = 5})
RECIPE("boron"):add_ingredient({type = "fluid", name = "hydrogen-chloride", amount = 500})
RECIPE("blanket"):add_ingredient({type = "item", name = "lead-plate", amount = 40})

end

remove_result("molybdenum-oxide", "sulfur")
add_result("molybdenum-oxide", {type = "fluid", name = "sulfur-dioxide", amount = 50})

RECIPE("soda-ash"):replace_ingredient("ppd", "sodium-hydroxide")
--RECIPE("vpulp3"):replace_ingredient("petroleum-gas", "nitrogen-dioxide")
ingredient_replace("vpulp3","ammonia","nitrogen-dioxide")
ingredient_replace("vpulp-precip","ammonia","nitrogen-dioxide")

add_result("sodium-chlorate", {type = "fluid", name = "hydrogen", amount = 150})

add_result("cool-air", {type = "fluid", name = "nitrogen", amount = 200})

add_result("liquid-air-distilation", {type = "fluid", name = "nitrogen", amount = 2})
add_result("liquid-air-distilation", {type = "fluid", name = "oxygen", amount = 2})

add_result("d2o-distilation", {type = "fluid", name = "oxygen", amount = 5})

remove_result("liquid-rich-gas-distilation", "water")
add_result("liquid-rich-gas-distilation", {type = "fluid", name = "liquid-nitrogen", amount = 10})

add_result("purier-helium", {type = "fluid", name = "liquid-nitrogen", amount = 1})

--TODO: check for duplicates

RECIPE("agitator"):replace_ingredient("iron-plate", "glass"):replace_ingredient("electronic-circuit", "basic-circuit-board")
RECIPE("thickener"):replace_ingredient("electronic-circuit", "basic-circuit-board"):replace_ingredient("pipe", "brass-alloy")
RECIPE("hydrocyclone"):replace_ingredient("iron-gear-wheel", "titanium-bearing")
if not mods["angelspetrochem"] then

RECIPE("mixer"):replace_ingredient("iron-gear-wheel", "titanium-bearing"):replace_ingredient("iron-plate", "titanium-plate")

else

RECIPE("mixer"):replace_ingredient("iron-gear-wheel", "cobalt-steel-bearing"):replace_ingredient("iron-plate", "cobalt-steel-alloy")

end
RECIPE("diamond-mine"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("regolite-mine"):replace_ingredient("iron-plate", "tungsten-plate")
RECIPE("jig"):replace_ingredient("pipe", "titanium-pipe")
RECIPE("centrifugal-pan"):replace_ingredient("pipe", "titanium-pipe"):add_ingredient({type = "item", name = "tungsten-plate", amount = 20})
RECIPE("compressor"):replace_ingredient("iron-gear-wheel", "titanium-bearing"):add_ingredient({type = "item", name = "tungsten-plate", amount = 20})
RECIPE("genlab"):replace_ingredient("iron-gear-wheel", "nitinol-bearing")

RECIPE("gas-separator"):replace_ingredient("pipe", "stone-pipe")
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "glass", amount = 200})
--RECIPE("molybdenum-concentrate"):replace_ingredient("water", "nitrogen-dioxide")
ingredient_replace("molybdenum-concentrate","nitrogen","nitrogen-dioxide")

RECIPE("phytoplankton"):replace_ingredient("crushed-iron", "crushed-tin")

RECIPE("molybdenum-plate"):change_category("electrolysis")

remove_result("cobalt-solvent", "ash")
add_result("cobalt-solvent", {type = "item", name = "cobalt-ore", amount = 5})

RECIPE("sodium-chlorate"):remove_ingredient('sodium-chlorate', 'water-saline'):change_category('electrolysis')

if not mods["pyrawores"] then

RECIPE("sodium-chlorate"):add_ingredient({type = "item", name = "salt", amount = 20})
add_result("sodium-chlorate", {type = "fluid", name = "hydrogen", amount = 150})

end

RECIPE("super-alloy"):replace_ingredient("steel-plate", "nickel-plate")
RECIPE("grease"):add_ingredient({type = "item", name = "lithium", amount = 15})

RECIPE("cool-air"):replace_ingredient("pressured-air", "liquid-nitrogen")
add_result("cool-air", {type = "fluid", name = "nitrogen", amount = 200})

add_result("liquid-air-distilation", {type = "fluid", name = "nitrogen", amount = 2})
add_result("liquid-air-distilation", {type = "fluid", name = "oxygen", amount = 2})

remove_result("calcinate-separation", "iron-ore")
remove_result("calcinate-separation", "copper-ore")
add_result("calcinate-separation", {type = "item", name = "quartz", amount = 1, probability = 0.6})
add_result("calcinate-separation", {type = "item", name = "lead-ore", amount = 1, probability = 0.3})
add_result("calcinate-separation", {type = "item", name = "zinc-ore", amount = 1, probability = 0.3})
add_result("calcinate-separation", {type = "item", name = "silver-ore", amount = 1, probability = 0.3})
add_result("d2o-distilation", {type = "fluid", name = "oxygen", amount = 5})

RECIPE("kmauts-ration"):replace_ingredient("iron-plate", "tin-plate")

remove_result("liquid-rich-gas-distilation", "water")
add_result("liquid-rich-gas-distilation", {type = "fluid", name = "liquid-nitrogen", amount = 10})

add_result("purier-helium", {type = "fluid", name = "liquid-nitrogen", amount = 1})


RECIPE("nexelit-matrix"):replace_ingredient("wood", "resin")
RECIPE("nbti-alloy"):replace_ingredient("steel-plate", "titanium-plate"):add_ingredient({type = "fluid", name = "nitrogen", amount = 150})
RECIPE("sc-wire"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("ferrite"):add_ingredient({type = "item", name = "zinc-plate", amount = 10})
RECIPE("coil-core"):replace_ingredient("copper-cable", "gilded-copper-cable")

RECIPE("sc-wire"):add_ingredient({type = "item", name = "glass", amount = 12})
RECIPE("boron-carbide"):replace_ingredient("coke", "carbon")
RECIPE("blanket"):add_ingredient({type = "item", name = "lithium", amount = 10})
RECIPE("blanket"):add_ingredient({type = "item", name = "tungsten-plate", amount = 40})
RECIPE("lead-container"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("science-coating"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("agzn-alloy"):replace_ingredient("iron-plate", "silver-plate"):replace_ingredient("stone", "zinc-plate")
RECIPE("silver-foam"):replace_ingredient("water", "hydrogen-chloride")

end

--angels mod stuff
if mods["angelspetrochem"] then
	   
local OV = angelsmods.functions.OV

OV.global_replace_item('solid-sodium-chlorate','sodium-chlorate')

   angelsmods.functions.OV.patch_recipes({
   --TIER 3
     {
        name = "angelsore2-crystal-processing",
        ingredients = { {type = "item", name = "angels-ore2-crystal", amount= "+1"} },
        results = { {type = "item", name = "molybdenum-ore", amount=1} }
     },
     {
        name = "angelsore4-crystal-processing",
        ingredients = { {type = "item", name = "angels-ore4-crystal", amount= "+1"} },
        results = { {type = "item", name = "molybdenum-ore", amount=1} }
     },
   --TIER 4
     {
        name = "angelsore2-pure-processing",
        ingredients = { {type = "item", name = "angels-ore2-pure", amount= "+1"} },
        results = { {type = "item", name = "molybdenum-ore", amount=1} }
     },
     {
        name = "angelsore4-pure-processing",
        ingredients = { {type = "item", name = "angels-ore4-pure", amount= "+1"} },
        results = { {type = "item", name = "molybdenum-ore", amount=2} }
     },
     {
        name = "angelsore5-pure-processing",
        ingredients = { {type = "item", name = "angels-ore5-pure", amount= "+1"} },
        results = { {type = "item", name = "molybdenum-ore", amount=1} }
     },
     })

   data:extend({
     {
      type = "recipe",
      name = "slag-processing-mol",
      category = "crystallizing",
      subgroup = "slag-processing",
      energy_required = 8,
      enabled = "false",
      ingredients =
      {
         {type="fluid", name="mineral-sludge", amount=50},
      },
      results=
      {
         {type = "item", name = "molybdenum-ore", amount_min = 1, amount_max = 2, probability = 0.36},
      },
      icon = "__PyCoalTBaA__/graphics/icons/slag-processing-mol.png",
	  icon_size = 32,
      order = "a-a [slag-processing-up]",
     },
     {
      type = "recipe",
      name = "angelsore-crystal-mix-mol-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      enabled = "false",
      ingredients =
      {
         {type="item", name="angels-ore2-crystal", amount=1},
         {type="item", name="angels-ore4-crystal", amount=1},
         {type="item", name="angels-ore5-crystal", amount=1},
         {type="item", name="catalysator-brown", amount=1},
      },
      results=
      {
         {type = "item", name = "molybdenum-ore", amount = 4},
      },
      icon = "__PyCoalTBaA__/graphics/icons/angels-ore-mix-mol-sorting.png",
	  icon_size = 32,
      order = "c-i-g[angelsore-crystal-mix-mol-processing]",
     }
   })
   table.insert(
      data.raw["technology"]["slag-processing-1"].effects,
      {type = "unlock-recipe", recipe = "slag-processing-mol"}
   )
   table.insert(
      data.raw["technology"]["advanced-ore-refining-3"].effects,
      {type = "unlock-recipe", recipe = "angelsore-crystal-mix-mol-processing"}
   )
   
   if mods["Clowns-Extended-Minerals"] then
	  
	angelsmods.functions.OV.patch_recipes(
	{
		{
		name = "clowns-ore6-crushed-processing",
		ingredients = {{type = "item", name = "clowns-ore6-crushed", amount = "+1"}},
		results = {{type = "item", name = "molybdenum-ore", amount = 1}}
		},
		{
		name = "clowns-ore6-chunk-processing",
		ingredients = {{type = "item", name = "clowns-ore6-chunk", amount = "+1"}},
		results = {{type = "item", name = "molybdenum-ore", amount = 1}}
		},
		{
		name = "clowns-ore6-crystal-processing",
		ingredients = {{type = "item", name = "clowns-ore6-crystal", amount = "+1"}},
		results = {{type = "item", name = "molybdenum-ore", amount = 1}}
		},
		{
		name = "clowns-ore6-pure-processing",
		ingredients = {{type = "item", name = "clowns-ore6-pure", amount = "+1"}},
		results = {{type = "item", name = "molybdenum-ore", amount = 1}}
		},
		
	}
	)
	end

	if mods["angelsbioprocessing"] then
	
		local MEAT
		
		if mods["pyhightech"] then
		
			MEAT = "meat"
			
		else
		
			MEAT = "bio-raw-meat"
			
		end
	
		OV.patch_recipes(
	
		{
			{
				name = "puffer-butchery-1",
				results =
				
					{
						{type = "fluid", name = "xyhiphoe-blood", amount = 5}
					},
				main_product = MEAT
			},
		
			{
				name = "puffer-butchery-2",
				results =
				
					{
						{type = "fluid", name = "xyhiphoe-blood", amount = 5}
					},
				main_product = MEAT
			},
		
			{
				name = "puffer-butchery-3",
				results =
				
					{
						{type = "fluid", name = "xyhiphoe-blood", amount = 5}
					},
				main_product = MEAT
			},
		
			{
				name = "puffer-butchery-4",
				results =
				
					{
						{type = "fluid", name = "xyhiphoe-blood", amount = 5}
					},
				main_product = MEAT
			},
		
			{
				name = "puffer-butchery-5",
				results =
				
					{
						{type = "fluid", name = "xyhiphoe-blood", amount = 5}
					},
				main_product = MEAT
			}
		}
		
	)
	
	end
	
end


if mods["omnimatter_compression"] then

data.raw.recipe["dt-fusion"].normal.results[3] = nil
data.raw.recipe["dt-fusion"].expensive.results[3] = nil
log(serpent.block(data.raw.recipe["dt-fusion"].normal.results))

data.raw["fluid"]["pressured-steam"].heat_capacity = "1KJ"

end

end

end