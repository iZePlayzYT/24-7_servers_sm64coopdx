gLevelValues.exitCastleLevel = 16
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleWarpNode = 10

gBehaviorValues.KingBobombFVel = 3.0
gBehaviorValues.KingBobombYawVel = 256
gBehaviorValues.KingBobombHealth = 5

gBehaviorValues.KingWhompHealth = 3
gBehaviorValues.KoopaThiAgility = 6.0
gBehaviorValues.KoopaBobAgility = 4.0

gBehaviorValues.MipsStar1Requirement = 15
gBehaviorValues.MipsStar2Requirement = 50

gBehaviorValues.ToadStar1Requirement = 12
gBehaviorValues.ToadStar2Requirement = 25
gBehaviorValues.ToadStar3Requirement = 35
gLevelValues.pssSlideStarTime = 1080

gLevelValues.metalCapDuration = 600
gLevelValues.wingCapDuration = 1800
gLevelValues.vanishCapDuration = 600

gLevelValues.metalCapDurationCotmc = 1
gLevelValues.wingCapDurationTotwc = 1
gLevelValues.vanishCapDurationVcutm = 1

gLevelValues.previewBlueCoins = true

gBehaviorValues.ChillBullyDeathPosY = 270

gBehaviorValues.starsNeededForDialog.dialog1 = 3
gBehaviorValues.starsNeededForDialog.dialog2 = 10
gBehaviorValues.starsNeededForDialog.dialog3 = 20
gBehaviorValues.starsNeededForDialog.dialog4 = 50
gBehaviorValues.starsNeededForDialog.dialog5 = 70
gBehaviorValues.starsNeededForDialog.dialog6 = 90

hook_event(HOOK_MARIO_UPDATE, function(m) m.numLives = 10 end)

--NoD Code
local once = true 
hook_event(HOOK_MARIO_UPDATE,
function(m)
    if m.playerIndex ~= 0 then return end
    if once then
        m.numLives = 100
        once = true
    end
end)

gLevelValues.mushroom1UpHeal = 1

---@param m MarioState
function mario_update(m)

    if m.playerIndex ~= 0 then return end
    ---@type NetworkPlayer
    local np = gNetworkPlayers[0]

    gServerSettings.stayInLevelAfterStar = 1

    if np.currLevelNum == LEVEL_CASTLE_GROUNDS then
            gServerSettings.stayInLevelAfterStar = 0
        end
    if np.currLevelNum == LEVEL_CASTLE_COURTYARD and np.currAreaIndex == 2 then
        local obj = obj_get_first_with_behavior_id(id_bhvWhompKingBoss)
        if obj and obj.oAction == 9 then
            gServerSettings.stayInLevelAfterStar = 0
        end
    if np.currLevelNum == LEVEL_CASTLE_COURTYARD and np.currAreaIndex == 1 then
            gServerSettings.stayInLevelAfterStar = 1
        end
    elseif np.currLevelNum == LEVEL_PSS then
        gServerSettings.stayInLevelAfterStar = 0
    end
end

hook_event(HOOK_MARIO_UPDATE, mario_update)

function bhv_custom_grand_star_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj.oInteractType = INTERACT_WARP
    obj.oIntangibleTimer = 0
    cur_obj_set_home_once()
end

function bhv_custom_grand_star_loop(obj)
    bhv_warp_loop()
    bhv_grand_star_loop()
end

-- hook the behavior
id_bhvGrandStar = hook_behavior(id_bhvGrandStar, OBJ_LIST_LEVEL, true, bhv_custom_grand_star_init, bhv_custom_grand_star_loop)