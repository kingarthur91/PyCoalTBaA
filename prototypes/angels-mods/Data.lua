
require('prototypes/angels-mods/prototypes/overrides/overrides')

require('prototypes/angels-mods/prototypes/recipes/recipes')

if mods['angelsrefining'] then
	if angelsmods.industries.components then
		require('prototypes/angels-mods/prototypes/overrides/ai/overrides')
	else
		require('prototypes/angels-mods/prototypes/overrides/no-ai/overrides')
	end
end
