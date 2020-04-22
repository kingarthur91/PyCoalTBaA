DATA {
    type = "autoplace-control",
    category = "resource",
    name = "chromium-rock",
    richness = true,
    order = "b"
}

DATA {
    type = "noise-layer",
    name = "chromium-rock"
}

DATA {
    type = "resource",
    name = "chromium-rock",
    category = "chromium-rock",
    icon = "__pyrawores__/graphics/icons/ores/chromium-rock.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.784, g = 0.231, b = 0},
    highlight = true,
    minimum = 100,
    normal = 200,
    maximum = 300,
    map_grid = false,
    minable = {
        hardness = 1.0,
        -- mining_particle = "chromium-rock-particle",
        mining_time = 1,
        results = {
            {"ore-chromium", 1}
        },
    },
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    autoplace = {
        control = "chromium-rock",
        sharpness = 3,
        --max_probability = 0.035,
        richness_multiplier = 800,
        richness_multiplier_distance_bonus = 1000,
        richness_base = 8000000,
        coverage = 0.00003 / 30,
        peaks = {
            {
                noise_layer = "chromium-rock",
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
            filename = "__pyrawores__/graphics/entity/ores/chromium/chromium-mine-place.png",
            priority = "extra-high",
            width = 292,
            height = 210,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}

if settings.startup['processing-mod'].value then

data.raw.resource['chromium-rock'].minable.results = {
			{type = "item", name = "ore-chromium", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-chromium-medium", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-chromium-low", amount_min = 1, amount_max = 1, probability = 0.3},
			{type = "item", name = "ore-chromium-trace", amount_min = 1, amount_max = 1, probability = 0.3}
			}
end
