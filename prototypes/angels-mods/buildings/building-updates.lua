--modify base furnaces to have fluid outputs

table.insert(data.raw.furnace["stone-furnace"], fluid_boxes)

data.raw.furnace["stone-furnace"].fluid_boxes =
	{
		{
		production_type = "output",
		--pipe_picture = assembler2pipepictures(),
		pipe_covers = pipecoverspictures(),
		base_area = 10,
		base_level = 1,
		pipe_connections = {{ type = "output", position = {0.5,1.5} }},
		secondary_draw_orders = { north = -1 }
		},
	off_when_no_fluid_recipe = false
	}
--data.raw.furnace["stone-furnace"].result_inventory_size = 2

--log(serpent.block(data.raw.furnace["stone-furnace"]))