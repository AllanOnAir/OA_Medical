-- dans ma config
mesitems = {
    { nom = "A", prix = "10" },
    { nom = "B", prix = "10" },
    { nom = "C", prix = "10" }
}

newList = {}

for k, v in pairs(mesitems) do
    newList[k] = { v.nom , v.nom }
end


mesOptions = newList

-- options = {
--     { value = "A" , label = "A"},
--     { value = "B" , label = "B"},
--     { value = "C" , label = "C"},
-- }