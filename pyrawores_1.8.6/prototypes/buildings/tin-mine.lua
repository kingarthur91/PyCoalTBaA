RECIPE {
    type = "recipe",
    name = "tin-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"tin-plate", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"tin-mine", 1}
    }
}:add_unlock("tin-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "tin-mine",
    icon = "__pyrawores__/graphics/icons/mega-tin.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "tin-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "tin-mine",
    icon = "__pyrawores__/graphics/icons/mega-tin.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "tin-mine"},
    fast_replaceable_group = "tin-mine",
    max_health = 600,
    resource_categories = {"tin-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
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
                filename = "__pyrawores__/graphics/entity/tin-mine/1.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(-176, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/2.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(-112, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/3.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(-48, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/4.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(16, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/5.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(80, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/6.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(144, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/7.png",
                width = 32,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(176, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/h1.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-166, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/h2.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-102, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/h3.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-38, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/h4.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(26, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/h5.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(90, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/h6.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(154, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/tin-mine/h7.png",
                width = 32,
                height = 416,
                line_length = 32,
                frame_count = 120,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(200, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/tin-mine.ogg", volume = 1.1},
        idle_sound = {filename = "__pyrawores__/sounds/tin-mine.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
