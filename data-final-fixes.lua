--Angels Mods
require("prototypes/angels-mods/Data-Final-Fixes")

--Bob Mods
require("prototypes/bobs-mods/Data-Final-Fixes")

require("prototypes/aai-industries/Data-Final-Fixes")

--require("prototypes/bio-industries/Data-Final-Fixes")

--require("prototypes/dl-stacking/Data-Final-Fixes")

--require("prototypes/kaoextended/Data-Final-Fixes")

--require("prototypes/madclowns-mods/Data-Final-Fixes")

--require("prototypes/mining-space-industries/Data-Final-Fixes")

require("prototypes/omni-mods/Data-Final-Fixes")

--require("prototypes/space-exploration/Data-Final-Fixes")

require("updates/acid-changes")

require("updates/pyproductivityadjuster")

if mods["Advanced-Solar"] then

	data.raw.technology["electric-energy-accumulators-2"].prerequisites = {"electric-energy-accumulators"}
	
end

if mods["BlackMarket"] then

	data.raw.technology["black-market-energy"].prerequisites = { "black-market-item", "electric-energy-accumulators" }
	
end


--recipe ingredients deduper

for i, ings in pairs(data.raw.recipe) do
--log(serpent.block(ings))
local inglist = {}
	if ings.ingredients ~= nil then
		for a,ing in pairs(ings.ingredients) do
			if ing.name ~= nil then
				if not inglist[ing.name] then
					--log(serpent.block(ing))
					--log(ing.name)
					inglist[ing.name] = true
				else
					data.raw.recipe[ings.name].ingredients[a] = nil
				end
			elseif type(ing[1]) == "string" then
				--log(serpent.block(ing))
				if not inglist[ing[1]] then
					inglist[ing[1]] = true
				else
					data.raw.recipe[ings.name].ingredients[a] = nil
				end
			end
		end
	end

	if ings.normal ~= nil then
		for a,ing in pairs(ings.normal.ingredients) do
			if ing.name ~= nil then
				if not inglist[ing.name] then
					--log(serpent.block(ing))
					--log(ing.name)
					inglist[ing.name] = true
				else
					data.raw.recipe[ings.name].normal.ingredients[a] = nil
				end
			elseif type(ing[1]) == "string" then
				--log(serpent.block(ing))
				if not inglist[ing[1]] then
					inglist[ing[1]] = true
				else
					data.raw.recipe[ings.name].normal.ingredients[a] = nil
				end
			end
		end
	end
	--reset inglist for expensive ingredients
	inglist = {}
	
	if ings.expensive ~= nil then
		--log(serpent.block(ings))
		--log(serpent.block(ings.expensive))
		if ings.expensive ~= false then
			if ings.expensive.ingredients ~= nil then
				for a,ing in pairs(ings.expensive.ingredients) do
					if ing.name ~= nil then
						if not inglist[ing.name] then
							--log(serpent.block(ing))
							--log(ing.name)
							inglist[ing.name] = true
						else
							data.raw.recipe[ings.name].expensive.ingredients[a] = nil
						end
					elseif type(ing[1]) == "string" then
						--log(serpent.block(ing))
						if not inglist[ing[1]] then
							inglist[ing[1]] = true
						else
							data.raw.recipe[ings.name].expensive.ingredients[a] = nil
						end
					end
				end
			end
		end
	end
end