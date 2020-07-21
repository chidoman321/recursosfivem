print("hola mundo")

RegisterCommand('holamundo', function(source,ars) 
    TriggerEvent('chat:addMessage', 
            {
                color = {0,255,0},
                multiline = true,
                args = {"Servidor: ", "Te felicito"..ars[1]..source}
            })


end, false)


exports.t:x()

