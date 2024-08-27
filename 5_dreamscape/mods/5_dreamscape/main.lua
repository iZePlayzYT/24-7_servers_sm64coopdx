-- name: \\#ffff40\\Dreamscape
-- description: \\#ff8173\\Mario in the \\#ff0f6b\\Dreamscape \\#ffffff\\ \\#FFFFFF\\ \n\nA romhack made by \\#ff0f6b\\Angry\\#FFFFFF\\ \n\nPorted to sm64ex-coop by\n\\\#FFFFFF\\Fe\\#ffcdab\\arl\\#FFFFFF\\
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
camera_set_use_course_specific_settings(false)

gLevelValues.fixCollisionBugs = true
gLevelValues.fixCollisionBugsRoundedCorners = false
gLevelValues.fixCollisionBugsFalseLedgeGrab = false
gLevelValues.fixCollisionBugsGroundPoundBonks = false
gLevelValues.fixCollisionBugsPickBestWall = true
