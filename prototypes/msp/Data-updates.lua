if mods['pyalienlife'] then
	--py1
	RECIPE('py-science-pack-1'):add_ingredient({"more-science-pack-1", 1})
	RECIPE('py-science-pack-1'):add_ingredient({"more-science-pack-2", 1})
	RECIPE('py-science-pack-1'):add_ingredient({"more-science-pack-3", 1})
	RECIPE('py-science-pack-1-turd'):add_ingredient({"more-science-pack-1", 1})
	RECIPE('py-science-pack-1-turd'):add_ingredient({"more-science-pack-2", 1})
	RECIPE('py-science-pack-1-turd'):add_ingredient({"more-science-pack-3", 1})
	--logi
	RECIPE('logistic-science-pack'):add_ingredient({"more-science-pack-4", 1})
	RECIPE('logistic-science-pack'):add_ingredient({"more-science-pack-5", 1})
	RECIPE('logistic-science-pack'):add_ingredient({"more-science-pack-6", 1})
	--military
	RECIPE('military-science-pack'):add_ingredient({"more-science-pack-7", 1})
	RECIPE('military-science-pack'):add_ingredient({"more-science-pack-8", 1})
	RECIPE('military-science-pack'):add_ingredient({"more-science-pack-9", 1})
	--py2
	RECIPE('py-science-pack-2'):add_ingredient({"more-science-pack-10", 1})
	RECIPE('py-science-pack-2'):add_ingredient({"more-science-pack-11", 1})
	RECIPE('py-science-pack-2'):add_ingredient({"more-science-pack-12", 1})
	RECIPE('py-science-pack-2-turd'):add_ingredient({"more-science-pack-10", 1})
	RECIPE('py-science-pack-2-turd'):add_ingredient({"more-science-pack-11", 1})
	RECIPE('py-science-pack-2-turd'):add_ingredient({"more-science-pack-12", 1})
	--chem
	RECIPE('chemical-science-pack'):add_ingredient({"more-science-pack-13", 1})
	RECIPE('chemical-science-pack'):add_ingredient({"more-science-pack-14", 1})
	RECIPE('chemical-science-pack'):add_ingredient({"more-science-pack-15", 1})
	--py3
	RECIPE('py-science-pack-3'):add_ingredient({"more-science-pack-16", 1})
	RECIPE('py-science-pack-3'):add_ingredient({"more-science-pack-17", 1})
	RECIPE('py-science-pack-3'):add_ingredient({"more-science-pack-18", 1})
	RECIPE('py-science-pack-3-turd'):add_ingredient({"more-science-pack-16", 1})
	RECIPE('py-science-pack-3-turd'):add_ingredient({"more-science-pack-17", 1})
	RECIPE('py-science-pack-3-turd'):add_ingredient({"more-science-pack-18", 1})
	--prod
	RECIPE('production-science-pack'):add_ingredient({"more-science-pack-19", 1})
	RECIPE('production-science-pack'):add_ingredient({"more-science-pack-20", 1})
	RECIPE('production-science-pack'):add_ingredient({"more-science-pack-21", 1})
	--py4
	RECIPE('py-science-pack-4'):add_ingredient({"more-science-pack-22", 1})
	RECIPE('py-science-pack-4'):add_ingredient({"more-science-pack-23", 1})
	RECIPE('py-science-pack-4'):add_ingredient({"more-science-pack-24", 1})
	RECIPE('py-science-pack-4-turd'):add_ingredient({"more-science-pack-22", 1})
	RECIPE('py-science-pack-4-turd'):add_ingredient({"more-science-pack-23", 1})
	RECIPE('py-science-pack-4-turd'):add_ingredient({"more-science-pack-24", 1})
	--util
	RECIPE('utility-science-pack'):add_ingredient({"more-science-pack-25", 1})
	RECIPE('utility-science-pack'):add_ingredient({"more-science-pack-26", 1})
	RECIPE('utility-science-pack'):add_ingredient({"more-science-pack-27", 1})
	--spaaaaaaaaaace
	RECIPE('space-science-pack'):add_ingredient({"more-science-pack-28", 1})
	RECIPE('space-science-pack'):add_ingredient({"more-science-pack-29", 1})
	RECIPE('space-science-pack'):add_ingredient({"more-science-pack-30", 1})
end

--this code is by Honktown
for name, lab in pairs(data.raw.lab) do
    for k, input in pairs(lab.inputs) do
        if string.find(input, 'more-science-pack-', 1, "plain") then
            lab.inputs[k] = nil
        end
    end
end