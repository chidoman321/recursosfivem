--[[To prevent requests from stalling, you have to return the callback at all times 
- even if containing just an empty object, or {"ok":true}, or similar.
]]--


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

