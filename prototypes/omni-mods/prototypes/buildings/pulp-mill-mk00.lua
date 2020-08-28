local pipe_left = {
    south = {
        filename = "__pyhightechgraphics__/graphics/entity/pulp-mill/bottom-left.png",
        priority = "low",
        width = 160,
        height = 248
    }
}

local pipe_right = {
    south = {
        filename = "__pyhightechgraphics__/graphics/entity/pulp-mill/bottom-right.png",
        priority = "low",
        width = 160,
        height = 248
    }
}

RECIPE {
    type = "recipe",
    name = "pulp-mill-mk00",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"fbreactor-mk00", 1},
        {"pipe", 10},
        {"burner-mining-drill", 1},
        {"stone-brick", 30},
        {"wood", 30}
    },
    results = {
        {"pulp-mill-mk00", 1}
    }
}

ITEM {
    type = "item",
    name = "pulp-mill-mk00",
    icon = "__pyhightechgraphics__/graphics/icons/pulp-mill-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-hightech-buildings-mk00",
    order = "d",
    place_result = "pulp-mill-mk00",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pulp-mill-mk00",
    icon = "__pyhightechgraphics__/graphics/icons/pulp-mill-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "pulp-mill-mk00"},
    fast_replaceable_group = "pulp-mill",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed"},
    crafting_categories = {"pulp"},
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "omnite",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "150kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pyhightechgraphics__/graphics/entity/pulp-mill/pulp-mill.png",
                --priority = "high",
                width = 160,
                height = 248,
                line_length = 12,
                frame_count = 61,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -36)
            },
            {
                filename = "__pyhightechgraphics__/graphics/entity/pulp-mill/pulp-mill-mask.png",
                --priority = "high",
                width = 160,
                height = 248,
                line_length = 12,
                frame_count = 61,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -36),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyhightechgraphics__/graphics/entity/pulp-mill/shadow.png",
                --priority = "high",
                width = 173,
                height = 168,
                line_length = 11,
                frame_count = 61,
                animation_speed = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(12, 8)
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-1.0, -4.04}, nil, nil, pipe_right),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 3.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-1.0, -4.04}, nil, nil, pipe_right),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, -3.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-1.0, -4.04}, nil, nil, pipe_right),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -1.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-1.0, -4.04}, nil, nil, pipe_right),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.0, 1.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {1.0, -4.04}, nil, nil, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {1.0, -4.04}, nil, nil, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, -1.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {1.0, -4.04}, nil, nil, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {1.0, -4.04}, nil, nil, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3.0, 1.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyhightechgraphics__/sounds/pulp-mill.ogg", volume = 0.8},
        idle_sound = {filename = "__pyhightechgraphics__/sounds/pulp-mill.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}