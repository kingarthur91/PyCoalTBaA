
--buildings--

--items
require("prototypes/omni-mods/prototypes/items/items")

--recipes
require("prototypes/omni-mods/prototypes/recipes/recipes")


require("prototypes/omni-mods/prototypes/recipes/itemgroups")
require("prototypes/omni-mods/prototypes/recipes/recipe-categories")

if mods["omnimatter_energy"] then

    --enable buildings needed in omni mods
    RECIPE('distilator-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['distilator-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('burner-soil-extractor'):set_fields{enabled = true}
    data.raw["assembling-machine"]['burner-soil-extractor'].energy_source.fuel_category = 'omnite'

    RECIPE('burner-washer'):set_fields{enabled = true}
    data.raw["assembling-machine"]['burner-washer'].energy_source.fuel_category = 'omnite'

    RECIPE('burner-wpu'):set_fields{enabled = true}
    data.raw["assembling-machine"]['burner-wpu'].energy_source.fuel_category = 'omnite'

    RECIPE('fwf-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['fwf-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('seaweed-crop-mk00'):set_fields{enabled = true}

    RECIPE('micro-mine-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['micro-mine-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('research-center-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['research-center-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('sap-extractor-mk00'):set_fields{enabled = true}

    RECIPE('botanical-nursery-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['botanical-nursery-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('moss-farm-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['moss-farm-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('hpf-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['hpf-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('fbreactor-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['fbreactor-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('pulp-mill-mk00'):set_fields{enabled = true}
    data.raw["assembling-machine"]['pulp-mill-mk00'].energy_source.fuel_category = 'omnite'

    RECIPE('glassworks-mk00'):set_fields{enabled = true}

    RECIPE('log-wood'):remove_unlock('botany-1'):set_fields {enabled = true}
end
