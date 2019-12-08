RECIPE {
    type = "recipe",
    name = "impact-crusher-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"impact-crusher-mk02", 1},
        {"titanium-plate", 20},
        {"stainless-steel", 20},
        {"tin-plate", 20},
        {"processing-unit", 10}
    },
    results = {
        {"impact-crusher-mk03", 1}
    }
}:add_unlock("machines-mk03")

ITEM {
    type = "item",
    name = "impact-crusher-mk03",
    icon = "__pyrawores__/graphics/icons/impact-crusher-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk03",
    order = "g",
    place_result = "impact-crusher-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "impact-crusher-mk03",
    icon = "__pyrawores__/graphics/icons/impact-crusher-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "impact-crusher-mk03"},
    fast_replaceable_group = "impact-crusher-mk01",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"impact-crusher"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "500kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/impact-crusher-mk01/off-mk03.png",
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
                filename = "__pyrawores__/graphics/entity/impact-crusher-mk01/left-mk03.png",
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
                filename = "__pyrawores__/graphics/entity/impact-crusher-mk01/right-mk03.png",
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
