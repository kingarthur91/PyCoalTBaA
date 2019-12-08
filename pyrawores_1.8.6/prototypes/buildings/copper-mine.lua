RECIPE {
    type = "recipe",
    name = "copper-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"aramid", 40},
        {"copper-plate", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"copper-mine", 1}
    }
}:add_unlock("copper-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "copper-mine",
    icon = "__pyrawores__/graphics/icons/mega-copper.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "copper-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "copper-mine",
    icon = "__pyrawores__/graphics/icons/mega-copper.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "copper-mine"},
    fast_replaceable_group = "copper-mine",
    max_health = 600,
    resource_categories = {"copper-rock"},
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
                filename = "__pyrawores__/graphics/entity/copper-mine/c1.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(-160, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/c2.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(-64, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/c3.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(32, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/c4.png",
                width = 96,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(128, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/c5.png",
                width = 32,
                height = 448,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                shift = util.by_pixel(192, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/s1.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-136, 14)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/s2.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(-40, 14)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/s3.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(56, 14)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/s4.png",
                width = 96,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(152, 14)
            },
            {
                filename = "__pyrawores__/graphics/entity/copper-mine/s5.png",
                width = 31,
                height = 363,
                line_length = 20,
                frame_count = 80,
                animation_speed = 0.2,
                draw_as_shadow = true,
                shift = util.by_pixel(168, 14)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/copper-mine.ogg", volume = 1.3},
        idle_sound = {filename = "__pyrawores__/sounds/copper-mine.ogg", volume = 0.8},
        apparent_volume = 2.5
    }
}
