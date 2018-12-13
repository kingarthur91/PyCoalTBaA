
if mods["angelspetrochem"] then
	   
	if mods["pyfusionenergy"] then

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

end