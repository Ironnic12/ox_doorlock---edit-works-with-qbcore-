local QBCore = exports['qb-core']:GetCoreObject()

function GetPlayer(playerId)
    local player = QBCore.Functions.GetPlayer(playerId)
    return player
end

function GetCharacterId(player)
    return player.PlayerData.citizenid
end

function IsPlayerInGroup(player, filter)
    return QBCore.Functions.HasPermission(player.PlayerData.source, filter)
end
