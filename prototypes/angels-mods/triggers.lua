if mods["pyrawores"] and mods["angelsrefining"] then
  --trigger non-vanilla ores
  angelsmods.trigger.ores["tin"] = true -- tin-rich rock
  angelsmods.trigger.ores["lead"] = true --lead rock
  angelsmods.trigger.ores["zinc"] = true --zinc reserve
  angelsmods.trigger.ores["quartz"] = true --quartz ore
  angelsmods.trigger.ores["aluminium"] = true --aluminium reserve
  angelsmods.trigger.ores["titanium"] = true --titanium rock
  angelsmods.trigger.ores["iron"] = true -- iron rock
  angelsmods.trigger.ores["copper"] = true --copper rock
  angelsmods.trigger.ores["uranium"] = true --uranium-rock
  angelsmods.trigger.ores["nickel"] = true --nickel reserve

  --refinery triggers
  angelsmods.trigger.refinery_products = angelsmods.trigger.refinery_products or {}
  angelsmods.trigger.refinery_products["rubyte"] = true
  angelsmods.trigger.refinery_products["bobmonium"] = true
  angelsmods.trigger.refinery_products["tin"] = true
  angelsmods.trigger.refinery_products["lead"] = true
  angelsmods.trigger.refinery_products["zinc"] = true
  angelsmods.trigger.refinery_products["quartz"] = true
  angelsmods.trigger.refinery_products["aluminium"] = true
  angelsmods.trigger.refinery_products["titanium"] = true
  angelsmods.trigger.refinery_products["iron"] = true
  angelsmods.trigger.refinery_products["copper"] = true
  angelsmods.trigger.refinery_products["uranium"] = true
  angelsmods.trigger.refinery_products["chrome"] = true --ref prod not ore (chromium-rock)
  angelsmods.trigger.refinery_products["salt"] = true --salt-rock
  angelsmods.trigger.refinery_products["phosphorus"] = true --both ancient remains

--A GOOD PLACE TO CLOBBER THE AUTOPLACE CONTROLS ETC for the "sorted ores" while we are at it

  if not angelsmods.refining.disable_ore_override then
    --PY Ores
    angelsmods.functions.remove_resource("aluminium-rock")
    angelsmods.functions.remove_resource("ore-aluminium")
    angelsmods.functions.remove_resource("chromium-rock")
    angelsmods.functions.remove_resource("ore-chromium")
    angelsmods.functions.remove_resource("iron-rock")
    angelsmods.functions.remove_resource("copper-rock")
    angelsmods.functions.remove_resource("zinc-rock")
    angelsmods.functions.remove_resource("ore-zinc")
    angelsmods.functions.remove_resource("lead-rock")
    angelsmods.functions.remove_resource("ore-lead")
    angelsmods.functions.remove_resource("nickel-rock")
    angelsmods.functions.remove_resource("ore-nickel")
    angelsmods.functions.remove_resource("quartz-rock")
    angelsmods.functions.remove_resource("ore-quartz")
    angelsmods.functions.remove_resource("tin-rock")
    angelsmods.functions.remove_resource("ore-tin")
    angelsmods.functions.remove_resource("titanium-rock")
    angelsmods.functions.remove_resource("ore-titanium")
    angelsmods.functions.remove_resource("uranium-rock")
  end
end
