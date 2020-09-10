RECIPE {
    type = "recipe",
    name = "glassworks-mk00",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"stone-brick", 15},
        {"copper-plate", 20},
        {"iron-gear-wheel", 15},
        {"iron-plate", 20},
        {"electronic-circuit", 5}
    },
    results = {
        {"glassworks-mk00", 1}
    }
}--:add_unlock("coal-processing-1")

ITEM {
    type = "item",
    name = "glassworks-mk00",
    icon = "__PyCoalTBaA__/graphics/icons/glassworks-mk00.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk00",
    order = "a",
    place_result = "glassworks-mk00",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "glassworks-mk00",
    icon = "__PyCoalTBaA__/graphics/icons/glassworks-mk00.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "glassworks-mk00"},
    fast_replaceable_group = "glassworks",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption","speed","pollution"},
    crafting_categories = {"glassworks"},
    crafting_speed = 0.5,
    energy_source =
    {
      type = "fluid",
      emissions_per_minute = 10,
	  fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_connections =
		{
			{type = "input", position = {0, 4.0}}
		},
		pipe_covers = DATA.Pipes.covers(false, true, true, true),
		pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
		production_type = "input",
		},
	effectivity = 1,
	burns_fluid = true,
	scale_fluid_usage = true,
	fluid_usage_per_tick = 10,
      smoke =
      {
        {
          name = "smoke",
          north_position = util.by_pixel(68, -64),
          south_position = util.by_pixel(68, -64),
          east_position = util.by_pixel(68, -64),
          west_position = util.by_pixel(68, -64),
          frequency = 8,
          starting_vertical_speed = 0.04,
          starting_frame_deviation = 50
        },
        {
            name = "smoke",
            north_position = util.by_pixel(-12, -96),
            south_position = util.by_pixel(-12, -96),
            east_position = util.by_pixel(-12, -96),
            west_position = util.by_pixel(-12, -96),
            frequency = 8,
            starting_vertical_speed = 0.04,
            starting_frame_deviation = 50
          },
      }
    },
    burns_fluid = true,
	scale_fluid_usage = true,
    energy_usage = "1MW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/bot.png",
                width = 256,
                height = 32,
                frame_count = 1,
                shift = util.by_pixel(16, 96)
            },
            {
                filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/top.png",
                width = 256,
                height = 224,
                frame_count = 1,
                shift = util.by_pixel(16, -32)
            },
            {
                filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/top-mask.png",
                width = 256,
                height = 224,
                frame_count = 1,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-16, -32),
            west_position = util.by_pixel(-16, -32),
            south_position = util.by_pixel(-16, -32),
            east_position = util.by_pixel(-16, -32),
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/a1.png",
                frame_count = 100,
                line_length = 13,
                width = 128,
                height = 224,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(96, -32),
            west_position = util.by_pixel(96, -32),
            south_position = util.by_pixel(96, -32),
            east_position = util.by_pixel(96, -32),
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/glassworks/a2.png",
                frame_count = 100,
                line_length = 13,
                width = 96,
                height = 224,
                animation_speed = 0.3
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
            pipe_connections = {{type = "input", position = {1.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/glassworks.ogg", volume = 0.7},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/glassworks.ogg", volume = 0.50},
        apparent_volume = 2.5
    }
}