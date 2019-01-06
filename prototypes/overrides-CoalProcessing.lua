require("functions/functions")

if mods["aai-industry-sp0"] and not mods["angelspetrochem"] then

	data.raw.item["storage-tank-0"].subgroup = "storage"

end

--bob mods stuff
if mods["boblibrary"] then

	--[[bob-updates.lua]] -- luacheck: globals bobmods

local add_result = bobmods.lib.recipe.add_result
local remove_result = bobmods.lib.recipe.remove_result

	if mods["bobelectronics"] then

		--replaceing vinilla circuits with bobs
		RECIPE("distilator"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("classifier"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("hpf"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("tar-processing-unit"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("soil-extractormk01"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("fts-reactor"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("washer"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("fawogae-plantation"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("ulric-corral"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("solid-separator"):rep_ing("advanced-circuit", "basic-circuit-board")
		RECIPE("automated-factory-mk01"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("borax-mine"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("ralesia-plantation"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("jaw-crusher"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("sand-extractor"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("botanical-nursery"):rep_ing("electronic-circuit", "basic-circuit-board")
		RECIPE("science-pack-3"):rep_ing("copper-cable", "insulated-cable")
		RECIPE("circuit-board"):rep_ing("ferric-chloride-solution", "boric-acid")
		
		--add ingredients
		RECIPE("superior-circuit-board"):rep_ing("gold-plate", "nexelit-plate")
		
		if not mods["pyrawores"] then
		
			RECIPE("advanced-circuit"):add_ing({name = "optical-fiber", amount = 2})
		
		end
		
		RECIPE("fibreglass-board"):add_ing({name = "glass", amount = 2})
		remove_result("bob-resin-wood", "resin")
		add_result("bob-resin-wood", {type = "item", name = "resin", amount = 3})
		RECIPE("superior-circuit-board"):rep_ing("ferric-chloride-solution", "boric-acid")
		RECIPE("multi-layer-circuit-board"):rep_ing("ferric-chloride-solution", "boric-acid")
		
		--replace results. need to get a working results replacer setup 
		remove_result("aromatics-to-rubber", "crude-oil")
		add_result("aromatics-to-rubber", {type = "item", name = "rubber", amount = 1})

	end
	
	if mods["boblogistics"] then

		--replace ingrediants
		RECIPE("distilator"):rep_ing("pipe", "copper-pipe")
		RECIPE("gasturbinemk02"):rep_ing("pipe", "bronze-pipe")
		RECIPE("methanol-reactor"):rep_ing("iron-gear-wheel", "steel-bearing")
		RECIPE("power-house"):rep_ing("iron-gear-wheel", "steel-bearing")
		RECIPE("evaporator"):rep_ing("iron-plate", "steel-gear-wheel"):rep_ing("iron-gear-wheel", "steel-bearing")
		RECIPE("tar-processing-unit"):rep_ing("pipe", "stone-pipe")
		RECIPE("cooling-tower-mk01"):rep_ing("pipe", "copper-pipe")
		RECIPE("cooling-tower-mk02"):rep_ing("pipe", "copper-pipe")
		RECIPE("olefin-plant"):rep_ing("iron-gear-wheel", "steel-bearing")
		RECIPE("ground-borer"):rep_ing("iron-gear-wheel", "titanium-bearing")
		RECIPE("fts-reactor"):rep_ing("iron-gear-wheel", "steel-bearing")
		RECIPE("ulric-corral"):rep_ing("iron-gear-wheel", "steel-bearing")
		RECIPE("solid-separator"):rep_ing("iron-gear-wheel", "steel-gear-wheel")
		RECIPE("classifier"):rep_ing("iron-stick", "brass-gear-wheel")
		RECIPE("borax-mine"):rep_ing("iron-gear-wheel", "steel-bearing")
		RECIPE("ralesia-plantation"):rep_ing("pipe", "steel-pipe")
		RECIPE("sand-extractor"):rep_ing("iron-gear-wheel", "brass-gear-wheel")
		RECIPE("flying-robot-frame"):rep_ing("steel-plate", "niobium-plate")

		--adding ingrediants
		RECIPE("ball-mill-mk01"):add_ingredient({name = "steel-bearing-ball", amount = 1000})

	end

	if mods["bobplates"] then

		--replace ingrediants
		RECIPE("gasturbinemk02"):rep_ing("iron-plate", "invar-alloy")
		RECIPE("power-house"):rep_ing("iron-plate", "lead-plate")
		RECIPE("evaporator"):rep_ing("steel-plate", "lead-plate")
		RECIPE("cooling-tower-mk01"):rep_ing("iron-plate", "bronze-alloy")
		RECIPE("cooling-tower-mk02"):rep_ing("iron-plate", "brass-alloy")
		RECIPE("desulfurizator-unit"):rep_ing("iron-plate", "invar-alloy")
		RECIPE("ground-borer"):rep_ing("iron-plate", "titanium-plate")
		RECIPE("fts-reactor"):rep_ing("iron-plate", "invar-alloy")
		
		if not mods["pyrawores"] then
		
			RECIPE("advanced-foundry-mk01"):rep_ing("iron-plate", "titanium-plate"):rep_ing("steel-plate", "invar-alloy")
		
		end
		
		RECIPE("jaw-crusher"):rep_ing("steel-plate", "invar-alloy")
		RECIPE("methanol-from-syngas"):rep_ing("iron-plate", "zinc-plate")
		RECIPE("equipment-chassi"):rep_ing("copper-plate", "bronze-alloy")
		RECIPE("glass-core"):rep_ing("steel-plate", "silver-plate")
		RECIPE("nichrome"):rep_ing("iron-plate", "nickel-plate")
		RECIPE("hydrogen-peroxide"):rep_ing("iron-plate", "nickel-plate")
		RECIPE("empty-gas-canister"):rep_ing("copper-plate", "brass-alloy")
		RECIPE("empty-gas-canister"):rep_ing("steel-plate", "aluminium-plate")
		RECIPE("zinc-chloride"):rep_ing("iron-plate", "zinc-plate")
		RECIPE("fts-reactor"):rep_ing("stone-brick", "glass")
		RECIPE("advanced-foundry-mk01"):rep_ing("concrete", "glass")
		RECIPE("ralesia-plantation"):rep_ing("stone", "glass")
		RECIPE("flask"):rep_ing("iron-plate", "glass")
		RECIPE("lens"):rep_ing("stone", "glass")
		RECIPE("glass-core"):rep_ing("sand", "glass")
		RECIPE("cladding"):rep_ing("sand", "glass")
		
		--add ingrediants
		RECIPE("botanical-nursery"):add_ing({name = "glass", amount = 10})
		
		if not mods["pyrawores"] then
		
		RECIPE("filtration-media"):add_ing({type = "item", name = "glass", amount = 5})
		
		end
		
		local foundry = data.raw["assembling-machine"]["advanced-foundry-mk01"]
		foundry.crafting_categories[#foundry.crafting_categories + 1] = "chemical-furnace"
		foundry.crafting_categories[#foundry.crafting_categories + 1] = "mixing-furnace"
		
	end
	
	if mods["bobores"] then

		--replace ingrediants
		RECIPE("alumina"):rep_ing("bauxite-ore", "crushed-bauxite")
		RECIPE("lead-oxide"):rep_ing("lead-ore", "crushed-lead")
		RECIPE("tpa"):rep_ing("copper-ore", "cobalt-ore")
		RECIPE("tailings-classification"):rep_ing("copper-ore", "lead-ore")
		RECIPE("tailings-classification"):rep_ing("iron-ore", "tin-ore")
		

		--adding ingrediants
		add_result("ash-separation", {type = "item", name = "cobalt-ore", amount = 3, probability = 0.3})
		
	end


RECIPE("methanol-reactor"):rep_ing("chemical-plant", "electrolyser")

RECIPE("tailings-pond"):rep_ing("pump", "water-pump")

RECIPE("olefin-plant"):rep_ing("chemical-plant", "electrolyser")

RECIPE("jaw-crusher"):add_ing({name = "rubber", amount = 10})

RECIPE("glycerol-hydrogen"):rep_ing("water", "liquid-air")

remove_result("glycerol-hydrogen", "petroleum-gas")
add_result("glycerol-hydrogen", {type = "fluid", name = "hydrogen", amount = 300})

RECIPE("laser-turret"):add_ing({name = "lens", amount = 1})

RECIPE("zinc-chloride"):rep_ing("water", "hydrogen-chloride"):rem_ing("copper-plate")

add_result("zinc-chloride", {name = "hydrogen", amount = 20})

RECIPE("active-carbon"):rep_ing("water", "nitrogen")

remove_result("refsyngas-from-meth", "water")
remove_result("refsyngas-from-meth-canister", "water")
add_result("refsyngas-from-meth", {type = "fluid", name = "hydrogen", amount = 30})
add_result("refsyngas-from-meth-canister", {type = "fluid", name = "hydrogen", amount = 30})

remove_result("aromatics", "water")
add_result("aromatics", {type = "fluid", name = "hydrogen", amount = 100})

RECIPE("lithium-peroxide"):rem_ing("water"):add_ing({type = "fluid", name = "lithia-water", amount = 300})

RECIPE("anthraquinone"):rep_ing("steam", "liquid-air")

RECIPE("combustion-olefin"):add_ing({type = "fluid", name = "hydrogen", amount = 150})

--RECIPE("niobium-oxide"):rep_ing("water", "nitrogen-dioxide")
ingredient_replace("niobium-oxide","nitrogen","nitrogen-dioxide")

RECIPE("ralesia"):rep_ing("water", "hydrogen")
RECIPE("diborane"):rep_ing("water", "hydrogen")
RECIPE("oleochemicals-distilation"):rep_ing("water", "oxygen")
RECIPE("oleo-gasification"):rep_ing("water", "oxygen")
RECIPE("tar-gasification"):rep_ing("water", "liquid-air")
RECIPE("ppd"):rep_ing("water", "hydrogen")
RECIPE("aromatics2"):rep_ing("water", "hydrogen")
RECIPE("niobium-complex"):rep_ing("water", "hydrogen-chloride")
RECIPE("tpa"):rep_ing("steam", "liquid-air")
RECIPE("niobium-plate"):rep_ing("coal", "salt")
RECIPE("sulfur-crudeoil"):rep_ing("iron-ore", "salt")
RECIPE("nichrome"):rep_ing("water", "nitrogen")
RECIPE("aromatics-to-rubber"):rep_ing("plastic-bar", "rubber")
RECIPE("nas-battery"):rep_ing("copper-ore", "sodium-hydroxide")

if data.raw["recipe-category"]["water-pump"] then
    RECIPE("fill-methanol-gas-canister").category = "water-pump"
    RECIPE("empty-methanol-gas-canister").category = "water-pump"
end

if data.raw["recipe-category"]["electrolysis"] then
    RECIPE("diborane").category = "electrolysis"
    RECIPE("boric-acid").category = "electrolysis"
    RECIPE("niobium-plate").category = "electrolysis"
    RECIPE("ppd").category = "electrolysis"
    RECIPE("copper-coating").category = "electrolysis"
    RECIPE("glycerol-hydrogen").category = "electrolysis"
end

if not mods["pyrawores"] then

TECHNOLOGY("coal-processing-2"):add_prereq("electrolysis-1")

RECIPE("ref-to-light-oil"):add_ing({type = "fluid", name = "hydrogen", amount = 250})
RECIPE("gasoline"):rem_ing("gasoline", "water"):add_ing({type = "fluid", name = "hydrogen", amount = 200})
RECIPE("olefin"):rem_ing("water"):add_ing({type = "fluid", name = "hydrogen", amount = 600})
RECIPE("active-carbon"):add_ing({name = "sodium-hydroxide", amount = 7})


end

RECIPE("bob-resin-wood").energy_required = 10
RECIPE("bob-resin-wood").category = "wpu"
RECIPE("polishing-wheel").category = "wpu"
RECIPE("wooden-board").energy_required = 10
RECIPE("phenolic-board").category = "wpu"
RECIPE("nbfe-alloy").category = "smelting"
RECIPE("hpf").enabled = true

end

--angels mod stuff
if mods["angelspetrochem"] then

local OV = angelsmods.functions.OV

OV.global_replace_item("coke", "solid-coke")
OV.global_replace_item("limestone", "solid-limestone")
OV.global_replace_item("lime", "solid-lime")
OV.global_replace_item("acidgas", "gas-acid")
OV.global_replace_item("salt", "solid-salt")
OV.global_replace_item("sand", "solid-sand")
OV.global_replace_item("syngas", "gas-synthesis")
OV.global_replace_item("methanol", "gas-methanol")
OV.global_replace_item("carbon-dioxide", "gas-carbon-dioxide")
OV.global_replace_item("carbon","solid-carbon")

--Fluid Converter Recipes
angelsmods.functions.make_converter("acidgas", "gas-acid")
angelsmods.functions.make_converter("syngas", "gas-synthesis")angelsmods.functions.make_converter("methanol", "gas-methanol")
angelsmods.functions.make_converter("carbon-dioxide", "gas-carbon-dioxide")

--recipe overrides
OV.patch_recipes({ { name = "angelsore6-crushed", enabled = true } })

data.raw.resource["borax"].minable.required_fluid = "gas-synthesis"

if mods["bobelectronics"] then
OV.patch_recipes({
	{ name = "fibreglass-board", ingredients = {
		{ name = "plastic-bar", amount = 1},
		{ name = "glass", amount = 2}
		}	
	}
})
end

if settings.startup["addpyoretoangelsorting"].value then

   angelsmods.functions.OV.patch_recipes({
   --TIER 3
     {
        name = "angelsore2-crystal-processing",
        ingredients = { {type = "item", name = "angels-ore2-crystal", amount= "+1"} },
        results = { {type = "item", name = "niobium-ore", amount=1} }
     },
     {
        name = "angelsore4-crystal-processing",
        ingredients = { {type = "item", name = "angels-ore4-crystal", amount= "+1"} },
        results = { {type = "item", name = "niobium-ore", amount=1} }
     },
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
     })

   data:extend({
     {
      type = "recipe",
      name = "slag-processing-nio",
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
         {type = "item", name = "niobium-ore", amount_min = 1, amount_max = 2, probability = 0.36},
      },
      icon = "__PyCoalTBaA__/graphics/icons/slag-processing-mol.png",
	  icon_size = 32,
      order = "a-a [slag-processing-up]",
     },
     {
      type = "recipe",
      name = "angelsore-crystal-mix-nio-processing",
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
         {type = "item", name = "niobium-ore", amount = 4},
      },
      icon = "__PyCoalTBaA__/graphics/icons/angels-ore-mix-mol-sorting.png",
	  icon_size = 32,
      order = "c-i-g[angelsore-crystal-mix-mol-processing]",
     }
   })
   table.insert(
      data.raw["technology"]["slag-processing-1"].effects,
      {type = "unlock-recipe", recipe = "slag-processing-nio"}
   )
   table.insert(
      data.raw["technology"]["advanced-ore-refining-3"].effects,
      {type = "unlock-recipe", recipe = "angelsore-crystal-mix-nio-processing"}
   )

   angelsmods.functions.OV.patch_recipes({
   --TIER 3
     {
        name = "angelsore3-crushed-processing",
        ingredients = { {type = "item", name = "angels-ore3-crushed", amount= "+1"} },
        results = { {type = "item", name = "raw-borax", amount=1} }
     },
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
     })

   data:extend({
     {
      type = "recipe",
      name = "slag-processing-bor",
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
         {type = "item", name = "raw-borax", amount_min = 1, amount_max = 2, probability = 0.36},
      },
      icon = "__PyCoalTBaA__/graphics/icons/slag-processing-mol.png",
	  icon_size = 32,
      order = "a-a [slag-processing-up]",
     },
     {
      type = "recipe",
      name = "angelsore-crystal-mix-bor-processing",
      category = "ore-sorting",
      subgroup = "ore-sorting-advanced",
      energy_required = 1.5,
      enabled = "false",
      ingredients =
      {
         {type="item", name="angels-ore3-crystal", amount=1},
         {type="item", name="angels-ore4-crystal", amount=1},
         {type="item", name="angels-ore5-crystal", amount=1},
         {type="item", name="catalysator-brown", amount=1},
      },
      results=
      {
         {type = "item", name = "raw-borax", amount = 4},
      },
      icon = "__PyCoalTBaA__/graphics/icons/angels-ore-mix-mol-sorting.png",
	  icon_size = 32,
      order = "c-i-g[angelsore-crystal-mix-mol-processing]",
     }
   })
   table.insert(
      data.raw["technology"]["slag-processing-1"].effects,
      {type = "unlock-recipe", recipe = "slag-processing-bor"}
   )
   table.insert(
      data.raw["technology"]["advanced-ore-refining-3"].effects,
      {type = "unlock-recipe", recipe = "angelsore-crystal-mix-bor-processing"}
   )

if mods["Clowns-Extended-Minerals"] then
	  
	angelsmods.functions.OV.patch_recipes(
	{
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
	}
	)
end

end

if mods["angelssmelting"] then

	global_item_replacer("angels-plate-chrome","chromium")
	
end

end