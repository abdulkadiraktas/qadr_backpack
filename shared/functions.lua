function createBackPack(bag)
    if tempBackPack == bag then
        return
    end
    deleteAllBackPack()
    local ped = PlayerPedId()
    local model = bag
    local backpack = spawnobject(GetHashKey(model),GetEntityCoords(ped),vector3(0.0,0.0,0.0))
    while not DoesEntityExist(backpack) do
        Wait(100)
    end
    tempBackPack = model
    table.insert(tempBackPacks,backpack)
    AttachEntityToEntity(backpack,ped,qadr_backpacks[model].boneIndex,qadr_backpacks[model].pos.x,qadr_backpacks[model].pos.y,qadr_backpacks[model].pos.z,qadr_backpacks[model].rot.x,qadr_backpacks[model].rot.y,qadr_backpacks[model].rot.z,false,qadr_backpacks[model].softping,qadr_backpacks[model].collision,false,qadr_backpacks[model].vertex,qadr_backpacks[model].fixedRot,false,false)    
    if not IsEntityAttachedToEntity(backpack,ped) then
        print("attach failed, deleting backpack, try again")
        Wait(1000)
        createBackPack(bag)
    end
end
function spawnobject(model,coords,rot)
	if not LoadModel(model) then
		return nil
	end
	local object = CreateObjectNoOffset(model, coords.x, coords.y, coords.z, true, false, true)

	SetModelAsNoLongerNeeded(model)

	SetEntityRotation(object, rot, 2)

	FreezeEntityPosition(object, true)
    return object
end
function LoadModel(model)
	if IsModelInCdimage(model) then
		RequestModel(model)

		while not HasModelLoaded(model) do
			Wait(0)
		end

		return true
	else
		return false
	end
end
function deleteAllBackPack()
    for k,v in pairs(tempBackPacks) do
        DeleteEntity(v)
    end
    tempBackPacks = {}
    tempBackPack = nil
end