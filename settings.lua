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
	order = "b-a",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-rocks",
	setting_type = "startup",
	default_value = false,
	order = "b",
	},
	--[[
	{
	type = "bool-setting",
	name = "pymods-remove-regular-borax",
	setting_type = "startup",
	default_value = false,
	order = "b-b",
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
	order = "b-c",
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
	order = "b-d",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-moly",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-alum",
	setting_type = "startup",
	default_value = false,
	order = "b-e",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-alum",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-chrom",
	setting_type = "startup",
	default_value = false,
	order = "b-f",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-chrom",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-lead",
	setting_type = "startup",
	default_value = false,
	order = "b-g",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-lead",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-nickel",
	setting_type = "startup",
	default_value = false,
	order = "b-h",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-nickel",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-quartz",
	setting_type = "startup",
	default_value = false,
	order = "b-i",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-quartz",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-rawcoal",
	setting_type = "startup",
	default_value = false,
	order = "b-j",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-rawcoal",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-tin",
	setting_type = "startup",
	default_value = false,
	order = "b-k",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-tin",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-titan",
	setting_type = "startup",
	default_value = false,
	order = "b-l",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-titan",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	{
	type = "bool-setting",
	name = "pymods-remove-regular-zinc",
	setting_type = "startup",
	default_value = false,
	order = "b-m",
	},
	{
	type = "bool-setting",
	name = "pymods-infinite-zinc",
	setting_type = "startup",
	default_value = true,
	order = "d",
	},
	]]--
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
	default_value = false,
	order = "a",
	}
}
)

--end
