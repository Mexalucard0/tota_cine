ESX = nil
cine = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
    while not cine do
     if IsControlJustPressed(0, 110) then
      cine = true
      end
      Citizen.Wait(5)
   end
    
        while cine do
            DisplayRadar(false)
            ESX.UI.HUD.SetDisplay(0.0)
            TriggerEvent('es:setMoneyDisplay', 0.0)
            DrawRect(1.0, 1.0, 2.0, 0.23, 0, 0, 0, 255)
            DrawRect(1.0, 0.0, 2.0, 0.23, 0, 0, 0, 255)
            if IsControlJustPressed(0, 110) then
                cine = false
                DisplayRadar(true)
                ESX.UI.HUD.SetDisplay(1.0)
                TriggerEvent('es:setMoneyDisplay', 1.0)
            end
            Citizen.Wait(0)
        end
    end
end)