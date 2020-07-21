RegisterNUICallback('datos', function(data, cb)
    -- POST data gets parsed as JSON automatically
print(data.nom .. data.ap)
SetNuiFocus(false,false)
    -- and so does callback response data
    cb({ok = true})
end)

a,b = true,true


Citizen.CreateThread(function() 
    while true do

       if IsControlJustPressed(1, 36) then 
        SendNUIMessage({
            type = 'open'
        })
        if a then
            
            SetNuiFocus(a,b)
            a,b = not a,not a
        end
        else
            SetNuiFocus(a,b)
            a,b = not a,not a
        end

       
        Citizen.Wait(0)
    end

end)

RegisterNUICallback('off', function(data, cb)
    -- POST data gets parsed as JSON automatically
SetNuiFocus(false,false)
    -- and so does callback response data
    cb({ok = true})
end)