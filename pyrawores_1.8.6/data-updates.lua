require("__stdlib__/stdlib/data/data").Util.create_data_globals()
local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

	if mods["pyfusionenergy"] then
		require("prototypes/updates/pyfusionenergy-updates")
	end

	if mods["pyhightech"] then
		require("prototypes/updates/pyhightech-updates")
		require("prototypes.ores.phosphate-rock-02")
		require("prototypes/buildings/phosphate-mine-02")
	end

	if mods["pycoalprocessing"] then
		require("prototypes/updates/pycoalprocessing-updates")
	end

	require("prototypes/updates/base-updates")

--ADAPTATIONS

ITEM("copper-plate"):set("icon", "__pyrawores__/graphics/icons/copper-plate.png")
ITEM("iron-plate"):set("icon", "__pyrawores__/graphics/icons/iron-plate.png")
ITEM("copper-cable"):set("icon", "__pyrawores__/graphics/icons/copper-cable.png")

--RECIPES UPDATES

if settings.startup['processing-mod'].value then
RECIPE("iron-plate"):remove_ingredient("iron-ore"):add_ingredient({type = "item", name = "ore-iron", amount = 8}):set_fields {energy_required = 10}
RECIPE("copper-plate"):remove_ingredient("copper-ore"):add_ingredient({type = "item", name = "ore-copper", amount = 8}):set_fields {energy_required = 10}
else
RECIPE("iron-plate"):remove_ingredient("iron-ore"):add_ingredient({type = "item", name = "iron-ore", amount = 8}):set_fields {energy_required = 10}
RECIPE("copper-plate"):remove_ingredient("copper-ore"):add_ingredient({type = "item", name = "copper-ore", amount = 8}):set_fields {energy_required = 10}
end

FUN.ing_adjust("steel-plate","iron-plate",10)
RECIPE("steel-plate"):set_fields {energy_required = 15}
RECIPE("electronic-circuit"):set_fields {energy_required = 4}
RECIPE("advanced-circuit"):add_ingredient({type = "item", name = "solder", amount = 2})
RECIPE("processing-unit"):add_ingredient({type = "item", name = "solder", amount = 3})

RECIPE("nexelit-plate"):remove_unlock("coal-processing-3")
RECIPE("steel-plate2"):remove_unlock("coal-processing-3")
RECIPE("crushed-iron"):remove_unlock("crusher")
RECIPE("crushed-copper"):remove_unlock("crusher")

RECIPE("py-local-radar"):set_fields {enabled = false}:add_unlock("engine")

RECIPE("py-logistic-robot-01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-construction-robot-01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-roboport-mk01"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("py-recharge-station-mk01"):add_ingredient({type = "item", name = "aluminium-plate", amount = 10})
RECIPE("quartz-mine"):add_ingredient({type = "item", name = "py-construction-robot-01", amount = 10})

RECIPE("distilator-mk04"):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})
RECIPE("automated-factory-mk04"):add_ingredient({type = "item", name = "accumulator-mk01", amount = 2})

RECIPE("ball-mill-mk04"):replace_ingredient("concrete", "py-asphalt")

RECIPE("processing-unit"):add_ingredient({type = "item", name = "gold-plate", amount = 1})
RECIPE("small-lamp"):add_ingredient({type = "item", name = "glass", amount = 2})

RECIPE("military-science-pack"):add_ingredient({type = "item", name = "lead-plate", amount = 20}):replace_ingredient("grenade", "aluminium-plate")

