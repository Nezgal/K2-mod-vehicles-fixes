if not mods["aai-vehicles-ironclad"] then
    return
end

if data.raw.car["vehicle-hauler"] then
    data.raw.car["vehicle-hauler"].energy_source.fuel_categories = { "kr-vehicle-fuel" }
    if mods["aai-industry"] then
        data.raw.technology["basic-vehicles"].prerequisites = {"fuel-processing"}
    end
end
