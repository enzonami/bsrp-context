local playerProgress, activeZones, activeBubbles, bubbleCounter = {}, {}, {}, 0
local cachedPlayerId
local dialogTargets = Config.DialogTargets

CreateThread(function()
    while not PlayerPedId() or PlayerPedId() == -1 do
        Wait(1000)
    end
    cachedPlayerId = GetPlayerServerId(PlayerId())
    print("Cached Player ID initialized:", cachedPlayerId)
end)

AddEventHandler('playerSpawned', function()
    local playerPed = PlayerPedId()
    if playerPed and playerPed > 0 then
        cachedPlayerId = GetPlayerServerId(PlayerId())
        print("Cached Player ID updated on spawn:", cachedPlayerId)
    else
        print("Error: Player ID not valid on spawn.")
    end
end)

local handleInteraction
local function updateZonesForPlayer()
    for npc, targets in pairs(dialogTargets) do
        local step = playerProgress[npc] or 1
        local target = targets[step]
        if target then
            activeZones[npc] = activeZones[npc] or {}
            activeZones[npc][step] = activeZones[npc][step] or exports.ox_target:addSphereZone({
                coords = target.coords,
                radius = target.radius,
                options = {
                    {
                        label = target.label,
                        canInteract = function() return playerProgress[npc] == step end,
                        onSelect = function() handleInteraction(npc, target) end
                    }
                }
            })
            for s, zoneId in pairs(activeZones[npc]) do
                if s ~= step then
                    exports.ox_target:removeZone(zoneId)
                    activeZones[npc][s] = nil
                end
            end
        end
    end
end

local function show3DTextBubble(npc, coords, messages, duration)
    bubbleCounter = bubbleCounter + 1
    local bubbleId = bubbleCounter
    local message = messages[math.random(1, #messages)]
    if activeBubbles[npc] then activeBubbles[npc].active = false end
    activeBubbles[npc] = { id = bubbleId, coords = coords, message = message, active = true }
    CreateThread(function()
        local startTime = GetGameTimer()
        while activeBubbles[npc] and activeBubbles[npc].id == bubbleId and activeBubbles[npc].active and (GetGameTimer() - startTime) < duration do
            local onScreen, x, y = World3dToScreen2d(coords.x, coords.y, coords.z)
            if onScreen then
                SetTextScale(0.0, 0.3)
                SetTextFont(4)
                SetTextCentre(1)
                SetTextColour(255, 255, 255, 255)
                BeginTextCommandDisplayText("STRING")
                AddTextComponentSubstringPlayerName(message)
                EndTextCommandDisplayText(x, y)
            end
            Wait(5)
        end
        if activeBubbles[npc] and activeBubbles[npc].id == bubbleId then activeBubbles[npc] = nil end
    end)
end

local function clearAllBubbles()
    for npc, bubble in pairs(activeBubbles) do
        if bubble then bubble.active = false end
        activeBubbles[npc] = nil
    end
end

handleInteraction = function(npc, target)
    local step = playerProgress[npc] or 1
    if step == target.step then
        clearAllBubbles()
        show3DTextBubble(npc, target.coords, target.messages, 3000)
        playerProgress[npc] = Config.DialogTargets[npc][step + 1] and step + 1 or 1
        updateZonesForPlayer()
    end
end

CreateThread(function()
    while not cachedPlayerId do Wait(1000) end
    for npc in pairs(dialogTargets) do
        playerProgress[npc] = playerProgress[npc] or 1
    end
    updateZonesForPlayer()
end)
