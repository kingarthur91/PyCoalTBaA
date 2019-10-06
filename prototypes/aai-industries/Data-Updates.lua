
if mods["aai-industry"] then

data.raw.technology["oil-processing"].prerequisites =
	{
  "automation",
  "fluid-handling",
  "electronics",
  --"iron-mk02"
}

if mods['pyrawores'] then

table.insert(data.raw.technology['oil-processing'].prerequisites, 'iron-mk02')

end


table.insert(data.raw["lab"]["lab"].inputs, "science-pack-0")
table.insert(data.raw["lab"]["burner-lab"].inputs, "science-pack-0")

--remove sci pack 1 from:
--basic automation
--electricity
--basic fluid handleing
fun.removescipack({"basic-automation","electricity","basic-fluid-handling","steam-power","basic-logistics","electric-mining"},"automation-science-pack")

fun.ingredient_replace(data.raw.recipe["big-electric-pole"],"niobium-plate","chromium")

end
