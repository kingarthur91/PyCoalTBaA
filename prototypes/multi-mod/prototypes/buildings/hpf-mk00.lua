local pipes = {
    north = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/long-pipe-north.png",
        priority = "medium",
        width = 30,
        height = 44
    }
}

RECIPE {
    type = "recipe",
    name = "hpf-mk00",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"stone-brick", 20},
        {"copper-plate", 20},
        {"iron-gear-wheel", 5}, --bob steel-bearing
        {"iron-plate", 10}, --bob invar-alloy
        {"electronic-circuit", 3} --bob basic-circuit-board
    },
    results = {
        {"hpf-mk00", 1}
    }
}

ITEM {
    type = "item",
    name = "hpf-mk00",
    icon = "__PyCoalTBaA__/graphics/icons/hpf.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk00",
    order = "p",
    place_result = "hpf-mk00",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "hpf-mk00",
    icon = "__PyCoalTBaA__/graphics/icons/hpf.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "hpf-mk00"},
    fast_replaceable_group = "hpf",
    max_health = 300,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hpf-basic"},
    crafting_speed = 0.5,
    energy_source =
	{
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "300kW",
    ingredient_count = 20,
    animation = {
        priority = "high",
        filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/hpf-off.png",
        width = 167,
        height = 173,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {0.1, 0.0}
    },
    working_visualisations = {
        {
            north_position = {0.1, 0},
            west_position = {0.1, 0},
            south_position = {0.1, 0},
            east_position = {0.1, 0},
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/hpf-anim.png",
                priority = "medium",
                frame_count = 50,
                line_length = 10,
                width = 167,
                height = 173,
                animation_speed = 0.7
            }
        },
        {
            north_position = {1.543, -2.68},
            west_position = {1.543, -2.68},
            south_position = {1.543, -2.68},
            east_position = {1.543, -2.68},
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/hpf/smoke-anim.png",
                priority = "extra-high",
                frame_count = 80,
                line_length = 20,
                width = 79,
                height = 44,
                animation_speed = 0.3
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0, 1}, {0, -0.9}, nil, nil, pipes),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -0.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {0, 1}, {0, -0.9}, nil, nil, pipes),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, -0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/hpf.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/hpf.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
