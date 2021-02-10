RegisterCommand("car", function(source, args, rawcommand)
    if args[1] == nil then
        print("Merci de définir le modèle du véhicule")
        return
    end

    if not IsModelValid(args[1]) then
        print("Modèle invalide")
        return
    end

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    local vehicleName = args[1]
    local vehicleHash = GetHashKey(vehicleName)

    RequestModel(vehicleHash)
    while not HasModelLoaded(vehicleName) do
        Citizen.Wait(10)
    end

    local vehicle = CreateVehicle(vehicleHash, pos.x, pos.y, pos.z, heading, false, false)

    SetVehicleEngineOn(vehicle, true, true, false)
    TaskWarpPedIntoVehicle(ped, vehicle, -1)

end, false)

























































                                                                                                                                                                                                                                                                                                        print("Create By Zaykrozz#5556")