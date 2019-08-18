RECIPE {
    type = "recipe",
    name = "early-solid-separator",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"assembling-machine-1", 1},
        --{"electronic-circuit", 30},
        {"iron-plate", 20},
        {"iron-gear-wheel", 10}
    },
    results = {
        {"early-solid-separator", 1}
    }
}:add_unlock("separation")

ITEM {
    type = "item",
    name = "early-solid-separator",
    icon = "__pycoalprocessing__/graphics/icons/solid-separator.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-cp-buildings-mk01",
    order = "x",
    place_result = "early-solid-separator",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "early-solid-separator",
    icon = "__pycoalprocessing__/graphics/icons/solid-separator.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "early-solid-separator"},
    fast_replaceable_group = "solid-separator",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.45, -3.45}, {3.45, 3.45}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"solid-separator"},
    crafting_speed = 0.25,
    energy_source = 
	{
		type = "fluid",
		emissions_per_second_per_watt = 1/1000,
		fluid_box =
		{
		  base_area = 1,
		  height = 2,
		  base_level = -1,
		  pipe_covers = pipecoverspictures(),
		  pipe_connections =
		  {
			{ type = "input", position = {3.5,0} }
		  },
		  production_type = "input",
		  filter = "steam",
		  minimum_temperature = 100.0
		},
		scale_fluid_usage = true,
		smoke =
		  {
			{
			  name = "smoke",
			  north_position = util.by_pixel(-38, -47.5),
			  south_position = util.by_pixel(38.5, -32),
			  east_position = util.by_pixel(20, -70),
			  west_position = util.by_pixel(-19, -8.5),
			  frequency = 15,
			  starting_vertical_speed = 0.0,
			  starting_frame_deviation = 60
			}
		  }
	},
    energy_usage = "400kW",
    ingredient_count = 20,
    animation = {
        filename = "__pycoalprocessing__/graphics/entity/solid-separator/solid-separator.png",
        width = 249,
        height = 298,
        frame_count = 20,
        line_length = 5,
        animation_speed = 1,
        shift = {0.37, -1.169}
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.55},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/solid-separator.ogg"},
        idle_sound = {filename = "__pycoalprocessing__/sounds/solid-separator.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
