
RECIPE {
    type = "recipe",
    name = "burner-wpu",
    energy_required = 5,
    enabled = false,
    ingredients = {
        --{"wood", 20},
        {"iron-plate", 20},
        {"iron-gear-wheel", 15},
        {"burner-mining-drill", 2},
        {"copper-cable", 50}
    },
    results = {
        {"burner-wpu", 1}
    }
}

ITEM {
    type = "item",
    name = "burner-wpu",
    icon = "__PyCoalTBaA__/graphics/icons/wpu-mk00.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk00",
    order = "c",
    place_result = "burner-wpu",
    stack_size = 10
	}

ENTITY {
    type = "assembling-machine",
    name = "burner-wpu",
    icon = "__PyCoalTBaA__/graphics/icons/wpu-mk00.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "burner-wpu"},
    fast_replaceable_group = "wpu",
    max_health = 800,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"burner-wpu"},
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "150kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/left.png",
                width = 96,
                height = 277,
                line_length = 21,
                frame_count = 130,
                shift = {-1.5, -1.328},
                animation_speed = 0.4
            },
            {
                filename = "__pycoalprocessinggraphics__/graphics/entity/wpu/right.png",
                width = 96,
                height = 277,
                line_length = 21,
                frame_count = 130,
                shift = {1.5, -1.328},
                animation_speed = 0.4
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/wpu.ogg", volume = 1.0},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/wpu.ogg", volume = 0.6},
        apparent_volume = 2.5
    }
}
