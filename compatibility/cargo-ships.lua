if not mods["cargo-ships"] then
    return
end

data.raw["item-with-entity-data"]["boat"].stack_size = 1
data.raw.car["indep-boat"].equipment_grid = "kr-car-grid"
data.raw.locomotive["cargo_ship_engine"].equipment_grid = "kr-locomotive-grid"
data.raw.locomotive["boat_engine"].equipment_grid = "kr-car-grid"
data.raw["mining-drill"]["oil_rig"].mining_speed = 4

data_util.add_prerequisite("automated_bridges", "chemical-science-pack")
data_util.add_prerequisite("deep_sea_oil_extraction", "chemical-science-pack")
data_util.add_prerequisite("cargo_ships", "kr-fuel")
data_util.add_prerequisite("tank_ship", "kr-fuel")

data.raw["item-with-entity-data"]["boat"].order = "c[water-transport]-a[boat]"
data.raw["item-with-entity-data"]["cargo_ship"].order = "c[water-transport]-c[cargo-ship]"
data.raw["item-with-entity-data"]["oil_tanker"].order = "c[water-transport]-c[oil-tanker]"

if mods["aai-programmable-vehicles"] then
    data.raw["item-with-entity-data"]["boat-0"].order = "c[water-transport]-a[boat]"
end

data.raw.car["indep-boat"].light = data.raw.car["car"].light

-- data.raw.locomotive["boat_engine"].front_light = data.raw.locomotive["locomotive"].front_light
-- data.raw.locomotive["boat_engine"].back_light = data.raw.locomotive["locomotive"].back_light
-- data.raw.locomotive["boat_engine"].stand_by_light = data.raw.locomotive["locomotive"].stand_by_light
data.raw.locomotive["boat_engine"].front_light = data.raw.car["car"].light
data.raw.locomotive["boat_engine"].back_light = nil
data.raw.locomotive["boat_engine"].stand_by_light = nil

data.raw.locomotive["cargo_ship_engine"].front_light = data.raw.locomotive["locomotive"].front_light
data.raw.locomotive["cargo_ship_engine"].back_light = data.raw.locomotive["locomotive"].back_light
data.raw.locomotive["cargo_ship_engine"].stand_by_light = data.raw.locomotive["locomotive"].stand_by_light
-- data.raw.locomotive["cargo_ship_engine"].back_light = nil
-- data.raw.locomotive["cargo_ship_engine"].stand_by_light = nil

-- data.raw["cargo-wagon"]["boat"].back_light = data.raw["cargo-wagon"]["cargo-wagon"].back_light
-- data.raw["cargo-wagon"]["boat"].stand_by_light = data.raw["cargo-wagon"]["cargo-wagon"].stand_by_light
-- data.raw["cargo-wagon"]["cargo_ship"].back_light = data.raw["cargo-wagon"]["cargo-wagon"].back_light
-- data.raw["cargo-wagon"]["cargo_ship"].stand_by_light = data.raw["cargo-wagon"]["cargo-wagon"].stand_by_light
-- data.raw["fluid-wagon"]["oil_tanker"].back_light = data.raw["fluid-wagon"]["fluid-wagon"].back_light
-- data.raw["fluid-wagon"]["oil_tanker"].stand_by_light = data.raw["fluid-wagon"]["fluid-wagon"].stand_by_light
data.raw["cargo-wagon"]["boat"].back_light = nil
data.raw["cargo-wagon"]["boat"].stand_by_light = nil
data.raw["cargo-wagon"]["cargo_ship"].back_light = nil
data.raw["cargo-wagon"]["cargo_ship"].stand_by_light = nil
data.raw["fluid-wagon"]["oil_tanker"].back_light = nil
data.raw["fluid-wagon"]["oil_tanker"].stand_by_light = nil

if mods["light-overhaul"] then
    for _, locomotive in pairs(data.raw.locomotive) do
        if locomotive.name ~= "boat_engine" then
            for i, light in pairs(locomotive.front_light) do
                light.picture.filename = "__light-overhaul__/graphics/light/light-torch.png"
                light.picture.width = 512
                light.picture.height = 512
                light.picture.scale = (light.picture.scale or 1) / 2 * 1.5
                if locomotive.name == "cargo_ship_engine" then
                    local origin_offset_x = light.shift.x or light.shift[1]
                    local origin_offset_y = light.shift.y or light.shift[2] + 13
                    light.shift =
                    {
                        x = origin_offset_x,
                        y = origin_offset_y + -16 * light.picture.scale
                    }
                end
            end
        end
    end
end
