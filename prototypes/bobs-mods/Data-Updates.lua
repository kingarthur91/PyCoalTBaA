
--check for bob logistics and update rare earth mine if its active
	if mods["boblogistics"] then
		if settings.startup["bobmods-logistics-inserteroverhaul"].value then
		fun.ingredient_replace("rare-earth-mine","fast-inserter","long-handed-inserter")
		end
	end
	
	