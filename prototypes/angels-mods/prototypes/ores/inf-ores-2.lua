if mods['pyalternativeenergy'] and not mods['SeaBlock'] then
	data.raw.resource['infinite-antimonium'].minable.required_fluid = 'pressured-water'
	data.raw.resource['infinite-borax'].minable.required_fluid = 'refsyngas'
	data.raw.resource['infinite-niobium'].minable.required_fluid = 'aromatics'
	data.raw.resource['infinite-molybdenum-ore'].minable.required_fluid = 'acetylene'
	data.raw.resource['infinite-raw-coal'].minable.required_fluid = 'water'
	data.raw.resource['infinite-ree'].minable.required_fluid = 'kerosene'
	data.raw.resource['infinite-oil-sand'].minable.required_fluid = 'gas-compressed-air'
	data.raw.resource['infinite-ore-aluminium'].minable.required_fluid = 'gas-synthesis'
	data.raw.resource['infinite-ore-chromium'].minable.required_fluid = 'refsyngas'
	data.raw.resource['infinite-ore-quartz'].minable.required_fluid = 'gas-synthesis'
	data.raw.resource['infinite-ore-titanium'].minable.required_fluid = 'acetylene'
end