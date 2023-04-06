# sDokumenta

1. NAJBITNIJE JE DA IMAS SKRIPTU, jsfour-idcard UBACENU AKO NEMAS EVO TI LINK SKINI JE I UBACI

https://github.com/jonassvensson4/jsfour-idcard

2. OVO DODAJ U items.lua u ox_inventory

	['licna'] = {
		label = 'Licna Karta',
		weight = 1,
		client = {
			event = "pogledajLicnu",
	}
},

	['vozacka'] = {
		label = 'Vozacka Dozvola',
		weight = 1,
		client = {
			event = "pogledajVozacku",
	}
},

	['oruzije'] = {
		label = 'Dozvola za Oruzije',
		weight = 1,
		client = {
		event = "pogledajOruzije",
	  },
 },

3. OVO UBACITE U BILO KOJI SERVER SIDE, PROVERA ITEMA

ESX.RegisterServerCallback("proveriItem", function(source, cb, itemName)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer ~= nil then
        local item = xPlayer.getInventoryItem(itemName).count
        if item ~= 0 then 
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)

3. ox_inventory/web/images, OVDE UBACITE SLIKE ZA ITEME IZ FOLDERA: Slike
