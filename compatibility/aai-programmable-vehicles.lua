if not mods["aai-programmable-vehicles"] then
    return
end

if mods["aai-vehicles-hauler"] then
    data.raw.technology["position-beacon"].prerequisites = {"basic-vehicles"}
else
    data.raw.technology["position-beacon"].prerequisites = {"automobilism"}
end
