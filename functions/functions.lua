local overrides = {}
local dr = data.raw
local dri = dr.item
local drf = dr.fluid
local drr = dr.recipe
local drt = dr.technology

--add item/fluid to recipe ingredients
-- ingredient contains name, amount, and type if its a fluid
function overrides.add_ingredient(recipe, ingredient)
    --check that recipe exists before doing anything else
    if drr[recipe] ~= nil then
        --check if ingredient is item or fluid and that it exists
        if dri[ingredient.name] ~= nil or drf[ingredient.name] ~= nil then
            --check if type is set to fluid
            if drr[recipe].ingredients ~= nil then
                if ingredient.type == 'fluid' then
                    table.insert(drr[recipe].ingredients, {type = 'fluid', name = ingredient.name, amount = ingredient.amount})
                else
                --log(serpent.block(recipe))
                --log(serpent.blockdrr[recipe]))
                    table.insert(drr[recipe].ingredients, {type = 'item', name = ingredient.name, amount = ingredient.amount})
                end
            end
        end
    end
end

--removes item from recipe
function overrides.remove_ingredient(recipe, ingredient)
    for i, ing in pairs(drr[recipe].ingredients) do
        if ing[1] == ingredient or ing.name == ingredient then
            table.remove(drr[recipe].ingredients, i)
        end
    end
end

--add item/fluid to recipe results
function overrides.add_result(recipe, result)
    --check that recipe exists before doing anything else
    if drr[recipe] ~= nil then
        --check if result is item or fluid and that it exists
        if dri[result.name] ~= nil or drf[result.name] ~= nil then
            --check if type is set to fluid
            if result.type == 'fluid' then
                table.insert(drr[recipe].results, {type = 'fluid', name = result.name, amount = result.amount})
            else
                table.insert(drr[recipe].results, {type = 'item', name = result.name, amount = result.amount})
            end
        end
    end
end

--removes result
function overrides.remove_result(recipe, result)
end
 --

