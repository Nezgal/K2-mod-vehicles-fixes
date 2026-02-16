if not mods["Hovercrafts"] then
    return
end

if data.raw.car["hovercraft"] then
    data.raw.car["hovercraft"].equipment_grid = "kr-car-grid"
end


if data.raw.car["missile-hovercraft"] then
    data.raw.car["missile-hovercraft"].equipment_grid = "kr-car-grid"
end
