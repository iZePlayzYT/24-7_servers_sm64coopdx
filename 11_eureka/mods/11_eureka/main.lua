-- name: \\#ffff40\\Eureka
-- description: \\#ffeb69\\Eureka \\#FFFFFF\\ \n\nA romhack made by \\#ffeb69\\GooseDaJuice\\#FFFFFF\\ \n\nPorted to sm64ex-coop by\n\\\#FFFFFF\\Fe\\#ffcdab\\arl
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE_GROUNDS
gLevelValues.cellHeightLimit = 32767
gLevelValues.floorLowerLimit = -32768
gLevelValues.floorLowerLimitMisc = -31768
gLevelValues.floorLowerLimitShadow = -31768

gServerSettings.skipIntro = 1

camera_set_use_course_specific_settings(0)
camera_set_romhack_override(RCO_ALL)
rom_hack_cam_set_collisions(0)
camera_romhack_allow_centering(0)
camera_set_use_course_specific_settings(0)
camera_romhack_allow_dpad_usage(1)

gLevelValues.fixCollisionBugs = true
gLevelValues.fixCollisionBugsRoundedCorners = false
gLevelValues.fixCollisionBugsFalseLedgeGrab = true
gLevelValues.fixCollisionBugsGroundPoundBonks = false
gLevelValues.fixCollisionBugsPickBestWall = false

function set_dialog_color_to_blue()
   set_dialog_override_color(11, 13, 120, 170, 255, 255, 255, 255)
end

hook_event(HOOK_ON_DIALOG, set_dialog_color_to_blue)

--Non Perfect Vanish Cap Floor Fix

function change_vanish_floor(m) --- LTT Tweaked Code
   if m.playerIndex ~= 0 then return end
   if (m.flags & MARIO_VANISH_CAP ~= 0 and m.floor.type == SURFACE_INSTANT_QUICKSAND) then
       m.floor.type = SURFACE_SHALLOW_QUICKSAND
   else
      if (m.flags & MARIO_VANISH_CAP == 0 and m.floor.type == SURFACE_SHALLOW_QUICKSAND) then
         m.floor.type = SURFACE_INSTANT_QUICKSAND
      end
   end
end

hook_event(HOOK_MARIO_UPDATE, change_vanish_floor)

bhvHiddenStaircaseStep = hook_behavior(id_bhvHiddenStaircaseStep, OBJ_LIST_SURFACE, true, obj_mark_for_deletion, nil)