RegisterNetEvent("wolfi:synchro")
AddEventHandler("wolfi:synchro", function()
  TriggerEvent('esx_ambulancejob:revive')
  Citizen.Wait(3000)
  SetEntityHealth(PlayerPedId(), 0)
  print("[A-RP] Synchronizacja udana.")
end)