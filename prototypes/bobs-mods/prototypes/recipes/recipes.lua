if mods['bobelectronics'] and mods['pyhightech'] and not mods['angelsindustries'] then
  	RECIPE {
    	type = "recipe",
    	name = "primitive-circuit-board",
    	category = "electronics",
    	energy_required = 1,
    	ingredients = {
      		{ "fiberboard", 5 },
      		{ "resin", 3 },
      		{ "copper-cable", 10 },
    	},
    	result = "primitive-circuit-board",
    }:add_unlock('coal-processing-1')
end