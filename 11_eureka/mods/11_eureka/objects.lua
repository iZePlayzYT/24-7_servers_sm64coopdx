---@diagnostic disable: param-type-mismatch, assign-type-mismatch
-- Thanks EmeraldLockdown for helping me fixing the goomba

----------------
-----Models-----
----------------

-- If any of these are needed in another file, like the exclamation box, just make models you need global

local E_MODEL_PLATFORM_A = smlua_model_util_get_id("platform_a_geo")
local E_MODEL_LOCK5STARS = smlua_model_util_get_id("lock5stars_geo")
local E_MODEL_LOCK10STARS = smlua_model_util_get_id("lock10stars_geo")
local E_MODEL_UPDOWN = smlua_model_util_get_id("updown_geo")
local E_MODEL_LAVAPLANE = smlua_model_util_get_id("lavaplane_geo")


--------------------
-----Collisions-----
--------------------

-- Still unused

COL_TREADMILL = smlua_collision_util_get("treadmill_col_collision")
COL_LOCK5STARS = smlua_collision_util_get("lock5stars_col_collision")
COL_LOCK10STARS = smlua_collision_util_get("lock10stars_col_collision")
COL_UPDOWN = smlua_collision_util_get("updown_coll_collision")
COL_LAVAPLANE = smlua_collision_util_get("lavaplane_col_collision")
COL_EXCLAMATION = smlua_collision_util_get("exclamation_box_outline_seg8_collision_08025F78")

-----------------
-----Actions-----
-----------------

local PLATFOMR_A_ACT_IDLE = 0
local PLATFORM_A_ACT_BOUNCING = 1

-----------------------------
-----Localized Functions-----
-----------------------------

local obj_set_model_extended = obj_set_model_extended
local set_mario_action = set_mario_action
local cur_obj_is_mario_on_platform = cur_obj_is_mario_on_platform
local spawn_mist_particles = spawn_mist_particles
local string_pack = string.pack
local string_unpack = string.unpack
---@param value number
---@param pack_fmt string
---@param unpack_fmt string
local repack = function (value, pack_fmt, unpack_fmt)
    return string_unpack(unpack_fmt, string_pack(pack_fmt, value))
end

--------------------------
-----Helper Functions-----
--------------------------

---@param m MarioState
---@return boolean
local function is_bubbled(m)
    return m.action == ACT_BUBBLED
end

-------------------
-----Functions-----
-------------------

------ PlatformA ------

---@param obj Object
function bhv_platformA_init(obj)
    obj_set_model_extended(obj, E_MODEL_PLATFORM_A)
end

---@param obj Object
function bhv_platformA_loop(obj)
    local m = gMarioStates[0]
    local y_spd = 64

    if cur_obj_is_mario_on_platform() == 1 and not is_bubbled(m) then
        if m.controller.buttonPressed & A_BUTTON ~= 0 then set_mario_action(m, ACT_DOUBLE_JUMP, 0)
            y_spd = y_spd + 13 -- I feel like this should increase with oBehParams2ndByte
            spawn_mist_particles()
        end

        -- Calculates y speed
        local intermediate_y_spd = repack(y_spd, "f", "I")
		intermediate_y_spd = intermediate_y_spd + (obj.oBehParams2ndByte << 16)
		y_spd = repack(intermediate_y_spd, "I", "f")
		m.vel.y = y_spd + 13

        obj.oAction = PLATFORM_A_ACT_BOUNCING
    end

    if obj.oAction == PLATFORM_A_ACT_BOUNCING then
        if obj.oTimer == 4 then
            obj.oAction = PLATFOMR_A_ACT_IDLE
            obj.oPosY = obj.oHomeY
        end
    end
end

------ TreadMill ------

---@param o Object
function treadmill_init(o)
    obj_set_model_extended(o, E_MODEL_NONE)
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.oAction = 7
end

---@param o Object
function treadmill_loop(o)
    if o.collisionData == COL_TREADMILL then
        o.oAnimState = math.floor(o.oTimer/1.85/2)%4
    else
        o.oAnimState = math.floor(o.oTimer/1.85)%4
    end
    load_object_collision_model()
    local m = gMarioStates[0]
    if m.floor.object ~= nil and m.action & ACT_FLAG_AIR == 0 then
        if m.floor.object.oAction == 7 then
            m.pos.x = m.pos.x + sins(m.floor.object.oFaceAngleYaw)*4
            m.pos.x = m.pos.x + coss(m.floor.object.oFaceAngleYaw)*4

            end
        end
    end

