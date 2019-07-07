fun = require("functions/functions")

require("prototypes/recipe-category")

--Angels Mods
require("prototypes/angels-mods/Data")

--Bob Mods
--require"prototypes/Bobs mods/"

--[[
--recipe function testing
fun.Recipe{
	name="test",
	ingredients =
		{
			{
				{name="angels-ore15",amount=3},
				{name="ore-tin",amount=5},
				{name="angels-ore1",amount=3},
				{name="iron-plate",amount=2},
			},
			{
				{name="ore-lead",amount=5},
				{name="angels-ore5",amount=3},
				{name="iron-plate",amount=2},
			}
		},
	results =
		{
		{"iron-plate",1}
		},
	}
]]--