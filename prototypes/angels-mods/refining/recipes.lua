require("prototypes/angels-mods/refining/recipes/angelsore1")
require("prototypes/angels-mods/refining/recipes/angelsore3")

if mods["angelsrefining"] then
--new recipes go here

--create all the slag processing recipes
for i=1,10,1 do
	for r=1,3 do
		local refstage =
			{
			"crushed",
			"chunk",
			"crystal",
			}
		if data.raw.item["tba-ore"..i.."-"..refstage[r].."-slag"] ~= nil then
			data:extend(
			{
				{
				type = "recipe",
				name = "tba-ore"..i.."-"..refstage[r].."-slag-processing-dissolution",
				category = "liquifying",
				subgroup = "liquifying",
				energy_required = 3,
				enabled = "false",
				ingredients ={
					{type="item", name="tba-ore"..i.."-"..refstage[r].."-slag", amount=2},
					{type="fluid", name="sulfuric-acid", amount=15},
				},
				results=
				{
					{type="fluid", name="slag-slurry", amount=50},
				},
				icon = "__angelsrefining__/graphics/icons/slag-slurry.png",
				icon_size = 32,
				order = "i [slag-processing-dissolution]",
				},
			}
			)			
			--insert into slag processing tech
			if data.raw.technology["slag-processing-"..r] ~= nil then
				table.insert(data.raw.technology["slag-processing-"..r].effects,{type="unlock-recipe",recipe="tba-ore"..i.."-"..refstage[r].."-slag-processing-dissolution"})
			else
				table.insert(data.raw.technology["slag-processing-1"].effects,{type="unlock-recipe",recipe="tba-ore"..i.."-"..refstage[r].."-slag-processing-dissolution"})
			end
		end
	end
end 
--[[
data:extend(
{
--all recipes will start with tba- to make them seperate from the other mods recipes

}
)
]]--

end