PLUGIN.name = "Survival System"
PLUGIN.author = "ZeMysticalTaco"
PLUGIN.description = "A survival system consisting of hunger and thirst."

if SERVER then
	function PLUGIN:OnCharacterCreated(client, character)
		character:SetData("hunger", 100)
		character:SetData("thirst", 100)
	end

	function PLUGIN:PlayerLoadedCharacter(client, character)
		timer.Simple(0.25, function()
			client:SetLocalVar("hunger", character:GetData("hunger", 100))
			client:SetLocalVar("thirst", character:GetData("thirst", 100))
		end)
	end

	function PLUGIN:CharacterPreSave(character)
		local client = character:GetPlayer()

		if (IsValid(client)) then
			character:SetData("hunger", client:GetLocalVar("hunger", 0))
			character:SetData("thirst", client:GetLocalVar("thirst", 0))
		end
	end

	local playerMeta = FindMetaTable("Player")

	function playerMeta:SetHunger(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("hunger", amount)
			self:SetLocalVar("hunger", amount)
		end
	end

	function playerMeta:SetThirst(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("thirst", amount)
			self:SetLocalVar("thirst", amount)
		end
	end

	function playerMeta:TickThirst(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("thirst", char:GetData("thirst", 100) - amount)
			self:SetLocalVar("thirst", char:GetData("thirst", 100) - amount)

			if char:GetData("thirst", 100) < 0 then
				char:SetData("thirst", 0)
				self:SetLocalVar("thirst", 0)
			end
		end
	end

	function playerMeta:TickHunger(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("hunger", char:GetData("hunger", 100) - amount)
			self:SetLocalVar("hunger", char:GetData("hunger", 100) - amount)

			if char:GetData("hunger", 100) < 0 then
				char:SetData("hunger", 0)
				self:SetLocalVar("hunger", 0)
			end
		end
	end

	function PLUGIN:PlayerTick(ply)
		if ply:GetNetVar("hungertick", 0) <= CurTime() then
			ply:SetNetVar("hungertick", ix.config.Get("hunger_decay_speed", 300) + CurTime())
			ply:TickHunger(ix.config.Get("hunger_decay_amount", 1))
		end

		if ply:GetNetVar("thirsttick", 0) <= CurTime() then
			ply:SetNetVar("thirsttick", ix.config.Get("thirst_decay_speed", 300) + CurTime())
			ply:TickThirst(ix.config.Get("thirst_decay_amount", 1))
		end
	end
else
	ix.bar.Add(function()
		local status = ""
		local var = LocalPlayer():GetLocalVar("hunger", 0) / 100

		if var < 0.2 then
			status = "Starving"
		elseif var < 0.4 then
			status = "Hungry"
		elseif var < 0.6 then
			status = "Grumbling"
		elseif var < 0.8 then
			status = ""
		end

		return var, status
	end, Color(50, 205, 50), nil, "hunger")

	ix.bar.Add(function()
		local status = ""
		local var = LocalPlayer():GetLocalVar("thirst", 0) / 100

		if var < 0.2 then
			status = "Dehydrated"
		elseif var < 0.4 then
			status = "Lightly Dehydrated"
		elseif var < 0.6 then
			status = "Thirsty"
		elseif var < 0.8 then
			status = "Parched"
		end

		return var, status
	end, Color(173, 216, 230), nil, "thirst")
end

local playerMeta = FindMetaTable("Player")

function playerMeta:GetHunger()
	local char = self:GetCharacter()

	if (char) then
		return char:GetData("hunger", 100)
	end
end

function playerMeta:GetThirst()
	local char = self:GetCharacter()

	if (char) then
		return char:GetData("thirst", 100)
	end
end

function PLUGIN:AdjustStaminaOffset(client, offset)
	if client:GetHunger() < 15 or client:GetThirst() < 20 then
		return -1
	end
end

--TODO: Populate Hunger and Thirst Items.
--TODO: Drown out colors and restrict stamina restoration for hungry / thirsty players.
local hunger_items = {
	["melon"] = {
		["name"] = "Melon",
		["model"] = "models/props_junk/watermelon01.mdl",
		["desc"] = "A freshly grown watermelon.",
		["hunger"] = 40,
		["thirst"] = 40,
		["width"] = 2,
		["height"] = 2
	},
	["minimal_supplements"] = {
		["name"] = "Minimal Survival Supplement",
		["model"] = "models/gibs/props_canteen/vm_sneckol.mdl",
		["desc"] = "A small assortment of vitamins and food items, as well as a small packet of pre-packaged water, designed to keep you minimally fed and operating.",
		["hunger"] = 10,
		["thirst"] = 10
	},
	["can_of_beans"] = {
		["name"] = "Can of Beans",
		["model"] = "models/props_junk/garbage_metalcan001a.mdl",
		["desc"] = "A can of grown beans.",
		["hunger"] = 20,
		["thirst"] = 0
	},
	["water"] = {
		["name"] = "Sparkling Water",
		["model"] = "models/props_junk/PopCan01a.mdl",
		["desc"] = "A can of water.",
		["hunger"] = 0,
		["thirst"] = 5
	},
	["normal_beer"] = {
		["name"] = "Bottle of Standard Lager",
		["model"] = "models/props_junk/garbage_glassbottle003a.mdl",
		["desc"] = "A bottle of standard craft beer, the label reads 7.3% alcohol content.",
		["hunger"] = -5,
		["thirst"] = 10,
		["empty"] = "empty_bottle",
	},
	["big_beer"] = {
		["name"] = "40oz Bottle of Lager",
		["model"] = "models/props_junk/garbage_glassbottle001a.mdl",
		["desc"] = "A large 40oz Bottle of Lager, the label reads 7.3% alcohol content.",
		["hunger"] = -15,
		["thirst"] = 30
	},
	["big_water"] = {
		["name"] = "2L Water",
		["model"] = "models/props_junk/garbage_plasticbottle003a.mdl",
		["desc"] = "A 2L jug of water.",
		["hunger"] = 2,
		["thirst"] = 45
	},
	["standard_supplement"] = {
		["name"] = "Standard Supplements",
		["model"] = "models/props_lab/jar01b.mdl",
		["desc"] = "A standard supplement jar containing a few food items.",
		["hunger"] = 25,
		["thirst"] = 0
	}
}

for k, v in pairs(hunger_items) do
	local ITEM = ix.item.Register(k, nil, false, nil, true)
	ITEM.name = v.name
	ITEM.description = v.desc
	ITEM.model = v.model
	ITEM.width = v.width or 1
	ITEM.height = v.height or 1
	ITEM.category = "Survival"
	ITEM.hunger = v.hunger or 0
	ITEM.thirst = v.thirst or 0
	ITEM.empty = v.empty or false
	function ITEM:GetDescription()
		return self.description
	end
	ITEM.functions.Consume = {
		name = "Consume",
		OnCanRun = function(item)
			if item.thirst != 0 then
				if item.player:GetCharacter():GetData("thirst", 100) >= 100 then
					return false
				end
			end
			if item.hunger != 0 then
				if item.player:GetCharacter():GetData("hunger", 100) >= 100 then
					return false
				end
			end
		end,
		OnRun = function(item)
			local hunger = item.player:GetCharacter():GetData("hunger", 100)
			local thirst = item.player:GetCharacter():GetData("thirst", 100)
			item.player:SetHunger(hunger + item.hunger)
			item.player:SetThirst(thirst + item.thirst)
			item.player:EmitSound("physics/flesh/flesh_impact_hard6.wav")
			if item.empty then
				local inv = item.player:GetCharacter():GetInventory()
				inv:Add(item.empty)
			end
		end
	}
end