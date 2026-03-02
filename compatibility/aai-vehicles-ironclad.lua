if not mods["aai-vehicles-ironclad"] then
    return
end

data.raw.car["ironclad"].equipment_grid = "kr-tank-grid"

if not mods["ironclad-gunboat-and-mortar-turret-fork"] then
    data_util.replace_and_overwrite_or_add_ingredient("ironclad", "iron-gear-wheel", { type = "item", name = "kr-steel-gear-wheel", amount = 30 })
    data_util.overwrite_or_add_ingredient("ironclad", { type = "item", name = "steel-plate", amount = 60 })
    data_util.overwrite_or_add_ingredient("ironclad", { type = "item", name = "advanced-circuit", amount = 10 })
end

data.raw["item-with-entity-data"]["ironclad"].subgroup = "water_transport"
data.raw["item-with-entity-data"]["ironclad"].order = "c[water-transport]-b[ironclad]-b[ironclad]"

if mods["aai-programmable-vehicles"] then
    data.raw["item-with-entity-data"]["ironclad-ironclad-mortar"].order = "c[water-transport]-b[ironclad]-b[ironclad]"
    data.raw["item-with-entity-data"]["ironclad-ironclad-cannon"].order = "c[water-transport]-b[ironclad]-b[ironclad]"
end
