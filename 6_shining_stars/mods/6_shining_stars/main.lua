-- name: \\#ffff40\\Shining Stars
-- description: \\#ffffff\\The first hack in the Shining Stars series, and a classic well-known hack by all!.\n\nPorted by Fearl
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE_COURTYARD
gLevelValues.fixCollisionBugs = true
gLevelValues.fixCollisionBugsRoundedCorners = false
gLevelValues.fixCollisionBugsFalseLedgeGrab = true
gLevelValues.fixCollisionBugsGroundPoundBonks = true
gLevelValues.fixCollisionBugsPickBestWall = true
gLevelValues.fixVanishFloors = true
gServerSettings.skipIntro = 1

camera_set_use_course_specific_settings(0)
camera_set_romhack_override(RCO_ALL)
rom_hack_cam_set_collisions(1)
camera_romhack_allow_centering(0)
camera_set_use_course_specific_settings(false)

gBehaviorValues.trajectories.KoopaBobTrajectory = get_trajectory('KoopaBoB_path')
gBehaviorValues.trajectories.BowlingBallBobTrajectory = get_trajectory('bob_seg7_metal_ball_path0_RM2C_path')

smlua_audio_utils_replace_sequence(0x01, 0x25, 75, "STARJINGLE")
smlua_audio_utils_replace_sequence(0x02, 0x11, 75, "02_Seq_custom")
smlua_audio_utils_replace_sequence(0x0A, 0x21, 70, "C10")
smlua_audio_utils_replace_sequence(0x0D, 0x25, 75, "STARSEL")
smlua_audio_utils_replace_sequence(0x0E, 0x25, 75, "WINGCAP")
smlua_audio_utils_replace_sequence(0x0F, 0x18, 75, "METALCAP")
smlua_audio_utils_replace_sequence(0x10, 0x12, 75, "10_Seq_custom")
smlua_audio_utils_replace_sequence(0x12, 0x1A, 75, "STARJINGLE2")
smlua_audio_utils_replace_sequence(0x14, 0x1A, 75, "14_Seq_custom")
smlua_audio_utils_replace_sequence(0x15, 0x0E, 75, "15_Seq_custom")
smlua_audio_utils_replace_sequence(0x16, 0x25, 70, "BOSS")
smlua_audio_utils_replace_sequence(0x17, 0x1A, 75, "17_Seq_custom")
smlua_audio_utils_replace_sequence(0x1B, 0x14, 75, "1B_Seq_custom")
smlua_audio_utils_replace_sequence(0x1C, 0x20, 75, "1C_Seq_custom")
smlua_audio_utils_replace_sequence(0x1D, 0x1E, 75, "1D_Seq_custom")
smlua_audio_utils_replace_sequence(0x1E, 0x1B, 75, "1E_Seq_custom")
smlua_audio_utils_replace_sequence(0x1F, 0x1A, 75, "POSTSTAR")
smlua_audio_utils_replace_sequence(0x20, 0x23, 75, "20_Seq_custom")
smlua_audio_utils_replace_sequence(0x21, 0x25, 75, "S2")
smlua_audio_utils_replace_sequence(0x23, 0x25, 40, "C3")
smlua_audio_utils_replace_sequence(0x24, 0x25, 55, "S1")
smlua_audio_utils_replace_sequence(0x25, 0x25, 50, "C4")
smlua_audio_utils_replace_sequence(0x26, 0x25, 75, "OW1")
smlua_audio_utils_replace_sequence(0x28, 0x11, 75, "B1")
smlua_audio_utils_replace_sequence(0x29, 0x25, 40, "C2")
smlua_audio_utils_replace_sequence(0x2A, 0x11, 60, "C5")
smlua_audio_utils_replace_sequence(0x2B, 0x11, 40, "C1")
smlua_audio_utils_replace_sequence(0x2C, 0x25, 20, "C6")
smlua_audio_utils_replace_sequence(0x2D, 0x11, 45, "C9")
smlua_audio_utils_replace_sequence(0x2E, 0x25, 55, "VC")
smlua_audio_utils_replace_sequence(0x2F, 0x25, 40, "C8")
smlua_audio_utils_replace_sequence(0x32, 0x11, 90, "C7")
smlua_audio_utils_replace_sequence(0x33, 0x25, 60, "WC")
smlua_audio_utils_replace_sequence(0x34, 0x18, 70, "B2")
smlua_audio_utils_replace_sequence(0x35, 0x25, 40, "OW3")
smlua_audio_utils_replace_sequence(0x36, 0x25, 75, "C11")
smlua_audio_utils_replace_sequence(0x37, 0x25, 50, "C14")
smlua_audio_utils_replace_sequence(0x38, 0x25, 55, "C13")
smlua_audio_utils_replace_sequence(0x39, 0x11, 55, "C15")
smlua_audio_utils_replace_sequence(0x3B, 0x25, 50, "S3")
smlua_audio_utils_replace_sequence(0x3A, 0x11, 50, "B3")
smlua_audio_utils_replace_sequence(0x9, 0x11, 75, "C9")


