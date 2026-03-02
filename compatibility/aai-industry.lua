if not mods["aai-industry"] then
    return
end

data.raw.item["processed-fuel"].fuel_acceleration_multiplier = 0.9
data.raw.item["processed-fuel"].fuel_top_speed_multiplier = 0.9
data.raw.item["processed-fuel"].fuel_emissions_multiplier = 2
