data:extend(
{
	{
	type = "bool-setting",
	name = "py-prod-adjust",
	setting_type = "startup",
	default_value = false,
	order = "e",
	},
	{
	type = "int-setting",
	name = "SpaceX",
	setting_type = "startup",
	minimum_value = 1,
	default_value = 1,
	maximum_value = 50
	}
}
)

if mods["angelspetrochem"] then

data:extend(
{
	{
	type = "bool-setting",
	name = "pymods-acid-increase",
	setting_type = "startup",
	default_value = true,
	order = "aa",
	}
}
)

end

if mods["angelsrefining"] then

data:extend(
{
	{
	type = "bool-setting",
	name = "addpyoretoangelsorting",
	setting_type = "startup",
	default_value = true,
	order = "g",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-ores",
	setting_type = "startup",
	default_value = false,
	order = "b",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-rocks",
	setting_type = "startup",
	default_value = false,
	order = "b",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-borax",
	setting_type = "startup",
	default_value = false,
	order = "b",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-borax",
	setting_type = "startup",
	default_value = true,
	order = "c",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-niobium",
	setting_type = "startup",
	default_value = false,
	order = "b",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-niobium",
	setting_type = "startup",
	default_value = true,
	order = "c",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-moly",
	setting_type = "startup",
	default_value = false,
	order = "b",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-moly",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	
}
)

end

--if mods["angelsbioprocessing"] and mods["pycoalprocessing"] and mods["pyfusionenergy"] and mods["pyhightech"] and mods["pyindustry"] and mods["pyrawores"] then

data:extend(
{
	{
	type = "bool-setting",
	name = "uberhaul",
	setting_type = "startup",
	--undo this later
	default_value = true,
	order = "a",
	}
}
)

--end