data.raw.item["solid-fuel"].fuel_category = nil
data.raw.item["solid-fuel"].fuel_value = nil
data.raw.item["solid-fuel"].fuel_acceleration_multiplier = nil
data.raw.item["solid-fuel"].fuel_top_speed_multiplier = nil
data.raw.item["solid-fuel"].fuel_emissions_multiplier = nil
data.raw.item["rocket-fuel"].fuel_category = nil
data.raw.item["rocket-fuel"].fuel_value = nil
data.raw.item["rocket-fuel"].fuel_acceleration_multiplier = nil
data.raw.item["rocket-fuel"].fuel_top_speed_multiplier = nil
data.raw.item["rocket-fuel"].fuel_emissions_multiplier = nil

data.raw["item-with-entity-data"]["car"].subgroup = "transport"
data.raw["item-with-entity-data"]["tank"].subgroup = "transport"
data.raw["item-with-entity-data"]["spidertron"].order = "b[personal-transport]-d[spidertron]"
data.raw.item["roboport"].order = "c[signal]-b[roboport]"
data.raw.item["kr-small-roboport"].order = "c[signal]-a[small-roboport]"

tank_light = data.raw.car["kr-advanced-tank"].light
for _, light in pairs(tank_light) do
    local origin_offset_x = light.shift.x or light.shift[1]
    local origin_offset_y = light.shift.y or light.shift[2]
    light.shift =
    {
        x = origin_offset_x,
        y = origin_offset_y + -4
    }
end
