
if mods["Mining-Space-Industries"] then

local pu = table.deepcopy(data.raw.recipe["processing-unit"])

table.insert(data.raw.recipe["processing-unit"],normal)

table.insert(data.raw.recipe["processing-unit"],expensive)

data.raw.recipe["processing-unit"].normal =
	{
	ingredients = pu.ingredients,
	enabled = false,
	energy_required = pu.energy_required,
	results = pu.results,
	}

data.raw.recipe["processing-unit"].expensive =
	{
	ingredients = pu.ingredients,
	enabled = false,
	energy_required = pu.energy_required,
	results = pu.results,
	}

local ac = table.deepcopy(data.raw.recipe["advanced-circuit"])

table.insert(data.raw.recipe["advanced-circuit"],normal)

table.insert(data.raw.recipe["advanced-circuit"],expensive)

data.raw.recipe["advanced-circuit"].normal =
	{
	ingredients = ac.ingredients,
	enabled = false,
	energy_required = ac.energy_required,
	results = ac.results,
	}

data.raw.recipe["advanced-circuit"].expensive =
	{
	ingredients = ac.ingredients,
	enabled = false,
	energy_required = ac.energy_required,
	results = ac.results,
	}


end