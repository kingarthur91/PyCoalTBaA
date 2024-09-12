-- DATA STAGE OVERRIDES
if mods['angelsrefining'] then
    if mods['angelsbioprocessing'] then
        data.raw.item["cellulose-fiber"].fuel_category = "biomass"
        data.raw.item["wood-bricks"].fuel_category = "biomass"
    end

    -- replace miner fluid
    if data.raw.resource['borax'] ~= nil then
        if data.raw.fluid['gas-synthesis'] ~= nil then
            data.raw.resource['borax'].minable.required_fluid = 'gas-synthesis'
        end
    end

    if data.raw.resource['phosphate-rock'] ~= nil then
        if data.raw.fluid['gas-synthesis'] ~= nil then
            data.raw.resource['phosphate-rock'].minable.required_fluid = 'gas-synthesis'
        end
    end
end

if mods['angelssmelting'] then
    if mods['pypetroleumhandling'] then
        local drr = data.raw.recipe
        local recipes =
            {
                drr['angels-solder'],
                drr['angels-plate-steel'],
                drr['angels-plate-copper'],
                drr['angels-plate-iron'],
                drr['angels-plate-lead'],
                drr['angels-plate-manganese'],
                drr['angels-plate-tin'],
            }
        fun.remove_recipe_difficulties(recipes)
        if mods['omnimatter'] then
            local omnirecipes =
            {
                drr['angels-plate-omnium'],
                drr['omnium-gear-wheel-casting'],
            }
            fun.remove_recipe_difficulties(omnirecipes)
        end
    end
end

if mods['angelsbioprocessing'] then
    TECHNOLOGY('bio-processing-brown'):add_prereq('seaweed-mk01')
    if not mods['bobelectronics'] then
        RECIPE('algae-farm-2'):replace_ingredient('t1-circuit', 'electronic-circuit')
    end
end