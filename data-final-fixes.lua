--Angels Mods
require('prototypes/angels-mods/Data-Final-Fixes')

--Bob Mods
require('prototypes/bobs-mods/Data-Final-Fixes')

require('prototypes/aai-industries/Data-Final-Fixes')

--require("prototypes/bio-industries/Data-Final-Fixes")

--require("prototypes/dl-stacking/Data-Final-Fixes")

--require("prototypes/kaoextended/Data-Final-Fixes")

--require("prototypes/madclowns-mods/Data-Final-Fixes")

--require("prototypes/mining-space-industries/Data-Final-Fixes")

require('prototypes/omni-mods/Data-Final-Fixes')

--require("prototypes/space-exploration/Data-Final-Fixes")

require('updates/acid-changes')

require('updates/pyproductivityadjuster')

if mods['Advanced-Solar'] then
    data.raw.technology['electric-energy-accumulators-2'].prerequisites = {'electric-energy-accumulators'}
end

if mods['BlackMarket'] then
    data.raw.technology['black-market-energy'].prerequisites = {'black-market-item', 'electric-energy-accumulators'}
end

--recipe ingredients deduper

for i, ings in pairs(data.raw.recipe) do
    --log(serpent.block(ings))
    local inglist = {}
    if ings.ingredients ~= nil then
        for a, ing in pairs(ings.ingredients) do
            if ing.name ~= nil then
                if data.raw.item[ing.name] or data.raw.fluid[ing.name] then
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
                if data.raw.item[ing.name] or data.raw.fluid[ing.name] then
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
                        if data.raw.item[ing.name] or data.raw.fluid[ing.name] then
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

--data.raw.recipe['pistol'].icon = '__base__/graphics/icons/pistol.png'

for _, recipe in pairs(data.raw.recipe) do
    log(serpent.block(recipe))
    if recipe.icon_size ~= nil and recipe.icon == nil then
        if data.raw.item[recipe.name] ~= nil then
            data.raw.recipe[recipe.name].icon = data.raw.item[recipe.name].icon
        end
        if data.raw.gun[recipe.name] ~= nil then
            data.raw.recipe[recipe.name].icon = data.raw.gun[recipe.name].icon
        end
        if data.raw.ammo[recipe.name] ~= nil then
            if data.raw.ammo[recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw.ammo[recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw.ammo[recipe.name].icons
            end
        end
        if data.raw.armor[recipe.name] ~= nil then
            if data.raw.armor[recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw.armor[recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw.armor[recipe.name].icons
            end
        end
        if data.raw['repair-tool'][recipe.name] ~= nil then
            if data.raw['repair-tool'][recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw['repair-tool'][recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw['repair-tool'][recipe.name].icons
            end
        end
        if data.raw.car[recipe.name] ~= nil then
            if data.raw.car[recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw.car[recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw.car[recipe.name].icons
            end
        end
        if data.raw.capsule[recipe.name] ~= nil then
            if data.raw.capsule[recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw.capsule[recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw.capsule[recipe.name].icons
            end
        end
        if data.raw.module[recipe.name] ~= nil then
            if data.raw.module[recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw.module[recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw.module[recipe.name].icons
            end
        end
        if data.raw['rail-planner'][recipe.name] ~= nil then
            if data.raw['rail-planner'][recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw['rail-planner'][recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw['rail-planner'][recipe.name].icons
            end
        end
        if data.raw['item-with-entity-data'][recipe.name] ~= nil then
            if data.raw['item-with-entity-data'][recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw['item-with-entity-data'][recipe.name].icon
            else
                data.raw.recipe[recipe.name].icons = data.raw['item-with-entity-data'][recipe.name].icons
            end
        end
        if data.raw.tool[recipe.name] ~= nil then
            if data.raw.tool[recipe.name].icon ~= nil then
                data.raw.recipe[recipe.name].icon = data.raw.tool[recipe.name].icon
            else
                data.raw.recipe[recipe.name].icon = data.raw.tool[recipe.name].icons[1].icon
            end
        end
        if string.find(recipe.name, '-combine') ~= nil then
            log(recipe.name)
            local rn = string.gsub(recipe.name, '-combine', '')
            log(rn)
            data.raw.recipe[recipe.name].icon = data.raw.module[rn].icon
        end
        if recipe.name == 'ammo-initial' then
            data.raw.recipe['ammo-initial'].main_product = 'firearm-magazine'
        end
    end
end

--data.raw.recipe["automation-science-pack"].icon = "__pycoalprocessing__/graphics/icons/science-pack-1.png"
log(serpent.block(data.raw.tool['military-science-pack']))
log(serpent.block(data.raw.recipe['pistol']))

for _, recipe in pairs(data.raw.recipe) do
    if recipe.results ~= nil then
        for r, result in pairs(recipe.results) do
            if data.raw.item[result.name] == nil and data.raw.fluid[result.name] == nil then
                data.raw.recipe[recipe.name].results[r] = nil
            end
        end
    end
    if recipe.normal ~= nil then
        if recipe.normal.results ~= nil then
            for r, result in pairs(recipe.normal.results) do
                if data.raw.item[result.name] == nil and data.raw.fluid[result.name] == nil then
                    data.raw.recipe[recipe.name].normal.results[r] = nil
                end
            end
        end
    end
    if recipe.expensive ~= nil then
        if recipe.expensive.results ~= nil then
            for r, result in pairs(recipe.expensive.results) do
                if data.raw.item[result.name] == nil and data.raw.fluid[result.name] == nil then
                    data.raw.recipe[recipe.name].expensive.results[r] = nil
                end
            end
        end
    end
end

log(serpent.block(data.raw.recipe['angels-ore2-crystal-salting']))
