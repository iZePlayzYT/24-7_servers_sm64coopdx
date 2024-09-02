-- name: \\#ffff40\\Star Revenge 4.5
-- description: \\#ff2441\\Star Revenge 4.5: \\#ffed24\\The Kedama Takeover \\#2448ff\\Redone \\#FFFFFF\\ \n\nA romhack made by \\#0000FF\\BroDute\\#FFFFFF\\ \n\nPorted to sm64ex-coop by\n\\\#FFFFFF\\Fe\\#ffcdab\\arl\\#FFFFFF\\
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE_GROUNDS
gLevelValues.cellHeightLimit = 32767
gLevelValues.floorLowerLimit = -32767

camera_set_use_course_specific_settings(0)
camera_set_romhack_override(RCO_ALL)
rom_hack_cam_set_collisions(0)
camera_romhack_allow_centering(0)
camera_romhack_allow_dpad_usage(1)

gServerSettings.skipIntro = 1

---No Fall Damage--- (Code by Woissil)

function no_fall_damage(m)
 m.peakHeight = m.pos.y
end
hook_event(HOOK_MARIO_UPDATE, no_fall_damage)

