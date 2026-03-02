if not mods["K2-clean-trains"] then
    return
end

data.raw["locomotive"]["k2-fusion-locomotive"].max_speed = 1.38870
data.raw["locomotive"]["k2-fusion-locomotive"].weight = 14000
data.raw["locomotive"]["k2-antimatter-locomotive"].max_speed = 1.73587
data.raw["locomotive"]["k2-antimatter-locomotive"].weight = 16000

data.raw.item["kr-dt-fuel-cell"].fuel_emissions_multiplier = nil
data.raw.item["kr-dt-fuel-cell"].fuel_top_speed_multiplier = nil
data.raw.item["kr-charged-antimatter-fuel-cell"].fuel_emissions_multiplier = nil
data.raw.item["kr-charged-antimatter-fuel-cell"].fuel_top_speed_multiplier = nil

data_util.add_prerequisite("k2-fusion-locomotive", "kr-nuclear-locomotive")
data_util.add_prerequisite("kr-nuclear-locomotive", "fission-reactor-equipment")
data_util.remove_prerequisite("kr-nuclear-locomotive", "nuclear-power")

data_util.replace_and_overwrite_or_add_ingredient("kr-nuclear-locomotive", "processing-unit", { type = "item", name = "advanced-circuit", amount = 20 })
data_util.overwrite_or_add_ingredient("kr-nuclear-locomotive", { type = "item", name = "fission-reactor-equipment", amount = 1 })
data_util.replace_and_overwrite_or_add_ingredient("k2-fusion-locomotive", "kr-electronic-components", { type = "item", name = "low-density-structure", amount = 40 })
data_util.replace_and_overwrite_or_add_ingredient("k2-antimatter-locomotive", "kr-rare-metals", { type = "item", name = "kr-imersium-plate", amount = 60 })
data_util.replace_and_overwrite_or_add_ingredient("k2-antimatter-locomotive", "kr-electronic-components", { type = "item", name = "kr-energy-control-unit", amount = 10 })
data_util.replace_and_overwrite_or_add_ingredient("k2-antimatter-locomotive", "kr-steel-gear-wheel", { type = "item", name = "kr-imersium-gear-wheel", amount = 20 })

data_util.remove_prerequisite("fission-reactor-equipment", "military-science-pack")
data_util.remove_research_unit_ingredient("fission-reactor-equipment", "military-science-pack")
data_util.remove_research_unit_ingredient("kr-fusion-reactor-equipment", "military-science-pack")
