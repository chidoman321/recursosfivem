--[[To prevent requests from stalling, you have to return the callback at all times 
- even if containing just an empty object, or {"ok":true}, or similar.
]]--


ClearGpsCustomRoute()
SetFrontendActive(false)
Citizen.CreateThread(function() 

while true do
    if IsControlJustPressed(0, 20) then
        --refresh menu RestartFrontendMenu('fe_menu_version_pre_lobby', -1)
        --SetFrontendActive(false)
    end

    if IsControlPressed(0, 36) then --control izq
            --BOOL p1 is a toggle to define the game in pause.
                                    --p0,p1,p2
            --[[BOOL p1 is a toggle to define the game in pause.
            [30/03/2017] ins1de :
            the int p2 is actually a component variable. When the pause menu is visible, 
            it opens the tab related to it.]]
        --  fe_menu_version_mp_pause -1 abre el mapa,1 abre info,3 abre galeria,5 abre game,6 settings,10 stats
        --  fe_menu_version_sp_pause 1 MAP ,1 BRIEF ,3 GALERIA,5 GAME,6 settings,10 stats
        --  fe_menu_version_creator_pause 1 MAP ,1 BRIEF ,3 GALERIA,5 GAME,6 settings,10 stats
        --  fe_menu_version_cutscene_pause blurry screen with 2 buttoms
        --  fe_menu_version_savegame screen with a save game option with 2 buttons
        -- ActivateFrontendMenu('fe_menu_version_savegame',0, 1)

        --SetFrontendActive(false)
        --RestartFrontendMenu('fe_menu_version_corona_lobby', -1)

        --blips
        --obtener coordenadas actuales

        --[[local coords = GetEntityCoords(PlayerPedId())
        --añadir el blip p3 es el ancho y p4 es el alto
        local blip = AddBlipForArea(coords.x, coords.y, coords.z, 100.0, 50.0)
        --para que no rote el blip
        SetBlipRotation(blip, 0)
        --poner un color al blip
        --0x000000 = blanco  https://runtime.fivem.net/doc/natives/?_0x03D7FB09E75D6B7E
        SetBlipColour(blip, 0x000000)
        print(coords.x)
        ]]--

        --añadir un blip a una cordenada del mapa
       --[[ blip =AddBlipForCoord(200.0, 200.0, 5.0)
        SetBlipColour(blip, 0x000000)]]--
        
        -- regresa un blip de color rojo
       --[[ blip= AddBlipForEntity(GetPlayerPed(-1))
        --para hacer friendly el blip,lo cambia a color azul
        SetBlipAsFriendly(blip, true)
        ]]

        --[[
        coords = GetEntityCoords(GetPlayerPed(-1))
        --circunferencia p3 es el radio
        blip = AddBlipForRadius(coords.x, coords.y, coords.z, 60.0)
        ]]

        --[[]]

            --poner un punto al gps
            --solo pide coordenadas recuerda que las coordenadas son reales asi que siempre
            --debes poner el punto decimal seguido de un 0 por defecto AddPointToGpsCustomRoute
            
 --[[
            blip =AddBlipForCoord(200.0, 200.0, 5.0)
            SetBlipColour(blip, 0x000000)

            --agregar el nomre del blip
            AddTextComponentSubstringBlipName(blip)]]


            --[[
            --quita el rectangulo negro y deja solo el spinner
            BeginTextCommandBusyspinnerOn("help brotha")

            
            --poner una barra de carga
            SetLoadingPromptTextEntry("STRING")
            AddTextComponentSubstringPlayerName("xd")
            --3 white clockwise , 4 orange, 5 wihte anticlockwise
            ShowLoadingPrompt(3)
            Citizen.Wait(1000)
            RemoveLoadingPrompt()]]

            --texto de ayuda arriba en la parte izquierda
            BeginTextCommandDisplayHelp("STRING")
            AddTextComponentSubstringPlayerName("Some text")
            EndTextCommandDisplayHelp(0, 0, 1, -1)
    end 
    
    
    Citizen.Wait(0)
end


end)

