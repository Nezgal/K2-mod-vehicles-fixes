if not mods["aai-vehicles-miner"] then
    return
end

data_util.add_prerequisite("vehicle-miner-1", "fuel-processing")
data_util.remove_prerequisite("vehicle-miner-1", "automation-science-pack")

data_util.add_prerequisite("vehicle-miner-2", "kr-fuel")
data_util.remove_prerequisite("vehicle-miner-2", "engine")
data.raw.technology["vehicle-miner-2"].unit.count = 100
data.raw.technology["vehicle-miner-2"].unit.time = 20

data_util.add_prerequisite("vehicle-miner-3", "kr-electric-mining-drill-mk2")
data.raw.technology["vehicle-miner-3"].unit.count = 300
data.raw.technology["vehicle-miner-3"].unit.time = 30
data_util.replace_and_overwrite_or_add_ingredient("vehicle-miner-mk3", "steel-plate", { type = "item", name = "kr-rare-metals", amount = 40 })
data_util.overwrite_or_add_ingredient("vehicle-miner-mk3", { type = "item", name = "kr-electric-mining-drill-mk2", amount = 5 })

data_util.add_prerequisite("vehicle-miner-4", "utility-science-pack")
data_util.add_research_unit_ingredient("vehicle-miner-4", "utility-science-pack", 1)
data.raw.technology["vehicle-miner-4"].unit.count = 500
data.raw.technology["vehicle-miner-4"].unit.time = 45
data_util.replace_and_overwrite_or_add_ingredient("vehicle-miner-mk4", "steel-plate", { type = "item", name = "kr-rare-metals", amount = 60 })
data_util.replace_and_overwrite_or_add_ingredient("vehicle-miner-mk4", "electric-engine-unit", { type = "item", name = "low-density-structure", amount = 40 })

data_util.add_prerequisite("vehicle-miner-5", "kr-energy-control-unit")
data_util.add_prerequisite("vehicle-miner-5", "kr-electric-mining-drill-mk3")
data_util.remove_prerequisite("vehicle-miner-5", "fission-reactor-equipment")
data_util.remove_prerequisite("vehicle-miner-5", "speed-module-3")
data_util.add_research_unit_ingredient("vehicle-miner-5", "kr-advanced-tech-card", 1)
data_util.remove_research_unit_ingredient("vehicle-miner-5", "automation-science-pack")
data_util.remove_research_unit_ingredient("vehicle-miner-5", "logistic-science-pack")
data_util.remove_research_unit_ingredient("vehicle-miner-5", "chemical-science-pack")
data.raw.technology["vehicle-miner-5"].unit.count = 750
data.raw.technology["vehicle-miner-5"].unit.time = 60
data_util.replace_and_overwrite_or_add_ingredient("vehicle-miner-mk5", "steel-plate", { type = "item", name = "kr-imersium-plate", amount = 30 })
data_util.replace_and_overwrite_or_add_ingredient("vehicle-miner-mk5", "electric-engine-unit", { type = "item", name = "kr-electric-mining-drill-mk3", amount = 5 })
data_util.replace_and_overwrite_or_add_ingredient("vehicle-miner-mk5", "fission-reactor-equipment", { type = "item", name = "kr-energy-control-unit", amount = 10 })
