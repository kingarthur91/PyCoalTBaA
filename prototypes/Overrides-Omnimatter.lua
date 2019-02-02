
if mods["omnimatter"] then

omni.add_resource("raw-borax",1,"__PyCoalTBaA__/graphics/technology/extraction-borax.png","PyCoalTBaA")

omni.add_resource("niobium-ore",2,"__PyCoalTBaA__/graphics/technology/extraction-niobium.png","PyCoalTBaA")

--omni.add_resource("coal",1)

data.raw.resource["borax"]["autoplace"] = nil
data.raw["autoplace-control"]["borax"] = nil

data.raw.resource["niobium"]["autoplace"] = nil
data.raw["autoplace-control"]["niobium"] = nil

if mods["pyfusionenergy"] then

	omni.add_resource("molybdenum-ore",2,"__PyCoalTBaA__/graphics/technology/extraction-molybdenum-ore.png","PyCoalTBaA")

	omni.add_resource("regolite-rock",2,"__PyCoalTBaA__/graphics/technology/extraction-regolite-rock.png","PyCoalTBaA")

	omni.add_resource("kimberlite-rock",2,"__PyCoalTBaA__/graphics/technology/extraction-kimberlite-rock.png","PyCoalTBaA")

	data.raw.resource["molybdenum-ore"]["autoplace"] = nil
	data.raw["autoplace-control"]["molybdenum-ore"] = nil

	data.raw.resource["regolites"]["autoplace"] = nil
	data.raw["autoplace-control"]["regolites"] = nil

	data.raw.resource["volcanic-pipe"]["autoplace"] = nil
	data.raw["autoplace-control"]["volcanic-pipe"] = nil

end

if mods["pyhightech"] then

	omni.add_resource("phosphate-rock",2,"__PyCoalTBaA__/graphics/technology/extraction-phosphate-rock.png","PyCoalTBaA")

	omni.add_resource("rare-earth-ore",2,"__PyCoalTBaA__/graphics/technology/extraction-rare-earth-ore.png","PyCoalTBaA")

	data.raw.resource["phosphate-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["phosphate-rock"] = nil

	data.raw.resource["rare-earth-bolide"]["autoplace"] = nil
	data.raw["autoplace-control"]["rare-earth-bolide"] = nil
	
end

if mods["pyrawores"] then

	omni.add_resource("ore-chromium",2,"__PyCoalTBaA__/graphics/technology/extraction-ore-chromium.png","PyCoalTBaA")
	omni.add_resource("ore-aluminium",1,"__PyCoalTBaA__/graphics/technology/extraction-ore-aluminium.png","PyCoalTBaA")
	omni.add_resource("ore-zinc",3,"__PyCoalTBaA__/graphics/technology/extraction-ore-zinc.png","PyCoalTBaA")
	omni.add_resource("ore-titanium",3,"__PyCoalTBaA__/graphics/technology/extraction-ore-titanium.png","PyCoalTBaA")
	omni.add_resource("ore-tin",1,"__PyCoalTBaA__/graphics/technology/extraction-ore-tin.png","PyCoalTBaA")
	omni.add_resource("raw-coal",1,"__PyCoalTBaA__/graphics/technology/extraction-ore-coal.png","PyCoalTBaA")
	omni.add_resource("ore-quartz",1,"__PyCoalTBaA__/graphics/technology/extraction-ore-quartz.png","PyCoalTBaA")
	omni.add_resource("ore-nickel",2,"__PyCoalTBaA__/graphics/technology/extraction-ore-nickel.png","PyCoalTBaA")
	omni.add_resource("ore-lead",1,"__PyCoalTBaA__/graphics/technology/extraction-ore-lead.png","PyCoalTBaA")
	omni.add_resource("salt",2,"__PyCoalTBaA__/graphics/technology/extraction-salt.png","PyCoalTBaA")
	
	data.raw.resource["raw-coal"]["autoplace"] = nil
	data.raw["autoplace-control"]["raw-coal"] = nil
	
	data.raw.resource["salt-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["salt-rock"] = nil
	
	data.raw.resource["ore-tin"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-tin"] = nil
	
	data.raw.resource["tin-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["tin-rock"] = nil
	
	data.raw.resource["ore-titanium"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-titanium"] = nil
	
	data.raw.resource["titanium-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["titanium-rock"] = nil
	
	data.raw.resource["uranium-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["uranium-rock"] = nil
	
	data.raw.resource["ore-zinc"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-zinc"] = nil
	
	data.raw.resource["zinc-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["zinc-rock"] = nil
	
	data.raw.resource["ore-aluminium"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-aluminium"] = nil
	
	data.raw.resource["aluminium-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["aluminium-rock"] = nil
	
	data.raw.resource["ore-chromium"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-chromium"] = nil
	
	data.raw.resource["chromium-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["chromium-rock"] = nil
	
	data.raw.resource["coal-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["coal-rock"] = nil
	
	data.raw.resource["iron-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["iron-rock"] = nil
	
	data.raw.resource["copper-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["copper-rock"] = nil
	
	data.raw.resource["ore-lead"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-lead"] = nil
	
	data.raw.resource["lead-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["lead-rock"] = nil
	
	data.raw.resource["nexelit-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["nexelit-rock"] = nil
	
	data.raw.resource["ore-nickel"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-nickel"] = nil
	
	data.raw.resource["nickel-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["nickel-rock"] = nil
	
	data.raw.resource["phosphate-rock-02"]["autoplace"] = nil
	data.raw["autoplace-control"]["phosphate-rock-02"] = nil
	
	data.raw.resource["ore-quartz"]["autoplace"] = nil
	data.raw["autoplace-control"]["ore-quartz"] = nil
	
	data.raw.resource["quartz-rock"]["autoplace"] = nil
	data.raw["autoplace-control"]["quartz-rock"] = nil
	
	--data.raw.resource[""]["autoplace"] = nil
	--data.raw["autoplace-control"][""] = nil
	
	data:extend(
	{
		{
	type = "recipe",
    name = "starter-quartz-omni",
    category = "omnite-extraction-burner",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "omnite", amount = 5}
    },
    results = {
        {type="item", name="ore-quartz", amount=1},
		{type="item", name="stone-crushed", amount=4}
    },
    icon = "__pyrawores__/graphics/icons/ore-quartz.png",
    icon_size = 32,
    subgroup = "omni-basic",
    --order = "tailings-a"
	},
	{
	type = "recipe",
    name = "starter-tin-omni",
    category = "omnite-extraction-burner",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "omnite", amount = 5}
    },
    results = {
        {type="item", name="ore-tin", amount=1},
		{type="item", name="stone-crushed", amount=4}
    },
    icon = "__pyrawores__/graphics/icons/ore-tin.png",
    icon_size = 32,
    subgroup = "omni-basic",
    --order = "tailings-a"
	}
}
)
	
	
end

end