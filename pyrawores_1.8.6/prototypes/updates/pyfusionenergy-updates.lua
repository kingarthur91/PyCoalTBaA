TECHNOLOGY("helium-processing"):remove_pack("production-science-pack")
TECHNOLOGY("advanced-mining-facilities"):remove_pack("chemical-science-pack"):remove_prereq("diamond-mining"):add_prereq("iron-mk02")
TECHNOLOGY("molybdenum-processing"):remove_pack("chemical-science-pack"):remove_prereq("advanced-mining-facilities"):remove_prereq("fusion-mk01"):add_prereq("iron-mk02")

RECIPE("compressor-mk01"):remove_unlock("regolite-mining"):add_unlock("machines-mk01")
RECIPE("acidgas-2"):remove_unlock("regolite-mining"):add_unlock("machines-mk02")
RECIPE("olefin-plant"):remove_unlock("fuel-production"):add_unlock("machines-mk02")
RECIPE("olefin"):remove_unlock("fuel-production"):add_unlock("machines-mk02")
RECIPE("gasoline"):remove_unlock("fuel-production"):add_unlock("machines-mk02")
RECIPE("pressured-air"):set_fields {energy_required = 1}

--RECIPE('pressured-air'):remove_unlock('helium-processing'):add_unlock('coal-processing-1')

RECIPE("steam-heating"):remove_ingredient("fuelrod-mk01"):add_ingredient({type = "item", name = "fuelrod-mk01", amount = 1})
RECIPE("hydrocyclone-mk01"):replace_ingredient("centrifuge", "classifier")
RECIPE("hydrocyclone-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01")
RECIPE("py-heat-exchanger"):remove_unlock("fuel-production"):add_unlock("coal-processing-2")

RECIPE("mixer-mk01"):remove_unlock("advanced-mining-facilities"):remove_unlock("basic-electronics"):add_unlock("machines-mk01")
RECIPE("mixer-mk01"):replace_ingredient("iron-plate", "aluminium-plate"):replace_ingredient("chemical-plant", "washer")

RECIPE("secondary-crusher-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01"):replace_ingredient("electric-engine-unit", "engine-unit"):remove_ingredient("nbfe-alloy"):add_ingredient({type = "item", name = "duralumin", amount = 20})

RECIPE("automated-screener-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01")

RECIPE("jig-mk01"):remove_unlock("diamond-mining"):add_unlock("machines-mk01"):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE("control-unit"):replace_ingredient("iron-plate", "stainless-steel")

RECIPE("u-79-2"):remove_unlock("uranium-mk04")
RECIPE("u-79"):add_unlock("uranium-mk04")

RECIPE("centrifugal-pan-mk01"):remove_unlock("diamond-mining"):add_unlock("machines-mk01")

RECIPE("agitator-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01")
RECIPE("sodium-chlorate"):remove_unlock("vanadium-processing"):add_unlock("machines-mk02"):change_category("electrolyzer"):remove_ingredient("water-saline"):add_ingredient({type = "item", name = "salt", amount = 10})

RECIPE("purified-quartz"):change_category("pan")
RECIPE("prepared-quartz"):change_category("pan")
RECIPE("quartz-pulp-01"):change_category("hydrocyclone")
RECIPE("al-pulp-01"):change_category("mixer")
RECIPE("sodium-bisulfate"):change_category("mixer")
RECIPE("al-pulp-02"):change_category("agitator")
RECIPE("al-pulp-04"):change_category("agitator")
RECIPE("crystalized-sodium-aluminate"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "pressured-air", amount = 500})
RECIPE("cold-clean-air"):replace_ingredient("filtration-media", "biofilm")
RECIPE("tin-concentrate-3"):remove_ingredient("heavy-oil"):add_ingredient({type = "fluid", name = "grease", amount = 30})
RECIPE("ti-pulp-02"):remove_ingredient("heavy-oil"):add_ingredient({type = "fluid", name = "grease", amount = 50})
RECIPE("unslimed-iron-2"):change_category("hydrocyclone")

RECIPE("grade-4-chromite"):change_category("hydrocyclone")

