--[[
script.on_init(function(event)
	if remote.interfaces["freeplay"] then
		game.print('PyCoalTBaA loaded succesfully!')
		local items_to_insert = remote.call("freeplay", "get_created_items")
		if script.active_mods["angelsrefining"] then
			items_to_insert["soil-extractormk01"] = (items_to_insert["soil-extractormk01"] or 0) + 1
		end  	
	end
end)
script.on_event(defines.events.on_player_joined_game, function(event)
  	local player_index = event.player_index
  	if player_index then
    	local items_to_insert = remote.call("freeplay", "get_created_items")
    	items_to_insert["soil-extractormk01"] = (items_to_insert["soil-extractormk01"] or 0) + 1
	end
end)
]]--