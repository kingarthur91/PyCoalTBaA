RECIPE {
    type = "recipe",
    name = "fwf-mk00",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"stone-brick", 50},
        {"iron-plate", 25},
        {"pipe", 5},
        {"electronic-circuit", 10},
        {"iron-gear-wheel", 20},
    },
    results = {
        {"fwf-mk00", 1}
    }
}

ITEM {
    type = "item",
    name = "fwf-mk00",
    icon = "__PyCoalTBaA__/graphics/icons/fwf-mk00.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk00",
    order = "e",
    place_result = "fwf-mk00",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fwf-mk00",
    icon = "__PyCoalTBaA__/graphics/icons/fwf-mk00.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fwf-mk00"},
    fast_replaceable_group = "fwf",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    --fixed_recipe = 'log0',
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    crafting_categories = {"fwf-basic"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "100kW",
    ingredient_count = 10,
    animation = {
                layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/base.png",
                width = 544,
                height = 64,
                line_length = 4,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(0, 240)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/left-fill.png",
                width = 32,
                height = 544,
                frame_count = 1,
                repeat_count= 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-256, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/right-fill.png",
                width = 32,
                height = 544,
                frame_count = 1,
                repeat_count= 135,
                animation_speed = 0.4,
                shift = util.by_pixel(256, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/1.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-224, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/2.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-192, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/3.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-160, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/4.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-128, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/5.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-96, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/6.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/7.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(-32, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/8.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/9.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/10.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(64, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/11.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(96, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/12.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(128, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/13.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                run_mode = "backward",
                animation_speed = 0.4,
                shift = util.by_pixel(160, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/14.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(192, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fwf/15.png",
                width = 32,
                height = 544,
                line_length = 45,
                frame_count = 135,
                animation_speed = 0.4,
                shift = util.by_pixel(224, -64)
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 0.80},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 0.55},
        apparent_volume = 2.5
    }
}
