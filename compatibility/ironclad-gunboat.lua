if not mods["ironclad-gunboat-and-mortar-turret-fork"] then
    return
end

data.raw.car["ironclad-gunboat"].equipment_grid = "kr-tank-grid"
data.raw.item["mortar-turret"].stack_size = 50

data_util.add_prerequisite("ironclad-gunboat", "military-science-pack")
data_util.add_prerequisite("ironclad-gunboat", "kr-fuel")
data_util.add_research_unit_ingredient("ironclad-gunboat", "military-science-pack", 1)
data_util.replace_and_overwrite_or_add_ingredient("ironclad-gunboat", "iron-gear-wheel", { type = "item", name = "kr-steel-gear-wheel", amount = 30 })
data_util.overwrite_or_add_ingredient("ironclad-gunboat", { type = "item", name = "steel-plate", amount = 60 })
data_util.overwrite_or_add_ingredient("ironclad-gunboat", { type = "item", name = "advanced-circuit", amount = 10 })

data_util.replace_and_overwrite_or_add_ingredient("ironclad", "iron-gear-wheel", { type = "item", name = "kr-steel-gear-wheel", amount = 20 })
data_util.replace_and_overwrite_or_add_ingredient("ironclad", "steel-plate", { type = "item", name = "advanced-circuit", amount = 20 })
data_util.overwrite_or_add_ingredient("ironclad", { type = "item", name = "mortar-turret", amount = 1 })
data_util.overwrite_or_add_ingredient("ironclad", { type = "item", name = "ironclad-gunboat", amount = 1 })

data_util.replace_and_overwrite_or_add_ingredient("mortar-turret", "steel-plate", { type = "item", name = "kr-steel-beam", amount = 5 })
data_util.replace_and_overwrite_or_add_ingredient("mortar-turret", "iron-gear-wheel", { type = "item", name = "kr-steel-gear-wheel", amount = 4 })
data_util.overwrite_or_add_ingredient("mortar-turret", { type = "item", name = "kr-automation-core", amount = 3 })

data.raw["item-with-entity-data"]["ironclad-gunboat"].subgroup = "water_transport"
data.raw["item-with-entity-data"]["ironclad-gunboat"].order = "c[water-transport]-b[ironclad]-a[ironclad-gunboat]"
data.raw.recipe["ironclad-gunboat"].subgroup = "water_transport"
data.raw.recipe["ironclad-gunboat"].order = "c[water-transport]-b[ironclad]-a[ironclad-gunboat]"

if mods["aai-programmable-vehicles"] then
    data.raw["item-with-entity-data"]["ironclad-gunboat-vehicle-machine-gun"].order = "c[water-transport]-b[ironclad]-a[ironclad-gunboat]"
end
