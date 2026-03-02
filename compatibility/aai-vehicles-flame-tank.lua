if not mods["aai-vehicles-flame-tank"] then
    return
end

data_util.replace_and_overwrite_or_add_ingredient("vehicle-flame-tank", "steel-plate", { type = "item", name = "advanced-circuit", amount = 20 })
data_util.replace_and_overwrite_or_add_ingredient("vehicle-flame-tank", "iron-gear-wheel", { type = "item", name = "kr-steel-gear-wheel", amount = 30 })
data_util.overwrite_or_add_ingredient("vehicle-flame-tank", { type = "item", name = "engine-unit", amount = 20 })
data_util.overwrite_or_add_ingredient("vehicle-flame-tank", { type = "item", name = "tank", amount = 1 })

data_util.add_prerequisite("vehicle-flame-tank", "vehicle-flame-tumbler")
data_util.remove_prerequisite("vehicle-flame-tank", "flamethrower")

data_util.remove_recipe_unlock("vehicle-flame-tank", "flamejet-ammo")

data.raw["item-with-entity-data"]["vehicle-flame-tank"].order = "b[personal-transport]-b[tank]-a[flame-tank]"

if mods["aai-programmable-vehicles"] then
    data.raw["item-with-entity-data"]["vehicle-flame-tank-flame-tank-flamethrower"].order = "b[personal-transport]-b[tank]-a[flame-tank]"
end
