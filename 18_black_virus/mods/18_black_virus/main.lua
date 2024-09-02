-- name: \\#ffff40\\The Black Virus
-- description: 
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE_COURTYARD
gLevelValues.cellHeightLimit = 32767
gLevelValues.floorLowerLimit = -32768
gLevelValues.floorLowerLimitMisc = -31768
gLevelValues.floorLowerLimitShadow = -31768

gServerSettings.skipIntro = 1

camera_set_use_course_specific_settings(0)
camera_set_romhack_override(RCO_ALL)
rom_hack_cam_set_collisions(0)
camera_romhack_allow_centering(0)
camera_romhack_allow_dpad_usage(1)

set_ttc_speed_setting(TTC_SPEED_FAST)

gLevelValues.fixCollisionBugs = false
gLevelValues.fixCollisionBugsRoundedCorners = false
gLevelValues.fixCollisionBugsFalseLedgeGrab = false
gLevelValues.fixCollisionBugsGroundPoundBonks = false
gLevelValues.fixCollisionBugsPickBestWall = false

