local QBCore = exports['qb-core']:GetCoreObject()

function GetPlayer(playerId)
    local player = QBCore.Functions.GetPlayer(playerId)
    return player
end

function GetCharacterId(player)
    return player.PlayerData.citizenid
end

function IsPlayerInGroup(player, filter)
    -- Check if the player's job matches any in the filter (list of roles)
    for _, job in pairs(filter) do
        if player.PlayerData.job.name == job then
            return true
        end
    end
    return false
end


