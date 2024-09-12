
if mods['boblogistics'] then
   fun.ingredient_replace('borax-mine','transport-belt','basic-transport-belt')
   TECHNOLOGY("bob-fluid-handling-2"):add_prereq("logistic-science-pack")
   if mods['pyindustry'] then
      fun.tech_add_recipe('py-storage-tanks', 'bob-storage-tank-all-corners')
      --change valves
      fun.remove_recipe_unlock('bob-valve')
      fun.remove_recipe_unlock('bob-overflow-valve')
      fun.remove_recipe_unlock('bob-topup-valve')
      --robots
      fun.remove_recipe_unlock('construction-robot')
   end
   if mods['pyalienlife'] then
        TECHNOLOGY("bob-drills-1"):add_pack("py-science-pack-1")
        TECHNOLOGY("bob-area-drills-1"):add_pack("py-science-pack-1")
   end
   if mods['pyrawores'] then
      fun.ingredient_replace('bob-storage-tank-all-corners','iron-plate','lead-plate')
      fun.ingredient_replace('bob-storage-tank-all-corners','pipe', 'duralumin')
   end
end

if mods['bobgreenhouse'] then
   if mods['pyalienlife'] then
      TECHNOLOGY("bob-greenhouse"):add_prereq("glass")
      data.raw.item["wood-pellets"].fuel_category = "biomass"
      data.raw.item["seedling"].fuel_category = "biomass"
   end
end

if mods['bobmining'] then
   if settings.startup["bobmods-mining-miningdrills"].value then
      if data.raw["mining-drill"]["bob-area-mining-drill-1"] then
      end
   end
   TECHNOLOGY("steel-axe-3"):add_prereq("logistic-science-pack")
   TECHNOLOGY("steel-axe-4"):add_prereq("chemical-science-pack")
   TECHNOLOGY("steel-axe-5"):add_prereq("production-science-pack")
   TECHNOLOGY("steel-axe-6"):add_prereq("utility-science-pack")
   if mods['pyalienlife'] then
      TECHNOLOGY("steel-axe-2"):add_prereq("py-science-pack-mk01"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1")
   else
      TECHNOLOGY("steel-axe-2"):add_prereq("logistic-science-pack")
   end
end

if mods['bobplates'] then
   if mods['pyalienlife'] then
      --fix crash with PyAL update, version 2.1.11
      data.raw.fluid['xyhiphoe-blood'].auto_barrel = false
   end
end