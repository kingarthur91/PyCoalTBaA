DATA {
    type = "autoplace-control",
    category = "resource",
    name = "raw-coal",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "raw-coal"
}

ENTITY {
    type = "resource",
    name = "raw-coal",
    --category = "borax",
    icon = "__pyrawores__/graphics/icons/ores/raw-coal.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.0, g = 0.0, b = 0.0},
    minimum = 400,
    normal = 1000,
    maximum = 3000,
    minable = {
        hardness = 0.5,
        -- mining_particle = "raw-coal-ore-particle",
        mining_time = 0.5,
        results = {
            {"raw-coal", 1}
        }
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "raw-coal",
        sharpness = 1,
        starting_area = true,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 30,
        richness_base = 300,
        coverage = 0.004,
        peaks = {
            {
                noise_layer = "raw-coal",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/coal/coal.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyrawores__/graphics/entity/ores/coal/hr-coal.png",
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
