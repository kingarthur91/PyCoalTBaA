  script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index].insert
	
	if game.active_mods["aai-industry"] then
	player{name="burner-turbine", count=5}
	player{name="small-electric-pole", count=10}
	player{name="electric-mining-drill", count=3}
	
	if game.active_mods["pyrawores"] then
	
	player{name="tinned-cable", count=50}
	
	elseif game.active_mods["bobelectronics"] then
	
	player{name="tinned-copper-cable", count=50}
	
	end
	
	player{name="pipe", count=100}
		end
	
	end)