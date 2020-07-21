

    print("se anuncio lo siguiente")
    
    TriggerClientEvent("chat:addMessage", -1,
    { color = {255,0,0} ,multiline = true, args={"Servidor","welcome"}})


    RegisterNetEvent("save")
                    -- id,name, args
    AddEventHandler("save",function(source,args)

        args = table.concat(args," ")
        MySQL.Async.fetchAll("INSERT INTO prueba (nam,args) values (@source,@args)",
        {["@source"] = source ,["@args"]= args},function(result)
            print(json.encode(result))
          end
        )

        print(GetPlayerName(source))


    end)

    
    RegisterCommand("get" , function(source,args)

        MySQL.Async.fetchAll("SELECT * FROM prueba ORDER BY id DESC LIMIT 1",{},function(result)
        
            print(json.encode(result))
            print(result[1].id)
        
        end)
    
    end,false)

    RegisterCommand(

    "pingu",function(source) 
      print(  GetPlayerPing(source))
       -- PlaySound(-1, "CANCEL", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1);
    end,false
    )


