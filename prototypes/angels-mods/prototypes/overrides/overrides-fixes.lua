if mods['angelsaddons-storage'] then
    if mods['pyalienlife'] then
      TECHNOLOGY("pressure-tanks"):add_prereq("py-science-pack-mk01")
      fun.removescipack('logistic-science-pack')
   else
      TECHNOLOGY("pressure-tanks"):add_prereq("logistic-science-pack")
    end
end