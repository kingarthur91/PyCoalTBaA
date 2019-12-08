-- Generic migration script to unlock and relock recipes
-- in the case of additions/removals/changes
-- This will not remove recipes assigned to machines already

for _, force in pairs(game.forces) do
    for _, tech in pairs(force.technologies) do
        for _, unlock in pairs(tech.effects or {}) do
            if unlock.type == 'unlock-recipe' then
                force.recipes[unlock.recipe].enabled = tech.researched
            end
        end
    end
end
