--remove broken recipes from the fuelrod multiplyier
--log("is this running")
for name, recipe in pairs(data.raw.recipe) do
    --log("anything")
    --log(recipe.name)
    --log(serpent.block(recipe))
    if recipe.main_product == "angels-void" or recipe.main_product == "slag" then
        --log("hide " .. name)
        data.raw.recipe[name].hidden = true
    end
    if recipe.results ~= nil then
        if recipe.results[1].name == "angels-void" or recipe.results[1].name == "slag" then
            --log("hide " .. name)
            data.raw.recipe[name].hidden = true
        end
    end
    if string.find(recipe.name, "advanced-foundry-") ~= nil and recipe.category == "advanced-foundry" then
        --log("here?")
        data.raw.recipe[recipe.name].enabled = false
        data.raw.recipe[recipe.name].hidden = true
    end
end
