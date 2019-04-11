if not settings.startup["uberhaul"].value then

if mods["angelspetrochem"] then

data.raw["technology"]["angels-nitrogen-processing-1"].prerequisites = nil

table.insert(data.raw["technology"]["coal-processing-1"].effects, { type = "unlock-recipe", recipe = "water-mineralized-2000" })

end

if mods["bobplates"] then

data.raw.technology["titanium-processing"].unit.ingredients[3] = nil

end

if mods["pyfusion"] and mods["angelssmelting"] then

data.raw.technology["angels-tungsten-smelting"].unit.ingredients[3] = nil

end

end