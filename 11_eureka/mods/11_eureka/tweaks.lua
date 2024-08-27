gLevelValues.exitCastleLevel = 16
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleWarpNode = 200

gBehaviorValues.KingBobombFVel = -7.96875
gBehaviorValues.KingBobombYawVel = 512
gBehaviorValues.KingBobombHealth = 3

gBehaviorValues.KingWhompHealth = 3
gBehaviorValues.KoopaThiAgility = 6.0
gBehaviorValues.KoopaBobAgility = 3.25

gBehaviorValues.MipsStar1Requirement = 15
gBehaviorValues.MipsStar2Requirement = 50

gBehaviorValues.ToadStar1Requirement = 12
gBehaviorValues.ToadStar2Requirement = 25
gBehaviorValues.ToadStar3Requirement = 5

gLevelValues.pssSlideStarTime = 630

gLevelValues.metalCapDuration = 1320
gLevelValues.wingCapDuration = 2070
gLevelValues.vanishCapDuration = 1320

gLevelValues.metalCapDurationCotmc = 1
gLevelValues.wingCapDurationTotwc = 1170
gLevelValues.vanishCapDurationVcutm = 1

gBehaviorValues.starsNeededForDialog.dialog1 = 5

gBehaviorValues.starsNeededForDialog.dialog1 = 5
gBehaviorValues.starsNeededForDialog.dialog2 = 10
gBehaviorValues.starsNeededForDialog.dialog3 = 15
gBehaviorValues.starsNeededForDialog.dialog4 = 40
gBehaviorValues.starsNeededForDialog.dialog5 = 60
gBehaviorValues.starsNeededForDialog.dialog6 = 100

gLevelValues.bubbleOnDeathBarrierInCapStages = true
gLevelValues.mushroom1UpHeal = 1
gLevelValues.vanishCapSequence = 0x59
gLevelValues.wingCapSequence = 0x58
gLevelValues.previewBlueCoins = true
gServerSettings.stayInLevelAfterStar = true

gBehaviorValues.trajectories.BowlingBallBobTrajectory = get_trajectory('bob_seg7_metal_ball_path0_RM2C_path')
gBehaviorValues.trajectories.KoopaBobTrajectory = get_trajectory('KoopaBoB_path')
gBehaviorValues.trajectories.KoopaThiTrajectory = get_trajectory('KoopaTHI_path')

--- Acts, StayinlvlStars --- 

function acts()
    ---@type NetworkPlayer
    local np = gNetworkPlayers[0]
    ---@type MarioState
    local m = gMarioStates[0]
    gLevelValues.disableActs = false

    if np.currLevelNum == LEVEL_CASTLE_COURTYARD and
    m.floor.type == 200 or m.floor.type == 14 then
        gLevelValues.disableActs = true

    end
    if np.currLevelNum == LEVEL_CASTLE_GROUNDS
    and np.currAreaIndex == 3 or m.floor.type == 200 then
        gLevelValues.disableActs = true
    end

    if np.currLevelNum == LEVEL_CASTLE then 
        gLevelValues.disableActs = true
    end

    if np.currLevelNum == LEVEL_CASTLE and m.floor.type == 200 then
        gLevelValues.disableActs = false
    end
end

hook_event(HOOK_UPDATE, acts)

function fix_ttc()

    local np = gNetworkPlayers[0]
    local m = gMarioStates[0]

    if (np.currLevelNum == LEVEL_TTC and np.currAreaIndex == 2 and m.floor.type == SURFACE_INSTANT_QUICKSAND) then
        m.floor.type = SURFACE_SHALLOW_QUICKSAND
    end
end

hook_event(HOOK_UPDATE, fix_ttc)