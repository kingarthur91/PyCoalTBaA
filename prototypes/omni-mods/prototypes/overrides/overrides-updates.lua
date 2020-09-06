if mods["omnimatter_energy"] then
  local hide_tier1={"pulp-mill-mk01","distilator","wpu","hpf","washer","micro-mine-mk01","research-center-mk01","botanical-nursery","moss-farm-mk01","sap-extractor-mk01","seaweed-crop-mk01","soil-extractormk01","clay-pit-mk01","chipshooter-mk01","pcb-factory-mk01","fbreactor-mk01","electronics-factory-mk01","advanced-foundry-mk01","automated-factory-mk01","gasifier","tar-processing-unit"}
  for _,rec in pairs(hide_tier1) do
    data.raw.recipe[rec].enabled=false
    fun.tech_add_recipe("machines-mk01",rec)
  end
	lab_ignore_pack={}
    for i, labs in pairs(data.raw["lab"]) do
		local found = false
		for i,v in ipairs(labs.inputs) do
			if v == "omni-science-pack" then
				found = true
			end
		end
		if not lab_ignore_pack[labs.name] and not found then
				table.insert(labs.inputs, "omni-science-pack")
		end
    end
fun.tech_add_prerequisites("machines-mk01","energy-1")
fun.tech_add_prerequisites("machines-mk01","anbaric-mining")
fun.tech_add_prerequisites("machines-mk01","anbaric-inserter")
fun.ingredient_replace("ball-mill-mk01", "assembling-machine-1", "burner-assembling-machine")
end

fun.ingredient_replace("omnitractor-1", "pcb1", "electronic-circuit")
omni.lib.replace_science_pack("omnitech-steam-power", "logistic-science-pack", "omni-science-pack") 
omni.lib.replace_science_pack("omnitech-omnium-power-1", "logistic-science-pack", "omni-science-pack")
omni.lib.replace_science_pack("automation", "logistic-science-pack", "omni-science-pack")  
omni.lib.remove_prerequisite("omnitech-steam-power", "logistic-science-pack")
omni.lib.remove_prerequisite("omnitech-omnium-power-1", "coal-processing-2")
omni.lib.remove_prerequisite("omnitech-omnium-power-1", "bioprocessing")