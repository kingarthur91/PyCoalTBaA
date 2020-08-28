
RECIPE {
    type = "recipe",
    name = "burner-soil-extractor",
    energy_required = 6,
    enabled = false,
    ingredients = {
        {"burner-mining-drill", 2},
        {"iron-plate", 15},
        {"copper-cable", 5},
        {"iron-gear-wheel", 15}
    },
    results = {
        {"burner-soil-extractor", 1}
    }
}

ITEM {
    type = "item",
    name = "burner-soil-extractor",
    icon = "__PyCoalTBaA__/graphics/icons/soil-extractormk00.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-extraction",
    order = "g",
    place_result = "burner-soil-extractor",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "burner-soil-extractor",
    icon = "__PyCoalTBaA__/graphics/icons/soil-extractormk00.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "burner-soil-extractor"},
    fast_replaceable_group = "soil-extractormk01",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.48, -3.48}, {3.48, 3.48}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"soil-extraction"},
    crafting_speed = 0.3,
    energy_source =
    {
      type = "burner",
      fuel_category = "omnite",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "200kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/soil-extractormk01/soil-extractormk01.png",
        width = 235,
        height = 266,
        frame_count = 30,
        line_length = 6,
        animation_speed = 0.8,
        shift = {0.16, -0.609}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0, 1}, {0, -1}, nil, nil, pipes),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, 0.0}}}
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractormk01.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/soil-extractormk01.ogg", volume = 0.45},
        apparent_volume = 2.5
    }
}
