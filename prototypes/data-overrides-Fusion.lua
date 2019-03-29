require("functions/functions")

--if not settings.startup["uberhaul"].value then

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

--end