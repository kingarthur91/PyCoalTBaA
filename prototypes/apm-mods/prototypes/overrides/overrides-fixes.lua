if mods['apm_power_ldinc'] then
	if mods['bobplates'] then
		data.raw['assembling-machine']['assembling-machine-2'].allowed_effects = {"consumption", "speed", "productivity", "pollution"}
	end
end