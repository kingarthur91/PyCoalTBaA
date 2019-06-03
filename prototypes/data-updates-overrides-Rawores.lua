require("functions/functions")

if not settings.startup["uberhaul"].value then

if mods["pyrawores"] then

	if mods["aai-industry"] and not mods["space-exploration"] then

log(serpent.block(data.raw.technology["optics"]))
log("fucking askey")
	--lazy dont wanna make function. will do manual for now
		for _, t in pairs(data.raw.technology) do
		log(serpent.block(t.name))
			if t.prerequisites ~= nil then
			log(serpent.block(t.prerequisites))
				for n, p in pairs(t.prerequisites) do
				log(serpent.block(p))
					if p == "glass-processing" then
						data.raw.technology[t.name].prerequisites[n] = nil
					end
				end
			end
		end	
	end
	
	log(serpent.block(data.raw.technology["optics"]))

if mods["omnimatter_compression"] then

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
	
end

end