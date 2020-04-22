RECIPE {
    type = "recipe",
    name = "eaf-mk04",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"eaf-mk03", 1},
        {"concrete", 15},
        {"super-steel", 30},
        {"low-density-structure", 10},
        {"nbfe-alloy", 10},
    },
    results = {
        {"eaf-mk04", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "eaf-mk04",
    icon = "__pyrawores__/graphics/icons/eaf-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk04",
    order = "c",
    place_result = "eaf-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "eaf-mk04",
    icon = "__pyrawores__/graphics/icons/eaf-mk04.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "eaf-mk04"},
    fast_replaceable_group = "eaf-mk01",
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
    crafting_categories = {"eaf"},
    crafting_speed = 3.0,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
        smoke =
        {
          {
              name = "smoke",
              north_position = {3.0, -5.0},
              east_position = {3.0, -5.0},
              west_position = {3.0, -5.0},
              south_position = {3.0, -5.0},
              frequency = 90,
              starting_vertical_speed = 0.05,
              slow_down_factor = 1,
              starting_frame_deviation = 60
          },
        },
    },
    energy_usage = "4400kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/eaf-mk01/off-mk04.png",
                --priority = "high",
                width = 160,
                height = 192,
                --line_length = 1,
                frame_count = 1,
                --animation_speed = 2,
                shift = util.by_pixel(0, -16)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(16, -16),
            west_position = util.by_pixel(16, -16),
            south_position = util.by_pixel(16, -16),
            east_position = util.by_pixel(16, -16),
            animation = {
                filename = "__pyrawores__/graphics/entity/eaf-mk01/on-mk04.png",
                priority = "high",
                frame_count = 50,
                line_length = 10,
                width = 128,
                height = 128,
                animation_speed = 3
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
            pipe_connections = {{type = "input", position = {1.0, -3.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, -3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, 3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 3.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/eaf.ogg", volume = 0.75},
        idle_sound = {filename = "__pyrawores__/sounds/eaf.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
