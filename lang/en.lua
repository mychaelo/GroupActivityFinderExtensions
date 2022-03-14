local GAFE = GroupActivityFinderExtensions
local PledgeId = GAFE.Constants.PledgeId

-- List header text in activity finder are set by zo with GetString("SI_LFGACTIVITY", activityType).
-- This means we have the same prefix plus our custom activity type id.
-- Since we use LFG_ACTIVITY_ITERATION_END + 1 it should never overwrite and actual zo string.
ZO_CreateStringId("SI_LFGACTIVITY"..GAFE_LFG_ACTIVITY_TRIAL, "Normal")
ZO_CreateStringId("SI_LFGACTIVITY"..GAFE_LFG_ACTIVITY_MASTER_TRIAL, "Veteran")

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
    TrialRockgrave = "Rockgrave",
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

-- This translations have to match pledge quest name in ingame journal
GAFE.DungeonPledgeQuestName = {
	[PledgeId.FungalGrottoI] = "Fungal Grotto I",
	[PledgeId.FungalGrottoII] = "Fungal Grotto II",
	[PledgeId.SpindleclutchI] = "Spindleclutch I",
	[PledgeId.SpindleclutchII] = "Spindleclutch II",
	[PledgeId.BanishedCellsI] = "Banished Cells I",
	[PledgeId.BanishedCellsII] = "Banished Cells II",
	[PledgeId.DarkshadeCavernsI] = "Darkshade Caverns I",
	[PledgeId.DarkshadeCavernsII] = "Darkshade Caverns II",
	[PledgeId.EldenHollowI] = "Elden Hollow I",
	[PledgeId.EldenHollowII] = "Elden Hollow II",
	[PledgeId.WayrestSewersI] = "Wayrest Sewers I",
	[PledgeId.WayrestSewersII] = "Wayrest Sewers II",
	[PledgeId.ArxCorinium] = "Arx Corinium",
	[PledgeId.CityOfAshI] = "City of Ash I",
	[PledgeId.CityOfAshII] = "City of Ash II",
	[PledgeId.CryptOfHeartsI] = "Crypt of Hearts I",
	[PledgeId.CryptOfHeartsII] = "Crypt of Hearts II",
	[PledgeId.DirefrostKeep] = "Direfrost Keep",
	[PledgeId.TempestIsland] = "Tempest Island",
	[PledgeId.Volenfell] = "Volenfell",
	[PledgeId.BlackheartHaven] = "Blackheart Haven",
	[PledgeId.BlessedCrucible] = "Blessed Crucible",
	[PledgeId.SelenesWeb] = "Selene's Web",
	[PledgeId.VaultsOfMadness] = "Vaults of Madness",
	[PledgeId.BlackDrakeVilla] = "Black Drake Villa",
	[PledgeId.BloodrootForge] = "Bloodroot Forge",
	[PledgeId.CastleThorn] = "Castle Thorn",
	[PledgeId.CoralAerie] = "Coral Aerie", -- TODO: Review
	[PledgeId.CradleOfShadows] = "Cradle of Shadows",
	[PledgeId.DepthsOfMalatar] = "Depths of Malatar",
	[PledgeId.FalkreathHold] = "Falkreath Hold",
	[PledgeId.FangLair] = "Fang Lair",
	[PledgeId.Frostvault] = "Frostvault",
	[PledgeId.Icereach] = "Icereach",
	[PledgeId.ImperialCityPrison] = "Imperial City Prison",
	[PledgeId.LairOfMaarselok] = "Lair of Maarselok",
	[PledgeId.MarchOfSacrifices] = "March of Sacrifices",
	[PledgeId.MoonHunterKeep] = "Moon Hunter Keep",
	[PledgeId.MoongraveFane] = "Moongrave Fane",
	[PledgeId.RedPetalBastion] = "Red Petal Bastion",
	[PledgeId.RuinsOfMazzatun] = "Ruins of Mazzatun",
	[PledgeId.ScalecallerPeak] = "Scalecaller Peak",
	[PledgeId.ShipwrightsRegret] = "Shipwright's Regret", -- TODO: Review
	[PledgeId.StoneGarden] = "Stone Garden",
	[PledgeId.Cauldron] = "The Cauldron",
	[PledgeId.DreadCellar] = "The Dread Cellar",
	[PledgeId.UnhallowedGrave] = "Unhallowed Grave",
	[PledgeId.WhiteGoldTower] = "White-Gold Tower"
}

GAFE.PledgeChatterOptions = {
    "What's the pledge today?"
}