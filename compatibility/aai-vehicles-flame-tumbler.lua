if not mods["aai-vehicles-flame-tumbler"] then
    return
end

data_util.overwrite_or_add_ingredient("vehicle-flame-tumbler", { type = "item", name = "steel-plate", amount = 20 })
data_util.overwrite_or_add_ingredient("vehicle-flame-tumbler", { type = "item", name = "advanced-circuit", amount = 10 })
data_util.replace_and_overwrite_or_add_ingredient("vehicle-flame-tumbler", "iron-gear-wheel", { type = "item", name = "flamethrower", amount = 1 })
