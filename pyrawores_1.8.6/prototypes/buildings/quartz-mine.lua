RECIPE {
    type = "recipe",
    name = "quartz-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"aramid", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"quartz-mine", 1}
    }
}:add_unlock("quartz-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "quartz-mine",
    icon = "__pyrawores__/graphics/icons/mega-quartz.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "quartz-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "quartz-mine",
    icon = "__pyrawores__/graphics/icons/mega-quartz.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "quartz-mine"},
    fast_replaceable_group = "quartz-mine",
    max_health = 600,
    resource_categories = {"quartz-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    --match_animation_speed_to_activity = false,
    input_fluid_box = {
        production_type = "input-output",
        pipe_picture = _G.assembler2pipepictures(),
        pipe_covers = _G.pipecoverspictures(),
        base_area = 1,
        height = 2,
        base_level = -1,
        pipe_connections = {
            {position = {-7, -3}},
        }
    },
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
                filename = "__pyrawores__/graphics/entity/quartz-mine/h1.png",
                width = 64,
                height = 446,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(-177, -12)
            },
            {
                filename = "__pyrawores__/graphics/entity/quartz-mine/h2.png",
                width = 64,
                height = 446,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(-113, -12)
            },
            {
                filename = "__pyrawores__/graphics/entity/quartz-mine/h3.png",
                width = 64,
                height = 446,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(-49, -12)
            },
            {
                filename = "__pyrawores__/graphics/entity/quartz-mine/h4.png",
                width = 64,
                height = 446,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(15, -12)
            },
            {
                filename = "__pyrawores__/graphics/entity/quartz-mine/h5.png",
                width = 64,
                height = 446,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(79, -12)
            },
            {
                filename = "__pyrawores__/graphics/entity/quartz-mine/h6.png",
                width = 64,
                height = 446,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(143, -12)
            },
            {
                filename = "__pyrawores__/graphics/entity/quartz-mine/h7.png",
                width = 40,
                height = 446,
                line_length = 25,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(195, -12)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/quartz-mine.ogg", volume = 2.5},
        idle_sound = {filename = "__pyrawores__/sounds/quartz-mine.ogg", volume = 1.3},
        apparent_volume = 2.5
    }
}
