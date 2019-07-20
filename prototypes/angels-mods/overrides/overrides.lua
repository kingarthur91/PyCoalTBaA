
--replace duplicated items
fun.global_item_replacer("coke", "solid-coke")
fun.global_item_replacer("limestone", "solid-limestone")
fun.global_item_replacer("acidgas", "gas-acid")
fun.global_item_replacer("salt", "solid-salt")
fun.global_item_replacer("sand", "solid-sand")
fun.global_item_replacer("syngas", "gas-synthesis")
fun.global_item_replacer("methanol", "gas-methanol")
fun.global_item_replacer("carbon-dioxide", "gas-carbon-dioxide")
fun.global_item_replacer("carbon","solid-carbon")
fun.global_item_replacer("lime", "solid-lime")
fun.global_item_replacer("angels-plate-chrome","chromium")

--Fluid Converter Recipes
angelsmods.functions.make_converter("acidgas", "gas-acid")
angelsmods.functions.make_converter("syngas", "gas-synthesis")angelsmods.functions.make_converter("methanol", "gas-methanol")
angelsmods.functions.make_converter("carbon-dioxide", "gas-carbon-dioxide")

--recipe overrides
fun.Recipe
	{
		name = "angelsore6-crushed",
		enabled = true,
		subgroup = "ore-sorting-t1"
	}

data.raw.resource["borax"].minable.required_fluid = "gas-synthesis"
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
]]--
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
]]--
--[[
--tech overrides
table.insert
	(
		data.raw["technology"]["slag-processing-1"].effects,
		{type = "unlock-recipe", recipe = "slag-processing-nio"}
	)
table.insert
   (
		data.raw["technology"]["advanced-ore-refining-3"].effects,
		{type = "unlock-recipe", recipe = "angelsore-crystal-mix-nio-processing"}
   )

table.insert
	(
      data.raw["technology"]["slag-processing-1"].effects,
      {type = "unlock-recipe", recipe = "slag-processing-bor"}
	)
table.insert
	(
      data.raw["technology"]["advanced-ore-refining-3"].effects,
      {type = "unlock-recipe", recipe = "angelsore-crystal-mix-bor-processing"}
	)
	]]--