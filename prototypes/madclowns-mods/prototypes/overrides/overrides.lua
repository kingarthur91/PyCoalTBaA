if mods['Clowns-Processing'] then
	if mods['pypetroleumhandling'] then
		local drr = data.raw.recipe
        local recipes =
			{
				drr['clowns-plate-magnesium'],
			}
		fun.remove_recipe_difficulties(recipes)
	end
end