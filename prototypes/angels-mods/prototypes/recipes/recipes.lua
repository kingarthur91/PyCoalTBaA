if mods['angelsrefining'] then
	RECIPE {
    	type = "recipe",
    	name = "hpf-stone-from-crush",
    	category = "hpf",
    	energy_required = 1,
    	ingredients = {
      		{ "stone-crushed", 2 }
    	},
    	results = {
        	{type = 'item', name = 'stone', amount = 5},
    	},
    }:add_unlock('coal-processing-1')
end
if mods['angelsbioprocessing'] then
	RECIPE {
    	type = "recipe",
    	name = "coalgas-from-seaweed",
    	category = "bio-processing",
    	subgroup = "bio-processing-green",
    	order = "a",
    	energy_required = 1,
    	ingredients = {
      		{type = 'item', name = 'seaweed', amount = 35 }
    	},
    	results = {
        	{type = 'item', name = 'algae-green', amount = 25},
        	{type = 'item', name = 'algae-brown', amount = 5},
        	{type = 'fluid', name = 'coal-gas', amount = 30},
    	},
    	main_product = "coal-gas",
    	icon = "__PyCoalTBaA__/graphics/icons/coalgas-from-seaweed.png",
    	icon_size = 64,
    }:add_unlock('bio-processing-brown')
end
