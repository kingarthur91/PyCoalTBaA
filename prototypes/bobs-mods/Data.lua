
if mods["boblibrary"] then

	require("prototypes/bobs-mods/overrides/overrides")
	require("prototypes/bobs-mods/items/items")
	require("prototypes/bobs-mods/fluids/fluids")
	require("prototypes/bobs-mods/recipes/recipes")

	--find and fix game crashing errors first if any

	--need to check fiberglass is properly updated
	fun.Recipe
		{
			name = "fibreglass-board",
			ingredients =
			{
				{
					{ name = "plastic-bar", amount = 1}
				},
				{
					{ name = "glass", amount = 2}
				}
			}
		}


	--pycp

	--pyfe

	--pyht

	--pyin

	--pyph

	--pyro

	--pyal

	--pya

end
