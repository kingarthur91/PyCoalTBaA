require('prototypes/bobs-mods/prototypes/overrides/overrides')
require('prototypes/bobs-mods/prototypes/recipes/recipes')
require('prototypes/bobs-mods/prototypes/items/items')

if mods['angelsrefining'] then
	require('prototypes/bobs-mods/prototypes/overrides/angels/overrides')
else
	require('prototypes/bobs-mods/prototypes/overrides/no-angels/overrides')
end
