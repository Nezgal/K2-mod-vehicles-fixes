if not mods["equipment-gantry"] or not mods["aai-programmable-structures"] then
    return
end

data.raw.item["equipment-gantry"].category = "logistics"
data.raw.item["equipment-gantry"].subgroup = "programmable-structures"
data.raw.item["equipment-gantry"].order = "m"

data.raw.item["equipment-gantry-remover"].category = "logistics"
data.raw.item["equipment-gantry-remover"].subgroup = "programmable-structures"
data.raw.item["equipment-gantry-remover"].order = "n"
