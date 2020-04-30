ITEM.name = "Bandages"
ITEM.model = Model("models/items/healthkit.mdl")
ITEM.description = "A brown compression cloth made to stop bleeding."
ITEM.uniqueID = "bandage"
ITEM.category = "Medical"
ITEM.price = 150

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 25, 100))
	end
}