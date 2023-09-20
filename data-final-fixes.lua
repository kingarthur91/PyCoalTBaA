
--angel mods
require('prototypes/angels-mods/Data-Final-Fixes')

--bobs mods
require('prototypes/bobs-mods/Data-Final-Fixes')

--madclown mods
require('prototypes/madclowns-mods/data-fixes')

--biomass recipes
--require('biomass-recipes')

require 'prototypes.global-item-replacer'

fun.global_prereq_replacer('electronics', 'vacuum-tube-electronics')
fun.global_prereq_replacer('washing-1', 'soil-washing')

--recipe ingredients deduper

for i, ings in pairs(data.raw.recipe) do
    --log(serpent.block(ings))
    local inglist = {}
    if ings.ingredients ~= nil then
        for a, ing in pairs(ings.ingredients) do
            if ing.name ~= nil then
                if data.raw.item[ing.name] or data.raw.fluid[ing.name] or data.raw.module[ing.name] or data.raw.tool[ing.name] or data.raw.ammo[ing.name] then
                    if not inglist[ing.name] then
                        --log(serpent.block(ing))
                        --log(ing.name)
                        inglist[ing.name] = true
                    else
                        data.raw.recipe[ings.name].ingredients[a] = nil
                    end
                else
                    data.raw.recipe[ings.name].ingredients[a] = nil
                end
            elseif type(ing[1]) == 'string' then
                --log(serpent.block(ing))
                if not inglist[ing[1]] then
                    inglist[ing[1]] = true
                else
                    data.raw.recipe[ings.name].ingredients[a] = nil
                end
            end
        end
    end

    if ings.normal ~= nil then
        --log(serpent.block(ings))
        for a, ing in pairs(ings.normal.ingredients) do
            if ing.name ~= nil then
                if data.raw.item[ing.name] or data.raw.fluid[ing.name] or data.raw.module[ing.name] or data.raw.tool[ing.name] or data.raw.ammo[ing.name] then
                    if not inglist[ing.name] then
                        --log(serpent.block(ing))
                        --log(ing.name)
                        inglist[ing.name] = true
                    else
                        data.raw.recipe[ings.name].normal.ingredients[a] = nil
                    end
                else
                    data.raw.recipe[ings.name].normal.ingredients[a] = nil
                end
            elseif type(ing[1]) == 'string' then
                --log(serpent.block(ing))
                if not inglist[ing[1]] then
                    inglist[ing[1]] = true
                else
                    data.raw.recipe[ings.name].normal.ingredients[a] = nil
                end
            end
        end
    end
    --reset inglist for expensive ingredients
    inglist = {}

    if ings.expensive ~= nil then
        --log(serpent.block(ings))
        --log(serpent.block(ings.expensive))
        if ings.expensive ~= false then
            if ings.expensive.ingredients ~= nil then
                for a, ing in pairs(ings.expensive.ingredients) do
                    if ing.name ~= nil then
                        if data.raw.item[ing.name] or data.raw.fluid[ing.name] or data.raw.module[ing.name] or data.raw.tool[ing.name] or data.raw.ammo[ing.name] then
                            if not inglist[ing.name] then
                                --log(serpent.block(ing))
                                --log(ing.name)
                                inglist[ing.name] = true
                            else
                                data.raw.recipe[ings.name].expensive.ingredients[a] = nil
                            end
                        else
                            data.raw.recipe[ings.name].expensive.ingredients[a] = nil
                        end
                    elseif type(ing[1]) == 'string' then
                        --log(serpent.block(ing))
                        if not inglist[ing[1]] then
                            inglist[ing[1]] = true
                        else
                            data.raw.recipe[ings.name].expensive.ingredients[a] = nil
                        end
                    end
                end
            end
        end
    end
end

data.raw.item['electronic-circuit'].icon_size = 64
data.raw.item['electronic-circuit'].icon = "__pyhightechgraphics__/graphics/icons/circuit-board-1.png"
data.raw.item['advanced-circuit'].icon_size = 64
data.raw.item['advanced-circuit'].icon = "__pyhightechgraphics__/graphics/icons/circuit-board-2.png"
data.raw.item['processing-unit'].icon_size = 64
data.raw.item['processing-unit'].icon = "__pyhightechgraphics__/graphics/icons/circuit-board-3.png"
data.raw.item['intelligent-unit'].icon_size = 32
data.raw.item['intelligent-unit'].icon = "__pyhightechgraphics__/graphics/icons/intelligent-unit.png"