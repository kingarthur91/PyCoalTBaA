
if mods["pyfusionenergy"] then

log("are checks broken")
if mods["omnimatter_compression"] then
log("broke?")
	data.raw.recipe["dt-fusion"].results[3] = nil
	data.raw.recipe["dt-fusion"].results[3] = nil
	log(serpent.block(data.raw.recipe["dt-fusion"].results))

	data.raw["fluid"]["pressured-steam"].heat_capacity = "1KJ"

end

end
--[[
if mods['omnimatter'] and not mods["omnimatter_compression"] then

log(serpent.block(data.raw.resource['raw-coal']))

data.raw.resource["raw-coal"].minable.results = {{type = "item", name = "raw-coal", amount = 1}}

data.raw.resource["aluminium-rock"].minable.results = {{type = "item", name = "ore-aluminium", amount = 1}}
data.raw.resource["ore-aluminium"].minable.results = {{type = "item", name = "ore-aluminium", amount = 1}}
data.raw.resource["salt-rock"].minable.results = {{type = "item", name = "salt", amount = 1}}
data.raw.resource["ore-tin"].minable.results = {{type = "item", name = "ore-tin", amount = 1}}
data.raw.resource["tin-rock"].minable.results = {{type = "item", name = "ore-tin", amount = 1}}
data.raw.resource["ore-titanium"].minable.results = {{type = "item", name = "ore-titanium", amount = 1}}
data.raw.resource["titanium-rock"].minable.results = {{type = "item", name = "ore-titanium", amount = 1}}
data.raw.resource["uranium-rock"].minable.results = {{type = "item", name = "uranium-ore", amount = 1}}
data.raw.resource["zinc-rock"].minable.results = {{type = "item", name = "ore-zinc", amount = 1}}
data.raw.resource["ore-zinc"].minable.results = {{type = "item", name = "ore-zinc", amount = 1}}
data.raw.resource["ore-chromium"].minable.results = {{type = "item", name = "ore-chromium", amount = 1}}
data.raw.resource["chromium-rock"].minable.results = {{type = "item", name = "ore-chromium", amount = 1}}
data.raw.resource["coal-rock"].minable.results = {{type = "item", name = "raw-coal", amount = 1}}
data.raw.resource["copper-rock"].minable.results = {{type = "item", name = "copper-ore", amount = 1}}
data.raw.resource["iron-rock"].minable.results = {{type = "item", name = "iron-ore", amount = 1}}
data.raw.resource["ore-lead"].minable.results = {{type = "item", name = "ore-lead", amount = 1}}
data.raw.resource["lead-rock"].minable.results = {{type = "item", name = "ore-lead", amount = 1}}
data.raw.resource["nexelit-rock"].minable.results = {{type = "item", name = "nexelit-ore", amount = 1}}
data.raw.resource["ore-nickel"].minable.results = {{type = "item", name = "ore-nickel", amount = 1}}
data.raw.resource["nickel-rock"].minable.results = {{type = "item", name = "ore-nickel", amount = 1}}
data.raw.resource["phosphate-rock-02"].minable.results = {{type = "item", name = "phosphate-rock", amount = 1}}
data.raw.resource["ore-quartz"].minable.results = {{type = "item", name = "ore-quartz", amount = 1}}
data.raw.resource["quartz-rock"].minable.results = {{type = "item", name = "ore-quartz", amount = 1}}

end
]]--
if mods["omnimatter_permutation"] then

fun.Recipe
	{
		type = "recipe",
		name = "nitrobenzene",
		category = "fbreactor",
		energy_required = 4,
		ingredients =
			{
				{
					{type = "fluid", name = "benzene", amount = 50}
				},
				{
					{type = "fluid", name = "sulfuric-acid", amount = 100}
				},
				{
					{type = "fluid", name = "ammonia", amount = 30}
				}
			},
		results =
			{
				{
					{type = "fluid", name = "nitrobenzene", amount = 100}
				}
			}
	}

end

--fix tech replacement
if mods["angelspetrochem"] then

	table.insert(data.raw["technology"] ["angels-sulfur-processing-1"].effects, { type = "unlock-recipe", recipe = "nitrobenzene" })

end