id_Bhv_Custom_0x13005a6c = hook_behavior(nil, OBJ_LIST_SURFACE, false, treadmill_init, treadmill_loop, "Bhv_Custom_0x13005a6c")

------ TreadMill Upwards ------

---@param o Object
function treadmillU_init(o)
    obj_set_model_extended(o, E_MODEL_NONE)
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.oAction = 8
end

---@param o Object
function treadmillU_loop(o)
    if o.collisionData == COL_TREADMILL then
        o.oAnimState = math.floor(o.oTimer/1.85/2)%4
    else
        o.oAnimState = math.floor(o.oTimer/1.85)%4
    end
    load_object_collision_model()
    local m = gMarioStates[0]
    if m.floor.object ~= nil and m.action & ACT_FLAG_AIR == 0 then
        if m.floor.object.oAction == 8 then
            m.pos.z = m.pos.z - sins(m.floor.object.oFaceAngleYaw)*2
            m.pos.z = m.pos.z - coss(m.floor.object.oFaceAngleYaw)*2

            end
        end
    end

id_Bhv_Custom_0x13005a6cU = hook_behavior(nil, OBJ_LIST_SURFACE, false, treadmillU_init, treadmillU_loop, "Bhv_Custom_0x13005a6cU")

------ TreadMill Upwards RED ------

---@param o Object
function treadmillURED_init(o)
    obj_set_model_extended(o, E_MODEL_NONE)
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.oAction = 9
end

---@param o Object
function treadmillURED_loop(o)
    if o.collisionData == COL_TREADMILL then
        o.oAnimState = math.floor(o.oTimer/1.85/2)%4
    else
        o.oAnimState = math.floor(o.oTimer/1.85)%4
    end
    load_object_collision_model()
    local m = gMarioStates[0]
    if m.floor.object ~= nil and m.action & ACT_FLAG_AIR == 0 then
        if m.floor.object.oAction == 9 then
            m.pos.z = m.pos.z - sins(m.floor.object.oFaceAngleYaw)*9
            m.pos.z = m.pos.z - coss(m.floor.object.oFaceAngleYaw)*9

            end
        end
    end

id_Bhv_Custom_0x13005a6cURED = hook_behavior(nil, OBJ_LIST_SURFACE, false, treadmillURED_init, treadmillURED_loop, "Bhv_Custom_0x13005a6cURED")

------ TreadMill Upwards REDs ------

---@param o Object
function treadmillUREDs_init(o)
    obj_set_model_extended(o, E_MODEL_NONE)
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.oAction = 10
end

---@param o Object
function treadmillUREDs_loop(o)
    if o.collisionData == COL_TREADMILL then
        o.oAnimState = math.floor(o.oTimer/1.85/2)%4
    else
        o.oAnimState = math.floor(o.oTimer/1.85)%4
    end
    load_object_collision_model()
    local m = gMarioStates[0]
    if m.floor.object ~= nil and m.action & ACT_FLAG_AIR == 0 then
        if m.floor.object.oAction == 10 then
            m.pos.z = m.pos.z - sins(m.floor.object.oFaceAngleYaw)*12
            m.pos.z = m.pos.z - coss(m.floor.object.oFaceAngleYaw)*12

            end
        end
    end

id_Bhv_Custom_0x13005a6cUREDs = hook_behavior(nil, OBJ_LIST_SURFACE, false, treadmillUREDs_init, treadmillUREDs_loop, "Bhv_Custom_0x13005a6cUREDs")

------ TreadMill UpwardsN ------

---@param o Object
function treadmillUN_init(o)
    obj_set_model_extended(o, E_MODEL_NONE)
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.oAction = 11
end

---@param o Object
function treadmillUN_loop(o)
    if o.collisionData == COL_TREADMILL then
        o.oAnimState = math.floor(o.oTimer/1.85/2)%4
    else
        o.oAnimState = math.floor(o.oTimer/1.85)%4
    end
    load_object_collision_model()
    local m = gMarioStates[0]
    if m.floor.object ~= nil and m.action & ACT_FLAG_AIR == 0 then
        if m.floor.object.oAction == 11 then
            m.pos.z = m.pos.z - sins(m.floor.object.oFaceAngleYaw)*6
            m.pos.z = m.pos.z - coss(m.floor.object.oFaceAngleYaw)*6

            end
        end
    end

