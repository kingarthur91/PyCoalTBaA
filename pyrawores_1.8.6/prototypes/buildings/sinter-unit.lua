RECIPE {
    type = "recipe",
    name = "sinter-unit",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"titanium-plate", 200},
        {"super-steel", 50},
        {"electric-engine-unit", 10},
        {"advanced-foundry-mk03", 1},
        {"processing-unit", 25},
    },
    results = {
        {"sinter-unit", 1}
    }
}:add_unlock("machines-mk04")

ITEM {
    type = "item",
    name = "sinter-unit",
    icon = "__pyrawores__/graphics/icons/sinter-unit.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-others",
    order = "b",
    place_result = "sinter-unit",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sinter-unit",
    icon = "__pyrawores__/graphics/icons/sinter-unit.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "sinter-unit"},
    fast_replaceable_group = "sinter-unit",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"sinter"},
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
      smoke =
      {
        {
            name = "smoke",
            north_position = {2.0, -5.0},
            east_position = {2.0, -5.0},
            west_position = {2.0, -5.0},
            south_position = {2.0, -5.0},
            frequency = 90,
            starting_vertical_speed = 0.15,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "800kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/sinter-unit/off.png",
                --priority = "high",
                width = 160,
                height = 256,
                --line_length = 1,
                frame_count = 1,
                --animation_speed = 2,
                shift = util.by_pixel(0, -48)
            },
            {
                filename = "__pyrawores__/graphics/entity/sinter-unit/shadow.png",
                --priority = "high",
                width = 64,
                height = 128,
                --line_length = 1,
                frame_count = 1,
                --animation_speed = 2,
                draw_as_shadow = true,
                shift = util.by_pixel(110, -32)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, 16),
            west_position = util.by_pixel(0, 16),
            south_position = util.by_pixel(0, 16),
            east_position = util.by_pixel(0, 16),
            animation = {
                filename = "__pyrawores__/graphics/entity/sinter-unit/bot.png",
                priority = "high",
                frame_count = 120,
                line_length = 12,
                width = 160,
                height = 128,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(0, -112),
            west_position = util.by_pixel(0, -112),
            south_position = util.by_pixel(0, -112),
            east_position = util.by_pixel(0, -112),
            animation = {
                filename = "__pyrawores__/graphics/entity/sinter-unit/top.png",
                priority = "high",
                frame_count = 120,
                line_length = 12,
                width = 160,
                height = 128,
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
        sound = {filename = "__pyrawores__/sounds/sinter-unit.ogg", volume = 0.75},
        idle_sound = {filename = "__pyrawores__/sounds/sinter-unit.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
