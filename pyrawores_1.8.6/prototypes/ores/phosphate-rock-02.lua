DATA {
    type = "autoplace-control",
    category = "resource",
    name = "phosphate-rock-02",
    richness = true,
    order = "b"
}

DATA {
    type = "noise-layer",
    name = "phosphate-rock-02"
}

DATA {
    type = "resource",
    name = "phosphate-rock-02",
    category = "phosphate-rock-02",
    icon = "__pyrawores__/graphics/icons/ores/phosphate-rock-02.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.8, g = 0.8, b = 0.8},
    highlight = true,
    minimum = 100,
    normal = 200,
    maximum = 300,
    map_grid = false,
    minable = {
        hardness = 1.0,
        -- mining_particle = "phosphate-rock-02-particle",
        mining_time = 1,
        results = {
            {"phosphate-rock", 1}
        },
    },
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    autoplace = {
        control = "phosphate-rock-02",
        sharpness = 3,
        --max_probability = 0.035,
        richness_multiplier = 800,
        richness_multiplier_distance_bonus = 1000,
        richness_base = 8000000,
        coverage = 0.00003 / 30,
        peaks = {
            {
                noise_layer = "phosphate-rock-02",
                noise_octaves_difference = -2.25,
                noise_persistence = 0.4
            },
            --no starting area
            {
                influence = -1.0,
                starting_area_weight_optimal = 1,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2
            },
        }
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/phosphate/phosphate-mine-place.png",
            priority = "extra-high",
            width = 416,
            height = 416,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}
