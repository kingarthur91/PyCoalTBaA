
--angel mods
require('prototypes/angels-mods/Data-Final-Fixes')

--aai
require('prototypes/aai/Data-fixes')

--bobs mods
require('prototypes/bobs-mods/Data-Final-Fixes')

--madclown mods
require('prototypes/madclowns-mods/data-fixes')

--msp
if mods['MoreSciencePacks-for1_1'] then
    require('prototypes/msp/Data-fixes')
end

--apm mods
require('prototypes/apm-mods/Data-Final-Fixes')

--biomass recipes
--require('biomass-recipes')

if mods['SeaBlockMetaPack'] then
    TECHNOLOGY('chemical-science-pack'):remove_prereq('advanced-electronics')
end
