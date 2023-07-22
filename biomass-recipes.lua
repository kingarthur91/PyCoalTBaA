local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

local bio_list = require('biomass')

local type

local local_name_type

for i, item in pairs(bio_list) do
    if item.type == nil or item.type ~= 'fluid' then
        type = 'item'
        local_name_type = 'item'
    elseif item.type == 'fluid' then
        type = 'fluid'
        local_name_type = 'fluid'
    end
    local icon
    if type == 'item' and data.raw.item[i] ~= nil then
        if data.raw.item[i].icon ~= nil then
            icon = {icon = data.raw.item[i].icon, icon_size = data.raw.item[i].icon_size}
        elseif data.raw.item[i].icons ~= nil then
            icon = data.raw.item[i].icons[1]
            if data.raw.item[i].icon_size ~= nil then
                icon.icon_size = data.raw.item[i].icon_size
            elseif data.raw.item[i].icons[1].icon_size ~= nil then
                icon.icon_size = data.raw.item[i].icons[1].icon_size
            end
        end
    elseif type == 'fluid' then
        if data.raw.fluid[i] ~= nil and data.raw.fluid[i].icon ~= nil then
            icon = {icon = data.raw.fluid[i].icon, icon_size = data.raw.fluid[i].icon_size}
        elseif data.raw.fluid[i] ~= nil and data.raw.fluid[i].icons ~= nil then
            icon = data.raw.fluid[i].icons[1]
        end
    elseif type == 'item' and data.raw.module[i] ~= nil then
        if data.raw.module[i].icon ~= nil then
            icon = {icon = data.raw.module[i].icon, icon_size = data.raw.module[i].icon_size}
        elseif data.raw.module[i].icons ~= nil then
            if string.match(data.raw.module[i].icons[1].icon, 'over') ~= nil then
                icon = data.raw.module[i].icons[2]
            else
                icon = data.raw.module[i].icons[1]
            end
            if data.raw.module[i].icon_size ~= nil then
                icon.icon_size = data.raw.module[i].icon_size
            elseif data.raw.module[i].icons[1].icon_size ~= nil then
                icon.icon_size = data.raw.module[i].icons[1].icon_size
            end
        end
    end

    local prototype = data.raw.item[i] or data.raw.fluid[i] or data.raw.module[i]
    if prototype then
        RECIPE {
            type = 'recipe',
            name = 'biomass-' .. i,
            category = 'compost',
            enabled = false,
            hide_from_player_crafting = true,
            ignore_for_dependencies = true,
            energy_required = 3,
            ingredients = {
                {type = type, name = i, amount = item.item_amount},
            },
            results = {
                {type = 'item', name = 'biomass', amount = item.biomass_amount},
            },
            icons =
                {
                    icon,
                    {icon = "__pyalienlifegraphics__/graphics/icons/biomass.png", scale = 0.25, shift = {-7.5,-7.5}, icon_size = 64}
                },
            subgroup = 'py-alienlife-compost',
            order = i,
            localised_name = {'', 'Compost ' .. item.item_amount .. ' x ', {local_name_type .. '-name.' .. i}}
        }:add_unlock("compost")
        FUN.add_to_description(type, prototype, {'item-description.compost-amount', math.floor(item.biomass_amount / item.item_amount * 10) / 10})
    end
end