
function asd()
	TriggerEvent('chat:addMessage', {
	color = { 255, 0, 0},
	multiline = true,
	args = {"[Inegi]","los casos de coronavirus han aumentado un 50% en la ultima semana"}
  
  }
  
  )
  
  end
  
  
  Citizen.CreateThread(function()
	  
	  while true do
	  Citizen.Wait(13)
	  if IsControlJustReleased(1,288) then
		  --ayuda
		  -- id del jugador,arma a dar, municion,???,la esta usando
		  GiveWeaponToPed(GetPlayerPed(-1),"weapon_pistol",999,false,false)
		  -- le decimos que tipo de dato almacenara
		  BeginTextCommandDisplayHelp("STRING")
		  --agregamos el texto
		  AddTextComponentSubstringPlayerName("~b~presiona para el arma~INPUT_REPLAY_START_STOP_RECORDING~")
		  --mostramos la ayuda
		  EndTextCommandDisplayHelp(0,0,1,-1)
		  
		  -- notificacion
		  SetNotificationTextEntry("STRING")
		  -- le decimos que tipo de dato almacenara
		  AddTextComponentSubstringPlayerName("sobre que?:V")
		  --agregamos el texto
		  DrawNotification(true,false)
		  --mandamos la notificacion
		  
		  
		  --si el ped tiene cierta arma
		  if HasPedGotWeapon(PlayerPedId(),"weapon_pistol",false) then
		  --le damos un componente a esa arma
		  GiveWeaponComponentToPed(PlayerPedId(),"weapon_pistol","COMPONENT_AT_PI_SUPP_02")
		  end
		  
		  if false then
			  --Con esta funcion le podemos retirar todas las armas al ped
			  RemoveAllPedWeapons(PlayerPedId(),true)
		  end
		  
		  if false then
		  SetEntityHealth(PlayerPedId(),0)
		  end
  
		  
	  end
	  end
  end)
  
  RegisterCommand("m",function(source,ar)
		  if IsModelInCdimage(ar[1]) then
		  RequestModel(ar[1])
		  
		  --esperar mientras el auto no ha cargado
		  while not HasModelLoaded(ar[1]) do
		  
		  Citizen.Wait(500)
		  end
		  --crear el vehiculo
		  local auto = CreateVehicle(ar[1],GetEntityCoords(PlayerPedId()).x,GetEntityCoords(PlayerPedId()).y,GetEntityCoords(PlayerPedId()).z,GetEntityHeading(PlayerPedId())
		  ,true,false)
		  
		  --meter al ped dentro del auto
		  SetPedIntoVehicle(PlayerPedId(),auto,-1)
		  else
				  TriggerEvent("chat:addMessage",{color = {0,0,255},multiline = true,args={"Server","no se encontro el carro"}})
				  return
		  end
  
	  end,false)
  
	  if false then
	  Citizen.CreateThread(function()
		  while true do
		  Citizen.Wait(1)
			  --pone el tipo de fuente 
			  SetTextFont(0)
			  --el tamaño
			  SetTextScale(0.7,0.7)
			  --poner el color
			  SetTextColour(0,0,0,255)
			  -- declarar el tipo de entrada
			  SetTextEntry("STRING")
			  --poner el texto
			  AddTextComponentSubstringPlayerName("Que si van a querer junta shingadamadre >:v")
			  --imprimir
			  EndTextCommandDisplayText(0.5,0.5)
  
			  --hacer un rectangulo
			  DrawRect(0.5,0.5,0.9,0.2,65,134,244,245)
		  end
  end)
  end
  
  

 -- SendNUIMessage({ display = true})
  
  --SendNUIMessage({ type="ui",display = false})
  

			  
  
  Citizen.CreateThread(function()
  
		  if GetVehiclePedIsIn(PlayerPedId(),false)  then
			  while true do
			  Citizen.Wait(13)
			  speed =math.floor(GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(),false))*3.6)
  
			  SetTextFont(2)
			  --el tamaño
			  SetTextScale(1.9,1.9)
			  --poner el color
			  SetTextColour(0,0,0,255)
			  -- declarar el tipo de entrada
			  SetTextEntry("STRING")
			  --poner el texto
			  AddTextComponentSubstringPlayerName(speed)
			  --imprimir
			  EndTextCommandDisplayText(0.9,0.7)

			  
			  end
			  
		  end 
	  end)

	  TriggerServerEvent('anuncio',"puto el que lo lea")


	  RegisterCommand("jdare",function()

		TriggerEvent('chat:addMessage', {
			color = { 255, 0, 0},
			multiline = true,
			args = {"Server","commando de jdare"}
		  
		  }

		)
	end,false)


RegisterCommand("guardar", function(source,args)

	TriggerServerEvent('save',source,args)
	TriggerEvent('chat:addMessage',{
		color = {255,0,0},
		multiline = true,
		args={"Server","los datos ingresados fueron guardados con exito"}

	})


end,false)


RegisterCommand("example",function(source) 
	TriggerEvent('chat:addMessage',{
		color={255,0,0},
		multiline= true;
		args={"Servidor"," "..GetPlayerServerId(source).." nombre"..GetPlayerName(source)..
	" vida "..SetEntityHealth(GetPlayerPed(-1),50).." vida "..GetEntityHealth(GetPlayerPed(-1))
	}

	})



end , false)


local v3= vector3(-1377,-2852,13)
local v2= vector2(-1300,-2846)
local v4= vector4(-1377,-2852,13,360)

local blip= AddBlipForCoord(v3.x,v3.y)
SetBlipSprite(blip,364)
SetBlipDisplay(blip,6)
SetBlipScale(blip,0.9)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString("Tacos de Tlacuache")
EndTextCommandSetBlipName(blip)

RegisterCommand("vector",function(source,args)
	SetEntityCoords(source,v4.x,v4.y,v4.z,true,true,true,false)
	SetEntityHeading(source,v4.w)
end,false)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(13)
		if Vdist2(GetEntityCoords(PlayerPedId(),false),v3) < 5000 then
		Draw3DText(v3.x,v3.y,v3.z,"Aqui estuvo Papá Tlacuache")
		print(Vdist2(GetEntityCoords(PlayerPedId(),false),v3))
		end
	end
end)





Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(5000)

		SetDiscordAppId(725596308261306378)

		SetRichPresence(GetPlayerName(source).."estoy en ".. GetStreetNameFromHashKey( GetStreetNameAtCoord(table.unpack(GetEntityCoords(source)))))
		SetDiscordRichPresenceAsset("ss")
		SetDiscordRichPresenceAssetText(GetPlayerName(source))

		SetDiscordRichPresenceAssetSmall("ss")
		SetDiscordRichPresenceAssetSmallText("Health : "..(GetEntityHealth(GetPlayerPed(-1))-100))

	end


end)

























