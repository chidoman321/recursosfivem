--[[To prevent requests from stalling, you have to return the callback at all times 
- even if containing just an empty object, or {"ok":true}, or similar.
]]--


--ClearGpsCustomRoute()
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
        --SetBlipRotation(blip, 0)
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

            --solo pide coordenadas recuerda que las coordenadas son reales asi que siempre
            --debes poner el punto decimal seguido de un 0 por defecto 
            
 --[[
            --hacer blips
            blip =AddBlipForCoord(200.0, 200.0, 5.0)
            SetBlipColour(blip, 0x000000)

            --cambiar el icono
            SetBlipSprite(blip, 326)

            --indicar que sera un string personalizado
            BeginTextCommandSetBlipName("STRING")
            --añadir el string
            AddTextComponentString("chidoman dev") --string con el nombre del blip
            --mostrar el nombre
            EndTextCommandSetBlipName(blip)]]


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

            --imprimir hello world
            --[[
            BeginTextCommandDisplayText('STRING')
            AddTextComponentSubstringPlayerName('Hello, World!')
            EndTextCommandDisplayText(0.5, 0.5)--]]

            --texto de ayuda arriba en la parte izquierda
            --[[
            BeginTextCommandDisplayHelp("STRING")
            AddTextComponentSubstringPlayerName("Some text")
            EndTextCommandDisplayHelp(0, 0, 1, -1)]]

            --imprimir subtitulos
            --[[
            BeginTextCommandPrint("STRING")
            AddTextComponentSubstringPlayerName("asdasd")
            EndTextCommandPrint(5000, true)]]
            
            --notificacion arriba de el mapa
            --[[
            BeginTextCommandThefeedPost("STRING")
            AddTextComponentSubstringPlayerName("ouh sheet")
            --p0 is important flash,p1 pausemenu pestaña info
            EndTextCommandThefeedPostTicker(true, true)]]

           --usando labels del juego directorio de los labels usando openiv
           --GTA V\update\update.rpf\x64\data\lang
            --[[
            BeginTextCommandDisplayHelp('GB_ASLT_GO1')
            EndTextCommandDisplayHelp(0, 0, 1, -1)
            print(EndTextCommandIsMessageDisplayed())]]
            --agregar place holders

            --usando placeholders ~y~pone el color yellow sobre la siguiente palabra
            --[[
            BeginTextCommandDisplayHelp('STRING')
            --referencia de los placeholders https://pastebin.com/nqNYWMSB
            AddTextComponentSubstringPlayerName("Go to ~y~ noplace ~b~ asd ~BLIP_TATTOO~ down")
            EndTextCommandDisplayHelp(0, 0, 1, -1)]]

            --[[
            -- imprimir premio o rp
            BeginTextCommandThefeedPost("STRING")
            AddTextComponentSubstringPlayerName("Asaltante de combis")
            EndTextCommandThefeedPostAward('CHAR_DEFAULT', 'CHAR_DEFAULT', 200, 0, "FM_GEN_UNLOCK")]]
         

            --muestra la zona , creoque se refiere a la colonia en la parte inferior derechas
            --DisplayAreaName(true)

            --muestra el dinero
            --DisplayCash(true)
            --para activar o desactivar el hud
            DisplayHud(true)
            --quitar el mapa("radar")
            DisplayRadar(true)
            
            --flash al mapa
            --FlashMinimapDisplay()
            --flash al mapa con color de hub
            --FlashMinimapDisplayWithColor("HUD_COLOUR_HB_BLUE")

            --flash de nivel de busqueda
            --FlashWantedDisplay(true)
            
            --mensaje con foto
            --[[
            BeginTextCommandThefeedPost("STRING")
            AddTextComponentSubstringPlayerName("Caile puto , a la salida")
            EndTextCommandThefeedPostMessagetext("CHAR_DEFAULT","CHAR_DEFAULT",true,3,"whatsapp","el gueson")]]
            
            --[[
            --aumentar los stats
            BeginTextCommandThefeedPost("PS_UPDATE")
            EndTextCommandThefeedPostStats("PSF_STAMINA",14,50,25,false,"CHAR_SOCIAL_CLUB","CHAR_SOCIAL_CLUB")]]
            
            --hacer ruta
            --SetNewWaypoint(200.0,200.0)
    end 

    --hacer un menu no funciona muy bien
   --[[
    AddTextEntry("FACES_WARNH2", "FUNCIONES HUD")
    AddTextEntry("QM_NO_0", "llevate la playera oficial")
    AddTextEntry("QM_NO_3", "o suscribete  a nuestro fatflix")
    DrawFrontendAlert("FACES_WARNH2", "QM_NO_0", 3, 3, "QM_NO_3", 2, -1, false, "FM_NXT_RAC", "QM_NO_1", true, 10)
    --]]
    Citizen.Wait(0)
end


end)

