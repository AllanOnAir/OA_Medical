local QBCore = exports['qb-core']:GetCoreObject()

-- Create the table if it doesn't exist
MySQL.query("CREATE TABLE IF NOT EXISTS OA_Medical (id INT AUTO_INCREMENT PRIMARY KEY, citizen_id VARCHAR(255), isAlive BOOLEAN, armL_state VARCHAR(255), armL_hp INT, armR_state VARCHAR(255), armR_hp INT, legL_state VARCHAR(255), legL_hp INT, legR_state VARCHAR(255), legR_hp INT, head_state VARCHAR(255), head_hp INT, torso_state VARCHAR(255), torso_hp INT)")

-- register a net event to get the playerdate citizen id from source
RegisterServerEvent('OA_Medical:CreateData', function (citizenId)
    print(citizenId)
    local player = source
    local selectQuery = string.format("SELECT * FROM OA_Medical WHERE citizen_id = '%s'", citizenId)
    local result = MySQL.Sync.fetchAll(selectQuery)
    if result and #result > 0 then
        return true
    else
        -- !! Doit ajouter isAlive = true/false pour ce souvenire si le joueur est mort ou non !!
        MySQL.query(string.format("INSERT INTO OA_Medical (citizen_id, isAlive, armL_state, armL_hp, armR_state, armR_hp, legL_state, legL_hp, legR_state, legR_hp, head_state, head_hp, torso_state, torso_hp) VALUES ('%s', true, 'normal', 100, 'normal', 100, 'normal', 100, 'normal', 100, 'normal', 100, 'normal', 100)", citizenId))
        return false
    end
end)

-- register a server event that change the state and hp of a body particular
RegisterServerEvent('OA_Medical:change', function (citizenId, bodyPart, state, hp)
    local player = source
    local selectQuery = string.format("SELECT %s_state, %s_hp FROM OA_Medical WHERE citizen_id = '%s'", bodyPart, bodyPart, citizenId)
    local result = MySQL.Sync.fetchAll(selectQuery)
    if result and #result > 0 then
        local currentState = result[1][bodyPart .. "_state"]
        local currentHp = result[1][bodyPart .. "_hp"]
        local newState = state
        local newHp = currentHp + hp
        MySQL.query(string.format("UPDATE OA_Medical SET %s_state = '%s', %s_hp = %d WHERE citizen_id = '%s'", bodyPart, newState, bodyPart, newHp, citizenId))
    else
        print("Le joueur n'est pas dans la base de données")
    end
end)

-- register a server event that get the limb info from the database
RegisterServerEvent('OA_Medical:GetLimbInfo', function (citizenId, limb)
    local player = source
    local selectQuery = string.format("SELECT %s_state, %s_hp FROM OA_Medical WHERE citizen_id = '%s'", limb, limb, citizenId)
    local result = MySQL.Sync.fetchAll(selectQuery)
    if result and #result > 0 then
        local currentState = result[1][limb .. "_state"]
        local currentHp = result[1][limb .. "_hp"]
        TriggerClientEvent('OA_Medical:SendLimbInfo', player, currentState, currentHp)
    else
        print("Le joueur n'est pas dans la base de données")
    end
end)

-- register a server event that trigger when a player is dead
RegisterServerEvent('OA_Medical:playerDead', function (citizenId)

end)