if mods["angelspetrochem"] then

data.raw["technology"]["angels-nitrogen-processing-1"].prerequisites = nil

table.insert(data.raw["technology"]["coal-processing-1"].effects, { type = "unlock-recipe", recipe = "water-mineralized-2000" })

end
