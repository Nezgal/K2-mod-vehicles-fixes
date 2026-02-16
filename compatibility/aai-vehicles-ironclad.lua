if not mods["aai-vehicles-ironclad"] then
    return
end

if data.raw.car["ironclad"] then
    data.raw.car["ironclad"].equipment_grid = "kr-tank-grid"
end
