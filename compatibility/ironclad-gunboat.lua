if not mods["ironclad-gunboat-and-mortar-turret-fork"] then
    return
end

if data.raw.car["ironclad-gunboat"] then
    data.raw.car["ironclad-gunboat"].equipment_grid = "kr-car-grid"
end
