ITEM.name = "Military Medical Kit"
ITEM.model = Model("models/items/healthkit.mdl")
ITEM.description = "A white packet filled with medication."
ITEM.uniqueID = "military_medical_kit"
ITEM.category = "Medical"
ITEM.price = 650

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 75, 100))
	end
}

