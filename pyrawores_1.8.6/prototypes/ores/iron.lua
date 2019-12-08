
if settings.startup['processing-mod'].value then

data.raw.resource['iron-ore'].minable.results =
	{
		{type = "item", name = "ore-iron", amount_min = 1, amount_max = 1, probability = 0.8},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.1},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.075},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.025}
	}

data.raw.resource['iron-ore-medium'] = table.deepcopy(data.raw.resource['iron-ore'])
data.raw.resource['iron-ore-medium'].name = 'iron-ore-medium'
data.raw.resource['iron-ore-medium'].minable.results =
	{
		{type = "item", name = "ore-iron", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.4},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.175},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.025}
	}
data.raw.resource['iron-ore-medium'].autoplace = {}

data.raw.resource['iron-ore-low'] = table.deepcopy(data.raw.resource['iron-ore'])
data.raw.resource['iron-ore-low'].name = 'iron-ore-low'
data.raw.resource['iron-ore-low'].minable.results =
	{
		{type = "item", name = "ore-iron", amount_min = 1, amount_max = 1, probability = 0.15},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.5},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.15}
	}
data.raw.resource['ore-iron-low'].autoplace = {}

data.raw.resource['iron-ore-trace'] = table.deepcopy(data.raw.resource['iron-ore'])
data.raw.resource['iron-ore-trace'].name = 'iron-ore-trace'
data.raw.resource['iron-ore-trace'].minable.results =
	{
		{type = "item", name = "ore-iron", amount_min = 1, amount_max = 1, probability = 0.05},
		{type = "item", name = "ore-iron-medium", amount_min = 1, amount_max = 1, probability = 0.2},
		{type = "item", name = "ore-iron-low", amount_min = 1, amount_max = 1, probability = 0.3},
		{type = "item", name = "ore-iron-trace", amount_min = 1, amount_max = 1, probability = 0.45}
	}
data.raw.resource['iron-ore-trace'].autoplace = {}

end
