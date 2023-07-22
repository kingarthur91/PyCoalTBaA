data.raw.furnace["electric-furnace-2"].energy_usage = "15MW"
data.raw.furnace["electric-furnace-2"].crafting_speed = 12
data.raw.furnace["electric-furnace-2"].energy_source = {
    type = "heat",
    max_temperature = 1000,
    specific_heat = "1MJ",
    max_transfer = "2GW",
    min_working_temperature = 500,
    minimum_glow_temperature = 350,
    connections =
    {
        {
            position = { 1.2, 0 },
            direction = defines.direction.east
        },
        {
            position = { -1.2, 0 },
            direction = defines.direction.west
        }
    },
    pipe_covers =
    make_4way_animation_from_spritesheet(
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
            width = 32,
            height = 32,
            direction_count = 4,
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
                width = 64,
                height = 64,
                direction_count = 4,
                scale = 0.5
            }
        }),
    heat_pipe_covers =
    make_4way_animation_from_spritesheet(
        apply_heat_pipe_glow {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
            width = 32,
            height = 32,
            direction_count = 4,
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                width = 64,
                height = 64,
                direction_count = 4,
                scale = 0.5
            }
        }),
    heat_picture =
    {
        north = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
            priority = "extra-high",
            width = 24,
            height = 48,
            shift = util.by_pixel(-1, 8),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
                priority = "extra-high",
                width = 44,
                height = 96,
                shift = util.by_pixel(-0.5, 8.5),
                scale = 0.5
            }
        },
        east = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
            priority = "extra-high",
            width = 40,
            height = 40,
            shift = util.by_pixel(-21, -13),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
                priority = "extra-high",
                width = 80,
                height = 80,
                shift = util.by_pixel(-21, -13),
                scale = 0.5
            }
        },
        south = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
            priority = "extra-high",
            width = 16,
            height = 20,
            shift = util.by_pixel(-1, -30),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
                priority = "extra-high",
                width = 28,
                height = 40,
                shift = util.by_pixel(-1, -30),
                scale = 0.5
            }
        },
        west = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
            priority = "extra-high",
            width = 32,
            height = 40,
            shift = util.by_pixel(23, -13),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
                priority = "extra-high",
                width = 64,
                height = 76,
                shift = util.by_pixel(23, -13),
                scale = 0.5
            }
        }
    }
}

data.raw.furnace["electric-furnace-3"].energy_usage = "20MW"
data.raw.furnace["electric-furnace-3"].crafting_speed = 16
data.raw.furnace["electric-furnace-3"].energy_source = {
    type = "heat",
    max_temperature = 1000,
    specific_heat = "1MJ",
    max_transfer = "2GW",
    min_working_temperature = 500,
    minimum_glow_temperature = 350,
    connections =
    {
        {
            position = { 1.2, 0 },
            direction = defines.direction.east
        },
        {
            position = { -1.2, 0 },
            direction = defines.direction.west
        }
    },
    pipe_covers =
    make_4way_animation_from_spritesheet(
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
            width = 32,
            height = 32,
            direction_count = 4,
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
                width = 64,
                height = 64,
                direction_count = 4,
                scale = 0.5
            }
        }),
    heat_pipe_covers =
    make_4way_animation_from_spritesheet(
        apply_heat_pipe_glow {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
            width = 32,
            height = 32,
            direction_count = 4,
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                width = 64,
                height = 64,
                direction_count = 4,
                scale = 0.5
            }
        }),
    heat_picture =
    {
        north = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
            priority = "extra-high",
            width = 24,
            height = 48,
            shift = util.by_pixel(-1, 8),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
                priority = "extra-high",
                width = 44,
                height = 96,
                shift = util.by_pixel(-0.5, 8.5),
                scale = 0.5
            }
        },
        east = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
            priority = "extra-high",
            width = 40,
            height = 40,
            shift = util.by_pixel(-21, -13),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
                priority = "extra-high",
                width = 80,
                height = 80,
                shift = util.by_pixel(-21, -13),
                scale = 0.5
            }
        },
        south = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
            priority = "extra-high",
            width = 16,
            height = 20,
            shift = util.by_pixel(-1, -30),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
                priority = "extra-high",
                width = 28,
                height = 40,
                shift = util.by_pixel(-1, -30),
                scale = 0.5
            }
        },
        west = apply_heat_pipe_glow
        {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
            priority = "extra-high",
            width = 32,
            height = 40,
            shift = util.by_pixel(23, -13),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
                priority = "extra-high",
                width = 64,
                height = 76,
                shift = util.by_pixel(23, -13),
                scale = 0.5
            }
        }
    }
}