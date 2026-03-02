if not mods["Hovercrafts"] then
    return
end

data.raw.car["hovercraft"].equipment_grid = "kr-car-grid"
data.raw.car["missile-hovercraft"].equipment_grid = "kr-car-grid"

data.raw["item-with-entity-data"]["hovercraft"].subgroup = "transport"
data.raw["item-with-entity-data"]["hovercraft"].order = "b[personal-transport]-c[hovercraft]-a[hovercraft]"
data.raw["item-with-entity-data"]["missile-hovercraft"].subgroup = "transport"
data.raw["item-with-entity-data"]["missile-hovercraft"].order = "b[personal-transport]-c[hovercraft]-b[missile-hovercraft]"

if mods["aai-programmable-vehicles"] then
    data.raw["item-with-entity-data"]["hovercraft-0"].order = "b[personal-transport]-c[hovercraft]-a[hovercraft]"
    data.raw["item-with-entity-data"]["missile-hovercraft-hovercraft-missile-turret"].order = "b[personal-transport]-c[hovercraft]-b[missile-hovercraft]"
end
