# sDokumenta

1. Najbitnije je da imate skripte jsfour-idcard i esx_license da bi skripta radila

https://github.com/jonassvensson4/jsfour-idcard
https://github.com/StockholmCityRP/esx_license

2. Ovo dodajte u ox_inventory/data/items.lua

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

3. ox_inventory/web/images, Ovde ubacite slike iz foldera: Slike
