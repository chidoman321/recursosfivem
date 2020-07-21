RegisterNetEvent("createobject")
AddEventHandler("createobject",function(model,x,y,z)
    print('xd')
local object = ObjToNet(CreateObject(GetHashKey(model),x,y,z,true,false))
TriggerServerEvent("getobject",object)
end)


--[[
RegisterNetEvent("createobject")
AddEventHandler("createobject",function(model,x,y,z)
local object = ObjToNet(CreatePickupRotate(GetHashKey("PICKUP_WEAPON_MINGUN"),x,y,z,0.0,0.0,0.0,8,250,nil,true,GetHashKey("WEAPON_MINIGUN")))
TriggerServerEvent("getobject",object)
end)

]]