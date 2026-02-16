if not mods["ironclad-gunboat-and-mortar-turret-fork"] then
    return
end

if data.raw.car["ironclad-gunboat"] then
    data.raw.car["ironclad-gunboat"].equipment_grid = "kr-tank-grid"
end

if data.raw.item["mortar-turret"] then
    data.raw.item["mortar-turret"].stack_size = 50
end
