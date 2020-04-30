local PLUGIN = PLUGIN
PLUGIN.name = "Clothing System"
PLUGIN.author = "Lt. Taylor"
PLUGIN.description = "Clothing system utilizing bonemerging."

ix.util.Include("sv_hooks.lua")
ix.util.Include("sh_items.lua")

PLUGIN.DefaultClothes = {
    ["torso"] = {
        ["bmModel"] = "models/stardust/outfits/outfit_citizentunic.mdl",
        ["bmSkin"] = 0
    }
}

function PLUGIN:killAllClothing(client)
    if ents.FindByClassAndParent("prop_physics", client) ~= nil then
        for k,v in pairs(ents.FindByClassAndParent("prop_physics", client)) do
            v:Remove()
        end
    end
end

function PLUGIN:killSpecificClothing(client, id)
    if ents.FindByClassAndParent("prop_physics", client) ~= nil then
        for k,v in pairs(ents.FindByClassAndParent("prop_physics", client)) do
            if v:GetName() == id then
                v:Remove()
            end
        end
    end
end

function PLUGIN:GetSpecificClothing(client, id)
    if ents.FindByClassAndParent("prop_physics", client) ~= nil then
        for k,v in pairs(ents.FindByClassAndParent("prop_physics", client)) do
            if v:GetName() == id then
                return v
            end
        end
    else
        return false
    end
end

function PLUGIN:createClothing(client, slot, model, skin)
    local po = ents.Create("prop_physics")
    po:SetModel(model)
    po:SetParent(client, 1)
    po:SetName(slot)
    if skin ~= nil then
        po:SetSkin(skin)
    end
    po:SetPos(Vector(0, 0, 0))
    po:SetAngles(Angle(0,0,0))
    po:SetNoDraw(false)
    po:SetNotSolid(false)
    po:DrawShadow(true)
    po:AddEffects(EF_BONEMERGE)
end

function PLUGIN:PlayerSpawn(client, curChar, prevChar)
    local character = client:GetCharacter()
    if character ~= nil then
        character:SetData("armorAP", 0)
        for k, v in pairs(self.DefaultClothes) do
            PLUGIN:createClothing(client, k, v["bmModel"], v["bmSkin"])
        end
    end
end

function PLUGIN:PostPlayerDeath(ply)
    if (!IsValid(ply.ixRagdoll)) then
        PLUGIN:killAllClothing(ply)
    end
end

function PLUGIN:PlayerNoClip(client, state)
    if ents.FindByClassAndParent("prop_physics", client) ~= nil then
        for k,v in pairs(ents.FindByClassAndParent("prop_physics", client)) do
            if (state) then 
                v:SetNoDraw(true)
                v:SetNotSolid(true)
                v:DrawShadow(false)
            else 
                v:SetNoDraw(false)
                v:SetNotSolid(false)
                v:DrawShadow(true)
            end
        end
    end
end