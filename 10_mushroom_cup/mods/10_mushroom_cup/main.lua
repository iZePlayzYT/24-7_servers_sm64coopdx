-- name: \\#ffff40\\The Mushroom Cup
-- description: Originally ported by: GreicrackYT and iZePlayz, \\#ff2b1c\\The \\#636363\\Mushroom \\#ffb742\\Cup\\#ffffff\\ is a very complete hack with courses, fun platform and visually, I ported this hack again fixing many things from the original, scrolling textures will be added later when I manage to sort them.\n\n Fixed and Ported Again by: Fe\\#ffbfa5\\arl
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE_GROUNDS
gLevelValues.cellHeightLimit = 32767
gLevelValues.floorLowerLimit = -32767

gLevelValues.skipCreditsAt = LEVEL_CASTLE_GROUNDS

gServerSettings.skipIntro = 1
gServerSettings.stayInLevelAfterStar = 0


camera_set_use_course_specific_settings(0)
camera_set_romhack_override(RCO_ALL)
rom_hack_cam_set_collisions(0)
camera_romhack_allow_centering(0)

hook_event(HOOK_MARIO_UPDATE,
function (m)
    if m.playerIndex ~= 0 then return end
    camera_set_romhack_override((m.action == ACT_FLYING or m.action & ACT_GROUP_MASK == ACT_GROUP_SUBMERGED) and RCO_NONE or RCO_ALL)
end)

local function level_init()
    if gNetworkPlayers[0].currLevelNum == LEVEL_JRB then
        local obj = obj_get_first_with_behavior_id(id_bhvWarp)
        while obj do
            obj.oIntangibleTimer = 35
            obj = obj_get_next_with_same_behavior_id(obj)
        end
    end
end

hook_event(HOOK_ON_WARP, level_init)

set_ttc_speed_setting(TTC_SPEED_SLOW)