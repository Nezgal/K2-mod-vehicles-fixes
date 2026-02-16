if not mods["aai-vehicles-chaingunner"] then
    return
end

if data.raw.car["vehicle-chaingunner"] then
    data.raw.car["vehicle-chaingunner"].energy_source.fuel_categories = { "kr-vehicle-fuel" }
end
