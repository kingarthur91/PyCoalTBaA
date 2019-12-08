RECIPE {
    type = "recipe",
    name = "leaching-station-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"storage-tank", 3},
        {"steel-plate", 15},
        {"distilator", 1},
        {"pipe", 10},
        {"electronic-circuit", 5},
    },
    results = {
        {"leaching-station-mk01", 1}
    }
}:add_unlock("machines-mk01")

ITEM {
    type = "item",
    name = "leaching-station-mk01",
    icon = "__pyrawores__/graphics/icons/leaching-station-mk01.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-rawores-buildings-mk01",
    order = "g",
    place_result = "leaching-station-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "leaching-station-mk01",
    icon = "__pyrawores__/graphics/icons/leaching-station-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "leaching-station-mk01"},
    fast_replaceable_group = "leaching-station-mk01",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"leaching"},
    crafting_speed = 0.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "400kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/leaching-station-mk01/off.png",
                --priority = "high",
                width = 224,
                height = 233,
                --line_length = 10,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(0, -5)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(0, -5),
            west_position = util.by_pixel(0, -5),
            south_position = util.by_pixel(0, -5),
            east_position = util.by_pixel(0, -5),
            animation = {
                filename = "__pyrawores__/graphics/entity/leaching-station-mk01/on.png",
                --priority = "extra-high",
                frame_count = 1,
                --line_length = 2,
                width = 224,
                height = 233,
                --animation_speed = 0.4
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, -2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, 2.0}}}
        },
        off_when_no_fluid_recipe = false
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/leaching-station.ogg", volume = 0.8},
        idle_sound = {filename = "__pyrawores__/sounds/leaching-station.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
