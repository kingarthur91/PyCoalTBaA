RECIPE {
    type = "recipe",
    name = "drp",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"titanium-plate", 200},
        {"super-steel", 50},
        {"classifier", 3},
        {"processing-unit", 25},
    },
    results = {
        {"drp", 1}
    }
}:add_unlock("machines-mk03")

ITEM {
    type = "item",
    name = "drp",
    icon = "__pyrawores__/graphics/icons/drp.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-others",
    order = "a",
    place_result = "drp",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "drp",
    icon = "__pyrawores__/graphics/icons/drp.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "drp"},
    fast_replaceable_group = "drp",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"drp"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1500kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/drp/down.png",
                --priority = "high",
                width = 160,
                height = 160,
                line_length = 12,
                frame_count = 144,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/drp/up.png",
                --priority = "high",
                width = 160,
                height = 160,
                line_length = 12,
                frame_count = 144,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -160)
            },
            {
                filename = "__pyrawores__/graphics/entity/drp/sh.png",
                --priority = "high",
                width = 192,
                height = 128,
                line_length = 10,
                frame_count = 144,
                animation_speed = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(20, 10)
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -3.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/drp.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/drp.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}
