
print("hola mundo")

RegisterCommand('holamundo',function()
    TriggerEvent('chat:addMessage', {

        color={255,0,0},
        multiline=true,
        args={"Servidor ","Te felicito por completar el hola mundo"}

    })
        
    end,false)