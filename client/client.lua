local QBCore = exports['qb-core']:GetCoreObject()


-- Variables
local health = 200




local function createData()
    TriggerServerEvent('OA_Medical:CreateData', QBCore.Functions.GetPlayerData().citizenid)
end

RegisterCommand("medicalcreate", function(source, args)
    createData()
end)

RegisterCommand("medicalchange", function(source, args)
    local bodyPart = args[1]
    local state = args[2]
    local hp = tonumber(args[3])
    TriggerServerEvent("OA_Medical:change", QBCore.Functions.GetPlayerData().citizenid, bodyPart, state, hp)
end)

function GetDamagingWeapon(ped)
    for k, v in pairs(Weapons) do
        if HasPedBeenDamagedByWeapon(ped, k, 0) then
            return v
        end
    end
    return nil
end

function CheckDamage(ped, bone, weapon, damage)
    if weapon == nil then return end
    if Parts[bone] ~= nil then
        print("Le joueur s'est fait blesser ici : "..Parts[bone].." avec l'arme : "..weapon.." et a reçu : "..damage.." de dommage")
    end
end

AddEventHandler('entityDamaged', function(player, culprit, _, basedamage)
    if player ~= PlayerId() then return end
    while true do
        local hit, bone = GetPedLastDamageBone(player)
        if hit and bone ~= lastBone and Parts[bones] ~= 'NONE' then
            LastBone = bone
            newHealth = GetEntityHealth(PlayerPedId())
            local damage = health - newHealth
            if damage <= 0 then break end
            CheckDamage(player, bone, GetDamagingWeapon(player), damage)
            health = newHealth
            break
        end
        Wait(100)
    end
end)

RegisterCommand("gethealth", function(source, args)
    local playerHealth = GetEntityHealth(PlayerPedId())
    print(health.." / "..playerHealth)
end)




-- Commande  de test ~~
RegisterCommand("spawnaggressiveped", function(source, args)
    local pedModel = "s_m_y_hwaycop_01"
    local weaponModel = "WEAPON_PISTOL"
    local pedCoords = GetEntityCoords(PlayerPedId())
    local pedHeading = GetEntityHeading(PlayerPedId())
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Citizen.Wait(0)
    end
    local ped = CreatePed(4, pedModel, pedCoords.x, pedCoords.y, pedCoords.z, pedHeading, false, true)
    GiveWeaponToPed(ped, GetHashKey(weaponModel), 1000, false, true)
    SetPedCombatAttributes(ped, 46, true)
end)


-- Commande admin
RegisterCommand("oa_revive", function(source, args)
    local playerPed = PlayerPedId()
    if args[1] == nil then
        SetEntityMaxHealth(playerPed, 200)
        SetEntityHealth(playerPed, 200)
        ClearPedBloodDamage(playerPed)
        ResetPedMovementClipset(playerPed, 0.0)
        SetEntityHealth(playerPed, 200)
        local pos = GetEntityCoords(playerPed, true)
        NetworkResurrectLocalPlayer(pos.x, pos.y, pos.z, GetEntityHeading(player), true, false)
        health = 200
    else
        ResurrectPed(getPlayerPed(args[1]))
        SetEntityHealth(getPlayerPed(args[1]), 200)
    end
end)