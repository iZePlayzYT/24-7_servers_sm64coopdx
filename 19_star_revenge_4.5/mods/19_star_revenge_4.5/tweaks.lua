gLevelValues.exitCastleLevel = 26
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleWarpNode = 10

gBehaviorValues.KingBobombFVel = 296.0
gBehaviorValues.KingBobombYawVel = 3500
gBehaviorValues.KingBobombHealth = 1
gBehaviorValues.KingWhompHealth = 4
gBehaviorValues.KoopaThiAgility = 6.0
gBehaviorValues.KoopaBobAgility = 5.5

gBehaviorValues.MipsStar1Requirement = 10
gBehaviorValues.MipsStar2Requirement = 25
gBehaviorValues.ToadStar1Requirement = 0
gBehaviorValues.ToadStar2Requirement = 0
gBehaviorValues.ToadStar3Requirement = 0

gLevelValues.pssSlideStarTime = 180
gLevelValues.metalCapDuration = 600
gLevelValues.wingCapDuration = 1800
gLevelValues.vanishCapDuration = 600
gLevelValues.metalCapDurationCotmc = 1
gLevelValues.wingCapDurationTotwc = 1
gLevelValues.vanishCapDurationVcutm = 1

gLevelValues.bubbleOnDeathBarrierInCapStages = false

hook_event(HOOK_MARIO_UPDATE, function(m) m.numLives = 10 end)

--NoD Code
local once = true 
hook_event(HOOK_MARIO_UPDATE,
function(m)
    if m.playerIndex ~= 0 then return end
    if once then
        m.numLives = 10
        once = true
    end
end)

gLevelValues.hudCapTimer = 1
gLevelValues.mushroom1UpHeal = 1

gBehaviorValues.trajectories.PlatformRrTrajectory = get_trajectory("rr_seg7_trajectory_0702EC3C_RM2C_path")
gBehaviorValues.trajectories.PlatformRr2Trajectory = get_trajectory("rr_seg7_trajectory_0702ECC0_RM2C_path")
gBehaviorValues.trajectories.PlatformRr3Trajectory = get_trajectory("rr_seg7_trajectory_0702ED9C_RM2C_path")
gBehaviorValues.trajectories.PlatformRr4Trajectory = get_trajectory("rr_seg7_trajectory_0702EEE0_RM2C_path")
gBehaviorValues.trajectories.PlatformCcmTrajectory = get_trajectory("ccm_seg7_trajectory_0701669C_RM2C_path")
gBehaviorValues.trajectories.PlatformBitfsTrajectory = get_trajectory("bitfs_seg7_trajectory_070159AC_RM2C_path")
gBehaviorValues.trajectories.PlatformHmcTrajectory = get_trajectory("hmc_seg7_trajectory_0702B86C_RM2C_path")
gBehaviorValues.trajectories.PlatformLllTrajectory = get_trajectory("lll_seg7_trajectory_0702856C_RM2C_path")
gBehaviorValues.trajectories.PlatformLll2Trajectory = get_trajectory("lll_seg7_trajectory_07028660_RM2C_path")
gBehaviorValues.trajectories.RacingPenguinTrajectory = get_trajectory("ccm_seg7_trajectory_penguin_race_RM2C_path")
gBehaviorValues.trajectories.KoopaBobTrajectory = get_trajectory('KoopaBoB_path')
gBehaviorValues.trajectories.KoopaThiTrajectory = get_trajectory('KoopaTHI_path')

hook_event(HOOK_GET_STAR_COLLECTION_DIALOG, function () return 0 end)


function wmotrdpadcam()

    sLevelTable = {
        COURSE_BOB,
        COURSE_WF,
        COURSE_JRB,
        COURSE_CCM,
        COURSE_BBH,
        COURSE_HMC,
        COURSE_LLL,
        COURSE_SSL,
        COURSE_DDD,
        COURSE_WDW,
        COURSE_THI,
        COURSE_TTM,
        COURSE_RR,
        LEVEL_CASTLE_GROUNDS,
        LEVEL_CASTLE,
        LEVEL_CASTLE_COURTYARD,
    }

    if gNetworkPlayers[0].currLevelNum == LEVEL_WMOTR then
        camera_romhack_allow_dpad_usage(0)
    elseif gNetworkPlayers[0] and sLevelTable and gNetworkPlayers[0].currLevelNum then
        camera_romhack_allow_dpad_usage(1)
    end
end

hook_event(HOOK_MARIO_UPDATE, wmotrdpadcam)

--Ztar Atack 2 Code

---@param m MarioState
function mario_update(m)

    if m.playerIndex ~= 0 then return end
    ---@type NetworkPlayer
    local np = gNetworkPlayers[0]

    gServerSettings.stayInLevelAfterStar = 1

    if np.currLevelNum == LEVEL_TOTWC then
        local obj = obj_get_first_with_behavior_id(id_bhvKingBobomb)
        if obj and obj.oAction == 8 then
            gServerSettings.stayInLevelAfterStar = 0
        end
    elseif np.currLevelNum == LEVEL_BITS then
        local obj = obj_get_first_with_behavior_id(id_bhvWhompKingBoss)
        if obj and obj.oAction == 9 then
            gServerSettings.stayInLevelAfterStar = 0
        end
    elseif np.currLevelNum == LEVEL_SA then
        local obj = obj_get_first_with_behavior_id(id_bhvKoopa)
        if obj and dist_between_objects(m.marioObj, obj) < 2000 then
            gServerSettings.stayInLevelAfterStar = 0
        end
    elseif np.currLevelNum == LEVEL_COTMC then
        gServerSettings.stayInLevelAfterStar = 0
    end 
end

hook_event(HOOK_MARIO_UPDATE, mario_update)

--infinite lives toggle

gGlobalSyncTable.inflives = true

--toggling on and off
function livestoggle(msg)
    if (msg == "on") then djui_chat_message_create("infinite lives are on")
        gGlobalSyncTable.inflives = true
        return true
    elseif (msg == "off") then djui_chat_message_create("infinite lives are off")
        gGlobalSyncTable.inflives = false
        return true
    end
    return false
end

--command hooks
if network_is_server() then
    hook_chat_command('inflives', "(on|off) infinite lives toggle", livestoggle)
end

--if the toggle is on...
function resetlives()
    if gGlobalSyncTable.inflives == true then
        gMarioStates[0].numLives = 10 --resets your lives back to 10 when you die
    end
end

hook_event(HOOK_ON_DEATH, resetlives)