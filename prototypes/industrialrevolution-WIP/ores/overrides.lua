if mods['angelsrefining'] then
    if settings.startup['pymods-remove-regular-ores'].value then
        data.raw.resource['ore-aluminium'] = nil
        data.raw['autoplace-control']['ore-aluminium'] = nil

        data.raw.resource['ore-chromium'] = nil
        data.raw['autoplace-control']['ore-chromium'] = nil

        data.raw.resource['ore-lead'] = nil
        data.raw['autoplace-control']['ore-lead'] = nil

        data.raw.resource['ore-nickel'] = nil
        data.raw['autoplace-control']['ore-nickel'] = nil

        data.raw.resource['ore-quartz'] = nil
        data.raw['autoplace-control']['ore-quartz'] = nil

        data.raw.resource['raw-coal'] = nil
        data.raw['autoplace-control']['raw-coal'] = nil

        data.raw.resource['ore-tin'] = nil
        data.raw['autoplace-control']['ore-tin'] = nil

        data.raw.resource['ore-titanium'] = nil
        data.raw['autoplace-control']['ore-titanium'] = nil

        data.raw.resource['ore-zinc'] = nil
        data.raw['autoplace-control']['ore-zinc'] = nil

        data.raw.resource['borax'] = nil
        data.raw['autoplace-control']['borax'] = nil

        data.raw.resource['niobium'] = nil
        data.raw['autoplace-control']['niobium'] = nil

        data.raw.resource['molybdenum-ore'] = nil
        data.raw['autoplace-control']['molybdenum-ore'] = nil

        data.raw.resource['volcanic-pipe'] = nil
        data.raw['autoplace-control']['volcanic-pipe'] = nil

        data.raw.resource['regolites'] = nil
        data.raw['autoplace-control']['regolites'] = nil

        data.raw.resource['phosphate-rock'] = nil
        data.raw['autoplace-control']['phosphate-rock'] = nil

        data.raw.resource['rare-earth-bolide'] = nil
        data.raw['autoplace-control']['rare-earth-bolide'] = nil

        data.raw.resource['quartz-rock'] = nil
        data.raw['autoplace-control']['quartz-rock'] = nil

        data.raw.resource['chromium-rock'] = nil
        data.raw['autoplace-control']['chromium-rock'] = nil

        data.raw.resource['aluminium-rock'] = nil
        data.raw['autoplace-control']['aluminium-rock'] = nil

        data.raw.resource['copper-rock'] = nil
        data.raw['autoplace-control']['copper-rock'] = nil

        data.raw.resource['salt-rock'] = nil
        data.raw['autoplace-control']['salt-rock'] = nil

        data.raw.resource['iron-rock'] = nil
        data.raw['autoplace-control']['iron-rock'] = nil

        data.raw.resource['coal-rock'] = nil
        data.raw['autoplace-control']['coal-rock'] = nil

        data.raw.resource['lead-rock'] = nil
        data.raw['autoplace-control']['lead-rock'] = nil

        data.raw.resource['nexelit-rock'] = nil
        data.raw['autoplace-control']['nexelit-rock'] = nil

        data.raw.resource['nickel-rock'] = nil
        data.raw['autoplace-control']['nickel-rock'] = nil

        data.raw.resource['tin-rock'] = nil
        data.raw['autoplace-control']['tin-rock'] = nil

        data.raw.resource['titanium-rock'] = nil
        data.raw['autoplace-control']['titanium-rock'] = nil

        data.raw.resource['uranium-rock'] = nil
        data.raw['autoplace-control']['uranium-rock'] = nil

        data.raw.resource['zinc-rock'] = nil
        data.raw['autoplace-control']['zinc-rock'] = nil

        data.raw.resource['sulfur-patch'] = nil
        data.raw['autoplace-control']['sulfur-patch'] = nil
    end
end
--[[
    if settings.startup['pymods-remove-regular-alum'].value then
        data.raw.resource['ore-aluminium'] = nil
        data.raw['autoplace-control']['ore-aluminium'] = nil
    end
    if settings.startup['pymods-remove-regular-chrom'].value then
        data.raw.resource['ore-chromium'] = nil
        data.raw['autoplace-control']['ore-chromium'] = nil
    end
    if settings.startup['pymods-remove-regular-lead'].value then
        data.raw.resource['ore-lead'] = nil
        data.raw['autoplace-control']['ore-lead'] = nil
    end
    if settings.startup['pymods-remove-regular-nickel'].value then
        data.raw.resource['ore-nickel'] = nil
        data.raw['autoplace-control']['ore-nickel'] = nil
    end
    if settings.startup['pymods-remove-regular-quartz'].value then
        data.raw.resource['ore-quartz'] = nil
        data.raw['autoplace-control']['ore-quartz'] = nil
    end
    if settings.startup['pymods-remove-regular-rawcoal'].value then
        data.raw.resource['raw-coal'] = nil
        data.raw['autoplace-control']['raw-coal'] = nil
    end
    if settings.startup['pymods-remove-regular-tin'].value then
        data.raw.resource['ore-tin'] = nil
        data.raw['autoplace-control']['ore-tin'] = nil
    end
    if settings.startup['pymods-remove-regular-titan'].value then
        data.raw.resource['ore-titanium'] = nil
        data.raw['autoplace-control']['ore-titanium'] = nil
    end
    if settings.startup['pymods-remove-regular-zinc'].value then
        data.raw.resource['ore-zinc'] = nil
        data.raw['autoplace-control']['ore-zinc'] = nil
    end
end
]]
 --
--[[
local res = {}
for r, resource in pairs(data.raw.resource) do

	table.insert(res, resource.name)

end

log(serpent.block(res))
]]
 --
