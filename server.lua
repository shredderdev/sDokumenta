ESX.RegisterServerCallback("proveriItem", function(source, cb, itemName)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer ~= nil then
        local item = xPlayer.getInventoryItem(itemName).count
        if item ~= 0 then 
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)
