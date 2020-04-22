RECIPE {
    type = "recipe",
    name = "wet-scrubber-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"wet-scrubber-mk03", 1},
        {"storage-tank", 1}, --pyindustry py-tank-5000
        {"super-steel", 30},
        {"low-density-structure", 15},
        {"nbfe-alloy", 20},
    },
    results = {
        {"wet-scrubber-mk04", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "wet-scrubber-mk04",
    icon = "__pyrawores__/graphics/icons/wet-scrubber-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk04",
    order = "g",
    place_result = "wet-scrubber-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "wet-scrubber-mk04",
    icon = "__pyrawores__/graphics/icons/wet-scrubber-mk04.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "wet-scrubber-mk04"},
    fast_replaceable_group = "wet-scrubber",
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
    crafting_categories = {"wet-scrubber"},
    crafting_speed = 4.5,
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
                filename = "__pyrawores__/graphics/entity/wet-scrubber-mk01/wet-scrubber-base-mk04.png",
                --priority = "high",
                width = 192,
                height = 224,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(0, -17)
            },
            {
                filename = "__pyrawores__/graphics/entity/wet-scrubber-mk01/top-off-mk04.png",
                --priority = "high",
                width = 192,
                height = 128,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(0, -190)
            },
            {
                filename = "__pyrawores__/graphics/entity/wet-scrubber-mk01/shadow.png",
                --priority = "high",
                width = 224,
                height = 192,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(32, 0)
            }
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, -190),
            west_position = util.by_pixel(0, -190),
            south_position = util.by_pixel(0, -190),
            east_position = util.by_pixel(0, -190),
            animation = {
                filename = "__pyrawores__/graphics/entity/wet-scrubber-mk01/anim-mk04.png",
                --priority = "extra-high",
                frame_count = 2,
                --line_length = 2,
                width = 192,
                height = 128,
                animation_speed = 0.2
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.5, -3.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.5, 3.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 3.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/wet-scrubber.ogg", volume = 1.4},
        idle_sound = {filename = "__pyrawores__/sounds/wet-scrubber.ogg", volume = 1.0},
        apparent_volume = 2.5
    }
}
