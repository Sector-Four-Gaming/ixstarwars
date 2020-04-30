local PLUGIN = PLUGIN
PLUGIN.name = "Stuff"
PLUGIN.author = "Shavargo"
PLUGIN.description = "Adds random stuff."

PLUGIN.whitelist = {
    "STEAM_0:1:5952196",
    "STEAM_0:0:28232939",
    "STEAM_0:0:148871113",
    "STEAM_0:1:105385539"
}

PLUGIN.urls = {
    ["Discord"] = "https://discord.gg/SCeUKeT",
    ["Content"] = "https://steamcommunity.com/sharedfiles/filedetails/?id=1988208528"
}

-- SteamID whitelist for Business Menu
function PLUGIN:CanPlayerUseBusiness(client, uniqueID)
    for k, v in pairs(PLUGIN.whitelist) do
        if client:SteamID() != k then 
            return
        end
    end
end

-- Require pet flags to open Q menu
function PLUGIN:OnSpawnMenuOpen()
    local client = LocalPlayer()
    local char = client:GetCharacter()
    if !char:HasFlags("pet") then return false end
end

-- Give yourself all flags
ix.command.Add("GetFlags", {
    description = "Gives yourself all flags or another person pet flags.",
    adminOnly = true,
    OnRun = function(self, client, target)
        ix.flag.list = ix.flag.list or {}
        local flags = ""
        for k, v in pairs(ix.flag.list) do
            client:GetCharacter():GiveFlags(k)
            flags = flags .. k
        end
        client:NotifyLocalized("Given yourself: " .. flags .. " flags.")
    end
})

-- Adding commands for URLs.
for k,v in pairs(PLUGIN.urls) do
    local desc = "Directs you to our " .. k .. "."
    ix.command.Add(k, {
        description = desc,
        OnRun = function(self, client)
            local url = v
            local lua = "gui.OpenURL('" .. url .. "')" 
            client:SendLua(lua)
        end
    })
end