id_Bhv_Custom_0x13005a6cUN = hook_behavior(nil, OBJ_LIST_SURFACE, false, treadmillUN_init, treadmillUN_loop, "Bhv_Custom_0x13005a6cUN")

------ TreadMill ------

---@param o Object
function treadmillN_init(o)
    obj_set_model_extended(o, E_MODEL_NONE)
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.oAction = 12
end

---@param o Object
function treadmillN_loop(o)
    if o.collisionData == COL_TREADMILL then
        o.oAnimState = math.floor(o.oTimer/1.85/2)%4
    else
        o.oAnimState = math.floor(o.oTimer/1.85)%4
    end
    load_object_collision_model()
    local m = gMarioStates[0]
    if m.floor.object ~= nil and m.action & ACT_FLAG_AIR == 0 then
        if m.floor.object.oAction == 12 then
            m.pos.x = m.pos.x + sins(m.floor.object.oFaceAngleYaw)*2.5
            m.pos.x = m.pos.x + coss(m.floor.object.oFaceAngleYaw)*2.5

            end
        end
    end

id_Bhv_Custom_0x13005a6cN = hook_behavior(nil, OBJ_LIST_SURFACE, false, treadmillN_init, treadmillN_loop, "Bhv_Custom_0x13005a6cN")

------ LOCK5STARS ------

---@param o Object
function lock5stars_init(o)
    obj_set_model_extended(o, E_MODEL_LOCK5STARS)
    o.collisionData = COL_LOCK5STARS
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oCollisionDistance = 5000
    network_init_object(o, true, nil)
end

---@param o Object
function lock5stars_loop(o)

    load_object_collision_model()
end

id_Bhv_lock5stars = hook_behavior(nil, OBJ_LIST_SURFACE, false, lock5stars_init, lock5stars_loop, "Bhv_lock5stars")

function custom_lock5(m)
    local lock5 = obj_get_first_with_behavior_id(id_Bhv_lock5stars)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_GROUNDS then
        if m.numStars > 4 then
        obj_mark_for_deletion(lock5)
    end
  end
end

hook_event(HOOK_MARIO_UPDATE, custom_lock5)

------ LOCK10STARS ------

---@param o Object
function lock10stars_init(o)
    obj_set_model_extended(o, E_MODEL_LOCK10STARS)
    o.collisionData = COL_LOCK10STARS
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oCollisionDistance = 5000
    network_init_object(o, true, nil)
end

---@param o Object
function lock10stars_loop(o)

    load_object_collision_model()
end

id_Bhv_lock10stars = hook_behavior(nil, OBJ_LIST_SURFACE, false, lock10stars_init, lock10stars_loop, "Bhv_lock10stars")

function custom_lock10(m)
    local lock10 = obj_get_first_with_behavior_id(id_Bhv_lock10stars)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_GROUNDS then
        if m.numStars > 9 then
        obj_mark_for_deletion(lock10)
    end
  end
end

hook_event(HOOK_MARIO_UPDATE, custom_lock10)

------ LOCK40STARS ------

---@param o Object
function lock40stars_init(o)
    obj_set_model_extended(o, E_MODEL_LOCK10STARS)
    o.collisionData = COL_LOCK10STARS
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oCollisionDistance = 5000
    network_init_object(o, true, nil)
end

---@param o Object
function lock40stars_loop(o)

    load_object_collision_model()
end

id_Bhv_lock40stars = hook_behavior(nil, OBJ_LIST_SURFACE, false, lock40stars_init, lock40stars_loop, "Bhv_lock40stars")

function custom_lock40(m)
    local lock40 = obj_get_first_with_behavior_id(id_Bhv_lock40stars)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_COURTYARD then
        if m.numStars > 39 then
        obj_mark_for_deletion(lock40)
    end
  end
end

hook_event(HOOK_MARIO_UPDATE, custom_lock40)

------ LOCK60STARS ------

---@param o Object
function lock60stars_init(o)
    obj_set_model_extended(o, E_MODEL_LOCK10STARS)
    o.collisionData = COL_LOCK10STARS
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oCollisionDistance = 5000
    network_init_object(o, true, nil)
end

---@param o Object
function lock60stars_loop(o)

    load_object_collision_model()
end

id_Bhv_lock60stars = hook_behavior(nil, OBJ_LIST_SURFACE, false, lock60stars_init, lock60stars_loop, "Bhv_lock60stars")

function custom_lock60(m)
    local lock60 = obj_get_first_with_behavior_id(id_Bhv_lock60stars)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE then
        if m.numStars > 59 then
        obj_mark_for_deletion(lock60)
    end
  end
