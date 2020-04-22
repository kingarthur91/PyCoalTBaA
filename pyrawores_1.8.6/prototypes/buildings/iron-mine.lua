RECIPE {
    type = "recipe",
    name = "iron-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"aramid", 40},
        {"iron-plate", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"iron-mine", 1}
    }
}:add_unlock("iron-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "iron-mine",
    icon = "__pyrawores__/graphics/icons/mega-iron.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "iron-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "iron-mine",
    icon = "__pyrawores__/graphics/icons/mega-iron.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "iron-mine"},
    fast_replaceable_group = "iron-mine",
    max_health = 600,
    resource_categories = {"iron-rock"},
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
                filename = "__pyrawores__/graphics/entity/iron-mine/botleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, 112)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/botmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, 112)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/botright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, 112)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/midleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/midmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/midright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -16)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/topleft.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, -144)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/topmid.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, -144)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/topright.png",
                width = 128,
                height = 128,
                line_length = 16,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -144)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/botline.png",
                width = 416,
                height = 32,
                line_length = 4,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(0, 192)
            },
            {
                filename = "__pyrawores__/graphics/entity/iron-mine/rightline.png",
                width = 32,
                height = 416,
                line_length = 64,
                frame_count = 200,
                animation_speed = 0.2,
                shift = util.by_pixel(192, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/iron-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/iron-mine.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
