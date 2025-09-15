ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("healme", function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)

    if not xPlayer then return end

    local price = Config.HealPrice

    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        TriggerClientEvent('esx:showNotification', source, "💉 You have been healed for $" .. price)
        TriggerClientEvent('simpleHeal:healPlayer', source)
    else
        TriggerClientEvent('esx:showNotification', source, "❌ You don't have enough money!")
    end
end, false)
