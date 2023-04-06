-- by: Shredder#9064

ESX = exports["es_extended"]:getSharedObject()

exports.qtarget:Player({
    options = {
    {
      event = "pokaziIgracuLicnu",
      icon = "fa-solid fa-id-card",
      label = "Pokazi Licnu Kartu",
      num = 1,
    },
		{
			event = "pokaziIgracuVozacku",
			icon = "fa-solid fa-id-card",
			label = "Pokazi Vozacku Dozvolu",
      num = 2,
		},
		{
			event = "pokaziIgracuOruzije",
			icon = "fa-solid fa-id-card",
			label = "Pokazi Dozvolu Za Oruzije",
      num = 3,
		},
  },
  distance = 3
})

AddEventHandler("pokaziIgracuLicnu", function()
  ESX.TriggerServerCallback("proveriItem", function(shredderBoss)
  if shredderBoss then
  local player, distance = ESX.Game.GetClosestPlayer()
  if player ~= nil then
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId())) -- Vama pokazuje
  -----------------------------------------------------------------------------------------------------------------------
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player)) -- Pokazuje igracu
end
else
  ESX.ShowNotification("Nemate Licnu Kartu")
end
end, 'licna')
end)

AddEventHandler("pokaziIgracuVozacku", function()
  ESX.TriggerServerCallback("proveriItem", function(shredderBoss)
    if shredderBoss then
      local player, distance = ESX.Game.GetClosestPlayer()
      if player ~= nil then
        TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver') -- Vama pokazuje
        ---------------------------------------------------------------------------------------------------------------------------------
          TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver') -- Pokazuje igracu
        end
    else
      ESX.ShowNotification("Nemate Vozacku Dozvolu")
    end
  end, 'vozacka')
end)

AddEventHandler("pokaziIgracuOruzije", function()
  ESX.TriggerServerCallback("proveriItem", function(shredderBoss)
    if shredderBoss then
        local player, distance = ESX.Game.GetClosestPlayer()
        if player ~= nil then
        TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon') -- Vama pokazuje
        ---------------------------------------------------------------------------------------------------------------------------------
          TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon') -- Pokazuje igracu
        end
    else
      ESX.ShowNotification("Nemate Dozvolu za Oruzije")
    end
end, 'oruzije')
end)

-- za inventory, kada imate licnu kartu ili bilo koju licencu kad idete desni klik na nju pa koristi onda vam prikaze a mozete i na slot da stavite pa na broj otvorite

AddEventHandler("pogledajLicnu", function()
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId())) -- Vama pokazuje
end)

AddEventHandler("pogledajVozacku", function()
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver') -- Vama pokazuje
end)

AddEventHandler("pogledajOruzije", function()
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon') -- Vama pokazuje
end)

