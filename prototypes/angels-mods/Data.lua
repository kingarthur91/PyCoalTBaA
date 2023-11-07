require('prototypes/angels-mods/prototypes/triggers')

require('prototypes/angels-mods/prototypes/overrides/overrides')

require('prototypes/angels-mods/prototypes/recipes/recipes')

if mods['angelsindustries'] then
	if settings.startup["angels-enable-components"].value then
		require('prototypes/angels-mods/prototypes/overrides/ai/overrides')
	else
		require('prototypes/angels-mods/prototypes/overrides/no-ai/overrides')
	end
end
