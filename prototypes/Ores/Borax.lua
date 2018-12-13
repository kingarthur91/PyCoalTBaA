

if mods["angelspetrochem"] then

	if settings.startup["pymods-remove-regular-borax"].value then
	
	-- Overriedes: borax ore
		if data.raw.item["borax"] and angelsmods.refining then
		   data.raw.resource["borax"]["autoplace"] = nil
		   data.raw["autoplace-control"]["borax"] = nil
   
	end
	
	if settings.startup["pymods-infinite-borax"].value then
	
local OV = angelsmods.functions.OV

   -- Infinity ore patches
   if angelsmods.ores and angelsmods.ores.enableinfiniteuraniumpower then -- TO DO: change to molybdenum ore settings

      if not angelsmods.ores.enablersomode then
      data:extend(
      {
         {
         type = "autoplace-control",
         name = "infinite-borax",
         richness = true,
         order = "b-e",
		 category = "resource"
         },
         {
         type = "noise-layer",
         name = "infinite-borax"
         },
         {
         type = "resource",
         name = "infinite-borax",
		 category = "borax",
         icon = "__pycoalprocessing__/graphics/icons/borax.png",
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
                  name = "raw-borax",
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
            control = "infinite-borax",
            sharpness = 1,
            richness_multiplier = 1500,
            richness_multiplier_distance_bonus = 30,
            richness_base = 500,
            coverage = 0.02,
            peaks = {
               {
                  noise_layer = "infinite-borax",
                  noise_octaves_difference = -1.5,
                  noise_persistence = 0.3,
                  starting_area_weight_optimal = 1,
                  starting_area_weight_range = 0,
                  starting_area_weight_max_range = 2,
               },
               {
                  noise_layer = "infinite-borax",
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
            filename = "__pycoalprocessing__/graphics/ores/borax.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__pycoalprocessing__/graphics/ores/hr-borax.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
           }
         },
         map_color = {r = 0.917, g = 0.917, b = 0.917},
        },
      })
      else
      data:extend(
      {
         {
         type = "resource",
         name = "infinite-borax",
		 category = "borax",
         icon = "__pycoalprocessing__/graphics/ores/borax.png",
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
                  name = "raw-borax",
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
            filename = "__pycoalprocessing__/graphics/ores/borax.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__pycoalprocessing__/graphics/ores/hr-borax.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
           }
         },
         map_color = {r = 0.917, g = 0.917, b = 0.917},
        },
      })
      end
   end
end   


end

end