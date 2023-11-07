if mods['angelsindustries'] then
	--data.raw["bool-setting"]["angels-enable-components"].default_value = true
	--data.raw["bool-setting"]["angels-enable-components"].hidden = true
	data.raw["bool-setting"]["angels-enable-industries"].forced_value = true
	data.raw["bool-setting"]["angels-enable-industries"].hidden = true
end
if mods['bobmining'] then
	data.raw["bool-setting"]["bobmods-mining-miningdrills"].forced_value = true
	data.raw["bool-setting"]["bobmods-mining-miningdrills"].hidden = true
end
if mods['MoreSciencePacks-for1_1'] then
	data.raw["bool-setting"]["moresciencepack-GameProgressionFix"].forced_value = true
	data.raw["bool-setting"]["moresciencepack-GameProgressionFix"].hidden = true
	data.raw["bool-setting"]["moresciencepack-no-lab-slots"].forced_value = true
	data.raw["bool-setting"]["moresciencepack-no-lab-slots"].hidden = true
end