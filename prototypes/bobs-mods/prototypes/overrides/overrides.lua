
if mods['boblogistics'] then
   fun.ingredient_replace('borax-mine','transport-belt','basic-transport-belt')
end

if settings.startup["bobmods-power-burnergenerator"].value == true then
   if mods['bobpower'] and ['pyalienlife'] then
      fun.ingredient_replace('collector','steam-engine','bob-burner-generator')
   end
end
