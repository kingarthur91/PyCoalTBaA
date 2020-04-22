DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-tin",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "ore-tin"
}

ENTITY {
    type = "resource",
    name = "ore-tin",
    --category = "ore-tin",
    icon = "__pyrawores__/graphics/icons/ores/ore-tin.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.258, g = 0.180, b = 0.807},
    minimum = 400,
    normal = 1000,
    maximum = 3000,
    minable = {
        hardness = 1,
        -- mining_particle = "tin-ore-particle",
        mining_time = 1,
        results = {
            {"ore-tin", 1}
        },
        fluid_amount = 100,
        required_fluid = "steam"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "ore-tin",
        sharpness = 1,
        starting_area = true,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 30,
        richness_base = 300,
        coverage = 0.004,
        peaks = {
            {
                noise_layer = "ore-tin",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/tin/tin.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/tin/hr-tin.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}

if settings.startup['processing-mod'].value then

data.raw.resource['ore-tin'].minable.results = {
            {type = "item", name = "ore-tin", amount_min = 1, amount_max = 1, probability = 0.8},
			{type = "item", name = "ore-tin-medium", amount_min = 1, amount_max = 1, probability = 0.1},
			{type = "item", name = "ore-tin-low", amount_min = 1, amount_max = 1, probability = 0.075},
			{type = "item", name = "ore-tin-trace", amount_min = 1, amount_max = 1, probability = 0.025}
			}

ENTITY {
    type = "resource",
    name = "ore-tin-medium",
    --category = "ore-tin",
    icon = "__pyrawores__/graphics/icons/ores/ore-tin.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.258, g = 0.180, b = 0.807},
    minimum = 400,
    normal = 1000,
    maximum = 3000,
    minable = {
        hardness = 1,
        -- mining_particle = "tin-ore-particle",
        mining_time = 1,
        results = {
			{type = "item", name = "ore-tin", amount_min = 1, amount_max = 1, probability = 0.4},
			{type = "item", name = "ore-tin-medium", amount_min = 1, amount_max = 1, probability = 0.4},
			{type = "item", name = "ore-tin-low", amount_min = 1, amount_max = 1, probability = 0.175},
			{type = "item", name = "ore-tin-trace", amount_min = 1, amount_max = 1, probability = 0.025}
			},
        fluid_amount = 100,
        required_fluid = "steam"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/tin/tin.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/tin/hr-tin.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}

ENTITY {
    type = "resource",
    name = "ore-tin-low",
    --category = "ore-tin",
    icon = "__pyrawores__/graphics/icons/ores/ore-tin.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.258, g = 0.180, b = 0.807},
    minimum = 400,
    normal = 1000,
    maximum = 3000,
    minable = {
        hardness = 1,
        -- mining_particle = "tin-ore-particle",
        mining_time = 1,
        results = {
			{type = "item", name = "ore-tin", amount_min = 1, amount_max = 1, probability = 0.15},
			{type = "item", name = "ore-tin-medium", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-tin-low", amount_min = 1, amount_max = 1, probability = 0.5},
			{type = "item", name = "ore-tin-trace", amount_min = 1, amount_max = 1, probability = 0.15}
			},
        fluid_amount = 100,
        required_fluid = "steam"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/tin/tin.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/tin/hr-tin.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}

ENTITY {
    type = "resource",
    name = "ore-tin-trace",
    --category = "ore-tin",
    icon = "__pyrawores__/graphics/icons/ores/ore-tin.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.258, g = 0.180, b = 0.807},
    minimum = 400,
    normal = 1000,
    maximum = 3000,
    minable = {
        hardness = 1,
        -- mining_particle = "tin-ore-particle",
        mining_time = 1,
        results = {
			{type = "item", name = "ore-tin", amount_min = 1, amount_max = 1, probability = 0.05},
			{type = "item", name = "ore-tin-medium", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-tin-low", amount_min = 1, amount_max = 1, probability = 0.3},
			{type = "item", name = "ore-tin-trace", amount_min = 1, amount_max = 1, probability = 0.45}
			},
        fluid_amount = 100,
        required_fluid = "steam"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/tin/tin.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/tin/hr-tin.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}

end