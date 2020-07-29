--[[To prevent requests from stalling, you have to return the callback at all times 
- even if containing just an empty object, or {"ok":true}, or similar.
]]--

RegisterNUICallback('close', function(data,cb)
    SetNuiFocus(false, false)
    SendNUIMessage({

        estado='close'
    })
cb({ok=true})
end)

RegisterCommand('m', function()
    SendNUIMessage({

        estado='abrir'
    })
    SetNuiFocus(true, true)
end, false)

Citizen.CreateThread(function() 

while true do

    if IsControlJustPressed(1, 36) then --control izq

        SendNUIMessage({

            estado='abrir'
        })
    end 

    if IsControlJustPressed(1, 15) then --control izq

        SendNUIMessage({

            estado='x'
        })
    end 
    Citizen.Wait(30)
end


end)

