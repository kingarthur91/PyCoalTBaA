debugmode = debugmode or {}
debugmode.techcheck = settings.startup["debug-techcheck"].value
debugmode.logging = settings.startup["debug-logging"].value
if debugmode.logging then 
log(serpent.block(settings.startup))
log(serpent.block(mods))
end



fun = require("functions/functions")
--log(serpent.block(fun))


require('prototypes/recipe-category')

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
