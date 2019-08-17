
if mods["bobplates"] then
			if mods["pyfusionenergy"] then
				log(serpent.block(data.raw.recipe["heavy-water"]))
				data.raw.recipe["heavy-water"].icon_size=32
				data.raw.recipe["heavy-water"].icon = "__pyfusionenergy__/graphics/icons/heavy-water.png"
				data.raw.recipe["heavy-water"].main_product="heavy-water"
			end
		end