local GAFE = GroupActivityFinderExtensions

-- List header text in activity finder are set by zo with GetString("SI_LFGACTIVITY", activityType).
-- This means we have the same prefix plus our custom activity type id.
-- Since we use LFG_ACTIVITY_ITERATION_END + 1 it should never overwrite and actual zo string.
ZO_CreateStringId("SI_LFGACTIVITY" .. GAFE_LFG_ACTIVITY_TRIAL, "Normal")
ZO_CreateStringId("SI_LFGACTIVITY" .. GAFE_LFG_ACTIVITY_MASTER_TRIAL, "Veteran")

GAFE.Localization = {
    Settings_Description = "Adds a bit of extra functionality and information to the Group & Activity Finder UI",
    Settings_AutoConfirm = "'Auto confirm' button",
    Settings_AutoConfirmDelay = "'Auto confirm' delay",
    Settings_LoopQueueCompletedNotification = "Loop activity found sound",
    Settings_TrialsChest = "Reset chest timers",
    Settings_ResetChestWarning = "This will reset the timer to 1 week!",
    Settings_AutoMarkPledges = "Automatically mark available pledges",
    Settings_MarkPledgesWithIcon = "Use icon for pledges",
    Settings_TextureSize = "Icon size",
    Settings_AutoInvite = "BETA Auto invite",
    Settings_HandleQuest = "Automatically accept pledge quest",
    Settings_CompatibilityTitle = "Compatibility",
    Settings_PerfectPixelAddon = "PerfectPixel",
    Settings_ResetPremiumRewards = "Reset premium reward timers",
    Settings_ResetReward = "This will reset the 20 hours timer",
    CheckActivePledges = "Pledges",
    CheckMissingQuests = "Quests",
    CheckMissingSets = "Sets",
    AutoConfirm = "Auto confirm",
    TrialsCategoryHeader = "Trials",
    TrialsSpecificFilterText = "Specific Trials",
    TrialAetherianArchive = "Aetherian Archive",
    TrialHelRaCitadel = "Hel Ra Citadel",
    TrialSanctumOphidia = "Sanctum Ophidia",
    TrialMawOfLorkhaj = "Maw of Lorkhaj",
    TrialHallsOfFabrication = "Halls of Fabrication",
    TrialAsylumSanctorium = "Asylum Sanctorium",
    TrialCloudrest = "Cloudrest",
    TrialSunspire = "Sunspire",
    TrialKynesAegis = "Kyne's Aegis",
    TrialRockgrove = "Rockgrove",
    TrialDreadsailReef = "Dreadsail Reef",
    LookForGroup = "Look for group",
    LookForMore = "Look for more",
    LookForGroupDisabled = "You are already grouped",
    LookForMoreDisabled = "You must be party leader",
    AutoInvite = "Auto invite",
    Debug_QueuedList = "Queued: ",
    Debug_NotQueuedList = "Not queued: ",
    CollapseMode_Group = "Group",
    CollapseMode_Normal = "Normal",
    CollapseMode_Veteran = "Veteran",
    NextReward = "Next in",
    InXDays = "<<1[Today/In $d day/In $d days]>>",
    ActivitySchedule = "Schedule",
    DailiesSchedule = "Dailies",
    PledgesSchedule = "Pledges"
}

