if mods['aai-industry'] then
	fun.remove_recipe_unlock(
		{'pipe'},
		{'pipe-to-ground'},
		{'small-electric-pole'}
		)
	data.raw.recipe['pipe'].enabled = true
	data.raw.recipe['pipe-to-ground'].enabled = true
	data.raw.recipe['small-electric-pole'].enabled = true
end