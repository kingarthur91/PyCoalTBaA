RECIPE {
    type = "recipe",
    name = "aluminium-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"aramid", 40},
        {"aluminium-plate", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"aluminium-mine", 1}
    }
}:add_unlock("aluminium-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "aluminium-mine",
    icon = "__pyrawores__/graphics/icons/mega-aluminium.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "aluminium-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "aluminium-mine",
    icon = "__pyrawores__/graphics/icons/mega-aluminium.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "aluminium-mine"},
    fast_replaceable_group = "aluminium-mine",
    max_health = 600,
    resource_categories = {"aluminium-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 15,
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
          name = "turbine-smoke",
          north_position = {3.5, -11.5},
          east_position = {3.5, -11.5},
          west_position = {3.5, -11.5},
          south_position = {3.5, -11.5},
          frequency = 40,
          starting_vertical_speed = 0.1,
          slow_down_factor = 1,
          starting_frame_deviation = 60
        },
        {
            name = "smoke",
            north_position = {5.63, -7.5},
            east_position = {5.63, -7.5},
            west_position = {5.63, -7.5},
            south_position = {5.63, -7.5},
            frequency = 90,
            starting_vertical_speed = 0.15,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
        {
            name = "light-smoke",
            north_position = {-2, -7.9},
            east_position = {-2, -7.9},
            west_position = {-2, -7.9},
            south_position = {-2, -7.9},
            frequency = 40,
            starting_vertical_speed = 0.00,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
        {
            name = "light-smoke",
            north_position = {-3.2, -3.0},
            east_position = {-3.2, -3.0},
            west_position = {-3.2, -3.0},
            south_position = {-3.2, -3.0},
            frequency = 20,
            starting_vertical_speed = 0.02,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "2000kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -6.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/aluminium-mine/h1.png",
                width = 96,
                height = 580,
                line_length = 21,
                frame_count = 50,
                animation_speed = 0.2,
                shift = util.by_pixel(-161, -96)
            },
            {
                filename = "__pyrawores__/graphics/entity/aluminium-mine/h2.png",
                width = 96,
                height = 580,
                line_length = 21,
                frame_count = 50,
                animation_speed = 0.2,
                shift = util.by_pixel(-65, -96)
            },
            {
                filename = "__pyrawores__/graphics/entity/aluminium-mine/h3.png",
                width = 96,
                height = 580,
                line_length = 21,
                frame_count = 50,
                animation_speed = 0.2,
                shift = util.by_pixel(31, -96)
            },
            {
                filename = "__pyrawores__/graphics/entity/aluminium-mine/h4.png",
                width = 96,
                height = 580,
                line_length = 21,
                frame_count = 50,
                animation_speed = 0.2,
                shift = util.by_pixel(127, -96)
            },
            {
                filename = "__pyrawores__/graphics/entity/aluminium-mine/h5.png",
                width = 92,
                height = 580,
                line_length = 21,
                frame_count = 50,
                animation_speed = 0.2,
                shift = util.by_pixel(221, -96)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/aluminium-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/aluminium-mine.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}
