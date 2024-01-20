--this code is by notnotmelon, and it doesn't work
local mapping = {
    ['yellow-filter-inserter'] = 'inserter',
    ['red-filter-inserter'] = 'red-inserter',
    ['filter-inserter'] = 'fast-inserter',
    ['turbo-filter-inserter'] = 'turbo-inserter',
    ['express-filter-inserter'] = 'express-inserter',
    ['red-stack-filter-inserter'] = 'red-stack-inserter',
    ['stack-filter-inserter'] = 'stack-inserter',
    ['turbo-stack-filter-inserter'] = 'turbo-stack-inserter',
    ['express-stack-filter-inserter'] = 'express-stack-inserter',
}

local filters = {}
local normal = {}
for k,v in pairs(mapping) do
  filters[#filters+1] = k
    normal[#normal+1] = v
end

local i = 0
for _, surface in pairs(game.surfaces) do
    for _, inserter in pairs(surface.find_entities_filtered{name=normal}) do
        inserter.inserter_filter_mode = 'blacklist'
    end
    
    for _, inserter in pairs(surface.find_entities_filtered{type='inserter',name=filters}) do
        local replacement = surface.create_entity{
            name = mapping[inserter.name],
            position = inserter.position,
            direction = inserter.direction,
            force = inserter.force,
            raise_built = true,
            create_build_effect_smoke = false
        }
        if replacement.valid then
            for _, wire in pairs(inserter.circuit_connection_definitions) do
                replacement.connect_neighbour(wire)
            end
            replacement.copy_settings(inserter)
            inserter.destroy()
            i = i + 1
        else
            game.print('Failed to migrate inserter at '..serpent.line(inserter.position))
        end
    end
end
if i > 0 then game.print('Migrated '..i..' filter inserters.') end