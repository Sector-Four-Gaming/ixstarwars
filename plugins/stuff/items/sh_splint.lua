ITEM.name = "Splint"
ITEM.model = Model("models/items/healthkit.mdl")
ITEM.description = "A piece of medical equipment used to keep an injured body part from moving and to protect it from any further damage."
ITEM.uniqueID = "splint"
ITEM.category = "Medical"
ITEM.price = 100

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 15, 100))
	end
}