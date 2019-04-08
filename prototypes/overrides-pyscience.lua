
--if not settings.startup["uberhaul"].value then

if mods["pyscience"] then

ingredient_replace("sct-htech-thermalstore","electrum-alloy","gold-plate")

table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "tcp-t3"})
table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-flash-fuel"})
table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-laser-foci"})
table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-laser-emitter"})
table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-femto-lasers"})
table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-atomic-sensors"})

end

--end