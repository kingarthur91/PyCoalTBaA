--Assembling machine 1 modifications
--adding steam as fuel source
--set ingredient_count to 1

--require angel industry files to use the stuff from it
require("__angelsindustries__/prototypes/items/components-mechanical")
require("__angelsindustries__/prototypes/items/components-electronics")
--[[
data.raw["assembling-machine"]["assembling-machine-1"].fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input", position = {2,0} }
      },
      production_type = "input",
      filter = "steam",
      minimum_temperature = 100.0
    }
]]--
data.raw["assembling-machine"]["assembling-machine-1"].energy_source = 
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
        { type = "input", position = {2,0} }
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
	}	
data.raw["assembling-machine"]["assembling-machine-1"].fluid_usage_per_tick = 1
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 2
data.raw["assembling-machine"]["assembling-machine-1"].enabled = true
data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "300kW"
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "crafting-with-fluid")


data.raw.recipe["assembling-machine-1"].ingredients =
	{
		{
		type = "item",
		name = "small-parts-01",
		amount = 5
		},
		{
		type = "item",
		name = "iron-plate",
		amount = 10
		},
		{
		type = "item",
		name = "pipe",
		amount = 5
		},
		{
		type = "item",
		name = "angels-gear",
		amount = 5
		},
	}

--Assembing machine 2 duplication and modifications
--duplicating machine 2 and adding a fluid burner enery source
--setting both assembly machines ingredient_count to 2

data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 2

data.raw.recipe["assembling-machine-2"].normal = nil
data.raw.recipe["assembling-machine-2"].expensive = nil
data.raw.recipe["assembling-machine-2"].ingredients =
	{
		--[[
		{
		amount = 7,
		name = "duralumin",
		type = "item"
		},
		]]--
		{
		amount = 2,
		name = "circuit-grey-board",
		type = "item"
		},
		{
		amount = 10,
		name = "small-parts-01",
		type = "item"
		},
		{
		amount = 1,
		name = "assembling-machine-1",
		type = "item"
		}
	}
data.raw.recipe["assembling-machine-2"].results =
	{
		{
		type = "item",
		name = "assembling-machine-2",
		amount = 1
		}
	}
data:extend(
{
	{
	type = "assembling-machine",
	name = "liquid-burner-assembling-machine-2",
	},
	{
	type = "recipe",
	name = "liquid-burner-assembling-machine-2",
	},
	{
	type = "item",
	name = "liquid-burner-assembling-machine-2",
	}
}
)

local ass2rec = table.deepcopy(data.raw.recipe["assembling-machine-2"])
local ass2 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])

ass2rec.name = "liquid-burner-assembling-machine-2"
ass2rec.results[1].name = "liquid-burner-assembling-machine-2"

data.raw.recipe["liquid-burner-assembling-machine-2"] = ass2rec

ass2.name = "liquid-burner-assembling-machine-2"

data.raw["assembling-machine"]["liquid-burner-assembling-machine-2"] = ass2

data.raw["assembling-machine"]["liquid-burner-assembling-machine-2"].energy_source = 
	{
	type = "fluid",
	emissions_per_second_per_watt = 1/1000,
	fluid_box =
		{
		base_area = 1,
		height = 2,
		base_level = -1,
		pipe_connections =
			{
			{type = "input", position = {2,0}}
			},
		pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        production_type = "input",
		},
	burns_fluid = true,
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
	}
	
data.raw["assembling-machine"]["liquid-burner-assembling-machine-2"].minable.result = "liquid-burner-assembling-machine-2"
	--log(serpent.block(data.raw.recipe["assembling-machine-2"]))
	--adding engines to the assembling machines
	--electric motor
table.insert(data.raw.recipe["assembling-machine-2"].ingredients,{type = "item", name = "electric-motor-1", amount = 2})
	--ice engine
table.insert(data.raw.recipe["liquid-burner-assembling-machine-2"].ingredients,{type = "item", name = "motor-1", amount = 2})

local ass2it = table.deepcopy(data.raw.item["assembling-machine-2"])

ass2it.name = "liquid-burner-assembling-machine-2"

data.raw.item["liquid-burner-assembling-machine-2"] = ass2it
data.raw.item["liquid-burner-assembling-machine-2"].place_result = "liquid-burner-assembling-machine-2"

--Assembling machine 3 modifications
--set ingredient_count to 3

data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 3

--automated factory modifications
--increase energy usage to be higher than base game assembly machines
data.raw["assembling-machine"]["automated-factory-mk01"].energy_usage = "500kW"

--automated factory 2 modifications
--increase energy usage to be higher than base game assembly machines
data.raw["assembling-machine"]["automated-factory-mk02"].energy_usage = "750kW"

--automated factory 3 modifications
--increase energy usage to be higher than base game assembly machines
data.raw["assembling-machine"]["automated-factory-mk03"].energy_usage = "1000kW"

--automated factory 4 modifications
--increase energy usage to be higher than base game assembly machines
data.raw["assembling-machine"]["automated-factory-mk04"].energy_usage = "1500kW"
data.raw["assembling-machine"]["automated-factory-mk04"].crafting_speed = 5
