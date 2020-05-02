
local FUN = require('functions/functions')

--enabling some locked recipes at start for science pack
FUN.enable_recipe('sorting-temperate-3')
FUN.enable_recipe('crop-farm')
FUN.enable_recipe('composter')
FUN.enable_recipe('algae-green-simple')
FUN.enable_recipe('algae-farm')
FUN.enable_recipe('cellulose-fiber-algae')

--replace wood with cellulose fibers in production of cellulose
FUN.ingredient_replace('cellulose-00','wood','cellulose-fiber')
FUN.ingredient_replace('cellulose-01','wood','cellulose-fiber')
FUN.ingredient_replace('cellulose-02','wood','cellulose-fiber')

--replace cellulose with cellulose fiber in later cellulose processing recipes
FUN.results_replacer('yotoi-cellulose','cellulose','cellulose-fiber')

--replace cellulose in lignin with cellulose fiber
FUN.ingredient_replace('lignin','cellulose','cellulose-fiber')

--replaceing crushed stone with whole stone
FUN.results_replacer('angelsore1-crushed','stone-crushed','stone')
FUN.results_replacer('angelsore2-crushed','stone-crushed','stone')
FUN.results_replacer('angelsore3-crushed','stone-crushed','stone')
FUN.results_replacer('angelsore4-crushed','stone-crushed','stone')
FUN.results_replacer('angelsore5-crushed','stone-crushed','stone')
FUN.results_replacer('angelsore6-crushed','stone-crushed','stone')

--swap stone and crushed stone in the stone crushed recipe
--move recipe to the crusher
FUN.results_replacer('stone-crushed','stone','stone-crushed')
FUN.ingredient_replace('stone-crushed','stone-crushed','stone')
data.raw.recipe['stone-crushed'].category = 'ore-sorting-t1'

--crushed stone to gravel
FUN.ingredient_replace('stone-to-gravel','stone','stone-crushed')