--recipe builder: can take a list of ingredients and a list results and attempt to build a recipe using the first avalible item/fluid
--Example
--[[
Recipe{
	name="a",
	ingredients =
		{
		--each ingredient can have multiple entries to use if one isnt loaded
		{
			{name="test",amount=5},
			{name="other",amount=3},
			{name="item",amount=1},
		},
		{name="bleh",amount=2},
		{type="fluid",name="stuff", amount=40}
		}
	results =
		{
		{"things",2},
		}


]]--
function overrides.Recipe(recipe)
    local name = recipe.name
    local ingredients
    local results = {}
    local icon
    local category

    local prep_ingredients = {}
    local prep_results = {}

    local newingredients = false

    --log(serpent.block(recipe.ingredients))
    --log(serpent.block(recipe.results))
    if drr[recipe.name] == nil then
        --if recipe doesnt exist create new one
        ingredients = recipe.ingredients
        results = recipe.results
        icon = recipe.icon
        category = recipe.category

        newingredients = true
    elseif drr[recipe.name] ~= nil then
        --if recipe exists load missing info from current recipe and add new info from function

        if recipe.ingredients ~= nil then
            ingredients = recipe.ingredients
            newingredients = true
        else
            --log(serpent.block(i))
            --log("final ingredients")
            --log(serpent.block(ingredients))
            ingredients = drr[name].ingredients
        end

        if recipe.results ~= nil then
            results = recipe.results
        else
            --log(serpent.block(recipe.name))
            --log(serpent.block(drr[name]))
            if drr[name].result ~= nil then
                --log(serpent.block(drr[name]))
                --log(serpent.block(r))
                table.insert(results, {{type = 'item', name = drr[name].result, amount = drr[name].result_count or 1}})
            elseif drr[name].results ~= nil then
                --log(serpent.block(drr[name]))
                for _, r in pairs(drr[name].results) do
                    --log(serpent.block(r))
                    table.insert(results, {r})
                end
            end
        end

        if recipe.icon ~= nil then
            icon = recipe.icon
        else
            icon = drr[name].icon
        end

        if recipe.category ~= nil then
            category = recipe.category
        else
            category = drr[name].category
        end

    --log(serpent.block(results))
    end
    --log(serpent.block(drr[name]))
    --log(serpent.block(name))
    --log(serpent.block(ingredients))
    --log(serpent.block(results))

    if results ~= nil then
        --check results to make sure they exist
        for _, restable in pairs(results) do
			--log(serpent.block(restable))
            for _, r in pairs(restable) do
                local result = {}
                --log(serpent.block(r))
                if r.type ~= 'fluid' then
                    --if its not set to fluid its an item. check the items list for the items existance and set the type to item

                    if dri[r.name] ~= nil then
                        result.type = 'item'

                        --insert the name and amount if the item is found
                        result.name = r.name
                        if r.amount ~= nil then
                            result.amount = r.amount
                        end
                        if r.amount_min ~= nil then
                            result.amount_min = r.amount_min
                        end
                        if r.amount_max ~= nil then
                            result.amount_max = r.amount_max
                        end
                        if r.probability ~= nil then
                            result.probability = r.probability
                        end
                        --insert the complete result into the recipe results table
                        table.insert(prep_results, result)

                        break
                    end
                elseif r.type == 'fluid' then
                    --its a fluid check if it exists and set the type to fluid

                    if drf[r.name] ~= nil then
                        result.type = 'fluid'

                        --insert the name and amount if the item is found
                        result.name = r.name
                        result.amount = r.amount

                        --insert the complete result into the recipe results table
                        table.insert(prep_results, result)

                        break
                    end
                end
            end
        end
    end

    if ingredients ~= nil then
        --check each recipes ingredients table to make sure it exists
        for i, ingtable in pairs(ingredients) do
            --item and fluid can share name assume its an item unless fluid is setfenv

            if newingredients then
                for i2, ing in pairs(ingtable) do
                    local ingredient = {}
                    --log(serpent.block(recipe))
                    --log(serpent.block(ing))
                    --log(serpent.block(ingredients))
                    if ing.type ~= 'fluid' then
                        --if its not set to fluid its an item. check the items list for the items existance and set the type to item

                        if dri[ing.name] ~= nil then
                            ingredient.type = 'item'

                            --insert the name and amount if the item is found
                            ingredient.name = ing.name

                            if tonumber(ing.amount) ~= nil then
                                ingredient.amount = ing.amount
                            else
                                local amount = 0

                                for _, r in pairs(prep_results) do
                                    amount = amount + r.amount
                                end

                                ingredient.amount = amount
                            end

                            --insert the complete ingredient into the recipe ingredients table
                            table.insert(prep_ingredients, ingredient)

                            break
                        end
                    elseif ing.type == 'fluid' then
                        --its a fluid check if it exists and set the type to fluid

                        if drf[ing.name] ~= nil then
                            ingredient.type = 'fluid'

                            --insert the name and amount if the item is found
                            ingredient.name = ing.name
                            ingredient.amount = ing.amount

                            --insert the complete ingredient into the recipe ingredients table
                            table.insert(prep_ingredients, ingredient)

                            break
                        end
                    end
                end
            else
                prep_ingredients = ingredients
            end
        end
    end

--log(serpent.block(prep_ingredients))
--log(serpent.block(prep_results))

	if next(prep_ingredients) and next(prep_results) then
		--log("check check")
        --create the recipe
        data:extend(
            {
                {
                    type = 'recipe',
                    name = name,
                    category = category or 'crafting',
                    subgroup = recipe.subgroup or nil,
                    enabled = recipe.enabled or false,
                    allow_decomposition = recipe.allow_decomposition or false,
                    energy_required = energy_required or 1,
                    ingredients = prep_ingredients,
                    results = prep_results,
                    icon = icon,
                    icon_size = recipe.icon_size or 32,
                    order = recipe.order or nil,
                    main_product = recipe.main_product or nil
                }
            }
        )
	elseif recipe.enabled == true and (next(prep_ingredients) and next(prep_results)) then
		--log(serpent.block(name))
        drr[name].enabled = true
    end

    --log(serpent.block(drr[name]))
end

--Change recipes crafting category aka: the machine it should be in
function overrides.Mod_Category(name, Category)
    --log(serpent.block(recipe))
    --log(serpent.block(drr[name]))
    --local name = name
    local newcat = Category

    if drr[name] ~= nil then
        if Category ~= nil and dr['recipe-category'][Category] ~= nil then
            drr[name].category = Category
        end
    end

    --log(serpent.block(drr[name]))
end

--add or subtract from a recipe ingredients or results
--is used to edit already existing recipe
function overrides.Patch(recipe)
    --log(serpent.block(recipe))
    --log(serpent.block(drr[name]))
    local name = recipe.name
    local newingredients = recipe.ingredients
    local newresults = recipe.results

    local currentingredients
	local currentresults
		if drr[name] ~= nil then
			currentingredients = drr[name].ingredients or drr[name].normal.ingredients
			currentresults = drr[name].results or drr[name].normal.results
		end

    if drr[name] ~= nil then
        if newingredients ~= nil then
            for i1, ing1 in pairs(currentingredients) do
                for i2, ing2 in pairs(newingredients) do
                    if ing1.name == ing2.name then
                        if string.find(ing2.amount, '[%+]') ~= nil then
							ing1.amount = ing1.amount + string.sub(ing2.amount,string.find(ing2.amount, '%d'))
                        elseif string.find(ing2.amount, '[%-]') then
                            ing1.amount = ing1.amount - string.sub(ing2.amount,string.find(ing2.amount, '%d'))
                        end

						if drr[name].normal ~= nil then
							drr[name].normal.ingredients[i1].amount = ing1.amount
							else
							drr[name].ingredients[i1].amount = ing1.amount
						end
                    end
                end
            end
        end

        if newresults ~= nil then
            for r1, res1 in pairs(currentresults) do
                for r2, res2 in pairs(newresults) do
                    if res1.name == res2.name then
                        if string.find(res2.amount, '[%+]') ~= nil then
                            res1.amount = res1.amount + string.sub(res2.amount,string.find(res2.amount, '%d'))
                        elseif string.find(res2.amount, '[%-]') then
                            res1.amount = res1.amount - string.sub(res2.amount,string.find(res2.amount, '%d'))
                        end

						if drr[name].normal ~= nil then
							drr[name].normal.results[r1].amount = res1.amount
						else
							drr[name].results[r1].amount = res1.amount
						end
                    end
                end
            end
        end
    end

    --log(serpent.block(drr[name]))
end

--replace item/fluid in recipes ingredients
--doesnt yet include a way to change ingredient amount will update when needed
function overrides.ingredient_replace(recipe, old, new, new_amount)
            --log(serpent.block(recipe))
            if drr[recipe] ~= nil then
                if type(recipe) == 'string' then
                    local R = drr[recipe]
                    recipe = R
                end
                local F
                local ningredients
                local eingredients
                if recipe.ingredients ~= nil then
                    --TODO:need to check for ingredients that dont have name declared
                    local ingredients = recipe.ingredients
                    for i, ing in pairs(ingredients) do
                        --log("get past for loop into ingredients")
                        if ing.name ~= nil then
                            if ing.name == old then
                                --log("pasted check for if ingredients = old item")
                                --log(recipe.name)
                                --log(serpent.block(ing))
                                local T = 'item'
                                if drf[new] ~= nil then
                                    T = 'fluid'
                                    if ing.fluidbox_index ~= nil then
                                        F = table.deepcopy(ing.fluidbox_index)
                                        --log('DEBUG: fluidbox_index: ' ..F.. ', name: ' ..new.. ', fluidbox_index value type: ' ..type(F))
                                    end
                                end
                                local A = new_amount or table.deepcopy(ing.amount)
                                drr[recipe.name].ingredients[i] = {type = T, name = new, amount = A, fluidbox_index = F}
                                --log(serpent.block(drr[recipe.name]))
                            --log(recipe.name)
                            --log(serpent.block(recipe.ingredients))
                            --log("hit count")
                            end
                        else
                            --end
                            --for j, v in pairs(ing) do
                            --TODO:fix duplicated ingredients on some items
                            if ing[1] == old then
                                --log("pasted check for if ingredients = old item")
                                --log(recipe.name)
                                --log(serpent.block(ing))
                                --local T = table.deepcopy(ing.type)
                                local A = new_amount or table.deepcopy(ing[2])
                                --log(new)
                                --log(A)
                                drr[recipe.name].ingredients[i] = {new, A}
                            --log(recipe.name)
                            --log(serpent.block(drr[recipe.name].ingredients))
                            --log("hit count")
                            end
                        end
                    end
                elseif recipe.normal or recipe.expensive then
                    --log(serpent.block(recipe))
                    if recipe.normal ~= nil then
                        --log("is check good")
                        ningredients = recipe.normal.ingredients
                    end
                    if recipe.expensive ~= nil then
                        eingredients = recipe.expensive.ingredients
                    end
                    if recipe.normal then
                        --log(serpent.block(recipe.normal))
                        --log(serpent.block(ningredients))
                        for i, ing in pairs(ningredients) do
                            --log("get past for loop into normal ingredients")
                            --log("ningredients")
                            --log(serpent.block(ningredients))
                            --log(serpent.block(ing))
                            --log("ing name")
                            --log(ing.name)
                            --log("old")
                            --log(old)
                            if ing.name ~= nil then
                                if ing.name == old then
                                    --log("pasted check for if ingredients = old item")
                                    --log(recipe.name)
                                    --log(serpent.block(ing))
                                    local T = 'item'
                                    if drf[new] ~= nil then
                                        T = 'fluid'
                                        if ing.fluidbox_index ~= nil then
                                            F = table.deepcopy(ing.fluidbox_index)
                                            --log('DEBUG: fluidbox_index: ' ..F.. ', name: ' ..new.. ', fluidbox_index value type: ' ..type(F))
                                        end
                                    end
                                    local A = new_amount or table.deepcopy(ing.amount)
                                    drr[recipe.name].normal.ingredients[i] = {type = T, name = new, amount = A, fluidbox_index = F}
                                --log(recipe.name)
                                --log(serpent.block(recipe.ingredients))
                                --log("hit count")
                                --log(serpent.block(drr[recipe.name]))
                                end
                            else
                                --end
                                --for j,v in pairs(ing) do
                                if ing[1] == old then
                                    local A = new_amount or table.deepcopy(ing[2])
                                    drr[recipe.name].normal.ingredients[i] = {new, A}
                                end
                            end
                        end
                    end
                    if recipe.expensive then
                        for i, ing in pairs(eingredients) do
                            --log("get past for loop into ingredients")
                            if ing.name ~= nil then
                                if ing.name == old then
                                    --log("pasted check for if ingredients = old item")
                                    --log(recipe.name)
                                    --log(serpent.block(ing))
                                    local T = 'item'
                                    if drf[new] ~= nil then
                                        T = 'fluid'
                                        if ing.fluidbox_index ~= nil then
                                            F = table.deepcopy(ing.fluidbox_index)
                                            --log('DEBUG: fluidbox_index: ' ..F.. ', name: ' ..new.. ', fluidbox_index value type: ' ..type(F))
                                        end
                                    end
                                    local A = new_amount or table.deepcopy(ing.amount)
                                    drr[recipe.name].expensive.ingredients[i] = {type = T, name = new, amount = A, fluidbox_index = F}
                                --log(recipe.name)
                                --log(serpent.block(recipe.ingredients))
                                --log("hit count")
                                end
                            else
                                --log(serpent.block(recipe))
                                --end
                                --for j,v in pairs(ing) do
                                --log("check this still works")
                                --log(serpent.block(ing))
                                if ing[1] == old then
                                    local A = new_amount or table.deepcopy(ing[2])
                                    drr[recipe.name].expensive.ingredients[i] = {new, A}
                                end
                            end
                        end
                    end
                end
    end
end

--replace item/fluid in recipes results
function overrides.results_replacer(recipe, old, new, new_amount, newtype)
    --log('hit')
    --log(recipe)
            --log(recipe)
            if type(recipe) == 'string' then
                local R = drr[recipe]
                recipe = R
            end
            --log(serpent.block(R))
            if recipe ~= nil then
                --log('hit')
                --log(recipe.name)
                --log(serpent.block(recipe))
                if recipe.result then
                    if recipe.result == old then
                        drr[recipe.name].result = new
                        if recipe.result_count ~= nil and new_amount ~= nil then
                            drr[recipe.name].result_count = new_amount
                        end
                    end
                end
                if recipe.results then
                    --log('hit')
                    for r, result in pairs(recipe.results) do
                        --log('hit')
                        --log(serpent.block(recipe))
                        --log(serpent.block(result))
                        --log(old)
                        --log(new)
                        if result.name == old then
                            --log('hit')
                            drr[recipe.name].results[r].name = new
                            if new_amount ~= nil then
                                --log('hit')
                                drr[recipe.name].results[r].amount = new_amount
                            end
                            if newtype ~= nil then
                                --log('hit')
                                drr[recipe.name].results[r].type = newtype
                            end
                        end
                    end
                end
                if recipe.main_product ~= nil then
                    --log("should replace main_product")
                    if recipe.main_product == old then
                        --log("getting here for iron plate 1?")
                        drr[recipe.name].main_product = new
                    end
                end
                if recipe.normal or recipe.expensive then
                    if recipe.normal then
                        if recipe.normal.result then
                            if recipe.normal.result == old then
                                drr[recipe.name].normal.result = new
                                if recipe.result_count ~= nil and new_amount ~= nil then
                                    drr[recipe.name].normal.result_count = new_amount
                                end
                            end
                        end
                        if recipe.normal.results then
                            for r, result in pairs(recipe.normal.results) do
                                if result.name == old then
                                    drr[recipe.name].normal.results[r].name = new
                                    if new_amount ~= nil then
                                        drr[recipe.name].normal.results[r].amount = new_amount
                                    end
                                    if drf[new] == nil and drr[recipe.name].normal.results[r].type ~= 'item' then
                                        drr[recipe.name].normal.results[r].type = 'item'
                                    end
                                end
                            end
                        end
                        if recipe.normal.main_product then
                            if recipe.normal.main_product == old then
                                drr[recipe.name].normal.main_product = new
                            end
                        end
                    end
                    if recipe.expensive then
                        if recipe.expensive.result then
                            if recipe.expensive.result == old then
                                drr[recipe.name].expensive.result = new
                                if recipe.result_count ~= nil and new_amount ~= nil then
                                    drr[recipe.name].result_count = new_amount
                                end
                            end
                        end
                        if recipe.expensive.results then
                            for r, result in pairs(recipe.expensive.results) do
                                if result.name == old then
                                    drr[recipe.name].expensive.results[r].name = new
                                    if new_amount ~= nil then
                                        drr[recipe.name].expensive.results[r].amount = new_amount
                                    end
                                    if drf[new] == nil and drr[recipe.name].expensive.results[r].type ~= 'item' then
                                        drr[recipe.name].expensive.results[r].type = 'item'
                                    end
                                end
                            end
                        end
                        if recipe.expensive.main_product then
                            if recipe.expensive.main_product == old then
                                drr[recipe.name].expensive.main_product = new
                            end
                        end
                    end
                end
    end
end

--replace an item/fluid in every recipes ingredients/results
--best used to merge items that are duplicated in mods that should be the same
--[[
function overrides.global_item_replacer(old, new, blackrecipe)
    for prototype in pairs(defines.prototypes.item) do
        if drf[old] ~= nil or dr[prototype][old] ~= nil then
            if drf[new] ~= nil or dr[prototype][new] ~= nil then
                local recipes = table.deepcopy(drr)
                if type(blackrecipe) ~= 'table' and blackrecipe ~= nil then
                    blackrecipe = {blackrecipe}
                end
                local brecipeset = {}
                if blackrecipe ~= nil then
                    for _, brecipe in pairs(blackrecipe) do
                        brecipeset[brecipe] = true
                    end
                end
                --log(serpent.block(brecipeset))
                for recipe in pairs(recipes) do
                    --for b, brecipe in pairs(blackrecipe) do
                    if not brecipeset[recipe] then
                        --log(serpent.block(recipe))
                        --log(serpent.block(recipe.name))
                        --log(serpent.block(brecipeset))
                        overrides.ingredient_replace(recipe, old, new)
                        overrides.results_replacer(recipe, old, new)
                    end
                    --end
                end
            end
        end
    end
end
]]--
--used to remove a whole category of recipes
--use case wipe all recipes from a building
function overrides.recipe_category_remove(category, blacklist)
    --log("function was used")

    local hiddenrecipes = {}

    for r, recipe in pairs(drr) do
        if recipe.category == category then
            --log(recipe.category)
            --log(category)
            drr[recipe.name].hidden = true

            table.insert(hiddenrecipes, recipe.name)
        end
    end
    --log(serpent.block(hiddenrecipes))
    overrides.remove_recipe_unlock(hiddenrecipes)
end

--removes recipes from tech
--main use is removing recipes hidden by recipe_category_remove function
function overrides.remove_recipe_unlock(recipe_list)
    local recipelist = {}

    --log(serpent.block(recipelist))

    if type(recipe_list) ~= 'table' and recipe_list ~= nil then
        recipelist[recipe_list] = true
    elseif recipe_list ~= nil then
        for _, recipe in pairs(recipe_list) do
            recipelist[recipe] = true
        end
    end

    --log(serpent.block(recipelist))

    for t, tech in pairs(drt) do
        if tech.effects ~= nil then
            for u, unlock in pairs(tech.effects) do
                --log(serpent.block(unlock))
                --log(serpent.block(recipelist[unlock.recipe]))
                --log(serpent.block(tech))

                if recipelist[unlock.recipe] ~= nil then
                    --log(serpent.block(drt[tech.name].effects[u]))
                    drt[tech.name].effects[u] = nil

                --log(serpent.block(drt[tech.name].effects[u]))
                --log(serpent.block(drt[tech.name].effects))
                end
            end
        end
        --log(serpent.block(drt[tech.name]))
        --clean up tech effects table to not be full of nil values to avoid errors

        local cleanedtable = {}

        if drt[tech.name].effects ~= nil then
            for _, rec in pairs(drt[tech.name].effects) do
                if rec ~= nil then
                    table.insert(cleanedtable, rec)
                end
            end
        end

        drt[tech.name].effects = cleanedtable

        --log(serpent.block(drt[tech.name]))
    end
end

local hab = {}

--blacklist for hot air recipes script to avoid
function overrides.HAB(blist)
    if type(blist) ~= 'table' and blist ~= nil then
        blist = {blist}
    end
    if blist ~= nil then
        for _, bl in pairs(blist) do
            if drr[bl] ~= nil then
                hab[bl] = true
            end
        end
    end
end

--add 50 hot-air ingredient, output +2
function overrides.hotairrecipes()
    --gather recipes for the advanced-foundry
    local recipes = table.deepcopy(drr)
    local afrecipes = {}
    local afrecipesnames = {}
    local afrcount = 0
    local altrec = 0
    for _, recipe in pairs(recipes) do
        if recipe.category == 'advanced-foundry' then
            table.insert(afrecipes, recipe)
            table.insert(afrecipesnames, recipe.name)
        end
        if recipe.category == 'smelting' then
            table.insert(afrecipes, recipe)
            table.insert(afrecipesnames, recipe.name)
        end
    end
    --cycle thru afrecipes to make changes
    for _, recipe in pairs(afrecipes) do
        if not hab[recipe.name] then
            afrcount = afrcount + 1
            --add ingredient
            if recipe.normal == nil and recipe.expensive == nil then
                if recipe.ingredients[1] ~= nil then
                    if recipe.ingredients[1].name == nil then
                        local ing = recipe.ingredients
                        recipe.ingredients = {}
                        table.insert(recipe.ingredients, {type = 'item', name = ing[1][1], amount = ing[1][2]})
                        if dri['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    elseif recipe.ingredients[1].name then
                        if dri['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    end
                elseif recipe.ingredients[2] ~= nil then
                    if recipe.ingredients[2].name == nil then
                        local ing = recipe.ingredients
                        recipe.ingredients = {}
                        table.insert(recipe.ingredients, {type = 'item', name = ing[2][1], amount = ing[2][2]})
                        if dri['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    elseif recipe.ingredients[2].name then
                        if dri['solid-hot-air'] ~= nil then
                            table.insert(recipe.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                        else
                            table.insert(recipe.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                        end
                    end
                end
                if type(recipe.result) == 'string' then
                    local res = recipe.result
                    recipe.result = nil
                    recipe.results = {{type = 'item', name = res, amount = 3}}
                elseif recipe.results then
                    if recipe.results[1].name == nil then
                        local res = recipe.results
                        recipe.results = {}
                        table.insert(recipe.results, {type = 'item', name = res[1][1], amount = (res[1][2] + 2)})
                    elseif recipe.results[1].name then
                        --log(serpent.block(recipe.results))
                        if recipe.results[1].amount ~= nil then
                            local resnum = recipe.results[1].amount + 2
                            recipe.results[1].amount = resnum
                        elseif recipe.results[1].amount_max ~= nil then
                            local resnum = recipe.results[1].amount_max + 2
                            recipe.results[1].amount_max = resnum
                        end
                    end
                end
            end
            if recipe.normal or recipe.expensive then
                if recipe.normal then
                    --log(serpent.block(recipe.normal))
                    if recipe.normal.ingredients[1] ~= nil then
                        if recipe.normal.ingredients[1].name == nil then
                            local ing = recipe.normal.ingredients
                            recipe.normal.ingredients = {}
                            table.insert(recipe.normal.ingredients, {type = 'item', name = ing[1][1], amount = ing[1][2]})
                            if dri['solid-hot-air'] ~= nil then
                                table.insert(recipe.normal.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.normal.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        else
                            if dri['solid-hot-air'] ~= nil then
                                table.insert(recipe.normal.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.normal.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        end
                    end
                    if type(recipe.normal.result) == 'string' then
                        local res = recipe.normal.result
                        recipe.normal.result = nil
                        local rtab = {type = 'item', name = res, amount = 3}
                        recipe.normal.results = {}
                        table.insert(recipe.normal.results, rtab)
                    end
                    if recipe.normal.results ~= nil then
                        local resamount = recipe.normal.results[1].amount
                        recipe.normal.results[1].amount = resamount + 2
                    end
                end
                if recipe.expensive then
                    if recipe.expensive.ingredients[1] ~= nil then
                        if recipe.expensive.ingredients[1].name == nil then
                            local ing = recipe.expensive.ingredients
                            recipe.expensive.ingredients = {}
                            table.insert(recipe.expensive.ingredients, {type = 'item', name = ing[1][1], amount = ing[1][2]})
                            if dri['solid-hot-air'] ~= nil then
                                table.insert(recipe.expensive.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.expensive.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        else
                            if dri['solid-hot-air'] ~= nil then
                                table.insert(recipe.expensive.ingredients, {type = 'item', name = 'solid-hot-air', amount = 50})
                            else
                                table.insert(recipe.expensive.ingredients, {type = 'fluid', name = 'hot-air', amount = 50})
                            end
                        end
                    end
                    if type(recipe.expensive.result) == 'string' then
                        local res = recipe.expensive.result
                        recipe.expensive.result = nil
                        local rtab = {type = 'item', name = res, amount = 3}
                        recipe.expensive.results = {}
                        table.insert(recipe.expensive.results, rtab)
                    --log(serpent.block(rtab))
                    --log(serpent.block(recipe.expensive.results))
                    end
                    if recipe.expensive.results ~= nil then
                        local resamount = recipe.expensive.results[1].amount
                        recipe.expensive.results[1].amount = resamount + 2
                    end
                end
            end
            --find tech unlock of og recipe
            local unlock
            for _, t in pairs(drt) do
                --log(serpent.block(t))
                if t.effects ~= nil then
                    for _, u in pairs(t.effects) do
                        if u.recipe == recipe.name then
                            unlock = t.name
                        --log(unlock)
                        end
                    end
                end
            end
            --log(serpent.block(recipe))
            local hname = 'hotair-' .. recipe.name
            if recipe.results then
                RECIPE {
                    type = 'recipe',
                    name = hname,
                    category = 'hot-air-advanced-foundry',
                    enabled = false,
                    energy_required = recipe.energy_required,
                    ingredients = recipe.ingredients,
                    results = recipe.results,
                    icon = recipe.icon,
                    icons = recipe.icons,
                    icon_size = 32,
                    main_product = recipe.main_product or nil
                }
                 --:add_unlock(unlock)
                altrec = altrec + 1
                if recipe.enabled == false then
                    if unlock ~= nil then
                        table.insert(drt[unlock].effects, {type = 'unlock-recipe', recipe = hname})
                    end
                elseif recipe.enabled == true then
                    drr[hname].enabled = true
                elseif recipe.enabled == nil then
                    --log(recipe.name)
                    --log(serpent.block(recipe))
                    drr[hname].enabled = true
                --log(serpent.block(drr[hname]))
                end
            end
            if recipe.normal or recipe.expensive then
                RECIPE {
                    type = 'recipe',
                    name = hname,
                    category = 'hot-air-advanced-foundry',
                    normal = {
                        category = 'hot-air-advanced-foundry',
                        enabled = false,
                        energy_required = recipe.expensive.energy_required,
                        ingredients = recipe.normal.ingredients,
                        results = recipe.normal.results
                    },
                    expensive = {
                        category = 'hot-air-advanced-foundry',
                        enabled = false,
                        energy_required = recipe.expensive.energy_required,
                        ingredients = recipe.expensive.ingredients,
                        results = recipe.expensive.results
                    },
                    icon = recipe.icon,
                    icons = recipe.icons,
                    icon_size = 32,
                    main_product = recipe.main_product or nil
                }
                 --:add_unlock(unlock)
                altrec = altrec + 1
                if recipe.normal.enabled == false or recipe.expensive.enabled == false then
                    if unlock ~= nil then
                        table.insert(drt[unlock].effects, {type = 'unlock-recipe', recipe = hname})
                    end
                elseif recipe.normal.enabled == true or recipe.expensive.enabled == true then
                    if recipe.normal.enabled == true then
                        drr[hname].normal.enabled = true
                    end
                    if recipe.expensive.enabled == true then
                        drr[hname].expensive.enabled = true
                    end
                end
            end
        --log(serpent.block(drr[hname]))
        end
    end
    --log(serpent.block(afrecipesnames))
    --log(afrcount)
    --log(altrec)
    --[[
for _, r in pairs(drr) do
	if r.name == "iron-plate" then
	log(serpent.block(r))
	end
	if r.category == "hot-air-advanced-foundry" then
	log(serpent.block(r))
	end
end
]]
 --
end

function overrides.enable_recipe(recipe)
    if drr[recipe] ~= nil and drr[recipe].normal == nil and drr[recipe].expensive == nil then
        drr[recipe].enabled = true
    end
    if drr[recipe].normal ~= nil then
        drr[recipe].normal.enabled = true
    end
    if drr[recipe].expensive ~= nil then
        drr[recipe].expensive.enabled = true
    end
    for t, tech in piars(drt) do
        if tech.effects~= nil then
            for e,effect in pairs(tech.effects) do
                if effect.type == 'unlock-recipe' and effect.recipe == recipe then
                    overrides.tech_remove_recipe(tech.name,recipe)
                end
            end
        end
    end
end

function overrides.Tech_create(tech)
end

--adds recipe to tech for unlock if tech and recipe exists
function overrides.tech_add_recipe(tech, recipe)
    if drt[tech] ~= nil then
        if drr[recipe] ~= nil then
            table.insert(drt[tech].effects, {type = 'unlock-recipe', recipe = recipe})
        end
    end
end

--removes recipe from tech if tech exists and includes recipe in effects
function overrides.tech_remove_recipe(tech, recipe)
    if drt[tech] ~= nil and drr[recipe] ~= nil then
        local effects = drt[tech].effects
        local neweffects = {}
        for _, e in pairs(effects) do
            if e.recipe ~= recipe then
                table.insert(neweffects, e)
            end
        end
        if next(neweffects) ~= nil then
            drt[tech].effects = neweffects
        end
    end
end

function overrides.tech_add_prerequisites(tech, prereq)
    if drt[tech] ~= nil then
        if drt[prereq] ~= nil then
            if type(techs) ~= "table" then
                table.insert(drt[tech].prerequisites, prereq)
            else
                for _, v in pairs(tech) do
                    table.insert(drt[tech].prerequisites, v)
                end
            end
        end
    end
end

function overrides.tech_remove(tech, prereq_patch)
    if drt[tech] ~= nil then
        drt[tech].enabled = false
        drt[tech].hidden = true
        if prereq_patch ~= nil and prereq_patch == true then
            for _, t in pairs(drt) do
			--log(serpent.block(t))
                if t.prerequisites ~= nil then
                    for p, prereq in pairs(t.prerequisites) do
                        if prereq == tech then
						--log(serpent.block(p))
						--log(serpent.block(t))
						--log(serpent.block(drt[t].prerequisites))
                            table.remove(drt[t.name].prerequisites, p)
                        end
                    end
                end
            end
        end
    end
end

local techlist = {}

function overrides.findtechswithpack(scipack)
	for t,tech in pairs(drt) do
	--log(tech.name)
		for p, pack in pairs(tech.unit.ingredients) do
		--log(serpent.block(pack))
			if pack[1] == scipack then
				--log(pack[1] .. " " .. scipack)
				--for s,sp in pairs(techlist) do
					--log(serpent.block(sp))
					--if sp ~= tech.name then
						--log("stuffs")
						table.insert(techlist,tech.name)
					--end
				--end
			end
		end
	end

--log(serpent.block(techlist))

end
--fix that this is adding sci pack 0 to techs that dont have sp1 in them
function overrides.addscipack(scipack)
local scilist = {}
	for tn,tname in pairs(techlist) do
		for t, tech in pairs(drt) do
			for s, sci in pairs(tech.unit.ingredients) do
				scilist[sci[1]] = true
			end
			if not scilist[scipack] then
				table.insert(drt[tech.name].unit.ingredients,{"science-pack-0",1})
			end
		end
	end
	techlist = {}
end


--use Angel's function, OV.remove_science_pack
function overrides.removescipack(techs,scipack)
	if type(techs) ~= "table" and techs ~= nil then
		techs = {techs}
	end
	for t,tech in pairs(techs) do
		if drt[tech] ~= nil then
			for s, shortpack in pairs(drt[tech].unit.ingredients) do
				if shortpack[1] == scipack then
                    drt[tech].unit.ingredients[s] = nil
                elseif shortpack.name == scipack then
                    drt[tech].unit.ingredients[s] = nil
                else
                    --[[for longpack in pairs(shortpack) do
                        log(serpent.block(longpack))
                        if longpack[2] == scipack then
                            drt[tech].unit.ingredients[k] = nil
                        end 
                    ]]--end
                end
			end
        end
	end
end

function overrides.remove(tbl, old)
    for k, v in pairs(tbl) do
        if v == old then
            tbl[k] = nil
        end
    end
end

function overrides.add(tbl, new)
    table.insert(tbl, new)
end

function overrides.replace(tbl, old, new)
    fun.remove(tbl, old)
    fun.add(tbl, new)
end

function overrides.global_prereq_replacer(old, new)
    if drt[old] ~= nil and drt[new] ~= nil then
        for _, tech in pairs(drt) do
            if tech.prerequisites then
                for i, prereq in pairs(tech.prerequisites) do
                    if prereq == old then
                        for k, v in pairs(drt[prereq].prerequisites) do
                            if v ~= new then
                                tech.prerequisites[i] = new
                            end
                        end
                        for k, v in pairs(drt[prereq].prerequisites) do
                            if v == old then
                                tbl[k] = nil
                            end
                        end
                    end
                end
            end
        end
    end
end

function overrides.remove_recipe_difficulties(recipes)
    for name, recipe in pairs(recipes) do
        local keep = recipe.normal or recipe.expensive
        if keep then
            for k,v in pairs(keep) do
                recipe[k] = v
            end
            recipe.normal = nil
            recipe.expensive = nil
        end
    end
end

return overrides
