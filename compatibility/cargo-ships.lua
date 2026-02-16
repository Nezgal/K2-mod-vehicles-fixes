if not mods["cargo-ships"] then
    return
end

if data.raw.item["boat"] then
    data.raw.item["boat"].stack_size = 1
end

if data.raw.car["indep-boat"] then
    data.raw.car["indep-boat"].equipment_grid = "kr-car-grid"
end

if data.raw.locomotive["cargo_ship_engine"] then
    data.raw.locomotive["cargo_ship_engine"].equipment_grid = "kr-locomotive-grid"
end

if data.raw.locomotive["boat_engine"] then
    data.raw.locomotive["boat_engine"].equipment_grid = "kr-car-grid"
end

if data.raw.technology["automated_bridges"] then
    table.insert(data.raw.technology["automated_bridges"].prerequisites, "chemical-science-pack")
end

if data.raw.technology["deep_sea_oil_extraction"] then
    table.insert(data.raw.technology["deep_sea_oil_extraction"].prerequisites, "chemical-science-pack")
end
