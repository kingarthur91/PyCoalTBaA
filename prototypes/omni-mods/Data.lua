
--buildings--

--items
require("prototypes/omni-mods/prototypes/items/items")

--recipes
require("prototypes/omni-mods/prototypes/recipes/recipes")


require("prototypes/omni-mods/prototypes/recipes/itemgroups")
require("prototypes/omni-mods/prototypes/recipes/recipe-categories")

if mods["omnimatter_energy"] then

    --enable buildings needed in omni mods
    RECIPE('basic-ddc'):set_fields{enabled = true}
    RECIPE('burner-soil-extractor'):set_fields{enabled = true}
    RECIPE('burner-washer'):set_fields{enabled = true}
    RECIPE('burner-wpu'):set_fields{enabled = true}
    RECIPE('fwf-mk00'):set_fields{enabled = true}
    RECIPE('seaweed-crop-mk00'):set_fields{enabled = true}
    RECIPE('micro-mine-mk00'):set_fields{enabled = true}
    RECIPE('research-center-mk00'):set_fields{enabled = true}
    RECIPE('sap-extractor-mk00'):set_fields{enabled = true}
    RECIPE('botanical-nursery-mk00'):set_fields{enabled = true}
    RECIPE('moss-farm-mk00'):set_fields{enabled = true}
    RECIPE('hpf-mk00'):set_fields{enabled = true}
    RECIPE('fbreactor-mk00'):set_fields{enabled = true}
    RECIPE('pulp-mill-mk00'):set_fields{enabled = true}
    RECIPE('glassworks-mk00'):set_fields{enabled = true}

RECIPE('log-wood'):remove_unlock('botany-1'):set_fields {enabled = true}
end
