
if mods["angelspetrochem"] then
	   
	if mods["pyfusionenergy"] then
	
	if settings.startup["pymods-remove-regular-moly"].value then
		
		-- Overriedes: molybdenum ore
		if data.raw.item["molybdenum-ore"] and angelsmods.refining then
		   data.raw.resource["molybdenum-ore"]["autoplace"] = nil
		   data.raw["autoplace-control"]["molybdenum-ore"] = nil
		   
   end
	
	if settings.startup["pymods-infinite-moly"].value then

local OV = angelsmods.functions.OV

   -- Infinity ore patches
   if angelsmods.ores and angelsmods.ores.enableinfiniteuraniumpower then -- TO DO: change to molybdenum ore settings

      if not angelsmods.ores.enablersomode then
      data:extend(
      {
         {
         type = "autoplace-control",
         name = "infinite-molybdenum-ore",
         richness = true,
         order = "b-e",
		 category = "resource"
         },
         {
         type = "noise-layer",
         name = "infinite-molybdenum-ore"
         },
         {
         type = "resource",
         name = "infinite-molybdenum-ore",
         icon = "__pyfusionenergy__/graphics/icons/ores/molybdenum.png",
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
                  name = "molybdenum-ore",
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
            control = "infinite-molybdenum-ore",
            sharpness = 1,
            richness_multiplier = 1500,
            richness_multiplier_distance_bonus = 30,
            richness_base = 500,
            coverage = 0.02,
            peaks = {
               {
                  noise_layer = "infinite-molybdenum-ore",
                  noise_octaves_difference = -1.5,
                  noise_persistence = 0.3,
                  starting_area_weight_optimal = 1,
                  starting_area_weight_range = 0,
                  starting_area_weight_max_range = 2,
               },
               {
                  noise_layer = "infinite-molybdenum-ore",
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
            filename = "__pyfusionenergy__/graphics/entity/ores/molybdenum-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__pyfusionenergy__/graphics/entity/ores/hr-molybdenum-ore.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
           }
         },
         map_color = {r = 0.294, g = 0.45, b = 0.643},
        },
      })
      else
      data:extend(
      {
         {
         type = "resource",
         name = "infinite-molybdenum-ore",
         icon = "__pyfusionenergy__/graphics/icons/ores/molybdenum.png",
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
                  name = "molybdenum-ore",
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
            filename = "__pyfusionenergy__/graphics/entity/ores/molybdenum-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__pyfusionenergy__/graphics/entity/ores/hr-molybdenum-ore.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
           }
         },
         map_color = {r = 0.294, g = 0.45, b = 0.643},
        },
      })
      end
   end
end   


end

end

end