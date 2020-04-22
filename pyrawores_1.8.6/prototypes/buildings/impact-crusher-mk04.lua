RECIPE {
    type = "recipe",
    name = "impact-crusher-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"impact-crusher-mk03", 1},
        {"super-steel", 30},
        {"low-density-structure", 15},
        {"nbfe-alloy", 20},
    },
    results = {
        {"impact-crusher-mk04", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "impact-crusher-mk04",
    icon = "__pyrawores__/graphics/icons/impact-crusher-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk04",
    order = "g",
    place_result = "impact-crusher-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "impact-crusher-mk04",
    icon = "__pyrawores__/graphics/icons/impact-crusher-mk04.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "impact-crusher-mk04"},
    fast_replaceable_group = "impact-crusher-mk01",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"impact-crusher"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "600kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/impact-crusher-mk01/off-mk04.png",
                width = 192,
                height = 224,
                --line_length = 9,
                frame_count = 1,
                --animation_speed = 2,
                shift = util.by_pixel(0, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/impact-crusher-mk01/shadow.png",
                width = 202,
                height = 170,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 2,
                draw_as_shadow = true,
                shift = util.by_pixel(8, 10)
            }
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-48, -16),
            west_position = util.by_pixel(-48, -16),
            south_position = util.by_pixel(-48, -16),
            east_position = util.by_pixel(-48, -16),
            animation = {
                filename = "__pyrawores__/graphics/entity/impact-crusher-mk01/left-mk04.png",
                priority = "high",
                frame_count = 99,
                line_length = 20,
                width = 96,
                height = 224,
                animation_speed = 2
            }
        },
        {
            north_position = util.by_pixel(48, -16),
            west_position = util.by_pixel(48, -16),
            south_position = util.by_pixel(48, -16),
            east_position = util.by_pixel(48, -16),
            animation = {
                filename = "__pyrawores__/graphics/entity/impact-crusher-mk01/right-mk04.png",
                priority = "high",
                frame_count = 99,
                line_length = 20,
                width = 96,
                height = 224,
                animation_speed = 2
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/impact-crusher.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/impact-crusher.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
