local QBCore = exports['qb-core']:GetCoreObject()

-- Variables
local health = 200
-- Effects Variables
local effect = false
local comoeffect = false
local legEffect = false
local isConcus, armBroken, legBroken = false, false, false


-- Functions Reutilisable

function CheckDamage(ped, bone, weapon, damage)
    if weapon == nil then return end
    if Parts[bone] ~= nil then
        --print("Le joueur s'est fait blesser ici : "..Parts[bone].." avec l'arme : "..weapon.." et a reçu : "..damage.." de dommage")
        AddWound(weapon, Parts[bone], damage)
    end
end

function GetLimbInfo(Limb)

    local Data = { currentState = "N/A", currentHp = 404 }

    TriggerServerEvent('OA_Medical:GetLimbInfo', QBCore.Functions.GetPlayerData().citizenid, Limb)
    RegisterNetEvent('OA_Medical:SendLimbInfo')
    AddEventHandler("OA_Medical:SendLimbInfo", function (currentState, currentHp)
        Data.currentState = currentState
        Data.currentHp = currentHp
    end)
    while Data.currentState == "N/A" do
        Wait(0)
    end
    return Data
end

function MedicalChange(bodyPart, state, hp)
    print("bodyPart : "..bodyPart.." state : "..state.." hp : "..hp)

    if bodyPart == "head" then
        if state == "comotion" then
            print("comotion")
            isConcus = true
        else
            isConcus = false
        end
    end
    if bodyPart == "armL" or bodyPart == "armR" then
        if state == "fracture" then
            armBroken = true
        else
            armBroken = false
        end
    end
    if bodyPart == "legL" or bodyPart == "legR" then
        if state == "fracture" then
            legBroken = true
        else
            legBroken = false
        end
    end
    TriggerServerEvent("OA_Medical:change", QBCore.Functions.GetPlayerData().citizenid, bodyPart, state, hp)


end

-- Code de base
local function createData()
    TriggerServerEvent('OA_Medical:CreateData', QBCore.Functions.GetPlayerData().citizenid)
end

function GetDamagingWeapon(ped)
    for k, v in pairs(Weapons) do
        if HasPedBeenDamagedByWeapon(ped, k, 0) then
            return v
        end
    end
    return nil
end

function AddWound(weaponType, bone, damage)
    if weaponType ~= 13 then 
        local Injury = InjuryType[weaponType][math.random(1, #InjuryType[weaponType])].type
        -- Dégats de chutes sont considerer comme "OTHER"
        -- Donc en haut de 50 de dégats "OTHER", on considère que c'est une blessure "HEAVY_IMPACT"
        if weaponType == 11 and damage > 50 then
            local newWeaponType = 7
            local Injury = InjuryType[newWeaponType][math.random(1, #InjuryType[newWeaponType])].type
            NewWound(bone, Injury, damage)
            return
        end
        NewWound(bone, Injury, damage)
    end
end

function NewWound(bone, Injury, damage)
    LimbInfo = GetLimbInfo(bone)
    if LimbInfo.currentState == "normal" then
        MedicalChange(bone, Injury, LimbInfo.currentHp - damage)
    end
end

AddEventHandler('entityDamaged', function(player, culprit, _, basedamage)
    if player ~= PlayerPedId() then return end
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

-- Commande  de test

RegisterCommand("gethealth", function(source, args)
    local playerHealth = GetEntityHealth(PlayerPedId())
    print(health.." / "..playerHealth)
end)

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

RegisterCommand("getlimbinfo", function(source, args)
    local Limb = args[1]
    local LimbInfo = GetLimbInfo(Limb)
    TriggerEvent("chatMessage", "OA_Medical  ", {255, 0, 0}, " Current State : "..LimbInfo.currentState.." Current HP : "..LimbInfo.currentHp)
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

RegisterCommand("medicalcreate", function(source, args)
    createData()
end)

RegisterCommand("medicalchange", function(source, args)
    local bodyPart = args[1]
    local state = args[2]
    local hp = tonumber(args[3])
    MedicalChange(bodyPart, state, hp)
    
end)

-- Effects

local function aimInstability()
    --local armstateL = GetLimbInfo("armL").currentState
    --local armstateR = GetLimbInfo("armR").currentState

    if armBroken then
        if IsPlayerFreeAiming(PlayerId()) and not effect then
            ShakeGameplayCam("DRUNK_SHAKE", 1.9)
            effect = true
        elseif not IsPlayerFreeAiming(PlayerId()) and effect then
            StopGameplayCamShaking(true)
            effect = false
        end
    end
end

local function comotion()
    --local headState = GetLimbInfo("Head").currentState

    if isConcus and not comoeffect then
        print("comotion")
        SetTimecycleModifier("Dax_TripBase")
        SetTimecycleModifierStrength(0.4)
        ShakeGameplayCam("DRUNK_SHAKE", 0.9)
        comoeffect = true
    elseif isConcus == false and comoeffect then
        SetTimecycleModifier("default")
        StopGameplayCamShaking(true)
        comoeffect = false
    end
end

local function brokenLeg()
    --local legLState = GetLimbInfo("legL").currentState
    --local legRState = GetLimbInfo("legR").currentState

    if legBroken then
        if not legEffect then
            RequestAnimSet("move_m@injured")
            while not HasAnimSetLoaded("move_m@injured") do
                Wait(0)
            end
            SetPedMovementClipset(PlayerPedId(), "move_m@injured", true)
            legEffect = true
        end

        if math.random(1, 20) > 18 then
            SetPedToRagdoll(PlayerPedId(), 10000, 1000, 0, 0, 0, 0)
        end
    elseif legEffect then
        ResetPedMovementClipset(PlayerPedId(), 0.0)
        legEffect = false
    end
end

-- Events
local function syncData()
        -- sync data with the effects
        local headState = GetLimbInfo("head").currentState
        local armLState = GetLimbInfo("armL").currentState
        local armRState = GetLimbInfo("armR").currentState
        local legLState = GetLimbInfo("legL").currentState
        local legRState = GetLimbInfo("legR").currentState
    
        Wait(5000)
        if armLState == "fracture" or armRState == "fracture" then
            armBroken = true
        end
        if legLState == "fracture" or legRState == "fracture" then
            legBroken = true
        end
        
        if headState == "comotion" then
            isConcus = true
        end
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    if createData() == false then return end
    -- sync data with the effects
    local headState = GetLimbInfo("head").currentState
    local armLState = GetLimbInfo("armL").currentState
    local armRState = GetLimbInfo("armR").currentState
    local legLState = GetLimbInfo("legL").currentState
    local legRState = GetLimbInfo("legR").currentState

    Wait(5000)
    if armLState == "fracture" or armRState == "fracture" then
        armBroken = true
    else 
        armBroken = false
    end
    if legLState == "fracture" or legRState == "fracture" then
        legBroken = true
    else
        legBroken = false
    end
    
    if headState == "comotion" then
        isConcus = true
    else
        isConcus = false
    end
end)

AddEventHandler('onResourceStart', function(OA_Medical)
    syncData()
end)

AddEventHandler('onResourceStop', function(OA_Medical)
    ResetPedMovementClipset(PlayerPedId(), 0.0)
    StopGameplayCamShaking(true)
    SetTimecycleModifier("default")
end)

-- Game Loop

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        aimInstability()
        comotion()
        brokenLeg()
    end
end)




