--FALLBACKS
--CIRCUITS
angelsmods.functions.RB.set_fallback(
  "item",
  "t0-circuit",
  { { "block-electronics-0" }, { "electronic-circuit" }, { "basic-circuit-board" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t5-circuit",
  { { "block-electronics-5" }, { "intelligent-unit" }, { "processing-unit" } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t6-circuit",
  { { "block-electronics-5" }, { "intelligent-unit" }, { "processing-unit" } }
)

--PLATES
angelsmods.functions.RB.set_fallback("item", "t2-plate", {
  { "block-construction-2" },
  { "duralumin",3 },
  { "bronze-alloy",3 },
  { "steel-plate", 5 },
})
angelsmods.functions.RB.set_fallback("item", "t3-plate", {
  { "block-construction-3" },
  { "self-assembly-monolayer", 1 },
  { "ticl4", 3 },
  { "aluminium-plate", 4 },
  { "angels-plate-aluminium", 4 },
  { "steel-plate", 7 },
})
angelsmods.functions.RB.set_fallback("item", "t4-plate", {
  { "block-construction-4" },
  { "ns-material", 1 },
  { "titanium-plate", 4 },
  { "angels-plate-titanium", 4 },
  { "steel-plate", 9 },
})
angelsmods.functions.RB.set_fallback("item", "t5-plate", {
  { "block-construction-5" },
  { "super-alloy", 5 },
  { "tungsten-plate", 4 },
  { "angels-plate-tungsten", 4, },
  { "steel-plate", 11 },
})
angelsmods.functions.RB.set_fallback("item", "t6-plate", {
  { "block-construction-5" },
  { "super-alloy", 9 },
  { "tungsten-carbide", 4, },
  { "angels-plate-tungsten", 4, },
  { "steel-plate", 13 },
})

--GEARS
angelsmods.functions.RB.set_fallback(
  "item",
  "t2-gears",
  { { "block-mechanical-1" }, { "gearbox-mk01", 1 }, { "steel-gear-wheel", 3 }, { "iron-gear-wheel", 6 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t3-gears",
  { { "block-mechanical-2" }, { "gearbox-mk02" }, { "brass-gear-wheel", 3 }, { "iron-gear-wheel", 7 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t4-gears",
  { { "block-mechanical-2" }, { "gearbox-mk03" }, { "titanium-gear-wheel", 3 }, { "iron-gear-wheel", 8 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t5-gears",
  { { "block-mechanical-2" }, { "gearbox-mk04" }, { "tungsten-gear-wheel", 3 }, { "iron-gear-wheel", 9 } }
)
angelsmods.functions.RB.set_fallback(
  "item",
  "t6-gears",
  { { "block-mechanical-2" }, { "gearbox-mk04", 1 }, { "nitinol-gear-wheel", 3 }, { "iron-gear-wheel", 9 } }
)

--PIPES
angelsmods.functions.RB.set_fallback("item", "t3-pipe", { { "block-fluidbox-2" }, { "niobium-pipe", 3 }, { "brass-pipe", 3 }, { "pipe", 7 } })
angelsmods.functions.RB.set_fallback(
  "item",
  "t4-pipe",
  { { "block-fluidbox-2" }, { "ht-pipes", 3 }, { "titanium-pipe", 3 }, { "pipe", 8 } }
)