script.on_init(function(event)
	if remote.interfaces["freeplay"] then
		game.print('PyCoalTBaA loaded succesfully!')
	end
end)
script.on_init(function()
	if script.active_mods['omnimatter'] and 
	script.active_mods['pyrawores'] and 
	script.active_mods['bobelectronics'] then
		local created_items = remote.call("freeplay", "get_created_items")
		created_items["tinned-cable"] = 50
		remote.call("freeplay", "set_created_items", created_items)
	end
end)