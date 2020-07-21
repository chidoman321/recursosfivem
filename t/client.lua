--registrar evento
RegisterNetEvent('cliente')
--escuchar
AddEventHandler('cliente', function(...)
  print('soy el cliente')
end)

--disparar evento

TriggerEvent('cliente',...)


--eliminar evento

local ev = AddEventHandler('evs', function() print('xd')end)

RemoveEventHandler(ev)

--escuchar evento nativo
AddEventHandler('gameEventTriggered', function(nom,args)
  if nom =='CEventNetworkEntityDamage' then
    print('evento nativo'..json.encode(args))
  end
end)


TriggerServerEvent('server', ...)


function x()

print('funcion x')
end
