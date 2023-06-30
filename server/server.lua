data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)
RegisterServerEvent("RegisterUsableItem:backpack")
AddEventHandler("RegisterUsableItem:backpack", function(source, item)
    local src = source
    local meta = item.meta
    local metaid = "var"

    local item = data.getItem(src,"backpack",meta)

    if not meta.uid then
        meta.uid = "backpack_"..math.random(100000,999999)
        metaid = "yok"
        item.ChangeMeta(meta)
    end
    if metaid == "yok" then
        if item.ItemAmount > 0 then
            meta.uid = "backpack_"..math.random(100000,999999)
            item.ChangeMeta(meta)
        end
    end
    TriggerClientEvent("redemrp_inventory:OpenStash", src, meta.uid,qadr_backpacks[meta.model].weight)
    item = data.getItem(src,"backpack",meta)
end)
RegisterServerEvent("qadr_backpack:check")
AddEventHandler("qadr_backpack:check", function()
    local src = source
    local items = data.getPlayerInventory(src)
    -- bu eşyalar arasında backpack var mı?
    local itemvarmi = false
    for k,l in pairs(items) do
        if l.name == "backpack" and tonumber(l.amount) > 0 then
            itemvarmi = true
            l.weight = exports["redemrp_inventory"]:GetStashWeight(l?.meta?.uid)
            TriggerClientEvent("qadr_backpack:check",src,true,l)
            return
        end
    end
    TriggerClientEvent("qadr_backpack:check",src,false)
end)
RegisterCommand("qadr_backpac_addBag", function(source, args, rawCommand) -- dev command
    local src = source
    local meta = {
        model = args[1] or "p_ambpack02x",
        uid = "backpack_"..math.random(100000,999999)
    }
    local item = data.getItem(src,"backpack",meta)
    item.AddItem(1)

end)