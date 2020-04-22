RECIPE {
    type = "recipe",
    name = "titanium-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"titanium-plate", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"titanium-mine", 1}
    }
}:add_unlock("titanium-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "titanium-mine",
    icon = "__pyrawores__/graphics/icons/mega-titanium.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "titanium-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "titanium-mine",
    icon = "__pyrawores__/graphics/icons/mega-titanium.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "titanium-mine"},
    fast_replaceable_group = "titanium-mine",
    max_health = 600,
    resource_categories = {"titanium-rock"},
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
                filename = "__pyrawores__/graphics/entity/titanium-mine/a1.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(-192, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a2.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(-160, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a3.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(-128, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a4.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(-96, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a5.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(-64, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a6.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(-32, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a7.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a8.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(32, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a9.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(64, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a10.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(96, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a11.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(128, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a12.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(160, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/titanium-mine/a13.png",
                width = 32,
                height = 416,
                line_length = 50,
                frame_count = 199,
                animation_speed = 0.2,
                shift = util.by_pixel(192, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/titanium-mine.ogg", volume = 1.5},
        idle_sound = {filename = "__pyrawores__/sounds/titanium-mine.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
