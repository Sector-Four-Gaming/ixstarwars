--TODO: POPULATE CRAFTING ITEMS AND RECIPES
PLUGIN.name = "Crafting"
PLUGIN.author = "ZeMysticalTaco"
PLUGIN.description = "Replacing the business menu with crafting because that's a more sensible thing to do."
STORED_RECIPES = {}

function PLUGIN:AddRecipe(name, model, desc, requirements, results, id, skill, blueprint, guns, entity, category)
	if type(name) ~= "table" then
		local RECIPE = {}
		RECIPE["id"] = id --Unique ID of the recipe.
		RECIPE["name"] = name -- Name of the recipe.
		RECIPE["model"] = model -- Model it uses in the menu.
		RECIPE["desc"] = desc -- Description of what it is.
		RECIPE["req"] = requirements --Requirements to craft it(use item id's)
		RECIPE["results"] = results --Results of the craft (use item id's)
		RECIPE["blueprint"] = blueprint or false
		RECIPE["guns"] = guns or false
		RECIPE["entity"] = entity or false
		RECIPE["category"] = category or "Miscellaneous"

		if skill then
			RECIPE["skill"] = skill
		end

		STORED_RECIPES[id] = RECIPE
	else
		for k, v in pairs(name) do
		RECIPE["id"] = k --Unique ID of the recipe.
		RECIPE["name"] = v.name -- Name of the recipe.
		RECIPE["model"] = v.model -- Model it uses in the menu.
		RECIPE["desc"] = v.desc -- Description of what it is.
		RECIPE["req"] = v.requirements --Requirements to craft it(use item id's)
		RECIPE["results"] = v.results --Results of the craft (use item id's)
		RECIPE["blueprint"] = v.blueprint or false
		RECIPE["guns"] = v.guns or false
		RECIPE["entity"] = v.entity or false
		RECIPE["category"] = v.category or "Miscellaneous"

		end
	end
end
--[[-------------------------------------------------------------------------
TODO: For release, demonstrate full capacity of plugin.
---------------------------------------------------------------------------]]
local NEW_RECIPES = {
["blueprint_artifice_energycell"] = {
["name"] = "Energy Cell",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One artifice schematics.",
["requirements"] = {["scavenged_compound_silica"] = 2, ["scavenged_metal_desh"] = 2, ["sliced_power_tube"] = 1},
["results"] = {["energycell"] = 1},
["category"] = "Blueprints - Artificing",
["skill"] = {["artifice"] = 1}
},
["blueprint_blaster_a180"] = {
["name"] = "A-180 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_a180"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_a280"] = {
["name"] = "A-280 Blaster Rifle",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_a280"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_a280c"] = {
["name"] = "A280c Blaster Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_a280c"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_a280cfe"] = {
["name"] = "A280-CFE Blaster Rifle",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_a280cfe"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_blurrg1120"] = {
["name"] = "Blurrg-1120 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_blurrg1120"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_bowcaster"] = {
["name"] = "Bowcaster Laser Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_bowcaster"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_bryar"] = {
["name"] = "K-16 Bryar Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_bryar"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_ca87"] = {
["name"] = "CA-87 Shock Blaster",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_ca87"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_cr2"] = {
["name"] = "CR-2 Heavy Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_cr2"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dc15a"] = {
["name"] = "DC-15A Blaster Repeater",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dc15a"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dc15s"] = {
["name"] = "DC-15S Blaster Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dc15s"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dc17"] = {
["name"] = "DC-17 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dc17"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_defender"] = {
["name"] = "Defender Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_defender"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dh17"] = {
["name"] = "DH-17 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dh17"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dl18"] = {
["name"] = "DL-18 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dl18"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dl44"] = {
["name"] = "DL-44 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dl44"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dlt19"] = {
["name"] = "DLT-19 Blaster Repeater",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dlt19"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dlt20"] = {
["name"] = "DLT-20a Blaster Rifle",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dlt20a"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dlt34"] = {
["name"] = "DLT-34 Blaster Repeater",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dlt34"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_dt12"] = {
["name"] = "DT-12 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_dt12"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_e11"] = {
["name"] = "E-11 Blaster Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_e11"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_ee3"] = {
["name"] = "EE-3 Blaster Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_ee3"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_ee4"] = {
["name"] = "EE-4 Blaster Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_ee4"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_el16hfe"] = {
["name"] = "EL-16HFE Blaster Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_el16hfe"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_emprifle"] = {
["name"] = "EMP Rifle",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_emprifle"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_f11"] = {
["name"] = "F-11D Blaster Carbine",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_f11"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_fwmb10k"] = {
["name"] = "FWMB-10K Blaster Repeater",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_fwmb10k"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_iqa11"] = {
["name"] = "IQA-11 Blaster Rifle",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_iqa11"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_relbyk23"] = {
["name"] = "Relby K-23 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_relbyk23"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_rg4d"] = {
["name"] = "RG-4D Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_rg4d"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_rk3"] = {
["name"] = "RK-3 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_rk3"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_rt97c"] = {
["name"] = "RT-97c Blaster Repeater",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_rt97c"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_s5"] = {
["name"] = "S-5 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_s5"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_t21"] = {
["name"] = "T-21 Blaster Repeater",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_t21"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_tl50"] = {
["name"] = "TL-50 Blaster Repeater",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_tl50"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_tusken"] = {
["name"] = "Cycler Rifle",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One kinetic weapon schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_cycler"] = 1},
["category"] = "Blueprints - Kinetic Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_valken38"] = {
["name"] = "Valken-38 Blaster Rifle",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_valken38"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_blaster_x8"] = {
["name"] = "X-8 Blaster Pistol",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One blaster schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_desh"] = 3, ["sliced_power_tube"] = 1},
["results"] = {["weapon_x8"] = 1},
["category"] = "Blueprints - Blaster Weapons",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_barrel_ext"] = {
["name"] = "Extended Blaster Barrel",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 6, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_barrel_ext"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_barrel_standard"] = {
["name"] = "Standard Blaster Barrel",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 4, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_barrel_standard"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_bipod"] = {
["name"] = "Blaster Bipod",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 8, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_bipod"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_capacitor_damage"] = {
["name"] = "Charged Blaster Capacitor",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 8, ["sliced_power_tube"] = 1, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_capacitor_damage"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_capacitor_damage_enh"] = {
["name"] = "Overcharged Blaster Capacitor",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Three Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 8, ["sliced_power_tube"] = 1, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_capacitor_damage_enh"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_capacitor_speed"] = {
["name"] = "Accelerated Blaster Capacitor",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 8, ["sliced_power_tube"] = 1, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_capacitor_speed"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_capacitor_speed_enh"] = {
["name"] = "Rapid-Fire Blaster Capacitor",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Three Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 8, ["sliced_power_tube"] = 1, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_capacitor_speed_enh"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_cycler"] = {
["name"] = "Blaster Auto Cycler",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 8, ["sliced_power_tube"] = 1, ["sliced_modification_enhancer"] = 1},
["results"] = {["att_auto_cycler"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_foregrip"] = {
["name"] = "Blaster Foregrip",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 5, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["att_foregrip"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_foregrip_ext"] = {
["name"] = "Blaster Foregrip (Extended)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 7, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["att_foregrip_ext"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_grip"] = {
["name"] = "Blaster Vertical Grip",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 7, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["att_grip"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_carbine"] = {
["name"] = "Extended Carbine Mag (15+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
{["scavenged_metal_durasteel"] = 4, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["att_mag_carbine"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_carbine_enh"] = {
["name"] = "Extended Carbine Mag (25+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 6, ["scavenged_compound_fibermesh"] = 4},
["results"] = {["att_mag_carbine_enh"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_pistol"] = {
["name"] = "Extended Pistol Mag (8+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 4, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["att_mag_pistol"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_pistol_ext"] = {
["name"] = "Extended Pistol Mag (16+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 6, ["scavenged_compound_fibermesh"] = 4},
["results"] = {["att_mag_pistol_ext"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_rifle"] = {
["name"] = "Extended Rifle Mag (25+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 4, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["att_mag_rifle"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_rifle_ext"] = {
["name"] = "Extended Rifle Mag (50+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 6, ["scavenged_compound_fibermesh"] = 4},
["results"] = {["att_mag_rifle_ext"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_sniper"] = {
["name"] = "Extended Sniper Mag (5+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 4, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["att_mag_sniper"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_mag_sniper_ext"] = {
["name"] = "Extended Sniper Mag (10+)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 6, ["scavenged_compound_fibermesh"] = 4},
["results"] = {["att_mag_sniper_ext"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_x2_red"] = {
["name"] = "Laser Optic 2x (Red)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 6, ["scavenged_compound_fibermesh"] = 3},
["results"] = {["att_optic_2x_red"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_x2_blue"] = {
["name"] = "Laser Optic 2x (Blue)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_2x_blue"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_x2_green"] = {
["name"] = "Laser Optic 2x (Green)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_2x_green"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_x2_teal"] = {
["name"] = "Laser Optic 2x (Teal)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_2x_teal"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_x2_purple"] = {
["name"] = "Laser Optic 2x (Purple)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_2x_purple"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_reflex_red"] = {
["name"] = "Laser Optic Reflex (Red)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_reflex_red"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_reflex_blue"] = {
["name"] = "Laser Optic Reflex (Blue)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_reflex_blue"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_reflex_green"] = {
["name"] = "Laser Optic Reflex (Green)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_reflex_green"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_reflex_teal"] = {
["name"] = "Laser Optic Reflex (Teal)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_reflex_teal"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_reflex_purple"] = {
["name"] = "Laser Optic Reflex (Purple)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_reflex_purple"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_8x_red"] = {
["name"] = "Laser Optic 8x (Red)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_8x_red"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_8x_blue"] = {
["name"] = "Laser Optic 8x (Blue)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_8x_blue"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_8x_green"] = {
["name"] = "Laser Optic 8x (Green)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_8x_green"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_8x_teal"] = {
["name"] = "Laser Optic 8x (Teal)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_8x_teal"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_8x_purple"] = {
["name"] = "Laser Optic 8x (Purple)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_8x_purple"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_12x_red"] = {
["name"] = "Laser Optic 12x (Red)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_12x_red"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_12x_blue"] = {
["name"] = "Laser Optic 12x (Blue)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_12x_blue"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_12x_green"] = {
["name"] = "Laser Optic 12x (Green)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_12x_green"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_12x_teal"] = {
["name"] = "Laser Optic 12x (Teal)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_12x_teal"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_12x_purple"] = {
["name"] = "Laser Optic 12x (Purple)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_12x_purple"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_mod_optic_tusken"] = {
["name"] = "Cycler Rifle Scope 8X",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One Weapon mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["researched_compound_flexiglass"] = 2},
["results"] = {["att_optic_cycler"] = 1},
["category"] = "Blueprints - Blaster Mods",
["skill"] = {["armstech"] = 1}
},
["blueprint_outfit_imperialuniform_army"] = {
["name"] = "Imperial Uniform (Army)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_imperialuniform_army"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_imperialuniform_isb"] = {
["name"] = "Imperial Uniform (ISB)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_imperialuniform_isb"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_imperialuniform_navy"] = {
["name"] = "Imperial Uniform (Navy)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_imperialuniform_navy"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_imperialuniform_tan"] = {
["name"] = "Imperial Uniform (Tan)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_imperialuniform_tan"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_imperialuniform_standard"] = {
["name"] = "Imperial Uniform (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_imperialuniform_standard"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebelscout_standard"] = {
["name"] = "Rebel Scout Jacket (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebelscout_standard"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebelscout_navy"] = {
["name"] = "Rebel Scout Jacket (Navy)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebelscout_navy"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebelscout_urban"] = {
["name"] = "Rebel Scout Jacket (Urban)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebelscout_urban"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebelscout_woodland"] = {
["name"] = "Rebel Scout Jacket (Woodland)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shadowsilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebelscout_woodland"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebeltrooper_standard"] = {
["name"] = "Rebel Trooper Jacket (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebeltrooper_standard"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebeltrooper_navy"] = {
["name"] = "Rebel Trooper Jacket (Navy)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebeltrooper_navy"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebeltrooper_tan"] = {
["name"] = "Rebel Trooper Jacket (Tan)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebeltrooper_tan"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebelvanguard_standard"] = {
["name"] = "Rebel Vanguard Jacket (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_lashaa_silk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebelvanguard_standard"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebelvanguard_navy"] = {
["name"] = "Rebel Vanguard Jacket (Navy)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_lashaa_silk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebelvanguard_navy"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_rebelvanguard_urban"] = {
["name"] = "Rebel Vanguard Jacket (Urban)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_lashaa_silk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_rebelvanguard_urban"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_scout_standard"] = {
["name"] = "Scout Trooper Fatigues (",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shimmersilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_scout_standard"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_scout_desert"] = {
["name"] = "Scout Trooper Fatigues (",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shimmersilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_scout_desert"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_scout_forest"] = {
["name"] = "Scout Trooper Fatigues (",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shimmersilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_scout_forest"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_scout_stormcommando"] = {
["name"] = "Scout Trooper Fatigues (",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["fabric_shimmersilk"] = 5, ["scavenged_metal_bronzium"] = 2},
["results"] = {["outfit_scout_stormcommando"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_skiff"] = {
["name"] = "Skiff Outfit",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["scavenged_metal_bronzium"] = 5, ["scavenged_compound_plastoid"] = 3},
["results"] = {["outfit_skiff"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_snowtrooper"] = {
["name"] = "Snowtrooper Fatigues",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 6, ["scavenged_compound_plastoid"] = 4},
["results"] = {["outfit_snowtrooper"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_stormtrooper"] = {
["name"] = "Stormtrooper Fatigues",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 6, ["scavenged_compound_plastoid"] = 4},
["results"] = {["outfit_stormtrooper"] = 1},
["category"] = "Blueprints - Outfits",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_imperialuniform_combatchest"] = {
["name"] = "Imperial Combat Chestplate",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 5, ["scavenged_compound_plastoid"] = 4},
["results"] = {["attachment_outfit_imperialuniform_combatchest"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_imperialuniform_combatbelt"] = {
["name"] = "Imperial Combat Belt",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_imperialuniform_combatbelt"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_imperialuniform_combatbeltgear"] = {
["name"] = "Imperial Combat Belt Gear",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_imperialuniform_combatbeltgear"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_imperialuniform_armypouch"] = {
["name"] = "Imperial Army Pouch",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_imperialuniform_armypouch"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_imperialuniform_reinforcements"] = {
["name"] = "Imperial Combat Reinforcements",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["scavenged_metal_desh"] = 5, ["scavenged_compound_plastoid"] = 3},
["results"] = {["attachment_outfit_imperialuniform_reinforcements"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_imperialuniform_armyutilitykit"] = {
["name"] = "Imperial Army Utility Kit",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_imperialuniform_armyutilitykit"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_imperialuniform_armygearstraps"] = {
["name"] = "Imperial Army Gear Straps",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_imperialuniform_armygearstraps"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebelscout_rank"] = {
["name"] = "Rebel Scout Rank Palette",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebelscout_rank"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebelscout_satchel"] = {
["name"] = "Rebel Scout Satchel",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebelscout_satchel"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebeltrooper_rank"] = {
["name"] = "Rebel Trooper Rank Palette",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebeltrooper_rank"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebeltrooper_satchel"] = {
["name"] = "Rebel Trooper Satchel",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebeltrooper_satchel"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebeltrooper_upgrade"] = {
["name"] = "Rebel Trooper Jacket Upgrade",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebeltrooper_upgrade"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebelvanguard_rank"] = {
["name"] = "Rebel Vanguard Rank Palette",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebelvanguard_rank"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebelvanguard_satchel"] = {
["name"] = "Rebel Vanguard Satchel",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebelvanguard_satchel"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_rebelvanguard_grenades"] = {
["name"] = "Rebel Vanguard Grenade Satchel",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 2, ["scavenged_compound_silica"] = 2},
["results"] = {["attachment_outfit_rebelvanguard_grenades"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_scouttrooper_chestplate"] = {
["name"] = "Scout Trooper Chestplate",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_durasteel"] = 5},
["results"] = {["attachment_outfit_scouttrooper_chestplate"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_scouttrooper_armplates"] = {
["name"] = "Scout Trooper Armplates",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_durasteel"] = 5},
["results"] = {["attachment_outfit_scouttrooper_armplates"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_scouttrooper_shoulderplates"] = {
["name"] = "Scout Trooper Shoulderplates",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_durasteel"] = 5},
["results"] = {["attachment_outfit_scouttrooper_shoulderplates"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_scouttrooper_elbowpads"] = {
["name"] = "Scout Trooper Elbowpads",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_durasteel"] = 5},
["results"] = {["attachment_outfit_scouttrooper_elbowpads"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_scouttrooper_kneepads"] = {
["name"] = "Scout Trooper Kneepads",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One  outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_durasteel"] = 5},
["results"] = {["attachment_outfit_scouttrooper_kneepads"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_scouttrooper_belt"] = {
["name"] = "Scout Trooper Belt",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_durasteel"] = 5},
["results"] = {["attachment_outfit_scouttrooper_belt"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_skiff_shoulderpads"] = {
["name"] = "Skiff Shoulderpads",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["scavenged_metal_bronzium"] = 3, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_skiff_shoulderpads"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_stormtrooper_shoulderpads"] = {
["name"] = "Stormtrooper Shoulderpads",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 4, ["scavenged_metal_durasteel"] = 4},
["results"] = {["attachment_outfit_stormtrooper_shoulderpads"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_stormtrooper_pauldron_black"] = {
["name"] = "Stormtrooper Pauldron Black",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics",
["requirements"] = {["fabric_shimmersilk"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_stormtrooper_pauldron_black"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_mod_stormtrooper_pauldron_orange"] = {
["name"] = "Stormtrooper Pauldron Orange",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["fabric_shimmersilk"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_stormtrooper_pauldron_orange"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_mod_stormtrooper_shouldergear"] = {
["name"] = "Stormtrooper Shouldergear",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["fabric_shimmersilk"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["attachment_outfit_stormtrooper_shouldergear"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_outfit_mod_stormtrooper_chestplate"] = {
["name"] = "Stormtrooper Chestplate",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 5, ["scavenged_metal_durasteel"] = 5},
["results"] = {["attachment_outfit_stormtrooper_chestplate"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_stormtrooper_lowerplate"] = {
["name"] = "Stormtrooper Lowerplate",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["scavenged_metal_durasteel"] = 3},
["results"] = {["attachment_outfit_stormtrooper_lowerplate"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_stormtrooper_belt"] = {
["name"] = "Stormtrooper Belt",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade Two outfit mod schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["scavenged_metal_durasteel"] = 2},
["results"] = {["attachment_outfit_stormtrooper_belt"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_stormtrooper_codpiece"] = {
["name"] = "Stormtrooper Codpiece",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One outfit schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["scavenged_metal_durasteel"] = 2},
["results"] = {["attachment_outfit_stormtrooper_codpiece"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_armytrooper_standard"] = {
["name"] = "Army Trooper Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["scavenged_compound_silica"] = 3},
["results"] = {["headgear_armytrooper_standard"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_armytrooper_black"] = {
["name"] = "Army Trooper Battle Helmet (Black)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["scavenged_compound_silica"] = 3},
["results"] = {["headgear_armytrooper_black"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_armytrooper_green"] = {
["name"] = "Army Trooper Battle Helmet (Green)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["scavenged_compound_silica"] = 3},
["results"] = {["headgear_armytrooper_green"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_armytrooper_white"] = {
["name"] = "Army Trooper Battle Helmet (White)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["scavenged_compound_silica"] = 3},
["results"] = {["headgear_armytrooper_white"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_combat"] = {
["name"] = "Combat Helmet",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_desh"] = 2, ["scavenged_compound_plastoid"] = 2},
["results"] = {["headgear_combat"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_tactical_combat"] = {
["name"] = "Tactical Combat Helmet",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_desh"] = 4, ["scavenged_compound_plastoid"] = 3},
["results"] = {["headgear_tactical_combat"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_imperialhat_admiral"] = {
["name"] = "Imperial Hat (Admiral)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 2, ["scavenged_metal_bronzium"] = 1},
["results"] = {["headgear_imperialhat_admiral"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_imperialhat_army"] = {
["name"] = "Imperial Hat (Army)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 2, ["scavenged_metal_bronzium"] = 1},
["results"] = {["headgear_imperialhat_army"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_imperialhat_commodore"] = {
["name"] = "Imperial Hat (Commodore)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 2, ["scavenged_metal_bronzium"] = 1},
["results"] = {["headgear_imperialhat_commodore"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_imperialhat_compnor"] = {
["name"] = "Imperial Hat (COMPNOR)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 2, ["scavenged_metal_bronzium"] = 1},
["results"] = {["headgear_imperialhat_compnor"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_imperialhat_grandadmiral"] = {
["name"] = "Imperial Hat (Grand Admiral)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 2, ["scavenged_metal_bronzium"] = 1},
["results"] = {["headgear_imperialhat_grandadmiral"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_imperialhat_standard"] = {
["name"] = "Imperial Hat (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 2, ["scavenged_metal_bronzium"] = 1},
["results"] = {["headgear_imperialhat_standard"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_imperialhat_tan"] = {
["name"] = "Imperial Hat (Tan)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_cyrene_silk"] = 2, ["scavenged_metal_bronzium"] = 1},
["results"] = {["headgear_imperialhat_tan"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_imperialhelmet_heavy"] = {
["name"] = "Imperial Heavy Battle Helmet",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 4, ["scavenged_metal_phobium"] = 3},
["results"] = {["headgear_imperialhelmet_heavy"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_imperialhelmet_standard"] = {
["name"] = "Imperial Battle Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_phobium"] = 3, ["scavenged_compound_lacqerous"] = 2},
["results"] = {["headgear_imperialhelmet_standard"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_imperialhelmet_black"] = {
["name"] = "Imperial Battle Helmet (Black)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_phobium"] = 3, ["scavenged_compound_lacqerous"] = 2},
["results"] = {["headgear_imperialhelmet_black"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_rebelofficer_standard"] = {
["name"] = "Rebel Officer Hat (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_bronzium"] = 2},
["results"] = {["headgear_rebelofficer_standard"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_rebelofficer_navy"] = {
["name"] = "Rebel Officer Hat (Navy)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_bronzium"] = 2},
["results"] = {["headgear_rebelofficer_navy"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_rebelofficer_fleet"] = {
["name"] = "Rebel Officer Hat (Fleet)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_bronzium"] = 2},
["results"] = {["headgear_rebelofficer_fleet"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_rebelofficer_tan"] = {
["name"] = "Rebel Officer Hat (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_shadowsilk"] = 3, ["scavenged_metal_bronzium"] = 2},
["results"] = {["headgear_rebelofficer_tan"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_rebeltechnician"] = {
["name"] = "Rebel Technician Hat",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_lashaa_silk"] = 3, ["scavenged_metal_bondite"] = 2},
["results"] = {["headgear_rebeltechnician"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_rebeltracker"] = {
["name"] = "Rebel Tracker Hat",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["fabric_lashaa_silk"] = 2, ["scavenged_metal_desh"] = 2},
["results"] = {["headgear_rebeltracker"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["synthweaving"] = 1}
},
["blueprint_headgear_rebeltrooper"] = {
["name"] = "Rebel Trooper Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_phobium"] = 2},
["results"] = {["headgear_rebeltrooper"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_rebeltrooper_navy"] = {
["name"] = "Rebel Trooper Helmet (Navy)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_compound_silica"] = 3, ["scavenged_metal_phobium"] = 2},
["results"] = {["headgear_rebeltrooper_navy"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_scout_standard"] = {
["name"] = "Scout Trooper Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_compound_polyplast"] = 3, ["fabric_dramassian_silk"] = 2},
["results"] = {["headgear_scout_standard"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_scout_desert"] = {
["name"] = "Scout Trooper Helmet (Desert)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_compound_polyplast"] = 3, ["fabric_dramassian_silk"] = 2},
["results"] = {["headgear_scout_desert"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_scout_woodland"] = {
["name"] = "Scout Trooper Helmet (Woodland)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_compound_polyplast"] = 3, ["fabric_dramassian_silk"] = 2},
["results"] = {["headgear_scout_woodland"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_scout_stormcommando"] = {
["name"] = "Scout Trooper Helmet (Storm Commando)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_compound_polyplast"] = 3, ["fabric_dramassian_silk"] = 2},
["results"] = {["headgear_scout_stormcommando"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_skiff"] = {
["name"] = "Skiff Helmet",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_bondite"] = 4, ["scavenged_metal_desh"] = 2},
["results"] = {["headgear_skiff"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_snowtrooper"] = {
["name"] = "Snowtrooper Helmet",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 4, ["scavenged_compound_plastoid"] = 3, ["fabric_dramassian_silk"] = 3},
["results"] = {["headgear_snowtrooper"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_stormtrooper"] = {
["name"] = "Stormtrooper Battle Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 4, ["scavenged_compound_plastoid"] = 3},
["results"] = {["headgear_stormtrooper"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_stormtrooper_sand"] = {
["name"] = "Stormtrooper Battle Helmet (Sandtrooper)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_durasteel"] = 4, ["scavenged_compound_plastoid"] = 3},
["results"] = {["headgear_stormtrooper_sand"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_trooper"] = {
["name"] = "Trooper Helmet",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_desh"] = 3, ["scavenged_compound_silica"] = 2},
["results"] = {["headgear_trooper"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_ubese"] = {
["name"] = "Ubese Helmet",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear schematics.",
["requirements"] = {["scavenged_metal_electrum"] = 3, ["scavenged_compound_silica"] = 2},
["results"] = {["headgear_ubese"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_mod_armytrooper_visorup"] = {
["name"] = "Army Trooper Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear mod schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["researched_compound_ceraglass"] = 2},
["results"] = {["attachment_headgear_armytrooper_visorup"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_mod_armytrooper_visordown"] = {
["name"] = "Army Trooper Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear mod schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["researched_compound_ceraglass"] = 2},
["results"] = {["attachment_headgear_armytrooper_visordown"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_mod_armytrooper_rebreather"] = {
["name"] = "Army Trooper Helmet (Standard)",
["model"] = "models/stardust/props/container_6.mdl",
["desc"] = "Grade One headgear mod schematics.",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["scavenged_compound_fibermesh"] = 2},
["results"] = {["attachment_headgear_armytrooper_rebreather"] = 1},
["category"] = "Blueprints - Headgears",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_shoulderpads"] = {
["name"] = "Clonetrooper Shoulderpads",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_septsilk"] = 1, ["researched_compound_plastifiber"] = 1},
["results"] = {["attachment_outfit_clone_shoulderpads"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_chestplate"] = {
["name"] = "Clonetrooper Chestplate",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["scavenged_metal_durasteel"] = 2, ["researched_compound_plastifiber"] = 2},
["results"] = {["attachment_outfit_clone_chestplate"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_chest_rank"] = {
["name"] = "Clonetrooper Chestplate Rank",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["underworld_titanium"] = 1, ["researched_compound_plastifiber"] = 1},
["results"] = {["attachment_outfit_clone_chest_rank"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_belt"] = {
["name"] = "Clonetrooper Belt",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["scavenged_metal_desh"] = 3, ["scavenged_compound_zal_alloy"] = 1, ["researched_compound_carboplas"] = 2},
["results"] = {["attachment_outfit_clone_belt"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_codpiece"] = {
["name"] = "Clonetrooper Codpiece",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["underworld_titanium"] = 2, ["scavenged_metal_durasteel"] = 1},
["results"] = {["attachment_outfit_clone_codpiece"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_armplates"] = {
["name"] = "Clonetrooper Armplates",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["scavenged_compound_plastoid"] = 3, ["scavenged_metal_durasteel"] = 1},
["results"] = {["attachment_outfit_clone_armplates"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_gauntlets"] = {
["name"] = "Clonetrooper Gauntlets",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["scavenged_metal_durasteel"] = 1},
["results"] = {["attachment_outfit_clone_gauntlets"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_leggings"] = {
["name"] = "Clonetrooper Leggings",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["scavenged_compound_plastoid"] = 2, ["scavenged_metal_durasteel"] = 2},
["results"] = {["attachment_outfit_clone_leggings"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_kneepads"] = {
["name"] = "Clonetrooper Kneepads",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["underworld_titanium"] = 2, ["scavenged_metal_durasteel"] = 1},
["results"] = {["attachment_outfit_clone_kneepads"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_pauldron_base"] = {
["name"] = "Clonetrooper Pauldron (Base)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_shadowsilk"] = 2, ["underworld_alusteel"] = 2},
["results"] = {["attachment_outfit_clone_pauldron_base"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_pauldron_specialist"] = {
["name"] = "Clonetrooper Pauldron (Specialist)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_shadowsilk"] = 2, ["underworld_alusteel"] = 2},
["results"] = {["attachment_outfit_clone_pauldron_specialist"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_pauldron_arc"] = {
["name"] = "Clonetrooper Pauldron (ARC)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_shadowsilk"] = 2, ["underworld_alusteel"] = 2},
["results"] = {["attachment_outfit_clone_pauldron_arc"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_pauldron_ganch"] = {
["name"] = "Clonetrooper Pauldron (Ganch)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_shadowsilk"] = 2, ["underworld_alusteel"] = 2},
["results"] = {["attachment_outfit_clone_pauldron_ganch"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_arc_chest"] = {
["name"] = "Clonetrooper Arc Chest",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_shadowsilk"] = 2, ["underworld_alusteel"] = 1},
["results"] = {["attachment_outfit_clone_arc_chest"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_arc_chest_accessories"] = {
["name"] = "Clonetrooper Chest Accessories",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_septsilk"] = 2, ["scavenged_compound_plastoid"] = 1},
["results"] = {["attachment_clone_arc_chest_accessories"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_pauldron_commander"] = {
["name"] = "Clonetrooper Pauldron (Commander)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_septsilk"] = 2, ["underworld_alusteel"] = 2},
["results"] = {["attachment_outfit_clone_pauldron_commander"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_kama_grey"] = {
["name"] = "Clonetrooper Kama (Gray)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_septsilk"] = 2, ["fabric_vine_silk"] = 2},
["results"] = {["attachment_outfit_clone_kama_grey"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_kama_grey"] = {
["name"] = "Clonetrooper Kama (Gray)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_septsilk"] = 2, ["fabric_vine_silk"] = 2},
["results"] = {["attachment_outfit_clone_kama_grey"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_mod_clone_kama_black"] = {
["name"] = "Clonetrooper Kama (Black)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["fabric_septsilk"] = 2, ["fabric_vine_silk"] = 2},
["results"] = {["attachment_outfit_clone_kama_black"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_headgear_clonetrooper_phase2"] = {
["name"] = "Clone Trooper Phase 2 Battle Helmet",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["scavenged_metal_durasteel"] = 2, ["underworld_titanium"] = 2},
["results"] = {["headgear_clonetrooper_phase2"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_outfit_clonetrooper_basic"] = {
["name"] = "Clone Trooper Fatigues (Basic)",
["model"] = "models/stardust/props/container_closed.mdl",
["desc"] = "Grade One Armor Schematics",
["requirements"] = {["scavenged_metal_durasteel"] = 3, ["underworld_titanium"] = 2},
["results"] = {["outfit_clonetrooper_basic"] = 1},
["category"] = "Blueprints - Armor Mods",
["skill"] = {["armortech"] = 1}
},
["blueprint_hydroponics_fruit_jelly"] = {
["name"] = "Fruit Jelly",
["model"] = "models/props_junk/watermelon01.mdl",
["desc"] = "Smells somewhat funny but takes the form of a translucent watermelon.",
["requirements"] = {["hydroponics_fruit_gel"] = 1},
["results"] = {["fruit_jelly"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_energy_capsule"] = {
["name"] = "Energy Capsule",
["model"] = "models/props_junk/watermelon01.mdl",
["desc"] = "A small assortment of vitamins and food items, as well as a small packet of pre-packaged water, designed to keep you minimally fed and operating.",
["requirements"] = {["hydroponics_food_subsitute"] = 2},
["results"] = {["minimal_supplements"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_meloorun_fruit"] = {
["name"] = "Meiloorun Fruit",
["model"] = "models/props_junk/garbage_metalcan001a.mdl",
["desc"] = "A jelly created from various fruits found in the area. Lasts much longer compared to typical fresh food but doesn't taste the same.",
["requirements"] = {["hydroponics_veroleem_veggie"] = 1},
["results"] = {["meloorun_fruit"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_water"] = {
["name"] = "Bottle of Water",
["model"] = "models/props_junk/PopCan01a.mdl",
["desc"] = "A refeshing bottle of water. Drinking it quenches your thrist.",
["requirements"] = {["hydroponics_liquid"] = 1},
["results"] = {["water"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_normal_beer"] = {
["name"] = "Blue Tonic",
["model"] = "mmodels/props_junk/garbage_glassbottle003a.mdl",
["desc"] = "A literal tonic that's blue. Combined with strong mixed alcohols.",
["requirements"] = {["hydroponics_yeast"] = 1, ["hydroponics_fruit_gel"] = 1, ["hydroponics_liquid"] = 1},
["results"] = {["normal_beer"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_big_beer"] = {
["name"] = "40oz Bottle of Lager",
["model"] = "models/props_junk/garbage_glassbottle001a.mdl",
["desc"] = "A large 40oz Bottle of Lager, the label reads 7.3% alcohol content.",
["requirements"] = {["hydroponics_liquid"] = 2, ["hydroponics_yeast"] = 2, ["hydroponics_fruit_gel"] = 1},
["results"] = {["big_beer"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_big_water"] = {
["name"] = "2L Water",
["model"] = "models/props_junk/garbage_plasticbottle003a.mdl",
["desc"] = "A 2L jug of water. More than enough to sastify.",
["requirements"] = {["hydroponics_liquid"] = 2},
["results"] = {["big_water"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_standard_supplement"] = {
["name"] = "Standard Supplement",
["model"] = "models/props_lab/jar01b.mdl",
["desc"] = "A standard supplement jar containing a few food items.",
["requirements"] = {["hydroponics_food_subsitute"] = 1},
["results"] = {["standard_supplement"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_hydroponics_meatlump"] = {
["name"] = "Meatlump",
["model"] = "models/props_lab/jar01b.mdl",
["desc"] = "A literal stump of meat that was cooked.",
["requirements"] = {["hydroponics_food_subsitute"] = 1},
["results"] = {["hydroponics_tuska_meat"] = 1, ["hydroponics_marcan_herb"] = 1},
["category"] = "Blueprints - Hydroponics",
["skill"] = {["hydroponics"] = 1}
},
["blueprint_biochemistry_military_med_kit"] = {
["name"] = "Military Medical Kit",
["model"] = "models/items/healthkit.mdl",
["desc"] = "A white packet filled with medication.",
["requirements"] = {["bandages"] = 2, ["splint"] = 1, ["medicalsupply_biochemical_bonding_agent"] = 1},
["results"] = {["military_medical_kit"] = 1,},
["category"] = "Blueprints - Biochemistry",
["skill"] = {["biochemistry"] = 1}
},
["blueprint_biochemistry_bandage"] = {
["name"] = "Bandage",
["model"] = "models/items/healthkit.mdl",
["desc"] = "A brown compression cloth made to stop bleeding.",
["requirements"] = {["fabric_shadowsilk"] = 2,},
["results"] = {["banage"] = 1,},
["category"] = "Blueprints - Biochemistry",
["skill"] = {["biochemistry"] = 1}
},
["blueprint_biochemistry_splint"] = {
["name"] = "Splint",
["model"] = "models/items/healthkit.mdl",
["desc"] = "A piece of medical equipment used to keep an injured body part from moving and to protect it from any further damage.",
["requirements"] = {["fabric_shadowsilk"] = 1, ["researched_compound_plastifiber"] = 1},
["results"] = {["splint"] = 1,},
["category"] = "Blueprints - Biochemistry",
["skill"] = {["biochemistry"] = 1}
},
["blueprint_artifice_ammo_large"] = {
["name"] = "Large Blaster Energy",
["model"] = "models/items/combine_rifle_cartridge01.mdl",
["desc"] = "A Cartridge that contains Blaster Energy.",
["requirements"] = {["sliced_power_tube"] = 2, ["sliced_power_capacitor"] = 2},
["results"] = {["ammo_blaster_large"] = 1,},
["category"] = "Blueprints - Artifice",
["skill"] = {["artifice"] = 1}
},
["blueprint_artifice_ammo_small"] = {
["name"] = "Small Blaster Energy",
["model"] = "models/items/combine_rifle_cartridge01.mdl",
["desc"] = "A Cartridge that contains Blaster Energy.",
["requirements"] = {["sliced_power_tube"] = 1, ["sliced_power_capacitor"] = 1},
["results"] = {["ammo_blaster_small"] = 1,},
["category"] = "Blueprints - Artifice",
["skill"] = {["artifice"] = 1}
},
}


for k, v in pairs(NEW_RECIPES) do
	PLUGIN:AddRecipe(v.name, v.model, v.desc, v.requirements, v.results, k, v.skill or nil, v.blueprint or nil, v.guns or nil, v.entity or nil, v.category or "Miscellaneous")
end

--[[-------------------------------------------------------------------------
LEGACY WAY TO ADD RECIPES DO NOT USE ANYMORE
TODO: Convert these to the new system.
---------------------------------------------------------------------------]]
--PLUGIN:AddRecipe("Metal Combination: Reclaimed", "models/props_c17/oildrumchunk01d.mdl", "Combine existing Scrap Metal to make a Reclaimed Metal piece.", {["scrap_metal"] = 3}, {["reclaimed_metal"] = 1}, "scraptorec", false)
--PLUGIN:AddRecipe("Metal Combination: Refined", "models/props_c17/canisterchunk02a.mdl", "Combine existing Reclaimed Metal to make a Refined Metal piece", {["reclaimed_metal"] = 3}, {["refined_metal"] = 1}, "rectoref", false)
--PLUGIN:AddRecipe("Breakdown: Locker Door", "models/props_lab/lockerdoorleft.mdl", "Break down a Locker Door to get several pieces of Scrap Metal.", {["scrap_hammer"] = 1,["locker_door"] = 1}, {["scrap_metal"] = 5}, "doortoscrap", false )
--PLUGIN:AddRecipe("Ammunition: 9MM Ammo", "models/Items/BoxSRounds.mdl", "Create ammunition from spare parts you've found around.", {["empty_ammo_box"] = 1, ["bullet_casings"] = 3, ["scrap_metal"] = 2, ["gunpowder"] = 4}, {["pistolammo"] = 1}, "ammo9mm", nil, nil, nil, true)
--PLUGIN:AddRecipe("Ammunition: SMG Ammo", "models/Items/BoxMRounds.mdl", "Create ammunition from spare parts you've found around.", {["empty_ammo_box"] = 2, ["bullet_casings"] = 5, ["scrap_metal"] = 4, ["gunpowder"] = 6}, {["smg1ammo"] = 1}, "ammosmg", {["guns"] = 2}, nil, nil, true)
--PLUGIN:AddRecipe("Weapon: 9MM Pistol", "models/weapons/w_pistol.mdl", "Create ammunition from spare parts you've found around.", {["scrap_metal"] = 4, ["scrap_screwdriver"] = 1, ["refined_metal"] = 2, ["reclaimed_metal"] = 1}, {["pistol"] = 1}, "gunpistol", {["guns"] = 5}, nil, nil, true)
--PLUGIN:AddRecipe("Breakdown: Wooden Plank", "models/props_debris/wood_board06a.mdl", "Break down a Plank of Wood to get some pieces.", {["plank"] = 1}, {["wood_piece"] = 5}, "planktowood", false )
--PLUGIN:AddRecipe("Tool: Scrap Hammer", "models/props_interiors/pot02a.mdl", "Fashion a crude hammer for use in building.", {["wood_piece"] = 2, ["scrap_metal"] = 2}, {["scrap_hammer"] = 1}, "hammer", false )
--PLUGIN:AddRecipe("Weapon: Crude Axe", "models/props_interiors/pot02a.mdl", "Create a Crude Crowbar from metal you've acquired.", {["refined_metal"] = 4, ["scrap_metal"] = 2, ["wood_piece"] = 4}, {["wooden_axe"] = 1}, "axe", false )
--[[-------------------------------------------------------------------------
Tying in with the 'Citizen Production Plugin', adding schematics for study.
---------------------------------------------------------------------------]]
for k, v in pairs(ix.item.list) do
	if v.category == "Schematics" then
		local tbl = v.requirements
		local tbl2 = v.result
		local req_table_empty = {}
		local res_table_empty = {}
		for k2, v2 in pairs(tbl) do
			req_table_empty[v2[1]] = v2[2]
		end
		for k3,v3 in pairs(tbl2) do
			if v3[1] != "manufacturing_ticket" then
				res_table_empty[v3[1]] = v3[2]
			end
		end
		PLUGIN:AddRecipe(v.name, v.model, v.description .. "\nYou studied this blueprint from the factories.", req_table_empty, res_table_empty, v.uniqueID, false, v.uniqueID)
	end
end

--Example: PLUGIN:AddRecipe("Bag of Clothes". "models/props_c17/BriefCase001a.mdl", "This is a bag of clothes, made from cloth.", {["cloth"] = 7}, {["bag_of_clothes"] = 1}, "bagofclothes")
--[[PLUGIN:AddRecipe("Test", "models/props_c17/BriefCase001a.mdl", "Test", {
	["cid"] = 4
}, {
	["cid"] = 2
}, "test",
{
	["medical"] = 1,
	["end"] = 1}
)

PLUGIN:AddRecipe(
	"no skill",
	"models/props_c17/BriefCase001a.mdl",
	"no skill",
	{["cid"] = 4},
	{["cid"] = 2},
	"test 2",
	false,
	"bluprint1")

PLUGIN:AddRecipe("double gay", "models/props_c17/BriefCase001a.mdl", "no skill", {
	["cid"] = 1,
	["chinese_takeout"] = 1
}, {
	["cid"] = 2,
	["chinese_takeout"] = 2
}, "test 3")

PLUGIN:AddRecipe("Test", "models/props_c17/BriefCase001a.mdl", "Test", {
	["cid"] = 4
}, {
	["cid"] = 2
}, "test", {
	["medical"] = 1,
	["end"] = 1
})--]]
--[[PLUGIN:AddRecipe("blueprint gay", "models/props_c17/BriefCase001a.mdl", "no skill", {
	["cid"] = 1,
	["chinese_takeout"] = 1
}, {
	["cid"] = 2,
	["chinese_takeout"] = 2
}, "test 4", "blueprint1")--]]

ix.util.Include("cl_plugin.lua")
ix.util.Include("sv_plugin.lua")
ix.util.Include("sh_items.lua")
--[[
This is the 'skill' crafting recipe, which means it requires a skill.
The first argument is the name.
The second argument is the model.
The third is the description.
The fourth is the requirements.
Requirements must be in the form of item id's, you can tell what an item's id is based on what is inbetween sh_ and .lua in an item's file name.
Each argument MUST be separated by a comma.
Requirements MUST be in between brackets.
each item must be separated with a comma AFTER it's number.
the fifth argument is the item identifier, it's a unique id and should be changed for each recipe.
the sixth argument is the skills required, just remove it and it's {} if you don't need it to have a skill.
skill names:
guns - gunsmithing
end - endurance
stm - stamina
med - medical knowledge
eng - engineering
str - strength
acr - acrobatics
last argument is blueprint, don't put one there if there isn't one
]]


--[[PLUGIN:AddRecipe(
	"no skill", --name
	"models/props_c17/BriefCase001a.mdl", --model
	"no skill", --desc
	{["cid"] = 4}, --input items
	{["cid"] = 2}, --receiving items
	"test 2", --id must be unique
	false, --requires stats?
	"bluprint1") --blueprint, put in false if no blueprint

PLUGIN:AddRecipe("Bag of Clothes", "models/props_c17/BriefCase001a.mdl", "This is a bag of clothes, made from cloth.", {
	["cid"] = 7
}, {
	["chinese_takeout"] = 1
}, "bagofclothes", {
	["end"] = 3
})

PLUGIN:AddRecipe("double gay", "models/props_c17/BriefCase001a.mdl", "no skill", {
	["cid"] = 1,
	["chinese_takeout"] = 1
}, {
	["cid"] = 2,
	["chinese_takeout"] = 2
}, "test 3")--]]

ix.command.Add("BlueprintGive", {
	description = "Give a blueprint to a player.",
	adminOnly = true,
	arguments = {ix.type.character, ix.type.string},
	OnRun = function(self, client, target, blueprint)
		local data = target:GetData("blueprints", {})

		if not table.HasValue(data, blueprint) then
			table.insert(data, blueprint)
		else
			client:Notify(target:GetName() .. " already has this blueprint.")

			return
		end

		target:SetData("blueprints", data)
		client:Notify("You have given " .. target:GetName() .. " the blueprint " .. blueprint .. ".")
		target.player:Notify("You have been given the blueprint " .. blueprint .. " by " .. client:Name())
	end
})

ix.command.Add("BlueprintRemove", {
	description = "Give a blueprint to a player.",
	adminOnly = true,
	arguments = {ix.type.character, ix.type.string},
	OnRun = function(self, client, target, blueprint)
		local data = target:GetData("blueprints", {})

		if table.HasValue(data, blueprint) then
			table.RemoveByValue(data, blueprint)
		else
			client:Notify(target:GetName() .. " does not have this blueprint.")
		end

		target:SetData("blueprints", data)
		client:Notify("You have taken " .. target:GetName() .. " the blueprint " .. blueprint .. ".")
		target.player:Notify("You have had the blueprint " .. blueprint .. " taken from you by " .. client:Name())
	end
})