--- This translations have to match pledge quest name in ingame journal
GAFE_DUNGEON_PLEDGE_QUEST_NAME = {
    [GAFE_PLEDGE_ID.FungalGrottoI] = "Fungal Grotto I",
    [GAFE_PLEDGE_ID.FungalGrottoII] = "Fungal Grotto II",
    [GAFE_PLEDGE_ID.SpindleclutchI] = "Spindleclutch I",
    [GAFE_PLEDGE_ID.SpindleclutchII] = "Spindleclutch II",
    [GAFE_PLEDGE_ID.BanishedCellsI] = "Banished Cells I",
    [GAFE_PLEDGE_ID.BanishedCellsII] = "Banished Cells II",
    [GAFE_PLEDGE_ID.DarkshadeCavernsI] = "Darkshade Caverns I",
    [GAFE_PLEDGE_ID.DarkshadeCavernsII] = "Darkshade II",
    [GAFE_PLEDGE_ID.EldenHollowI] = "Elden Hollow I",
    [GAFE_PLEDGE_ID.EldenHollowII] = "Elden Hollow II",
    [GAFE_PLEDGE_ID.WayrestSewersI] = "Wayrest Sewers I",
    [GAFE_PLEDGE_ID.WayrestSewersII] = "Wayrest Sewers II",
    [GAFE_PLEDGE_ID.ArxCorinium] = "Arx Corinium",
    [GAFE_PLEDGE_ID.CityOfAshI] = "City of Ash I",
    [GAFE_PLEDGE_ID.CityOfAshII] = "City of Ash II",
    [GAFE_PLEDGE_ID.CryptOfHeartsI] = "Crypt of Hearts I",
    [GAFE_PLEDGE_ID.CryptOfHeartsII] = "Crypt of Hearts II",
    [GAFE_PLEDGE_ID.DirefrostKeep] = "Direfrost Keep",
    [GAFE_PLEDGE_ID.TempestIsland] = "Tempest Island",
    [GAFE_PLEDGE_ID.Volenfell] = "Volenfell",
    [GAFE_PLEDGE_ID.BlackheartHaven] = "Blackheart Haven",
    [GAFE_PLEDGE_ID.BlessedCrucible] = "Blessed Crucible",
    [GAFE_PLEDGE_ID.SelenesWeb] = "Selene's Web",
    [GAFE_PLEDGE_ID.VaultsOfMadness] = "Vaults of Madness",
    [GAFE_PLEDGE_ID.BlackDrakeVilla] = "Black Drake Villa",
    [GAFE_PLEDGE_ID.BloodrootForge] = "Bloodroot Forge",
    [GAFE_PLEDGE_ID.CastleThorn] = "Castle Thorn",
    [GAFE_PLEDGE_ID.Cauldron] = "The Cauldron",
    [GAFE_PLEDGE_ID.CoralAerie] = "Coral Aerie",
    [GAFE_PLEDGE_ID.CradleOfShadows] = "Cradle of Shadows",
    [GAFE_PLEDGE_ID.DepthsOfMalatar] = "Depths of Malatar",
    [GAFE_PLEDGE_ID.DreadCellar] = "The Dread Cellar",
    [GAFE_PLEDGE_ID.EarthenRootEnclave] = "Earthen Root Enclave",
    [GAFE_PLEDGE_ID.FalkreathHold] = "Falkreath Hold",
    [GAFE_PLEDGE_ID.FangLair] = "Fang Lair",
    [GAFE_PLEDGE_ID.Frostvault] = "Frostvault",
    [GAFE_PLEDGE_ID.GravenDeep] = "Graven Deep",
    [GAFE_PLEDGE_ID.Icereach] = "Icereach",
    [GAFE_PLEDGE_ID.ImperialCityPrison] = "Imperial City Prison",
    [GAFE_PLEDGE_ID.LairOfMaarselok] = "Lair of Maarselok",
    [GAFE_PLEDGE_ID.MarchOfSacrifices] = "March of Sacrifices",
    [GAFE_PLEDGE_ID.MoonHunterKeep] = "Moon Hunter Keep",
    [GAFE_PLEDGE_ID.MoongraveFane] = "Moongrave Fane",
    [GAFE_PLEDGE_ID.RedPetalBastion] = "Red Petal Bastion",
    [GAFE_PLEDGE_ID.RuinsOfMazzatun] = "Ruins of Mazzatun",
    [GAFE_PLEDGE_ID.ScalecallerPeak] = "Scalecaller Peak",
    [GAFE_PLEDGE_ID.ShipwrightsRegret] = "Shipwright's Regret",
    [GAFE_PLEDGE_ID.StoneGarden] = "Stone Garden",
    [GAFE_PLEDGE_ID.UnhallowedGrave] = "Unhallowed Grave",
    [GAFE_PLEDGE_ID.WhiteGoldTower] = "White-Gold Tower"
}

GAFE_PLEDGE_NPC_NAME = {
    ["Maj al-Ragath"] = true,
    ["Glirion the Redbeard"] = true,
    ["Urgarlag Chief-bane"] = true,
}
