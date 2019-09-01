
--[[

overall oil plan. angels stuff favors the top half of oil production. light oils and natural gas and plastics. pyph favors the heavy oil and nonconvitional extration methods. most of pymods stuff will be used to process the heavy oil to lighter oil and upgrade the extra heavy oils into lighter crude to be used in angels processes. need to adjust resource spawns to reduce the amount of light oil spawns and have more oil sands and heavy deposits around

converting oil sands needs to be refined to synthetic crude oil via coking(aka removing carbon as petro coke at 15% loss) or more complicated hydroconversion(aka adding hydrogen and cracking to lower hydrocarbons at no loss)

after getting bitumen from ground needs deluted with natgas condensats/ naphtha for a heavy sour oil or upgraded to a lighter sweet crude

reduce the viabilty of electrolis to hydrogen production
	- increase electric needs.
	
add in a natural gas to steam and hydrogen recipe
first stage
CH4 + h20 -> CO + 3H2
second stage
CO + H20 -> CO2 + H2

Convert most oil refinery buildings to burn fuels instead of using electricity. 

crude oil should be about 20MJ/per unit vs coals 4MJ/ per unit

coking - early game
hydroconversion - later game more complex

]]--
--edit current recipes

	--change angels recipes to use light crude
	fun.ingredient_replace("oil-separation","crude-oil","light-crude-oil")
	
	
	--change py recipes to use heavy crude
		--ingredients
	fun.ingredient_replace("carbon-black-2","crude-oil","heavy-crude-oil")
	fun.ingredient_replace("crude-oil-to-naphtha","crude-oil","light-crude-oil")
	fun.ingredient_replace("crude-oil-to-heavy-oil","crude-oil","heavy-crude-oil")
	fun.ingredient_replace("crude-oil-to-heavy-oil-2","crude-oil","heavy-crude-oil")
	fun.ingredient_replace("oil-breakdown","crude-oil","heavy-crude-oil")
	
		--results
	fun.results_replacer("tar-to-oil","crude-oil","heavy-crude-oil")
	fun.results_replacer("kerogen-extraction-3","crude-oil","heavy-crude-oil")
	fun.results_replacer("kerogen-separation","crude-oil","light-crude-oil")
	
	
	--shale oil is a light oil
	fun.results_replacer("scrude-to-crude-oil","crude-oil","light-crude-oil")

--new oil recipes

	--light crude distillation
fun.Recipe
	{
	name = "light-crude-distillation",
	energy_required = 3,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "light-crude-oil", amount = 100}
			}
		},
	results =
		{
			{
				{type = "fluid", name = "high-distillate", amount = 40},
			},
			{
				{type = "fluid", name = "kerosene", amount = 10},
			},
			{
				{type = "fluid", name = "low-distillate", amount = 50}
			}
		}
	}
	--light distallates processing
fun.Recipe
	{
	name = "light-distallates-processing",
	energy_required = 3,
	category = "gas-refinery",
	ingredients =
		{
			{type = "fluid", name = "high-distillate", amount = 100}
		},
	results =
		{
			{type = "fluid", name = "lpg-gases", amount = 25},
			{type = "fluid", name = "light-naphtha", amount = 35},
			{type = "fluid", name = "heavy-naphtha", amount = 40}
		}
	}
	--heavy distallates processing
fun.Recipe
	{
	name = "heavy-distallates-processing",
	energy_required = 3,
	category = "gas-refinery",
	ingredients =
		{
			{type = "fluid", name = "low-distillate", amount = 100}
		},
	results =
		{
			{type = "fluid", name = "diesel", amount = 40},
			{type = "fluid", name = "atmo-gas-oil", amount = 40},
			{type = "fluid", name = "atmo-bottoms", amount = 20}
		}
	}
	--lpg gas processing
fun.Recipe
	{
	name = "lpg-gas-processing",
	energy_required = 4,
	category = "gas-refinery",
	ingredients =
		{
			{type = "fluid", name = "lpg-gases", amount = 80}
		},
	results =
		{
			{type = "fluid", name = "fuel-gas", amount = 30},
			{type = "fluid", name = "lpg", amount = 30},
			{type = "fluid", name = "butane", amount = 20}
		},
	}
	--light naphtha processing
fun.Recipe
	{
	name = "light-naphtha-processing",
	energy_required = 4,
	category = "gas-refinery",
	ingredients =
		{
			{type = "fluid", name = "light-naptha", amount = 80},
			{type = "fluid", name = "hydrogen", amount = 20},
			{type = "item", name = "clorinated-alumina", amount = 10, catalyst_amount = 10}
		},
	results =
		{
			{type = "fluid", name = "lpg-gases", amount = 30},
			{type = "fluid", name = "isomerate", amount = 30},
			{type = "item", name = "clorinated-alumina", amount = 9, catalyst_amount = 9}
		}
	}
	--heavy naphtha processing
fun.Recipe
	{
	name = "heavy-naphtha-processing",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "heavy-naphtha", amount = 80}
			},
			{
				{type = "fluid", name = "hydrogen", amount = 20}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "reformate", amount = 80}
			},
			{
				{type = "fluid", name = "hydrogen", amount = 60}
			}
		},
	}
	--reformate distillation
fun.Recipe
	{
	name = "reformate-distillation",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "reformate", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "btx", amount = 30}
			},
			{
				{type = "fluid", name = "heavy-reformate", amount = 60}
			},
			{
				{type = "fluid", name = "lpg-gases", amount = 10}
			}
		},
	}
	--low tech atmo bottom distillation
fun.Recipe
	{
	name = "lowt-atmo-bottom-processing",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "liquid-fuel-oil", amount = 80}
			},
			
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "hight-atmo-bottom-processing",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
	--high tech atmo bottom distillation
fun.Recipe
	{
	name = "",
	energy_required = 4.5,
	category = "gas-refinery",
	ingredients =
		{
			{
				{type = "fluid", name = "atmo-bottoms", amount = 100}
			},
		},
	results =
		{
			{
				{type = "fluid", name = "light-vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "heavy--vac-gas", amount = 40}
			},
			{
				{type = "fluid", name = "vac-residuals", amount = 20}
			}
		},
	}
