
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

end