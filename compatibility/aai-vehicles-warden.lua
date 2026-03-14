if not mods["aai-vehicles-warden"] then
    return
end

data_util.replace_and_overwrite_or_add_ingredient("vehicle-warden", "iron-plate", { type = "item", name = "steel-plate", amount = 20 })
data_util.replace_and_overwrite_or_add_ingredient("vehicle-warden", "motor", { type = "item", name = "engine-unit", amount = 5 })
data_util.replace_and_overwrite_or_add_ingredient("vehicle-warden", "iron-chest", { type = "item", name = "car", amount = 1 })
data.raw.technology["vehicle-warden"].unit.time = 30
