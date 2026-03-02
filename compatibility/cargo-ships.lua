if not mods["cargo-ships"] then
    return
end

data.raw["item-with-entity-data"]["boat"].stack_size = 1
data.raw.car["indep-boat"].equipment_grid = "kr-car-grid"
data.raw.locomotive["cargo_ship_engine"].equipment_grid = "kr-locomotive-grid"
data.raw.locomotive["boat_engine"].equipment_grid = "kr-car-grid"
data.raw["mining-drill"]["oil_rig"].mining_speed = 4

data_util.add_prerequisite("automated_bridges", "chemical-science-pack")
data_util.add_prerequisite("deep_sea_oil_extraction", "chemical-science-pack")
data_util.add_prerequisite("cargo_ships", "kr-fuel")
data_util.add_prerequisite("tank_ship", "kr-fuel")

data.raw["item-with-entity-data"]["boat"].order = "c[water-transport]-a[boat]"
data.raw["item-with-entity-data"]["cargo_ship"].order = "c[water-transport]-c[cargo-ship]"
data.raw["item-with-entity-data"]["oil_tanker"].order = "c[water-transport]-c[oil-tanker]"

if mods["aai-programmable-vehicles"] then
    data.raw["item-with-entity-data"]["boat-0"].order = "c[water-transport]-a[boat]"
end
