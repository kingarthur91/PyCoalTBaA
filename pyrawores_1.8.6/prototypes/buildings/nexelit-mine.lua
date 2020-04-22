RECIPE {
    type = "recipe",
    name = "nexelit-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"nexelit-mine", 1}
    }
}:add_unlock("nexelit-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "nexelit-mine",
    icon = "__pyrawores__/graphics/icons/mega-nexelit.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "nexelit-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "nexelit-mine",
    icon = "__pyrawores__/graphics/icons/mega-nexelit.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "nexelit-mine"},
    fast_replaceable_group = "nexelit-mine",
    max_health = 600,
    resource_categories = {"nexelit-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 10,
    energy_source =
    {
      type = "burner",
      fuel_category = "mega-drill-head",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
      smoke =
      {
        {
          name = "light-smoke",
          north_position = {-4.0, -2.0},
          east_position = {-4.0, -2.0},
          west_position = {-4.0, -2.0},
          south_position = {-4.0, -2.0},
          frequency = 80,
          starting_vertical_speed = 0.12,
          slow_down_factor = 1,
          starting_frame_deviation = 60
        },
        {
            name = "smoke",
            north_position = {4.5, -2.1},
            east_position = {4.5, -2.1},
            west_position = {4.5, -2.1},
            south_position = {4.5, -2.1},
            frequency = 40,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
            starting_frame_deviation = 60
          },
          {
            name = "turbine-smoke",
            north_position = {-4.0, 1.5},
            east_position = {-4.0, 1.5},
            west_position = {-4.0, 1.5},
            south_position = {-4.0, 1.5},
            frequency = 3,
            starting_vertical_speed = 0.03,
            slow_down_factor = 3,
            starting_frame_deviation = 60
          },
    },
    },
    energy_usage = "2000kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/i1.png",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/i2.png",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(-80, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/i3.png",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/i4.png",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(48, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/i5.png",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(112, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/i6.png",
                width = 32,
                height = 352,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(160, 0)
            },
            --SHADOWS
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/sh1.png",
                width = 64,
                height = 320,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-134, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/sh2.png",
                width = 64,
                height = 320,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-70, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/sh3.png",
                width = 64,
                height = 320,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-6, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/sh4.png",
                width = 64,
                height = 320,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(58, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/sh5.png",
                width = 64,
                height = 320,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(122, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/nexelit-mine/sh6.png",
                width = 59,
                height = 320,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(183, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/nexelit-mine.ogg", volume = 1.2},
        idle_sound = {filename = "__pyrawores__/sounds/nexelit-mine.ogg", volume = 0.85},
        apparent_volume = 2.5
    }
}
