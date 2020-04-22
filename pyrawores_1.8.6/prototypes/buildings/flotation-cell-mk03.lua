RECIPE {
    type = "recipe",
    name = "flotation-cell-mk03",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"flotation-cell-mk02", 1},
        {"titanium-plate", 20},
        {"stainless-steel", 20},
        {"storage-tank", 1},
        {"tin-plate", 20},
        {"processing-unit", 10}
    },
    results = {
        {"flotation-cell-mk03", 1}
    }
}:add_unlock("machines-mk03")

ITEM {
    type = "item",
    name = "flotation-cell-mk03",
    icon = "__pyrawores__/graphics/icons/flotation-cell-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk03",
    order = "e",
    place_result = "flotation-cell-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "flotation-cell-mk03",
    icon = "__pyrawores__/graphics/icons/flotation-cell-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "flotation-cell-mk03"},
    fast_replaceable_group = "flotation-cell-mk01",
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
    crafting_categories = {"flotation"},
    crafting_speed = 3.5,
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
                filename = "__pyrawores__/graphics/entity/flotation-cell-mk01/off-mk03.png",
                --priority = "high",
                width = 192,
                height = 229,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(-1, -19)
            },
            {
                filename = "__pyrawores__/graphics/entity/flotation-cell-mk01/sh.png",
                --priority = "high",
                width = 143,
                height = 172,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(42, 10)
            }
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-1, -17.5),
            west_position = util.by_pixel(-1, -17.5),
            south_position = util.by_pixel(-1, -17.5),
            east_position = util.by_pixel(-1, -17.5),
            animation = {
                filename = "__pyrawores__/graphics/entity/flotation-cell-mk01/flotation-cell-mk03.png",
                --priority = "low",
                frame_count = 100,
                line_length = 10,
                width = 192,
                height = 160,
                animation_speed = 1
            }
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
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/flotation-cell.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/flotation-cell.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
