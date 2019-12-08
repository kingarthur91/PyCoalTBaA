
if settings.startup['processing-mod'].value then

data.raw.resource['copper-ore'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.8},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.1},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.075},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.05}
	}

data.raw.resource['copper-ore-medium'] = table.deepcopy(data.raw.resource['copper-ore'])
data.raw.resource['copper-ore-medium'].name = 'ore-copper-medium'
data.raw.resource['copper-ore-medium'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.175},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.025}
	}
data.raw.resource['copper-ore-medium'].autoplace = {}

data.raw.resource['copper-ore-low'] = table.deepcopy(data.raw.resource['copper-ore'])
data.raw.resource['copper-ore-low'].name = 'ore-copper-low'
data.raw.resource['copper-ore-low'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.15},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.5},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.15}
	}
data.raw.resource['copper-ore-low'].autoplace = {}

data.raw.resource['copper-ore-trace'] = table.deepcopy(data.raw.resource['copper-ore'])
data.raw.resource['copper-ore-trace'].name = 'ore-copper-trace'
data.raw.resource['copper-ore-trace'].minable.results =
	{
		{type = "item", name = "ore-copper", amount_min = 1, amount_max = 1, probability = 0.05},
		{type = "item", name = "ore-copper-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-copper-low", amount_min = 1, amount_max = 1, probability = 0.3},
		{type = "item", name = "ore-copper-trace", amount_min = 1, amount_max = 1, probability = 0.45}
	}
data.raw.resource['copper-ore-trace'].autoplace = {}

end