end

hook_event(HOOK_MARIO_UPDATE, custom_lock60)

------ LOCK100STARS ------

---@param o Object
function lock100stars_init(o)
    obj_set_model_extended(o, E_MODEL_LOCK10STARS)
    o.collisionData = COL_LOCK10STARS
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oCollisionDistance = 5000
    network_init_object(o, true, nil)
end

---@param o Object
function lock100stars_loop(o)

    load_object_collision_model()
end

id_Bhv_lock100stars = hook_behavior(nil, OBJ_LIST_SURFACE, false, lock100stars_init, lock100stars_loop, "Bhv_lock100stars")

function custom_lock100(m)
    local lock100 = obj_get_first_with_behavior_id(id_Bhv_lock100stars)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_GROUNDS then
        if m.numStars > 99 then
        obj_mark_for_deletion(lock100)
    end
  end
end

hook_event(HOOK_MARIO_UPDATE, custom_lock100)

------ GAMBAAA ------

---@param obj Object
function bhv_custom_goomba_star_spawn_loop(obj)

    local np = gNetworkPlayers[0]

    if np.currAreaSyncValid == true then

    if np.currLevelNum == LEVEL_BOB and np.currAreaIndex == 3 or
    np.currLevelNum == LEVEL_DDD then

    if  obj_count_objects_with_behavior_id(id_bhvGoomba) <= 0 then
        spawn_red_coin_cutscene_star(obj.oPosX, obj.oPosY, obj.oPosZ)

        obj.oBehParams = obj.oBehParams
        obj.oAction = 1

            end
        end
    end
end

id_bhvGoombaStar = hook_behavior(nil, OBJ_LIST_LEVEL, false, nil, bhv_custom_goomba_star_spawn_loop)

------ GAMBAAA ------

---@param obj Object
function bhv_custom_swoop_star_spawn_loop(obj)

    local np = gNetworkPlayers[0]

    if np.currAreaSyncValid == true then

    if np.currLevelNum == LEVEL_LLL and np.currActNum == 6 then

    if  obj_count_objects_with_behavior_id(id_bhvSwoop) <= 0 then
        spawn_red_coin_cutscene_star(obj.oPosX, obj.oPosY, obj.oPosZ)

        obj.oBehParams = obj.oBehParams
        obj.oAction = 1

            end
        end
    end
end

id_bhvSwoopStar = hook_behavior(nil, OBJ_LIST_LEVEL, false, nil, bhv_custom_swoop_star_spawn_loop)

------ BOO70STARS ------

function custom_boo70(m)
    local boo70 = obj_get_first_with_behavior_id(id_bhvBooWithCage)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_COURTYARD then
        if m.numStars <= 69 then
        obj_mark_for_deletion(boo70)
    end
  end
end

hook_event(HOOK_MARIO_UPDATE, custom_boo70)

------ GRANDSTARWARP ------ Star Road Code

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

------ UPDOWN ------

---@param o Object
function updown_init(o)
    obj_set_model_extended(o, E_MODEL_UPDOWN)
    bhv_ssl_moving_pyramid_wall_init()
    o.collisionData = COL_UPDOWN
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oCollisionDistance = 5000
    o.oDistanceToMario = 10000
    o.oDrawingDistance = 10000
    network_init_object(o, true, nil)
end

---@param o Object
function updown_loop(o)

    bhv_ssl_moving_pyramid_wall_loop()
    load_object_collision_model()
end

id_Bhv_Custom_0x130059ec = hook_behavior(nil, OBJ_LIST_SURFACE, false, updown_init, updown_loop, "Bhv_Custom_0x130059ec")

------ LAVAPLANE ------

---@param o Object
function lavaplane_init(o)
    obj_set_model_extended(o, E_MODEL_LAVAPLANE)
    bhv_ssl_moving_pyramid_wall_init()
    o.collisionData = COL_LAVAPLANE
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oCollisionDistance = 10000
    o.oDistanceToMario = 10000
    o.oDrawingDistance = 10000
    network_init_object(o, true, nil)
end

---@param o Object
function lavaplane_loop(o)

    bhv_ssl_moving_pyramid_wall_loop()
    load_object_collision_model()
end

id_Bhv_Custom_0x13005aa4 = hook_behavior(nil, OBJ_LIST_SURFACE, false, lavaplane_init, lavaplane_loop, "Bhv_Custom_0x13005aa4")