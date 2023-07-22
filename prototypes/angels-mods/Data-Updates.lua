
require('prototypes/angels-mods/prototypes/overrides/overrides-updates')


if mods['angelsrefining'] and mods['angelsinfiniteores'] then
	require('prototypes/angels-mods/prototypes/ores/inf-ores')
	angelsmods.functions.make_resource()
	require('prototypes/angels-mods/prototypes/ores/inf-ores-2')
	--log(serpent.block(data.raw.resource['infinite-borax']))
end
