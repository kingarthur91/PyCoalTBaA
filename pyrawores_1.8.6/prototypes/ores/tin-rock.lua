DATA {
    type = "autoplace-control",
    category = "resource",
    name = "tin-rock",
    richness = true,
    order = "b"
}

DATA {
    type = "noise-layer",
    name = "tin-rock"
}

DATA {
    type = "resource",
    name = "tin-rock",
    category = "tin-rock",
    icon = "__pyrawores__/graphics/icons/ores/tin-rock.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.258, g = 0.180, b = 0.807},
    highlight = true,
    minimum = 100,
    normal = 200,
    maximum = 300,
    map_grid = false,
    minable = {
        hardness = 1.0,
        -- mining_particle = "tin-rock-particle",
        mining_time = 1,
        results = {
            {"ore-tin", 1}
        },
    },
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    collision_box = {{-6.3, -6.3}, {6.3, 6.3}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    autoplace = {
        control = "tin-rock",
        sharpness = 3,
        --max_probability = 0.035,
        richness_multiplier = 800,
        richness_multiplier_distance_bonus = 1000,
        richness_base = 8000000,
        coverage = 0.00003 / 30,
        peaks = {
            {
                noise_layer = "tin-rock",
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
            filename = "__pyrawores__/graphics/entity/ores/tin/tin-mine-place.png",
            priority = "extra-high",
            width = 416,
            height = 416,
            frame_count = 1,
            variation_count = 1,
            shift = util.by_pixel(0, 0)
        }
    }
}

if settings.startup['processing-mod'].value then

data.raw.resource['tin-rock'].minable.results = {
			{type = "item", name = "ore-tin", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-tin-medium", amount_min = 1, amount_max = 1, probability = 0.2},
			{type = "item", name = "ore-tin-low", amount_min = 1, amount_max = 1, probability = 0.3},
			{type = "item", name = "ore-tin-trace", amount_min = 1, amount_max = 1, probability = 0.3}
			}

end