vec3f_set(gLevelValues.starPositions.KoopaBobStarPos, -5521, 73, 3281)
vec3f_set(gLevelValues.starPositions.KoopaThiStarPos, 10444, -4556, -194)
vec3f_set(gLevelValues.starPositions.KingBobombStarPos, -6333.0, 1794.0, -5272.0)
vec3f_set(gLevelValues.starPositions.KingWhompStarPos, -5261.0, -2800.0, 2765.0)
vec3f_set(gLevelValues.starPositions.EyerockStarPos, 0.0, -900.0, -3700.0)
vec3f_set(gLevelValues.starPositions.BigBullyStarPos, 12052.0, -2752.0, -6462.0)
vec3f_set(gLevelValues.starPositions.ChillBullyStarPos, -7604.0, 40.0, 6667.0)
vec3f_set(gLevelValues.starPositions.BigPiranhasStarPos, 2631.0, -6579.0, 2274.0)
vec3f_set(gLevelValues.starPositions.TuxieMotherStarPos, 3167.0, -4300.0, 5108.0)
vec3f_set(gLevelValues.starPositions.WigglerStarPos, 2196.0, 5904.0, 6281.0)
vec3f_set(gLevelValues.starPositions.PssSlideStarPos, -6675.0, -5821.0, -1134.0)
vec3f_set(gLevelValues.starPositions.RacingPenguinStarPos, -7339.0, -5700.0, -6774.0)
vec3f_set(gLevelValues.starPositions.TreasureChestStarPos, -1800.0, -2500.0, -1700.0)
vec3f_set(gLevelValues.starPositions.GhostHuntBooStarPos, 980.0, 1100.0, 250.0)
vec3f_set(gLevelValues.starPositions.KleptoStarPos, -5550.0, 300.0, -930.0)
vec3f_set(gLevelValues.starPositions.MerryGoRoundStarPos, -1600.0, -2100.0, 205.0)
vec3f_set(gLevelValues.starPositions.MrIStarPos, 9642.0, 1544.0, 3803.0)
vec3f_set(gLevelValues.starPositions.BalconyBooStarPos, 3803.0, -2882.0, -3976.0)
vec3f_set(gLevelValues.starPositions.BigBullyTrioStarPos, -7493.0, -150.0, 7082.0)

movtexqc_register('castle_inside_1_Movtex_0', 6, 1, 0)
movtexqc_register('ttc_1_Movtex_0', 14, 1, 0)
movtexqc_register('sa_1_Movtex_0', 20, 1, 0)
movtexqc_register('lll_1_Movtex_0', 22, 1, 0)
movtexqc_register('ending_1_Movtex_0', 25, 1, 0)
movtexqc_register('castle_courtyard_1_Movtex_0', 26, 1, 0)
movtexqc_register('ttm_1_Movtex_0', 36, 1, 0)