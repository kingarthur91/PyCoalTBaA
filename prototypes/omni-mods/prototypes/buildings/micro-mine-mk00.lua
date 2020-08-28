RECIPE {
    type = "recipe",
    name = "micro-mine-mk00",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"stone-brick", 50},
        {"burner-mining-drill", 2},
        {"glass", 8},
        {"burner-inserter", 5},
        {"electronic-circuit", 5},
        {"iron-gear-wheel", 20},
    },
    results = {
        {"micro-mine-mk00", 1}
    }
}

ITEM {
    type = "item",
    name = "micro-mine-mk00",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk00",
    order = "a",
    place_result = "micro-mine-mk00",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "micro-mine-mk00",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "micro-mine-mk00"},
    fast_replaceable_group = "micro-mine",
    max_health = 100,
    fixed_recipe = "petri-dish-bacteria",
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"micro-mine"},
    crafting_speed = 0.5,
    energy_source =     
	{
      type = "burner",
      fuel_category = "omnite",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "150kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a1.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -46)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a1-mask.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -46),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a2.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -46)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a2-mask.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -46),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a3.png",
                width = 64,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -46)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a3-mask.png",
                width = 64,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -46),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}