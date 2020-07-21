TriggerClientEvent("createobject",GetPlayers()[1],'prop_med_bag_01',686.245,577.950,130.461)

RegisterServerEvent("getobject")
		AddEventHandler("getobject", function(object)
			print(GetEntityCoords(NetworkGetEntityFromNetworkId(object)))

end)
