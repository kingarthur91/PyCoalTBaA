
require('prototypes/bobs-mods/prototypes/overrides/overrides-updates')

if mods['angelsrefining'] then
	require('prototypes/bobs-mods/prototypes/overrides/angels/overrides-updates')
else
	require('prototypes/bobs-mods/prototypes/overrides/no-angels/overrides-updates')
end
