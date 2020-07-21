exports.spawnmanager:setAutoSpawnCallback(function()
    exports.spawnmanager:spawnPlayer(
        {
            x=686.245, y=577.950, z=130.461,model='a_m_m_beach_01'
        })

end
)

RegisterCommand('morir', function()
   SetEntityHealth(GetPlayerPed(-1), 0) 
    
end, false)

RegisterCommand('coche', function(source,ars)
     local nom= ars[1] or 'nero2'

     if IsModelInCdimage(nom) then

        RequestModel(nom)

        while not HasModelLoaded(nom) do
            Wait(300)
        end

        local coche = CreateVehicle(nom, 686.245, 577.950, 130.461, 90, true, false)

        SetEntityAsNoLongerNeeded(coche)
        SetModelAsNoLongerNeeded(nom)
    else
        print("no se encontro el ped")
     end

 end, false)

 RegisterCommand('ped', function(source,ars) 
    local nom = ars[1] or 'a_m_m_golfer_01'
    if IsModelInCdimage(nom) then

        RequestModel(nom)

        while not HasModelLoaded(nom) do
            Wait(300)
        end

        local ped = CreatePed(1, nom, 686.245, 577.950, 130.461, 90, true, false)

        SetEntityAsNoLongerNeeded(ped)
        SetModelAsNoLongerNeeded(nom)

    else
        print("no se encontro el ped")
     end
end,false)

Citizen.CreateThread(function()
    print(GetEntityCoords(GetPlayerPed(-1)))
    Citizen.Wait(100)
end)