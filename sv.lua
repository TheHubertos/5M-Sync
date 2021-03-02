local przerwa = 0

function wolfi_przerwa(czas)
        przerwa = czas
        repeat
        przerwa = przerwa - 1
        Citizen.Wait(1000)
        until(przerwa == 0)
end

RegisterCommand("synchro", function(source, args, raw)
if przerwa == 0 then
        TriggerClientEvent("wolfi:synchro", source)
        TriggerEvent('esx:showNotification', 'Synchronizacja udana!')
        wolfi_przerwa(120)
elseif  przerwa > 0 then
        TriggerEvent('esx:showNotification', 'Odczekaj przed następnym użyciem!')
end
end)