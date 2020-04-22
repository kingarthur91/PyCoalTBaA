DATA {
    type = "autoplace-control",
    category = "resource",
    name = "salt-rock",
    richness = true,
    order = "b"
}

DATA {
    type = "noise-layer",
    name = "salt-rock"
}

DATA {
    type = "resource",
    name = "salt-rock",
    category = "salt-rock",
    icon = "__pyrawores__/graphics/icons/ores/salt-rock.png",
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
        -- mining_particle = "salt-rock-particle",
        mining_time = 1,
        results = {
            {"salt", 1}
        },
    },
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    starting_area_size = 0,
    starting_area_amount = 1,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    autoplace = {
        control = "salt-rock",
        sharpness = 2,
        --max_probability = 0.035,
        richness_multiplier = 800,
        richness_multiplier_distance_bonus = 1000,
        richness_base = 1000000,
        coverage = 0.00002,
        peaks = {
            {
                noise_layer = "salt-rock",
                noise_octaves_difference = -2.85,
                noise_persistence = 0.4
            },
        }
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyrawores__/graphics/entity/ores/salt/salt-rock.png",
            priority = "extra-high",
            width = 352,
            height = 352,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}
