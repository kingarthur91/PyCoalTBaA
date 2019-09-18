if mods["angelspetrochem"] then

	if settings.startup["pymods-remove-regular-niobium"].value then

		-- Overriedes: niobium ore
		if data.raw.item["niobium-ore"] and angelsmods.refining and not mods["omnimatter"] then
		   --data.raw.resource["niobium"]["autoplace"] = nil
		   --data.raw["autoplace-control"]["niobium"] = nil
	   end

	end

if settings.startup["pymods-infinite-niobium"].value then

   -- Infinity ore patches
   if angelsmods.ores then -- TO DO: change to molybdenum ore settings

      if not angelsmods.ores.enablersomode then
      data:extend(
      {
         {
         type = "autoplace-control",
         name = "infinite-niobium",
         richness = true,
         order = "b-e",
		 category = "resource"
         },
         {
         type = "noise-layer",
         name = "infinite-niobium"
         },
         {
         type = "resource",
         name = "infinite-niobium",
		 category = "niobium",
         icon = "__pycoalprocessing__/graphics/icons/niobium-ore.png",
		 icon_size = 32,
         flags = {"placeable-neutral"},
         order="a-b-e",
         infinite=true,
         minimum=angelsmods.ores.yield,
         normal=1500,
         maximum=6000,
         minable =
         {
           hardness = 1.5,
           mining_particle = "stone-particle",
           mining_time = 3,
           results = {
               {
                  type = "item",
                  name = "niobium-ore",
                  amount_min = 1,
                  amount_max = 1,
                  probability = angelsmods.ores.loweryield
               }
            },
         },
         collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
         selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
         autoplace =
         {
            control = "infinite-niobium",
            sharpness = 1,
            richness_multiplier = 1500,
            richness_multiplier_distance_bonus = 30,
            richness_base = 500,
            coverage = 0.02,
            peaks = {
               {
                  noise_layer = "infinite-niobium",
                  noise_octaves_difference = -1.5,
                  noise_persistence = 0.3,
                  starting_area_weight_optimal = 1,
                  starting_area_weight_range = 0,
                  starting_area_weight_max_range = 2,
               },
               {
                  noise_layer = "infinite-niobium",
                  noise_octaves_difference = -2,
                  noise_persistence = 0.3,
                  starting_area_weight_optimal = 0,
                  starting_area_weight_range = 0,
                  starting_area_weight_max_range = 2,
               },
               {
                  influence = 0.15,
                  starting_area_weight_optimal = 0,
                  starting_area_weight_range = 0,
                  starting_area_weight_max_range = 2,
               }
            }
         },
         stage_counts = {1},
         stages =
         {
            sheet =
           {
            filename = "__pycoalprocessing__/graphics/ores/niobium.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__pycoalprocessing__/graphics/ores/hr-niobium.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
           }
         },
         map_color = {r = 0.403, g = 0.6, b = 0.701},
        },
      })
      else
      data:extend(
      {
         {
         type = "resource",
         name = "infinite-niobium",
		 category = "niobium",
         icon = "__pycoalprocessing__/graphics/icons/niobium-ore.png",
		 icon_size = 32,
         flags = {"placeable-neutral"},
         order="a-b-e",
         infinite=true,
         minimum=angelsmods.ores.yield,
         normal=1500,
         maximum=6000,
         minable =
         {
           hardness = 1.5,
           mining_particle = "stone-particle",
           mining_time = 3,
           results = {
               {
                  type = "item",
                  name = "niobium-ore",
                  amount_min = 1,
                  amount_max = 1,
                  probability = angelsmods.ores.loweryield
               }
            },
         },
         collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
         selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
         stage_counts = {1},
         stages =
         {
            sheet =
           {
            filename = "__pycoalprocessing__/graphics/ores/niobium.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__pycoalprocessing__/graphics/ores/hr-niobium.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
           }
         },
         map_color = {r = 0.403, g = 0.6, b = 0.701},
        },
      })
      end
   end
end

end