RECIPE("molybdenum-plate"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100}):change_category("electrolyzer")
RECIPE("agitator-mk01"):replace_ingredient("iron-plate", "glass")
RECIPE("mixer-mk01"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("diamond-mine"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("regolite-mine"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("jig-mk01"):replace_ingredient("pipe", "niobium-pipe")
RECIPE("centrifugal-pan-mk01"):replace_ingredient("pipe", "niobium-pipe"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
RECIPE("compressor-mk01"):add_ingredient({type = "item", name = "titanium-plate", amount = 20})
if not mods['pyalienlife'] then
RECIPE("genlab-mk01"):add_ingredient({type = "item", name = "glass", amount = 50})
end
RECIPE("bio-reactor"):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE("nmf-mk01"):add_ingredient({type = "item", name = "glass", amount = 50}):replace_ingredient("fast-transport-belt", "transport-belt"):replace_ingredient("advanced-circuit", "electronic-circuit")
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "glass", amount = 300}):add_ingredient({type = "item", name = "super-steel", amount = 100})
RECIPE("fusion-reactor-mk02"):add_ingredient({type = "item", name = "super-steel", amount = 100})
RECIPE("regolite-mine"):add_ingredient({type = "item", name = "automated-factory-mk02", amount = 1})
RECIPE("molybdenum-concentrate"):replace_ingredient("water", "nitrogen")

if not mods["pyalienlife"] then
RECIPE("phytoplankton"):replace_ingredient("iron-ore", {"grade-1-tin", 1})
end

RECIPE("molybdenum-oxide"):add_ingredient({type = "fluid", name = "oxygen", amount = 100})
RECIPE("vpulp3"):replace_ingredient("petroleum-gas", "ammonia")
RECIPE("vpulp-precip"):replace_ingredient("water", "ammonia")
RECIPE("super-alloy"):replace_ingredient("steel-plate", "nickel-plate"):add_ingredient({type = "item", name = "aramid", amount = 1})
RECIPE("calcinate-separation"):add_result({type = "item", name = "ore-quartz", amount = 1, probability = 0.6})
RECIPE("gas-separator-mk01"):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE("grease-table-mk01"):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE("py-turbine"):add_ingredient({type = "item", name = "super-steel", amount = 20}):add_ingredient({type = "item", name = "super-alloy", amount = 20})

 --RECIPES
RECIPE("kmauts-ration"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("helium"):add_ingredient({type = "fluid", name = "hydrogen", amount = 10})
RECIPE("nbti-alloy"):replace_ingredient("steel-plate", "titanium-plate"):add_ingredient({type = "fluid", name = "nitrogen", amount = 150})
RECIPE("sc-wire"):replace_ingredient("iron-plate", "tin-plate"):add_ingredient({type = "item", name = "optical-fiber", amount = 5})
RECIPE("ferrite"):add_ingredient({type = "item", name = "zinc-plate", amount = 10})
RECIPE("sc-unit"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 100})
RECIPE("boron-mixture"):add_ingredient({type = "item", name = "aluminium-plate", amount = 5})
RECIPE("boron"):add_ingredient({type = "fluid", name = "hydrogen-chloride", amount = 300})
RECIPE("blanket"):add_ingredient({type = "item", name = "nexelit-plate", amount = 10})
RECIPE("blanket"):add_ingredient({type = "item", name = "lead-plate", amount = 40})
RECIPE("blanket"):add_ingredient({type = "item", name = "super-steel", amount = 40})
RECIPE("lead-container"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("science-coating"):replace_ingredient("steel-plate", "titanium-plate")
RECIPE("agzn-alloy"):replace_ingredient("iron-plate", "silver-plate"):replace_ingredient("stone", "zinc-plate")
RECIPE("silver-foam"):replace_ingredient("water", "hydrogen-chloride")
RECIPE("tar-gasification"):remove_ingredient("water"):add_ingredient({type = "fluid", name = "pressured-air", amount = 50})
RECIPE("tpa"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 50})
RECIPE("anthraquinone"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "liquid-nitrogen", amount = 10})
RECIPE("assembling-machine-3"):add_ingredient({type = "item", name = "super-alloy", amount = 10})
RECIPE("artillery-wagon"):add_ingredient({type = "item", name = "super-alloy", amount = 40})
RECIPE("express-splitter"):add_ingredient({type = "item", name = "super-alloy", amount = 1})
RECIPE("express-underground-belt"):add_ingredient({type = "item", name = "super-alloy", amount = 1})
RECIPE("express-transport-belt"):add_ingredient({type = "item", name = "super-alloy", amount = 1})
RECIPE("nuclear-reactor"):add_ingredient({type = "item", name = "super-alloy", amount = 100})
RECIPE("substation"):replace_ingredient("steel", "super-alloy")
RECIPE("vpulp2"):replace_ingredient("crushed-iron", "iron-ore-dust")
RECIPE("molybdenum-filtration"):remove_ingredient("vacuum")
RECIPE("low-density-structure"):replace_ingredient("niobium-plate", "super-alloy"):remove_ingredient("steel-plate")
RECIPE("automated-screener-mk01"):replace_ingredient("electric-engine-unit", "engine-unit"):replace_ingredient("ground-borer", "electric-mining-drill"):replace_ingredient("advanced-circuit", "electronic-circuit"):remove_ingredient("niobium-plate")
RECIPE("py-heat-exchanger"):replace_ingredient("processing-unit", "advanced-circuit")

RECIPE("distilator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "sc-unit", amount = 4})
RECIPE("distilator-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "agzn-alloy", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("advanced-foundry-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("advanced-foundry-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("automated-factory-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("automated-factory-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("ball-mill-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("ball-mill-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("borax-mine-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("borax-mine-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("botanical-nursery-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nmf-mk01", amount = 1})
RECIPE("botanical-nursery-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 10}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("carbon-filter-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("carbon-filter-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("classifier-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 1}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE("classifier-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("desulfurizator-unit-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("desulfurizator-unit-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("evaporator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("evaporator-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("fawogae-plantation-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agzn-alloy", amount = 15})
RECIPE("fawogae-plantation-mk04"):add_ingredient({type = "item", name = "silver-foam", amount = 10}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("fluid-separator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("fluid-separator-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("fts-reactor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("fts-reactor-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 3}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("gasifier-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("gasifier-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 15}):add_ingredient({type = "item", name = "wall-shield", amount = 8}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("hpf-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("hpf-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("jaw-crusher-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE("jaw-crusher-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("methanol-reactor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("methanol-reactor-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("olefin-plant-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("olefin-plant-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("power-house-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("power-house-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("quenching-tower-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("quenching-tower-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("rectisol-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("rectisol-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("sand-extractor-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE("sand-extractor-mk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("soil-extractormk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 1}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE("soil-extractormk04"):add_ingredient({type = "item", name = "nenbit-matrix", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("solid-separator-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("solid-separator-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("tar-processing-unit-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE("tar-processing-unit-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 3}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("wpu-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nmf-mk01", amount = 1})
RECIPE("wpu-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 10}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("washer-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "agitator-mk01", amount = 1})
RECIPE("washer-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

--PYRO ENTITIES UPDATES

RECIPE("bof-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("bof-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("casting-unit-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("casting-unit-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("eaf-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("eaf-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("electrolyzer-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("electrolyzer-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("flotation-cell-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("flotation-cell-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("hydroclassifier-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE("hydroclassifier-mk04"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("impact-crusher-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE("impact-crusher-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("leaching-station-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "nmf-mk01", amount = 1})
RECIPE("leaching-station-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 10}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("scrubber-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("scrubber-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 20}):add_ingredient({type = "item", name = "wall-shield", amount = 2}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("wet-scrubber-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 15})
RECIPE("wet-scrubber-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 3})

RECIPE("sinter-unit"):add_ingredient({type = "item", name = "super-alloy", amount = 15})

RECIPE {
    type = "recipe",
    name = "al-tailings-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-tailings", amount = 300}
    },
    results = {
        {type = "fluid", name = "vanadates", amount = 15},
        {type = "fluid", name = "dirty-water", amount = 75}
    },
    main_product = "vanadates",
    icon = "__pyfusionenergy__/graphics/icons/vanadates.png",
    icon_size = 32,
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("aluminium-mk03")

--NITROGEN 2 --

RECIPE {
    type = "recipe",
    name = "nitrogen-pyfe",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "cold-clean-air", amount = 400},
        {type = "item", name = "active-carbon", amount = 3}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 8000},
        {type = "fluid", name = "carbon-dioxide", amount = 150}
    },
    main_product = "nitrogen",
    subgroup = "py-rawores-fluids",
    order = "dac"
}:add_unlock("machines-mk03")

RECIPE {
    type = "recipe",
    name = "liquid-nitrogen",
    category = "compressor",
    enabled = false,
    energy_required = 0.3,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 50},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5},
        {type = "fluid", name = "steam", amount = 100}
    },
    main_product = "liquid-nitrogen",
    icon = "__pyfusionenergy__/graphics/icons/compress-nitrogen.png",
    icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "a"
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "evaporate-nitrogen",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 50}
    },
    main_product = "nitrogen",
    icon = "__pyrawores__/graphics/icons/nitrogen.png",
    icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "b"
}:add_unlock("machines-mk02")

RECIPE {
    type = "recipe",
    name = "pregnant-solution-01",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "vanadium-mixture", amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 100}
    },
    results = {
        {type = "fluid", name = "pregnant-solution", amount = 100}
    },
    main_product = "pregnant-solution"
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "vanadium-mixture",
    category = "mixer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "u-waste", amount = 100},
        {type = "item", name = "sodium-carbonate", amount = 10}
    },
    results = {
        {type = "fluid", name = "vanadium-mixture", amount = 100}
    },
    main_product = "vanadium-mixture",
    subgroup = "py-rawores-fluids",
    order = "q-2"
}:add_unlock("uranium-mk04")

RECIPE {
    type = "recipe",
    name = "nbti-alloy-2",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-titanium", amount = 100},
        {type = "fluid", name = "niobium-complex", amount = 40},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "nbti-alloy", amount = 15}
    },
    main_product= "nbti-alloy",
    icon = "__pyfusionenergy__/graphics/icons/nbti-alloy.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("titanium-mk03")

--pyfusion mk02 unlocks

--RECIPE('xyhiphoe-pool-mk02'):add_unlock('machines-mk02')
RECIPE('vacuum-pump-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('agitator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE('thickener-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('hydrocyclone-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('mixer-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('automated-screener-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('secondary-crusher-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('centrifugal-pan-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('jig-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('grease-table-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('compressor-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
--RECIPE('genlab-mk02'):add_unlock('machines-mk02')
--RECIPE('kmauts-enclosure-mk02'):add_unlock('machines-mk02')
RECIPE('gas-separator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "glass", amount = 50}):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('nmf-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "glass", amount = 50}):add_ingredient({type = "item", name = "stainless-steel", amount = 25})

--pyfusion mk03 unlocks

--RECIPE('xyhiphoe-pool-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE('vacuum-pump-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "sc-unit", amount = 4})
RECIPE('agitator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE('thickener-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE('hydrocyclone-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 15})
RECIPE('mixer-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 15}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE('automated-screener-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "boron-carbide", amount = 20})
RECIPE('secondary-crusher-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
RECIPE('centrifugal-pan-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE('jig-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
RECIPE('grease-table-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 25})
RECIPE('compressor-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 20}):add_ingredient({type = "item", name = "molybdenum-plate", amount = 15})
--RECIPE('genlab-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})
--RECIPE('kmauts-enclosure-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 25})
RECIPE('gas-separator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 10}):add_ingredient({type = "item", name = "sc-unit", amount = 2})
RECIPE('nmf-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "super-alloy", amount = 5}):add_ingredient({type = "item", name = "nbti-alloy", amount = 20})

--pyfusion mk04 unlocks

--RECIPE('xyhiphoe-pool-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('vacuum-pump-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('agitator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('thickener-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('hydrocyclone-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('mixer-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('automated-screener-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('secondary-crusher-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('centrifugal-pan-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('jig-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('grease-table-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 2}):add_ingredient({type = "item", name = "control-unit", amount = 5})
RECIPE('compressor-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
--RECIPE('genlab-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
--RECIPE('kmauts-enclosure-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('gas-separator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "nbti-alloy", amount = 10}):add_ingredient({type = "item", name = "wall-shield", amount = 4}):add_ingredient({type = "item", name = "control-unit", amount = 3})
RECIPE('nmf-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "boron-carbide", amount = 30}):add_ingredient({type = "item", name = "science-coating", amount = 1}):add_ingredient({type = "item", name = "control-unit", amount = 5})

local pipe_left = {
    north = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/top-left.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/bottom-right.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/right-top.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/left-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

local pipe_right = {
    north = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/top-right.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/bottom-left.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/right-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/left-top.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

--pyro 2.0 centrifugal-pan adjustments
data.raw['assembling-machine']['centrifugal-pan-mk01'].fluid_boxes =
{
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_connections = {{type = "output", position = {2.5, 5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_connections = {{type = "output", position = {-2.5, 5.5}}}
        },
		{
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.5, -5.5}}}
        },
        off_when_no_fluid_recipe = true
}
