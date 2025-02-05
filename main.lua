-- First, we create a namespace for our addon by declaring a top-level table that will hold everything else.
local GAFE = GroupActivityFinderExtensions

-- Then we create an event handler function which will be called when the "addon loaded" event
-- occurs. We'll use this to initialize our addon after all of its resources are fully loaded.
local function OnAddOnLoaded(eventCode, addonName)
    -- The event fires each time *any* addon loads - but we only care about when our own addon loads.
    if addonName ~= GAFE.name then return end
    EVENT_MANAGER:UnregisterForEvent(GAFE.name .. "_Event", EVENT_ADD_ON_LOADED)

    -- Migrate old saved vars versions
    if not pcall(GAFE.Vars.Migrate) then
        GAFE.LogLater("Could not migrate Group & Activity Finder Extensions settings. Reset to default.")
    end

    -- Load saved variables
    GAFE.SavedVars = ZO_SavedVars:NewAccountWide(GAFE.name .. "_Vars", GAFE.varsVersion, nil, GAFE.DefaultVars, GetWorldName())

    -- Initialize stuff
    GAFE_TRIALS_CHESTS.Init()

    GAFE_GROUP_EXTENSIONS.Init()
    GAFE_DUNGEON_EXTENSIONS.Init()
    GAFE_DUNGEON_COMMANDS.Init()
    GAFE_TRIALS_EXTENSIONS.Init()
    GAFE_BATTLEGROUNDS_EXTENSIONS.Init()
    GAFE_QUEUE_EXTENSIONS.Init()
    GAFE_SCHEDULE.Init()

    -- GAFE.QueueManager.Init()
    -- GAFE.DungeonFinderCommands.Init()
    -- GAFE.RandomDungeon.Init()
    -- GAFE.RandomBattleground.Init()
    -- GAFE.TrialChestTimer.Init()
    -- GAFE.TrialFinder.Init()
    -- GAFE.AutoConfirm.Init()
    -- GAFE.PledgeQuestHandler.Init()
    -- GAFE.QueueTimer.Init()
    -- GAFE.ActivitySchedule.Init()
    -- if GAFE.CanDebug then GAFE.Map.Init() end

    -- Init settings menu
    GAFE.SettingsMenu.Init()
end

-- Finally, we'll register our event handler function to be called when the proper event occurs.
EVENT_MANAGER:RegisterForEvent(GAFE.name .. "_Event", EVENT_ADD_ON_LOADED, OnAddOnLoaded)
