if not mods["aai-vehicles-laser-tank"] then
    return
end

data_util.replace_and_overwrite_or_add_ingredient("vehicle-laser-tank", "steel-plate", { type = "item", name = "kr-steel-gear-wheel", amount = 30 })
data_util.overwrite_or_add_ingredient("vehicle-laser-tank", { type = "item", name = "engine-unit", amount = 20 })

data.raw["item-with-entity-data"]["vehicle-laser-tank"].order = "b[personal-transport]-b[tank]-b[laser-tank]"

if mods["aai-programmable-vehicles"] then
    data.raw["item-with-entity-data"]["vehicle-laser-tank-laser-tank-cannon"].order = "b[personal-transport]-b[tank]-b[laser-tank]"
end
