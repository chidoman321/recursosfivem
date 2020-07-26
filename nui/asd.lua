
--asociar  un nombre con un modelo/regresa id del target
function CreateNamedRenderTargetForModel(name, model)
	local handle = 0
	if not IsNamedRendertargetRegistered(name) then
		RegisterNamedRendertarget(name, 0)
	end
	if not IsNamedRendertargetLinked(model) then
		LinkNamedRendertarget(model)
	end
	if IsNamedRendertargetRegistered(name) then
		handle = GetNamedRendertargetRenderId(name)
	end

	return handle
end
--obtener dimensiones
local scale = 1.5
local screenWidth = math.floor(1280 / scale)
local screenHeight = math.floor(720 / scale)

local model = GetHashKey('xm_prop_x17dlc_monitor_wall_01a')
--obtener el id del target
local handle = CreateNamedRenderTargetForModel('prop_x17dlc_monitor_wall_01a', model)
--crear un diccionario de texturas en tiempo de ejecucion
local txd = CreateRuntimeTxd('meows')
--crear el dui
d = CreateDui('https://www.youtube.com/watch?v=9cBtJYI6itg',screenWidth,screenHeight)
--hacer una textura en el diccionaria recien creado , y tiene relacion con el dui
local a = CreateRuntimeTextureFromDuiHandle(txd,'asd',GetDuiHandle(d))
local screenAngle = GetEntityHeading(PlayerPedId())
local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 15.0, 0.0)


          


Citizen.CreateThread(function() 
	while true do
		
		
         --[[   SetNuiFocus(true, true)
            SendNUIMessage({
                type = 'open'
            })]]--

            if not HasModelLoaded(model) then RequestModel(model) end

	        while not HasModelLoaded(model) do Citizen.Wait(0) end

            local screen = CreateObject(model, coords.x, coords.y, coords.z,  true, true, false)

            SetEntityHeading(screen, screenAngle or 0.0)
    
            SetTextRenderId(handle)
            SetScriptGfxDrawOrder(4)
            SetScriptGfxDrawBehindPausemenu(1)
    
            -- Draw black|off texture
            DrawRect(0.5, 0.5, 1.0, 1.0, 0, 0, 0, 255)
    
            -- Draw the dui 
    
                BlockWeaponWheelThisFrame()
                SetCurrentPedWeapon(PlayerPedId(), unarmed, 1)
                DrawSprite("meows", "asd", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
            --DrawSprite('fib_pc', 'arrow', mX / screenWidth, mY / screenHeight, 0.02, 0.02, 0.0, 255, 255, 255, 255)
    
    
            SetTextRenderId(GetDefaultScriptRendertargetRenderId())
            SetScriptGfxDrawBehindPausemenu(0)
        
            Citizen.Wait(30)
            
        
    end
end)
    
--destruir el dui
AddEventHandler('onResourceStop', function(name)
    if name == GetCurrentResourceName() then
        DestroyDui(d)
    end
end)
