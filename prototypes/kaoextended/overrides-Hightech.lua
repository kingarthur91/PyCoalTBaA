
if mods["KaoExtended"] then

	-- all the i/o parts are not updateing to use pyht parts
	RECIPE("simple-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("standart-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("advanced-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("predictive-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("intelligent-unit"):add_ingredient({type = 'item', name = 'predictive-io', amount = 2})
end

end

end