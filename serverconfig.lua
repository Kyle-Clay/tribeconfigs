-- TAMods-Server configuration can be placed in this file
-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview.html


-------------- SERVER INFO --------------

ServerSettings.Description = "Gaybros Gone Wild | Dallas"
ServerSettings.Motd = "don't drop the soap"
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

ServerSettings.MaxPlayers = 8
ServerSettings.AutoBalanceTeams = false

ServerSettings.ArenaRounds = 2
ServerSettings.ArenaLives = 15


-------------- CLASS LIMIT SETTINGS --------------
ServerSettings.LightCountLimit = 4
ServerSettings.MediumCountLimit = 4
ServerSettings.HeavyCountLimit = 4



-------------- WEAPON BANS --------------

-------------- PACK BANS --------------

-------------- NADE BANS --------------

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