RECIPE("laser-turret"):replace_ingredient("steel-plate", "duralumin")
RECIPE("engine-unit"):replace_ingredient("steel-plate", "aluminium-plate")
RECIPE("electric-engine-unit"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("utility-science-pack"):add_ingredient({type = "item", name = "super-steel", amount = 6})
RECIPE("pumpjack"):add_ingredient({type = "item", name = "duralumin", amount = 10}):replace_ingredient("pipe", "niobium-pipe")

RECIPE("battery"):replace_ingredient("iron-plate", "zinc-plate")
RECIPE("oil-refinery"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("steel-plate", "stainless-steel")
RECIPE("electric-furnace"):add_ingredient({type = "item", name = "super-steel", amount = 15})
RECIPE("steel-furnace"):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE("fast-transport-belt"):add_ingredient({type = "item", name = "stainless-steel", amount = 2})
RECIPE("fast-underground-belt"):add_ingredient({type = "item", name = "stainless-steel", amount = 3})
RECIPE("fast-splitter"):add_ingredient({type = "item", name = "stainless-steel", amount = 5})
RECIPE("express-transport-belt"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("express-underground-belt"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("express-splitter"):add_ingredient({type = "item", name = "super-steel", amount = 5})
RECIPE("fast-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("filter-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("stack-inserter"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("assembling-machine-3"):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE("assembling-machine-2"):replace_ingredient("iron-plate", "chromium"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("locomotive"):add_ingredient({type = "item", name = "duralumin", amount = 25})
RECIPE("cargo-wagon"):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("fluid-wagon"):add_ingredient({type = "item", name = "titanium-plate", amount = 50})
RECIPE("artillery-wagon"):replace_ingredient("steel-plate", "super-steel"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("flying-robot-frame"):add_ingredient({type = "item", name = "duralumin", amount = 5})
RECIPE("substation"):replace_ingredient("copper-plate", "super-steel")
RECIPE("uranium-fuel-cell"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("heat-pipe"):replace_ingredient("copper-plate", "duralumin")
RECIPE("steam-turbine"):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE("solar-panel"):add_ingredient({type = "item", name = "pyrite", amount = 5})

RECIPE("advanced-circuit"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("utility-science-pack"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("red-wire"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("green-wire"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("beacon"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("red-wire"):replace_ingredient("copper-cable", "tinned-cable")

RECIPE("wet-scrubber-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("wet-scrubber-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("wet-scrubber-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("wet-scrubber-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("casting-unit-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("casting-unit-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("casting-unit-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("casting-unit-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("flotation-cell-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("flotation-cell-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("flotation-cell-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("flotation-cell-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("leaching-station-mk01"):replace_ingredient("storage-tank", "py-tank-5000")
RECIPE("leaching-station-mk02"):replace_ingredient("storage-tank", "py-tank-6500")
RECIPE("leaching-station-mk03"):replace_ingredient("storage-tank", "py-tank-7000")
RECIPE("leaching-station-mk04"):replace_ingredient("storage-tank", "py-tank-8000")

RECIPE("casting-unit-mk01"):replace_ingredient("radar", "py-local-radar")
RECIPE("impact-crusher-mk01"):replace_ingredient("radar", "py-local-radar")
RECIPE("storage-tank"):replace_ingredient("iron-plate", "duralumin"):add_ingredient({type = "item", name = "lead-plate", amount = 10})

RECIPE("py-tank-1000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-1500"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-3000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-4000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-5000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-6500"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-7000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")
RECIPE("py-tank-8000"):replace_ingredient("iron-plate", "duralumin"):replace_ingredient("steel-plate", "lead-plate")

RECIPE("ppd"):replace_ingredient("hydrogen", "ammonia")
RECIPE("nuclear-reactor"):replace_ingredient("steel-plate", "titanium-plate"):replace_ingredient("copper-plate", "stainless-steel")
RECIPE("heat-exchanger"):replace_ingredient("steel-plate", "titanium-plate"):replace_ingredient("copper-plate", "aluminium-plate"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("py-logistic-robot-01"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("py-construction-robot-01"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("rail"):add_ingredient({type = "item", name = "solder", amount = 5})
RECIPE("piercing-rounds-magazine"):add_ingredient({type = "item", name = "lead-plate", amount = 1}):remove_ingredient("copper-plate")
RECIPE("shotgun-shell"):add_ingredient({type = "item", name = "lead-plate", amount = 1}):remove_ingredient("copper-plate")
RECIPE("firearm-magazine"):remove_ingredient("iron-plate"):add_ingredient({type = "item", name = "lead-plate", amount = 2})
RECIPE("piercing-shotgun-shell"):add_ingredient({type = "item", name = "plastic-bar", amount = 1}):remove_ingredient("copper-plate")

RECIPE("construction-robot-ht"):replace_ingredient("py-construction-robot-01", "py-construction-robot-02")
RECIPE("logistic-robot-ht"):replace_ingredient("py-logistic-robot-01", "py-logistic-robot-02")
RECIPE("py-burner"):remove_ingredient("steel-furnace"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
RECIPE("nuclear-fuel"):replace_ingredient("uranium-235", "fuelrod-mk05")
TECHNOLOGY("py-burner"):remove_prereq("coal-processing-2"):add_prereq("coal-processing-1")

TECHNOLOGY("oil-processing"):remove_prereq("steel-processing"):add_prereq("iron-mk02")
TECHNOLOGY("desulfurization"):remove_prereq("sulfur-processing")
TECHNOLOGY("sulfur-processing"):remove_prereq("oil-processing"):add_prereq("coal-processing-1")


data.raw.item["coal"].stack_size = 500
data.raw.item["iron-ore"].stack_size = 500
data.raw.item["uranium-ore"].stack_size = 500
data.raw.item["copper-ore"].stack_size = 500
data.raw.item["chromium"].stack_size = 500
data.raw.item["limestone"].stack_size = 500
data.raw.item["lime"].stack_size = 500
data.raw.item["stone"].stack_size = 500
data.raw.item["sulfur"].stack_size = 500
data.raw.item["iron-plate"].stack_size = 500
data.raw.item["copper-plate"].stack_size = 500
data.raw.item["steel-plate"].stack_size = 500
data.raw.item["stone-brick"].stack_size = 500
data.raw.item["iron-gear-wheel"].stack_size = 500
data.raw.item["wood"].stack_size = 500
--data.raw.item["raw-wood"].stack_size = 500

local default = setmetatable({}, require("__stdlib__/stdlib/utils/classes/string_array"))
for _, player in DATA:pairs('character') do
    player.crafting_categories = player:get_field('crafting_categories', default) + 'handcrafting'
end
for _, controller in DATA:pairs('god-controller') do
    controller.crafting_categories = controller:get_field('crafting_categories', default) + 'handcrafting'
end

local recipes_list =
	{
  --"quartz-mine",
  --"aluminium-mine",
  --"chromium-mine",
  --"scrubber-mk01",
  --"scrubber-mk02",
  --"scrubber-mk03",
  --"scrubber-mk04",
  --"flotation-cell-mk01",
  --"flotation-cell-mk02",
  --"flotation-cell-mk03",
  --"flotation-cell-mk04",
  --"wet-scrubber-mk01",
  --"wet-scrubber-mk02",
  --"wet-scrubber-mk03",
  --"wet-scrubber-mk04",
  --"hydroclassifier-mk01",
  --"hydroclassifier-mk02",
  --"hydroclassifier-mk03",
  --"hydroclassifier-mk04",
  --"impact-crusher-mk01",
  --"impact-crusher-mk02",
  --"impact-crusher-mk03",
  --"impact-crusher-mk04",
  --"electrolyzer-mk01",
  --"electrolyzer-mk02",
  --"electrolyzer-mk03",
  --"electrolyzer-mk04",
  --"casting-unit-mk01",
  --"casting-unit-mk02",
  --"casting-unit-mk03",
  --"casting-unit-mk04",
  --"leaching-station-mk01",
  --"leaching-station-mk02",
  --"leaching-station-mk03",
  --"leaching-station-mk04",
  --"bof-mk01",
  --"bof-mk02",
  --"bof-mk03",
  --"bof-mk04",
  --"eaf-mk01",
  --"eaf-mk02",
  --"eaf-mk03",
  --"eaf-mk04",
  --"sinter-unit",
  --"drp",
  --"salt-mine",
  --"copper-mine",
  --"iron-mine",
  --"coal-mine",
  --"lead-mine",
  --"nexelit-mine",
  --"nickel-mine",
  --"tin-mine",
  --"titanium-mine",
  --"uranium-mine",
  --"zinc-mine",
  "powdered-ralesia-seeds",
  "starch",
  "starch-2",
 -- "water-saline",
  "py-sodium-hydroxide",
--  "salt-ex",
  --"syngas2",
  "syngas-distilation",
 -- "hydrogen-combustion",
  "bonemeal-salt",
  "mukmoux-fat-salt",
  "p2s5",
  "p2s5-2",
  "ammonium-chloride",
  "duralumin-1",
  "duralumin-2",
  "battery-1",
  "battery-2",
  --"mega-drill-head",
  "tinned-cable",
  --"aramid",
  "solder-0",
  "solder-1",
  "solder-2",
  "solder-3",
  "pyrite-burn",
  "pyrite-make",
  "sulfuric-acid-01",
  "sodium-carbonate-1",
  "sodium-sulfate-1",
  "ammo-initial",
  --"crushing-quartz",
  --"powdered-quartz",
  --"purified-quartz",
  --"high-grade-quartz",
  --"sand-classification2",
  --"glass-1",
  --"glass-2",
  --"glass-3",
  --"glass-4",
  --"glass-5",
  --"glass-6",
  --"powdered-aluminium",
  --"sodium-aluminate",
  --"crystalized-sodium-aluminate",
  --"high-grade-alumina",
  --"reduction-aluminium",
  --"sinter-aluminium-1",
  --"sinter-aluminium-2",
  --"molten-aluminium-01",
  --"molten-aluminium-02",
  --"molten-aluminium-03",
  --"molten-aluminium-03-2",
  --"molten-aluminium-04",
  --"molten-aluminium-05",
  --"aluminium-plate-3",
  --"aluminium-plate-1",
  --"grade-1-chromite",
  --"grade-3-chromite",
  --"grade-2-chromite-beneficiation",
  --"grade-4-chromite",
  --"chromite-rejects-processing",
  --"high-chromite",
  --"recrush-processed-chromite",
  --"tier-5-chromite-sand",
  --"tier-4-chromite-sand",
  --"tier-3-chromite-sand",
  --"tier-2-chromite-sand",
  --"tier-1-chromite-sand",
  --"tier-0-chromite-sand",
  --"chromium-01",
  --"chromium-02",
  --"molten-chromium-01",
  --"molten-chromium-02",
  --"molten-chromium-03",
  --"sinter-chromium",
  --"reduction-chromium",
  --"chromium-plate-1",
  --"grade-2-copper",
  --"grade-1-copper-crush",
  --"grade-3-copper",
  --"copper-rejects-recrush",
  --"grade-4-copper",
  --"classify-low-grade",
  --"wash-coper-low-dust",
  --"high-grade-copper",
  --"reduction-copper",
  --"sinter-copper-1",
  --"sinter-copper-2",
  --"molten-copper-01",
  --"molten-copper-02",
  --"molten-copper-03",
  --"molten-copper-04",
  --"copper-plate-1",
  --"copper-plate-4",
  --"low-grade-smelting-copper",
  --"grade-1-iron-crush",
  --"grade-2-iron",
  --"grade-3-iron-processing",
  --"grade-2-crush",
  --"iron-ore-dust",
  --"iron-concentrate",
  --"iron-ore-dust-2",
  --"unslimed-iron",
  --"iron-pulp-06-thickener",
  --"high-grade-iron",
  --"reduction-iron",
  --"sinter-iron-1",
  --"sinter-iron-2",
  --"molten-iron-05",
  --"molten-iron-06",
  --"molten-iron-03",
  --"molten-iron-02",
  --"molten-iron-01",
  --"iron-plate-1",
  --"low-grade-smelting-iron",
  --"gold-precipitate",
  --"gold-concentrate",
  --"gold-precipitate-2",
  --"purified-gold",
  --"gold-plate",
  --"redhot-coke",
  --"quench-redcoke",
  --"outlet-gas-04-breakdown",
  --"crushed-coal",
  --"coarse-coal",
  --"coal-pulp-02",
  --"high-ash-fines-reclamation",
  --"coal-slime-overflow",
  --"coal-pulp-05-refining",
  --"grade-1-lead",
  --"grade-2-lead-crusher",
  --"grade-2-lead",
  --"grade-2-crush-lead",
  --"lead-refined-dust-02",
  --"lead-refined-dust-03",
  --"sl-concentrate",
  --"high-grade-sl",
  --"reduction-lead",
  --"sinter-lead-1",
  --"sinter-lead-2",
  --"molten-lead-01",
  --"molten-lead-02",
  --"molten-lead-03",
  --"molten-lead-04",
  --"molten-lead-05",
  --"lead-plate-3",
  --"lead-plate-1",
  --"lead-plate-2",
  --"reduction-silver",
  --"sinter-silver-1",
  --"sinter-silver-2",
  --"molten-silver-01",
  --"molten-silver-02",
  --"molten-silver-03",
  --"molten-silver-04",
  --"silver-plate-3",
  --"silver-plate-1",
  --"silver-plate-2",
  --"nexelit-ore-1",
  --"clean-nexelit",
  --"grade-1-nexelit",
  --"grade-3-nexelit",
  --"nexelit-rejects-recrush",
  --"nex-grade-2-crush",
  --"fine-nexelit-powder",
  --"high-grade-nexelit-1",
  --"high-grade-nexelit-2",
  --"reduction-nexelit",
  --"sinter-nexelit-1",
  --"sinter-nexelit-2",
  --"molten-nexelit-01",
  --"molten-nexelit-02",
  --"molten-nexelit-03",
  --"molten-nexelit-04",
  --"molten-nexelit-05",
  --"nexelit-plate-3",
  --"nexelit-plate-1",
  --"nexelit-plate-2",
  --"grade-1-nickel",
  --"grade-3-nickel",
  --"nickel-rejects-recrush",
  --"grade-2-nickel-recrush",
  --"grade-4-nickel",
  --"high-grade-nickel",
  --"reduction-nickel",
  --"sinter-nickel-1",
  --"sinter-nickel-2",
  --"molten-nickel-00",
  --"molten-nickel-01",
  --"molten-nickel-02",
  --"molten-nickel-02-2",
  --"molten-nickel-03",
  --"molten-nickel-04",
  --"molten-nickel-05",
  --"nickel-plate-3",
  --"nickel-plate-1",
  --"nickel-plate-2",
  --"sponge-iron",
  --"molten-steel-02",
  --"molten-steel",
  --"steel-20",
  --"molten-stainless-steel",
  --"stainless-steel",
  --"molten-super-steel",
  --"super-steel",
  --"grade-1-tin",
  --"grade-2-crush-tin",
  --"grade-3-tin",
  --"tin-ore-rejects",
  --"wash-grade-3-tin",
  --"ball-grade-4-tin",
  --"tin-concentrate",
  --"powdered-tin",
  --"tin-concentrate-2",
  --"tin-concentrate-3",
  --"high-tin-concentrate",
  --"high-tin-mix",
  --"high-grade-tin",
  --"reduction-tin",
  --"sinter-tin-1",
  --"sinter-tin-2",
  --"molten-tin-01",
  --"molten-tin-02",
  --"molten-tin-02-2",
  --"molten-tin-03",
  --"molten-tin-04",
  --"molten-tin-05",
  --"tin-plate-3",
  --"tin-plate-1",
  --"tin-plate-2",
  --"tin-plate-4",
  --"grade-1-ti",
  --"grade-2-ti-crush",
  --"grade-3-ti",
  --"ti-rejects-recrush",
  --"grade-4-ti",
  --"powdered-ti",
  --"ti-enriched-dust",
  --"high-grade-ti-powder",
  --"concentrated-ti",
  --"high-grade-ti",
  --"reduction-titanium",
  --"sinter-titanium-1",
  --"sinter-titanium-2",
  --"molten-titanium-01",
  --"molten-titanium-02",
  --"molten-titanium-03",
  --"molten-titanium-04",
  --"molten-titanium-05",
  --"titanium-plate-3",
  --"titanium-plate-1",
  --"titanium-plate-2",
  --"titanium-plate-4",
  --"grade-1-u",
  --"grade-1-u-recrush",
  --"grade-2-u-crush",
  --"20-u-powder",
  --"40-u-powder",
  --"70-u-powder",
  --"yellow-cake",
  --"fuelrod-mk02",
  --"fuelrod-mk03",
  --"fuelrod-mk04",
  --"fuelrod-mk05",
  --"uranium-fuel-cell-mk02",
  --"uranium-fuel-cell-mk03",
  --"uranium-fuel-cell-mk04",
  --"uranium-fuel-cell-mk05",
  --"grade-1-zinc",
  --"grade-2-zinc",
  --"grade-3-zinc",
  --"grade-4-zinc",
  --"powdered-zinc",
  --"purified-zinc",
  --"concentrated-zinc",
  --"high-grade-zinc",
  --"reduced-zinc",
  --"sinter-zinc-1",
  --"sinter-zinc-2",
  --"molten-zinc-01",
  --"molten-zinc-02",
  --"molten-zinc-03",
  --"molten-zinc-04",
  --"molten-zinc-05",
  --"zinc-plate-3",
  --"zinc-plate-1",
  --"zinc-plate-2",
  --"zinc-plate-4",
  --"quartz-pulp-01",
  --"quartz-pulp-02",
  --"prepared-quartz",
  --"high-grade-quartz-pulp",
  --"al-pulp-01",
  --"al-pulp-02",
  --"al-pulp-03",
  --"al-pulp-04",
  --"chromite-pulp-01",
  --"chromite-pulp-02",
  --"chromite-pulp-03",
  --"chromite-pulp-04",
  --"chromite-pulp-05",
  --"chromite-pulp-06",
  --"chromite-pulp-07",
  --"chromite-mix",
  --"chromite-fines",
  --"chromite-concentrate",
  --"chromium-rejects",
  --"prepared-chromium",
  --"gold-solution",
  "alamac",
  "cresylic-acid",
  "aerofloat-15",
  --"hydrogen",
  --"chlorine",
  --"hydrogen-chloride",
  --"sodium-bisulfate",
  --"sodium-sulfate",
  --"purest-nitrogen-gas",
  --"nitrogen",
  "acid-solvent",
  --"copper-pulp-01",
  --"copper-pulp-02",
  --"copper-pulp-03",
  --"copper-pulp-04",
  --"copper-solution",
  --"copper-pregnant-solution",
  --"outlet-gas-01",
  --"outlet-gas-02",
  --"outlet-gas-03",
  --"outlet-gas-04",
  --"iron-slime",
  --"classify-iron-ore-dust",
  --"iron-pulp-02",
  --"iron-pulp-03",
  --"iron-pulp-04",
  --"iron-pulp-05",
  --"iron-pulp-06",
  --"iron-pulp-07",
  "petroleum-sulfonates",
  "xylenol-1",
  "xylenol-2",
  --"kerosene",
  --"fines-pulp",
  --"thickened-coal-fines",
  --"coal-fines",
  --"conditioned-fines",
  --"coal-pulp-01",
  --"coal-pulp-03",
  --"coal-pulp-04",
  --"coal-pulp-05",
  --"slz-pulp-01",
  --"slz-pulp-02",
  --"sl-01",
  --"sl-01-2",
  --"sl-02",
  --"sl-03",
  "z3-reagent",
  --"nexelit-pulp-01",
  --"nexelit-pulp-02",
  --"nexelit-pulp-03",
  --"nexelit-pulp-04",
  --"nexelit-refined-pulp",
  "armac-12",
  --"prepared-nickel-pulp",
  --"nickel-pulp-01",
  --"nickel-pulp-02",
  --"nickel-pulp-03",
  --"nickel-pulp-04",
  --"nickel-overflow",
  --"nickel-overflow-2",
  --"nickel-tailings",
  --"nickel-prepared-solution",
  --"tin-slime",
  --"tin-slime-overflow",
  --"tin-bottom-pulp",
  --"tin-pulp-01",
  --"tin-pulp-02",
  --"tin-pulp-03",
  --"tin-solution",
  "mibc",
  --"ti-pulp-01",
  --"ti-pulp-02",
  --"ti-pulp-03",
  --"ti-pulp-04",
  --"ti-pulp-05",
  --"ti-pulp-06",
  --"purified-ti-pulp",
  --"purified-ti-pulp-02",
  --"ti-overflow-waste",
  --"ti-solution",
  --"ti-solution-02",
  --"u-pulp-01",
  --"u-pulp-02",
  --"u-pulp-03",
  --"u-rich-pulp",
  --"u-83",
  --"u-81",
  --"u-79",
  --"u-79-2",
  --"u-75",
  --"u-73",
  --"u-70",
  --"u-65",
  --"u-50",
  --"u-40",
  --"u-33",
  --"u-30",
  --"u-23",
  --"u-20",
  --"u-15",
  --"u-15-2",
  --"zinc-pulp-01",
  --"zinc-pulp-02",
  --"zinc-pulp-03",
  --"zinc-pulp-04",
  --"zinc-pulp-04-2",
  --"zinc-overflow",
  "py-construction-robot-02",
  "py-logistic-robot-02",
  "al-tailings-separation",
  --"nitrogen-pyfe",
  --"liquid-nitrogen",
  --"evaporate-nitrogen",
  "pregnant-solution-01",
  "vanadium-mixture",
  --"hydrogen-chloride-2",
  "fiberboard-2",
  "xylenol-3",
  "ammonium-chloride-2",
  "ammonia2",
  --"pa-oxygen",
  --"pa-helium",
  --"pa-hydrogen",
  --"pa-boron",
  --"pa-coal2",
  --"pa-aluminium",
  --"pa-nickel",
  --"pa-zinc",
  --"pa-silver",
  --"pa-gold",
  --"pa-vanadium2",
  "fertilizer-2",
  --"aramid-2",
  --"ceramic-2",
  "cyanic-acid-01",
  "collagen-glycerol",
  "phosphate-mine-02",
  "methanol-from-hydrogen",
 -- "kerosene-combustion",
 -- "fuelrodmk02-combustion",
 -- "fuelrodmk03-combustion",
 -- "fuelrodmk04-combustion",
 -- "fuelrodmk05-combustion",
  "glycerol-hydrogen",
  --"mining-aluminium",
  --"mining-chromium",
  --"mining-copper",
  --"mining-iron",
  --"mining-lead",
  --"mining-nickel",
  --"mining-quartz",
  --"mining-tin",
  --"mining-titanium",
  --"mining-zinc",
  "extract-limestone-01"
}

--adding to module limitation list
FUN.productivity(recipes_list)