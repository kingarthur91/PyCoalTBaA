
if mods["angelsrefining"] then
	
		if settings.startup["pymods-remove-regular-ores"].value then
		
			data.raw.resource["ore-aluminium"] = nil
			data.raw["autoplace-control"]["ore-aluminium"] = nil
			
			data.raw.resource["ore-chromium"] = nil
			data.raw["autoplace-control"]["ore-chromium"] = nil
			
			data.raw.resource["ore-lead"] = nil
			data.raw["autoplace-control"]["ore-lead"] = nil
			
			data.raw.resource["ore-nickel"] = nil
			data.raw["autoplace-control"]["ore-nickel"] = nil
			
			data.raw.resource["ore-quartz"] = nil
			data.raw["autoplace-control"]["ore-quartz"] = nil
			
			data.raw.resource["raw-coal"] = nil
			data.raw["autoplace-control"]["raw-coal"] = nil
			
			data.raw.resource["ore-tin"] = nil
			data.raw["autoplace-control"]["ore-tin"] = nil
			
			data.raw.resource["ore-titanium"] = nil
			data.raw["autoplace-control"]["ore-titanium"] = nil
			
			data.raw.resource["ore-zinc"] = nil
			data.raw["autoplace-control"]["ore-zinc"] = nil

		end
		
		if settings.startup["pymods-remove-regular-alum"].value then
		
			data.raw.resource["ore-aluminium"] = nil
			data.raw["autoplace-control"]["ore-aluminium"] = nil
			
		end
		if settings.startup["pymods-remove-regular-chrom"].value then
			
			data.raw.resource["ore-chromium"] = nil
			data.raw["autoplace-control"]["ore-chromium"] = nil
		
		end
		if settings.startup["pymods-remove-regular-lead"].value then
			
			data.raw.resource["ore-lead"] = nil
			data.raw["autoplace-control"]["ore-lead"] = nil
		
		end
		if settings.startup["pymods-remove-regular-nickel"].value then
			
			data.raw.resource["ore-nickel"] = nil
			data.raw["autoplace-control"]["ore-nickel"] = nil
		
		end
		if settings.startup["pymods-remove-regular-quartz"].value then
			
			data.raw.resource["ore-quartz"] = nil
			data.raw["autoplace-control"]["ore-quartz"] = nil
		
		end
		if settings.startup["pymods-remove-regular-rawcoal"].value then
			
			data.raw.resource["raw-coal"] = nil
			data.raw["autoplace-control"]["raw-coal"] = nil
		
		end
		if settings.startup["pymods-remove-regular-tin"].value then
			
			data.raw.resource["ore-tin"] = nil
			data.raw["autoplace-control"]["ore-tin"] = nil
		
		end
		if settings.startup["pymods-remove-regular-titan"].value then
			
			data.raw.resource["ore-titanium"] = nil
			data.raw["autoplace-control"]["ore-titanium"] = nil
		
		end
		if settings.startup["pymods-remove-regular-zinc"].value then
			
			data.raw.resource["ore-zinc"] = nil
			data.raw["autoplace-control"]["ore-zinc"] = nil
		
		end
			
	end
