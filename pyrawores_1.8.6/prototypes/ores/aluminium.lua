DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-aluminium",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "ore-aluminium"
}

ENTITY {
    type = "resource",
    name = "ore-aluminium",
    --category = "ore-aluminium",
    icon = "__pyrawores__/graphics/icons/ore-aluminium.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.709, b = 0.286},
    minable = {
        hardness = 1,
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
            {"ore-aluminium", 1}
        },
        fluid_amount = 100,
        required_fluid = "coal-gas"
    },
    starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "ore-aluminium",
        sharpness = 15/16,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 20,
        richness_base = 10,
        coverage = 0.0003,
        peaks = {
            {
                noise_layer = "ore-aluminium",
                noise_octaves_difference = -0.85,
                noise_persistence = 0.4
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/aluminium/aluminium.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/aluminium/hr-aluminium.png",
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

data.raw.resource['ore-aluminium'].minable.results = {
			{type = "item", name = "ore-aluminium", amount_min = 1, amount_max = 1, probability = 0.8},
			{type = "item", name = "ore-aluminium-medium", amount_min = 1, amount_max = 1, probability = 0.1},
			{type = "item", name = "ore-aluminium-low", amount_min = 1, amount_max = 1, probability = 0.075},
			{type = "item", name = "ore-aluminium-trace", amount_min = 1, amount_max = 1, probability = 0.025}
			}

ENTITY {
    type = "resource",
    name = "ore-aluminium-medium",
    --category = "ore-aluminium",
    icon = "__pyrawores__/graphics/icons/ore-aluminium.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.709, b = 0.286},
    minable = {
        hardness = 1,
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
			{type = "item", name = "ore-aluminium", amount_min = 1, amount_max = 1, probability = 0.4},
			{type = "item", name = "ore-aluminium-medium", amount_min = 1, amount_max = 1, probability = 0.4},
			{type = "item", name = "ore-aluminium-low", amount_min = 1, amount_max = 1, probability = 0.175},
			{type = "item", name = "ore-aluminium-trace", amount_min = 1, amount_max = 1, probability = 0.025}
			},
        fluid_amount = 100,
        required_fluid = "coal-gas"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/aluminium/aluminium.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/aluminium/hr-aluminium.png",
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
    name = "ore-aluminium-low",
    --category = "ore-aluminium",
    icon = "__pyrawores__/graphics/icons/ore-aluminium.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.709, b = 0.286},
    minable = {
        hardness = 1,
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
			{type = "item", name = "ore-aluminium", amount_min = 1, amount_max = 1, probability = 0.15},
			{type = "item", name = "ore-aluminium-medium", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-aluminium-low", amount_min = 1, amount_max = 1, probability = 0.5},
			{type = "item", name = "ore-aluminium-trace", amount_min = 1, amount_max = 1, probability = 0.15}
			},
        fluid_amount = 100,
        required_fluid = "coal-gas"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/aluminium/aluminium.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/aluminium/hr-aluminium.png",
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
    name = "ore-aluminium-trace",
    --category = "ore-aluminium",
    icon = "__pyrawores__/graphics/icons/ore-aluminium.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.709, b = 0.286},
    minable = {
        hardness = 1,
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
			{type = "item", name = "ore-aluminium", amount_min = 1, amount_max = 1, probability = 0.05},
			{type = "item", name = "ore-aluminium-medium", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-aluminium-low", amount_min = 1, amount_max = 1, probability = 0.3},
			{type = "item", name = "ore-aluminium-trace", amount_min = 1, amount_max = 1, probability = 0.45}
			},
        fluid_amount = 100,
        required_fluid = "coal-gas"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/aluminium/aluminium.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/aluminium/hr-aluminium.png",
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
