
if mods['boblogistics'] then
   fun.ingredient_replace('borax-mine','transport-belt','basic-transport-belt')
   TECHNOLOGY("bob-fluid-handling-2"):add_prereq("logistic-science-pack")
   if mods['pyindustry'] then
      fun.tech_add_recipe('py-storage-tanks', 'bob-storage-tank-all-corners')
      --change valves
      fun.global_item_replacer('bob-valve', 'py-check-valve')
        data.raw.recipe['bob-valve'] = nil
        fun.remove_recipe_unlock('bob-valve')
      fun.global_item_replacer('bob-overflow-valve', 'py-overflow-valve')
         data.raw.recipe['bob-overflow-valve'] = nil
         fun.remove_recipe_unlock('bob-overflow-valve')
      fun.global_item_replacer('bob-topup-valve', 'py-underflow-valve')
         data.raw.recipe['bob-topup-valve'] = nil
         fun.remove_recipe_unlock('bob-topup-valve')
   end
   if mods['pyrawores'] then
      fun.ingredient_replace('bob-storage-tank-all-corners','iron-plate','lead-plate')
      fun.ingredient_replace('bob-storage-tank-all-corners','pipe', 'duralumin')
   end
end

if mods['bobgreenhouse'] and mods['pyalienlife'] then
   TECHNOLOGY("bob-greenhouse"):add_prereq("glass")
end

if mods['bobmining'] then
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
