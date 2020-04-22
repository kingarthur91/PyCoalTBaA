RECIPE {
    type = "recipe",
    name = "salt-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"electric-mining-drill", 5},
        {"iron-plate", 60},
        {"jaw-crusher", 1},
        {"electronic-circuit", 40}
    },
    results = {
        {"salt-mine", 1}
    }
}:add_unlock("machines-mk01")

ITEM {
    type = "item",
    name = "salt-mine",
    icon = "__pyrawores__/graphics/icons/mega-salt.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "salt-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "salt-mine",
    icon = "__pyrawores__/graphics/icons/mega-salt.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "salt-mine"},
    fast_replaceable_group = "salt-mine",
    max_health = 600,
    resource_categories = {"salt-rock"},
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
      fuel_category = "chemical",
      effectivity = 0.4,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
      smoke =
      {
        {
            name = "smoke",
            north_position = {2.48, -3.75},
            east_position = {2.48, -3.75},
            west_position = {2.48, -3.75},
            south_position = {2.48, -3.75},
            frequency = 90,
            starting_vertical_speed = 0.09,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
      },
    },
    energy_usage = "800kW",
    mining_power = 3,
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
                filename = "__pyrawores__/graphics/entity/salt-mine/i1.png",
                width = 96,
                height = 352,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-129, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/salt-mine/i2.png",
                width = 96,
                height = 352,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-33, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/salt-mine/i3.png",
                width = 96,
                height = 352,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(63, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/salt-mine/i4.png",
                width = 64,
                height = 352,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(143, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/salt-mine/is3.png",
                width = 96,
                height = 352,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(72, 13)
            },
            {
                filename = "__pyrawores__/graphics/entity/salt-mine/is4.png",
                width = 64,
                height = 352,
                line_length = 20,
                frame_count = 100,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(151, 13)
            },

        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/salt-mine.ogg", volume = 0.8},
        idle_sound = {filename = "__pyrawores__/sounds/salt-mine.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
