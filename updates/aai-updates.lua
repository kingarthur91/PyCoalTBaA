
--need electric miner for crystal miner
--need pipes
--need tin wire / cant get tin without electric miner


if mods["aai-industry"] then

if mods["angelspetrochem"] then

local OV = angelsmods.functions.OV

  OV.patch_recipes({
         { name = "medium-electric-pole", ingredients = {
            { name = "creosote", type = "fluid", amount = 10 },
            { name = "steel-plate",  amount = 2 },
            { name = "copper-cable",  amount = 4 }
         } }
      })

end
	  
  data.raw.container["aai-big-ship-wreck-1"].inventory_size = 20
  
end