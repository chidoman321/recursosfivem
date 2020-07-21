
--registrar evento
RegisterNetEvent('server')
--escuchar
AddEventHandler('server', function()
  print('soy el server')
end)

--disparar evento

TriggerEvent('server',...)


--eliminar evento

local ev = AddEventHandler('evs', function() print('xd')end)

RemoveEventHandler(ev)

--disparar evento cliente

Citizen.CreateThread(function()
  Citizen.Wait(2000)
  TriggerClientEvent('cliente', -1)
end)

