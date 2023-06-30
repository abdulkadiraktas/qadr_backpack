local blend = 1.0
AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        for k,v in pairs(tempBackPacks) do
            DeleteEntity(v)
        end
    end
end)
RegisterNetEvent("qadr_backpack:check")
AddEventHandler("qadr_backpack:check", function(isExist,item)
    if isExist then
        createBackPack(item?.meta?.model or "p_ambpack02x")
        stashWweight = item.weight
    else
        deleteAllBackPack()
    end
end)
Citizen.CreateThread(function()
    local src = GetPlayerServerId(PlayerId())
    while true do
        Wait(2000)
        if Player(src)?.state?.isLoggedIn then
            TriggerServerEvent("qadr_backpack:check")
        else
            deleteAllBackPack()
        end
        if qadr_backpacks?.config?.useWeight and tempBackPack then
            local MaxWeight = qadr_backpacks[tempBackPack].weight
            local currentWeight = stashWweight
            local ratio = currentWeight / MaxWeight
            blend = math.Clamp(3.0 - ratio, 0.11, 3.0)
            print(blend)
            --blend = 1.0 - ratio
            --if blend <= 0.11 then
            --    blend = 0.11
            --elseif blend >= 1.0 then
            --    blend = 1.0
            --end
        end
    end
end)
Citizen.CreateThread(function()
    while qadr_backpacks?.config?.useWeight or false do
        Wait(1)
        if tempBackPack and blend < 1.0 then
            SetPedMaxMoveBlendRatio(PlayerPedId(),blend)
        end
    end
end)