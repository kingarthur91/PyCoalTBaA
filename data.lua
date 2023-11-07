fun = require("functions/functions")
--log(serpent.block(fun))

require('prototypes/recipe-category')

if settings.startup['prod-for-sinners'].value then
	require('functions/sinners-prod')
end

--multi-mod
--aka stuff many mods need
--require('prototypes/multi-mod/Data')

--angel mods
require('prototypes/angels-mods/Data')

--bobs mods
require('prototypes/bobs-mods/Data')

--omni mods
--require("prototypes/omni-mods/Data")

--madclown mods
require('prototypes/madclowns-mods/data')

--msp
if mods['MoreSciencePacks-for1_1'] then
	require('prototypes/msp/Data')
end

--apm mods
require('prototypes/apm-mods/Data')
