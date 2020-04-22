RECIPE {
    type = "recipe",
    name = "zinc-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"super-steel", 50},
        {"nexelit-plate", 50},
        {"zinc-plate", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"zinc-mine", 1}
    }
}:add_unlock("zinc-mk03"):add_ingredient({type = "item", name = "control-unit", amount = 5})

ITEM {
    type = "item",
    name = "zinc-mine",
    icon = "__pyrawores__/graphics/icons/mega-zinc.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "zinc-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "zinc-mine",
    icon = "__pyrawores__/graphics/icons/mega-zinc.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "zinc-mine"},
    fast_replaceable_group = "zinc-mine",
    max_health = 600,
    resource_categories = {"zinc-rock"},
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
                filename = "__pyrawores__/graphics/entity/zinc-mine/i1.png",
                width = 96,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-128, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/zinc-mine/i2.png",
                width = 96,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(-32, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/zinc-mine/i3.png",
                width = 96,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(64, 0)
            },
            {
                filename = "__pyrawores__/graphics/entity/zinc-mine/i4.png",
                width = 69,
                height = 352,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.2,
                shift = util.by_pixel(146, 0)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/zinc-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/zinc-mine.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
