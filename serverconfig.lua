-- TAMods-Server configuration can be placed in this file
-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview.html


-------------- SERVER INFO --------------

ServerSettings.Description = "Duel Server for Cunts"
ServerSettings.Motd = "tribe server for cunts"
ServerSettings.Password = "dools.jpg"
ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.OOTB


-------------- STANDARD OOTB SETTINGS --------------

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Thrust Pack")

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Stealth Pack")

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Light Utility Pack")


-------------- ADMINISTRATION --------------

-- Basic Access Control, see https://www.tamods.org/docs/doc_srv_api_admin.html for more

require("admin")

local roles = {
--    {
--        name     = "admin",
--        password = "gotytest", -- <<< Set the password!
--        commands = {"NextMap", "NextMapName", "StartMap", "EndMap"},
--        canLua   = true, -- Admin can execute arbitrary Lua!
--    },
--    {
--        name     = "mod",
--        password = "moderator", -- <<< Set the password!
--        commands = {"NextMap", "NextMapName", "StartMap", "EndMap"},
--        canLua   = false,
--    },
}

-- To set up admin / moderator roles, uncomment above
doSetupRoles(roles)


-------------- ARENA SETTINGS --------------

-- Some other settings you might need, just uncomment those lines
-- If you need more settings, check the documentation at : https://www.tamods.org/docs/doc_srv_api_serverconfig.html

-- ServerSettings.WarmupTime = 60
-- ServerSettings.FriendlyFire = true
-- ServerSettings.CTFCapLimit = 7
-- ServerSettings.BannedItems.add("Light", "BXT1")

ServerSettings.ArenaRounds = 2
ServerSettings.ArenaLives = 15


-------------- CLASS LIMIT SETTINGS --------------
ServerSettings.LightCountLimit = 4
ServerSettings.MediumCountLimit = 8
ServerSettings.HeavyCountLimit = 1



-------------- WEAPON BANS --------------
ServerSettings.BannedItems.add("Light", "Light Grenade Launcher")
ServerSettings.BannedItems.add("Light", "Phase Rifle")
ServerSettings.BannedItems.add("Light", "BXT1 Rifle")
ServerSettings.BannedItems.add("Medium", "Sawed-Off Shotgun")
ServerSettings.BannedItems.add("Medium", "Grenade Launcher")
ServerSettings.BannedItems.add("Medium", "ELF Projector")
ServerSettings.BannedItems.add("Medium", "Arx Buster")
ServerSettings.BannedItems.add("Medium", "Advanced Repair Tool")
ServerSettings.BannedItems.add("Medium", "Flak Cannon")
ServerSettings.BannedItems.add("Heavy", "Chain Gun")
ServerSettings.BannedItems.add("Heavy", "Automatic Shotgun")
ServerSettings.BannedItems.add("Heavy", "EFG")
ServerSettings.BannedItems.add("Heavy", "MIRV Launcher")

-------------- PACK BANS --------------
ServerSettings.BannedItems.add("Light", "Light Energy Pack")
ServerSettings.BannedItems.add("Light", "Stealth Pack")
ServerSettings.BannedItems.add("Light", "Light Utility Pack")
ServerSettings.BannedItems.add("Medium", "Shield Pack")
ServerSettings.BannedItems.add("Medium", "Jammer Pack")
ServerSettings.BannedItems.add("Medium", "EXR Turret")
ServerSettings.BannedItems.add("Medium", "Light Turret")
ServerSettings.BannedItems.add("Medium", "Drop Station")
ServerSettings.BannedItems.add("Heavy", "Force Field")
ServerSettings.BannedItems.add("Heavy", "Heavy Shield Pack")
ServerSettings.BannedItems.add("Heavy", "Heavy Energy Pack")


-------------- NADE BANS --------------
ServerSettings.BannedItems.add("Light", "Claymore Mine")
ServerSettings.BannedItems.add("Light", "Chaff Grenade")
ServerSettings.BannedItems.add("Medium", "EMP Grenade")
ServerSettings.BannedItems.add("Medium", "Blackout Grenade")
ServerSettings.BannedItems.add("Medium", "Cluster Grenade")
ServerSettings.BannedItems.add("Medium", "Motion Sensor")
ServerSettings.BannedItems.add("Heavy", "Mines")
ServerSettings.BannedItems.add("Heavy", "Fractal Grenade")



-------------- MAP ROTATION --------------

-- The default map rotation is: Katabatic, ArxNovena, DangerousCrossing, Crossfire, Drydock, Terminus, Sunstar
-- You can override the default map rotation by uncommenting any of the maps below.

-- ServerSettings.MapRotation.VotingEnabled = true
-- ServerSettings.EndMatchWaitTime = 5
ServerSettings.MapRotation.add(Maps.Arena.WalledIn)
ServerSettings.MapRotation.add(Maps.Arena.AirArena)
ServerSettings.MapRotation.add(Maps.Arena.LavaArena)

-- ServerSettings.MapRotation.add(Maps.CTF.ArxNovena)
-- ServerSettings.MapRotation.add(Maps.CTF.BellaOmega)
-- ServerSettings.MapRotation.add(Maps.CTF.Blueshift)
-- ServerSettings.MapRotation.add(Maps.CTF.CanyonCrusade)
-- ServerSettings.MapRotation.add(Maps.CTF.Crossfire)
-- ServerSettings.MapRotation.add(Maps.CTF.DangerousCrossing)
-- ServerSettings.MapRotation.add(Maps.CTF.Drydock)
-- ServerSettings.MapRotation.add(Maps.CTF.Hellfire)
-- ServerSettings.MapRotation.add(Maps.CTF.IceCoaster)
-- ServerSettings.MapRotation.add(Maps.CTF.Katabatic)
-- ServerSettings.MapRotation.add(Maps.CTF.Perdition)
-- ServerSettings.MapRotation.add(Maps.CTF.Permafrost)
-- ServerSettings.MapRotation.add(Maps.CTF.Raindance)
-- ServerSettings.MapRotation.add(Maps.CTF.Stonehenge)
-- ServerSettings.MapRotation.add(Maps.CTF.Sunstar)
-- ServerSettings.MapRotation.add(Maps.CTF.Tartarus)
-- ServerSettings.MapRotation.add(Maps.CTF.TempleRuins)
-- ServerSettings.MapRotation.add(Maps.CTF.Terminus)
