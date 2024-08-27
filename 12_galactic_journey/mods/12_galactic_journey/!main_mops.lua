----------------
-----Models-----
----------------

-- If any of these are needed in another file, like the exclamation box, just make models you need global
local E_MODEL_FLIPSWITCH_PANEL = smlua_model_util_get_id("Flipswitch_Panel_MOP")
local E_MODEL_FLIPSWAP_PLATFORM = smlua_model_util_get_id("Flipswap_Platform_MOP")
local E_MODEL_FLIPSWAP_PLATFORM_BORDER = smlua_model_util_get_id("Flipswap_Platform_Border_MOP")
local E_MODEL_FLIPBLOCK = smlua_model_util_get_id("FlipBlock_MOP")
local E_MODEL_NOTEBLOCK = smlua_model_util_get_id("Noteblock_MOP")
local E_MODEL_SANDBLOCK = smlua_model_util_get_id("SandBlock_MOP")
local E_MODEL_SHELL_1 = smlua_model_util_get_id("Shell_1_MOP")
local E_MODEL_SHELL_2 = smlua_model_util_get_id("Shell_2_MOP")
local E_MODEL_SHRINK_PLATFORM = smlua_model_util_get_id("Shrink_Platform_MOP")
local E_MODEL_SHRINK_PLATFORM_BORDER = smlua_model_util_get_id("Shrink_Platform_Border_MOP")
local E_MODEL_SWITCHBLOCK = smlua_model_util_get_id("Switchblock_MOP")
local E_MODEL_SWITCHBLOCK_SWITCH = smlua_model_util_get_id("Switchblock_Switch_MOP")
local E_MODEL_SPRING = smlua_model_util_get_id("Spring_MOP")
local E_MODEL_CHECKPOINT = smlua_model_util_get_id("Checkpoint_Flag_MOP")
local E_MODEL_GREEN_SWITCHBOARD = smlua_model_util_get_id("Green_Switchboard_MOP")
local E_MODEL_GREEN_SWITCHBOARD_GEARS = smlua_model_util_get_id("Green_Switchboard_Gears_MOP")
local E_MODEL_MOVING_ROATING_BLOCK = smlua_model_util_get_id("Moving_Rotating_Block_MOP")
E_MODEL_BLARGG = smlua_model_util_get_id("blargg_geo")
E_MODEL_FRIENDLY_BLARGG = smlua_model_util_get_id("friendly_blargg_geo")

--------------------
-----Collisions-----
--------------------

--[[
local COL_FLIPBLOCK_MOP = smlua_collision_util_get("col_FlipBlock_MOP_0x7d1a98")
local COL_NOTEBLOCK_MOP = smlua_collision_util_get("col_Noteblock_MOP_0xaa6444")
local COL_SANDBLOCK_MOP = smlua_collision_util_get("col_Sandblock_MOP_0xaa6444")
local COL_FLIPSWAP_PLATFORM_MOP = smlua_collision_util_get("col_Flipswap_Platform_MOP_0x7d9d88")
local COL_FLIPSWITCH_PANEL_MOP = smlua_collision_util_get("col_Flipswitch_Panel_MOP_0x7daf78")
local COL_GREEN_SWITCHBOARD_MOP = smlua_collision_util_get("col_Green_Switchboard_MOP_0x7ddc38")
local COL_SHRINK_PLATFORM = smlua_collision_util_get("col_Shrink_Platform_MOP_0xad3720")
local COL_SWITCHBLOCK_MOP = smlua_collision_util_get("col_Switchblock_MOP_0x7d3058")
local COL_SWITCHBLOCK_SWITCH_MOP = smlua_collision_util_get("col_Switchblock_Switch_MOP_0x7d7348")
local COL_MOVING_ROTATING_BLOCK_MOP = smlua_collision_util_get("col_Moving_Rotating_Block_MOP_0x7e3ea0")
]]

-----------------
-----Actions-----
-----------------

local SPRING_ACT_IDLE = 0
local SPRING_ACT_INACTIVE = 1

local FLIP_BLOCK_ACT_INACTIVE = 0
local FLIP_BLOCK_ACT_IDLE = 1
local FLIP_BLOCK_ACT_FLIPPING = 2

local NOTEBLOCK_ACT_IDLE = 0
local NOTEBLOCK_ACT_BOUNCE = 1

local SANDBLOCK_ACT_IDLE = 0
local SANDBLOCK_ACT_DISAPPEARING = 1
local SANDBLOCK_ACT_DISAPPEARED = 2

local FLIPSWAP_PLATFORM_ACT_IDLE = 0
local FLIPSWAP_PLATFORM_ACT_FLIPPING = 1

local CHECKPOINT_FLAG_ACT_IDLE = 0
local CHECKPOINT_FLAG_ACT_SAVED = 1

local GREEN_SWITCHBOARD_ACT_IDLE = 0
local GREEN_SWITCHBOARD_ACT_MOVING = 1

local SHRINK_PLATFORM_ACT_IDLE = 0
local SHRINK_PLATFORM_ACT_DISAPPEARING = 1
local SHRINK_PLATFORM_ACT_DISAPPEARED = 2

local FLIPSWITCH_PANEL_ACT_IDLE = 0
local FLIPSWITCH_PANEL_ACT_ACTIVE = 1

local SWITCHBLOCK_ACT_ACTIVE = 0
local SWITCHBLOCK_ACT_INACTIVE = 1

local BLARGG_ACT_SWIM = 0
local BLARGG_ACT_CHASE = 1
local BLARGG_ACT_KNOCKBACK = 2
local BLARGG_ACT_BACKUP = 3

local FRIENDLY_BLARGG_ACT_IDLE = 0
local FRIENDLY_BLARGG_ACT_BEING_RIDDEN = 1

-----------------------------
-----Localized Functions-----
-----------------------------

local play_sound = play_sound
local spawn_non_sync_object = spawn_non_sync_object
local obj_copy_pos_and_angle = obj_copy_pos_and_angle
local obj_set_model_extended = obj_set_model_extended
local network_init_object = network_init_object
local network_send_object = network_send_object
local obj_check_if_collided_with_object = obj_check_if_collided_with_object
local set_mario_action = set_mario_action
local get_temp_object_hitbox = get_temp_object_hitbox
--local obj_set_hitbox = obj_set_hitbox
local cur_obj_was_attacked_or_ground_pounded = cur_obj_was_attacked_or_ground_pounded
local load_object_collision_model = load_object_collision_model
local cur_obj_is_mario_on_platform = cur_obj_is_mario_on_platform
local spawn_mist_particles = spawn_mist_particles
local cur_obj_play_sound_1 = cur_obj_play_sound_1
local cur_obj_hide = cur_obj_hide
local cur_obj_unhide = cur_obj_unhide
local vec3f_copy = vec3f_copy
local soft_reset_camera = soft_reset_camera
--local obj_count_objects_with_behavior_id = obj_count_objects_with_behavior_id
local dist_between_objects = dist_between_objects
local obj_set_gfx_scale = obj_set_gfx_scale
--local obj_get_first_with_behavior_id = obj_get_first_with_behavior_id
local obj_get_next = obj_get_next
local nearest_mario_state_to_object = nearest_mario_state_to_object
local coss = coss
local sins = sins
local obj_copy_pos = obj_copy_pos
--local math_abs = math.abs
local cur_obj_rotate_face_angle_using_vel = cur_obj_rotate_face_angle_using_vel
local cur_obj_move_using_vel = cur_obj_move_using_vel
--local obj_get_nearest_object_with_behavior_id = obj_get_nearest_object_with_behavior_id
local nearest_player_to_object = nearest_player_to_object
local spawn_red_coin_cutscene_star = spawn_red_coin_cutscene_star
local find_floor_height = find_floor_height
local obj_set_pos = obj_set_pos
local obj_set_angle = obj_set_angle
--local get_behavior_from_id = get_behavior_from_id
local cur_obj_play_sound_2 = cur_obj_play_sound_2
local cur_obj_init_animation = cur_obj_init_animation
local obj_return_home_if_safe = obj_return_home_if_safe
local obj_turn_toward_object = obj_turn_toward_object
local is_point_within_radius_of_mario = is_point_within_radius_of_mario
local object_step = object_step
local obj_scale = obj_scale
local set_object_visibility = set_object_visibility
local cur_obj_scale = cur_obj_scale
local cur_obj_update_floor_and_walls = cur_obj_update_floor_and_walls
local cur_obj_if_hit_wall_bounce_away = cur_obj_if_hit_wall_bounce_away
local cur_obj_move_standard = cur_obj_move_standard
local cur_obj_update_floor_height_and_get_floor = cur_obj_update_floor_height_and_get_floor
local count_objects_with_behavior = count_objects_with_behavior
local find_object_with_behavior = find_object_with_behavior
local cur_obj_nearest_object_with_behavior = cur_obj_nearest_object_with_behavior

local string_pack = string.pack
local string_unpack = string.unpack
---@param value number
---@param pack_fmt string
---@param unpack_fmt string
local repack = function (value, pack_fmt, unpack_fmt)
    return string_unpack(unpack_fmt, string_pack(pack_fmt, value))
end

--------------------------
-----Helper Variables-----
--------------------------

local id_bhvFlipswap_Platform_Border_MOP = id_bhvUnused05A8
local id_bhvShrink_Platform_Border_MOP = id_bhvUnused05A8
local id_bhvGreen_Switchboard_Gears_MOP = id_bhvUnused05A8

--------------------------
-----Helper Functions-----
--------------------------

---@param param any
---@param case_table table
---@return function | nil
local function switch(param, case_table)
    local case = case_table[param]
    if case then return case() end
    local def = case_table['default']
    return def and def() or nil
end

--- Moves Mario to the top of the object, then sets his Y speed and resets his fall.
---@param m MarioState
---@param obj Object
---@param vel_y integer
local function bounce_off_object(m, obj, vel_y)
    m.pos.y = obj.oPosY + obj.hitboxHeight
    m.vel.y = vel_y

    -- MARIO_UNKNOWN_8 is the flag that controls Mario's screaming when he falls from a high place
    -- This removes the flag so he can scream again
    m.flags = m.flags & ~MARIO_UNKNOWN_08

    play_sound(SOUND_ACTION_BOUNCE_OFF_OBJECT, m.marioObj.header.gfx.cameraToObject)
end

--- Gets closer to a goal value by the increment when ran
---@param goal integer
---@param src integer
---@param inc integer
local function approach_by_increment(goal, src, inc)
    local diff = goal - src
    if diff > inc then
        return src + inc
    elseif diff < -inc then
        return src - inc
    else
        return goal
    end
end

---@param obj Object
---@param obj_encompassed Object
---@param rectangle_size number
---@return boolean
local function obj_is_object_in_encompassing_rectangle(obj, obj_encompassed, rectangle_size)
    if obj_encompassed.oPosX - rectangle_size < obj.oPosX and
       obj_encompassed.oPosX + rectangle_size > obj.oPosX and
       obj_encompassed.oPosY - rectangle_size < obj.oPosY and
       obj_encompassed.oPosY + rectangle_size > obj.oPosY and
       obj_encompassed.oPosZ - rectangle_size < obj.oPosZ and
       obj_encompassed.oPosZ + rectangle_size > obj.oPosZ then
        return true
    end
    return false
end

---@param m MarioState
---@return boolean
local function is_bubbled(m)
    return m.action == ACT_BUBBLED
end

---@param parent Object
---@param model ModelExtendedId
---@param behaviorId BehaviorId
local function spawn_object_attached_to_parent(parent, model, behaviorId)
    local obj = spawn_non_sync_object(behaviorId, model, 0, 0, 0, nil)
    if not obj then return nil end

    obj_copy_pos_and_angle(obj, parent)
    return obj
end

---@return boolean
local function is_current_area_sync_valid()
    local np = gNetworkPlayers
    for i = 0, MAX_PLAYERS - 1, 1 do
        if np[i] and np[i].connected and (not np[i].currLevelSyncValid or not np[i].currAreaSyncValid) then
            return false
        end
    end
    return true
end

---@param num number
local function is_floating_point_number(num)
    return num % 1 ~= 0
end

---@param num number
---@return number
local function convert_s16(num)
    if is_floating_point_number(num) then
        num = repack(num, "f", "H")
    end
    num = num & 0xFFFF
    return ((num >= 0x7FFF) and (num - 0x10000) or num)
end

---@param num number
---@return number
local function convert_s32(num)
    if is_floating_point_number(num) then
        num = repack(num, "f", "L")
    end
    num = num & 0xFFFFFFFF
    return ((num >= 0x7FFFFFFF) and (num - 0x100000000) or num)
end

---@param start_point number
---@param end_point number
---@param time number
---@return number
local function lerp(start_point, end_point, time)
    return start_point * (1 - time) + end_point * time
end

--- @param obj Object
--- @param hitbox ObjectHitbox
local function obj_set_hitbox(obj, hitbox)
    if not obj or not hitbox then return end
    -- As far as I can tell, this is used to 
    -- force the hitboxes to be set only once
    if (obj.oFlags & OBJ_FLAG_30) == 0 then
        obj.oFlags = obj.oFlags | OBJ_FLAG_30

        obj.oInteractType = hitbox.interactType
        obj.oDamageOrCoinValue = hitbox.damageOrCoinValue
        obj.oHealth = hitbox.health
        obj.oNumLootCoins = hitbox.numLootCoins

        cur_obj_become_tangible()
    end

    obj.hitboxRadius = obj.header.gfx.scale.x * hitbox.radius
    obj.hitboxHeight = obj.header.gfx.scale.y * hitbox.height
    obj.hurtboxRadius = obj.header.gfx.scale.x * hitbox.hurtboxRadius
    obj.hurtboxHeight = obj.header.gfx.scale.y * hitbox.hurtboxHeight
    obj.hitboxDownOffset = obj.header.gfx.scale.y * hitbox.downOffset
end

-------------------
-----Functions-----
-------------------

------ Spring ------
-- Upon touching the spring, get launched in a set direction with a set speed, both horizontal and vertical.

---@param obj Object
function bhv_Spring_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.hitboxRadius = 160
    --obj.hitboxHeight = 160
    --obj.oInteractType = INTERACT_COIN
    --obj.oIntangibleTimer = 0
end

---@param obj Object
function bhv_Spring_loop(obj)
    obj_set_model_extended(obj, E_MODEL_SPRING)

    local m = gMarioStates[0]
    if is_bubbled(m) then return end

    local Yspd = 56.0
    local y_vel = nil
    local forward_vel = nil

    if obj.oAction == SPRING_ACT_IDLE then
        if obj_check_if_collided_with_object(obj, m.marioObj) ~= 0 then
            set_mario_action(m, ACT_DOUBLE_JUMP, 0)
            -- m.actionTimer = 1000 --Really doubt this is necessary
            m.faceAngle.y = obj.oFaceAngleYaw

            y_vel = repack(Yspd, "f", "I")
            -- Calculates how fast Mario should go using oBehParams2ndByte
            forward_vel = repack(y_vel + (obj.oBehParams & 0x00FF0000), "I", "f")
            m.forwardVel = forward_vel

            -- Calculates how high Mario should go using the 1st byte
            y_vel = y_vel + (((obj.oBehParams >> 24) & 0xFF) << 16)
            bounce_off_object(m, obj, repack(y_vel, "I", "f"))

            -- Prevent interaction for some time
            obj.oAction = SPRING_ACT_INACTIVE
        end
    else
        -- Prevent interaction until half a second later
        if obj.oTimer == 15 then
            obj.oAction = SPRING_ACT_IDLE
        end
    end
end

--id_bhvSpring_MOP = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_Spring_init, bhv_Spring_loop, "bhvSpring_MOP")

------ Flipblock ------
-- Hitting this block will cause it to spin, losing its collision until it stops spinning.

local FLIP_TIMER = 210

---@param obj Object
function bhv_flip_block_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.oAction = 0
    --obj.oCollisionDistance = 500
    --obj.collisionData = COL_FLIPBLOCK_MOP

    --[[network_init_object(obj, false, {
        "oAction"
    })]]
end

---@param obj Object
function bhv_flip_block_loop(obj)
    obj_set_model_extended(obj, E_MODEL_FLIPBLOCK)

    -- Setting a temporary hitbox allows this object to not have collision for some time
    local oHitbox = get_temp_object_hitbox()
    oHitbox.interactType = INTERACT_BREAKABLE
    oHitbox.downOffset = 0
    oHitbox.damageOrCoinValue = 0
    oHitbox.health = 0
    oHitbox.numLootCoins = 0
    oHitbox.radius = 64
    oHitbox.height = 64
    oHitbox.hurtboxHeight = 0
    oHitbox.hurtboxRadius = 0

    obj.oInteractStatus = 0


    if obj.oTimer == 0 and obj.oAction == FLIP_BLOCK_ACT_INACTIVE then
        obj_set_hitbox(obj, oHitbox)
        obj.oAction = FLIP_BLOCK_ACT_IDLE
    end
    -- Do things if it starts flipping
    if obj.oAction == FLIP_BLOCK_ACT_FLIPPING then
        obj.header.gfx.scale.y = 0.1
        -- Stop flipping and prepare it for next time
        if obj.oTimer == FLIP_TIMER then
            obj.oAction = FLIP_BLOCK_ACT_IDLE
            obj.oSubAction = 0
            -- Reset size
            obj.header.gfx.scale.y = 1
        end

        -- Flips the block
        obj.oFaceAnglePitch = obj.oFaceAnglePitch + (FLIP_TIMER - obj.oTimer) * 16
        if ((obj.oFaceAnglePitch / 0x8000) - obj.oSubAction) > 0 then
            cur_obj_play_sound_1(SOUND_GENERAL_SWISH_WATER)
            -- The subaction is basically used as a timer so the condition will eventually fail
            obj.oSubAction = obj.oSubAction + 1
        end
    else
        ---@type MarioState
        local m = gMarioStates[0]
        -- Flip whenever it becomes attacked
        if cur_obj_was_attacked_or_ground_pounded() ~= 0
        -- This condition is a hacky fix for not being able to interact with underwater flipblocks
        or (m.flags & MARIO_METAL_CAP ~= 0 and obj_is_object_in_encompassing_rectangle(m.marioObj, obj, 300)) then
            obj.oAction = FLIP_BLOCK_ACT_FLIPPING
            --[[if is_current_area_sync_valid() then
                network_send_object(obj, false)
            end]]
            obj.oIntangibleTimer = FLIP_TIMER

            cur_obj_play_sound_1(SOUND_GENERAL_SWISH_WATER)
        else
            obj.oFaceAnglePitch = 0
            obj.header.gfx.scale.y = 1

            load_object_collision_model()
        end
    end
end

--id_bhvFlipBlock_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_flip_block_init, bhv_flip_block_loop, "bhvFlipBlock_MOP")

------ Noteblock ------
-- Jumping onto this block will cause Mario to jump higher.

---@param obj Object
function bhv_noteblock_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_NOTEBLOCK_MOP
    --obj.oHomeX = obj.oPosX
    --obj.oHomeY = obj.oPosY
    --obj.oHomeZ = obj.oPosZ

    -- I guess it's slightly larger than intended
    cur_obj_scale(0.64)
end

---@param obj Object
function bhv_noteblock_loop(obj)
    obj_set_model_extended(obj, E_MODEL_NOTEBLOCK)

    load_object_collision_model()

    local m = gMarioStates[0]
    local y_spd = 64

    if cur_obj_is_mario_on_platform() == 1 and not is_bubbled(m) then
         --this is awful -- It really is -Sunk
        -- Jump. If A is pressed during the jump, increase y_spd.
        if m.controller.buttonPressed & A_BUTTON ~= 0 then
            y_spd = y_spd + 12
            spawn_mist_particles()
        end
        set_mario_action(m, ACT_DOUBLE_JUMP, 0)

        -- Calculates y speed
        calc_speed = repack(y_spd, "f", "I")
		calc_speed = calc_speed + (obj.oBehParams2ndByte << 16)
		y_spd = repack(calc_speed, "I", "f")
		m.vel.y = y_spd

        obj.oAction = NOTEBLOCK_ACT_BOUNCE
        -- do_fall_damage = true
    end

    if obj.oAction == NOTEBLOCK_ACT_BOUNCE then
        if obj.oTimer == 4 then
            obj.oAction = NOTEBLOCK_ACT_IDLE
            obj.oPosY = obj.oHomeY
        else
            -- Moves the noteblock slightly up and down, to give it a "bounce"
            if obj.oTimer > 2 then
                obj.oPosY = obj.oHomeY + (obj.oTimer % 3) * 6
            else
                obj.oPosY = obj.oHomeY - obj.oTimer * 6
            end
        end
    end
end

--id_bhvNoteblock_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_noteblock_init, bhv_noteblock_loop, "bhvNoteblock_MOP")

------ Sandblock ------
-- Standing on this block causes it to slowly fall to pieces, eventually no longer becoming a platform.

---@param obj Object
function bhv_sandblock_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_SANDBLOCK_MOP
    --obj.oHomeX = obj.oPosX
    --obj.oHomeY = obj.oPosY
    --obj.oHomeZ = obj.oPosZ

    --[[network_init_object(obj, false, {
        "oAction"
    })]]
end

---@param obj Object
function bhv_sandblock_loop(obj)
    obj_set_model_extended(obj, E_MODEL_SANDBLOCK)

    -- Only activate collision if the sandblock has not disappeared
    if obj.oAction < SANDBLOCK_ACT_DISAPPEARED then
        load_object_collision_model()
    end
    -- Disappearing
    switch(obj.oAction, {
        [SANDBLOCK_ACT_DISAPPEARING] = function()
            if obj.oTimer == 300 then
                obj.oAction = SANDBLOCK_ACT_DISAPPEARED
            end
            -- Causes the sandblock to become smaller and smaller on the y axis
            obj.header.gfx.scale.y = ((300 - obj.oTimer) / 300.0)
            -- Makes the sandblock not move the player vertically as it's breaking
            obj.oPosY = obj.oPosY + 1.025

            -- Spawn effects
            spawn_non_sync_object(id_bhvDirtParticleSpawner, E_MODEL_NONE, obj.oPosX, obj.oPosY, obj.oPosZ, nil)
            cur_obj_play_sound_1(SOUND_ENV_MOVINGSAND)
        end,
        -- Respawns the block after it disappears
        [SANDBLOCK_ACT_DISAPPEARED] = function()
            cur_obj_hide()
            if obj.oTimer == 301 then
                obj.oPosY = obj.oHomeY
                obj.oAction = SANDBLOCK_ACT_IDLE
                obj.header.gfx.scale.y = 1.0
                cur_obj_unhide()
            end
        end
    })

    if cur_obj_is_mario_on_platform() == 1 and obj.oAction == SANDBLOCK_ACT_IDLE and not is_bubbled(gMarioStates[0]) then
        obj.oAction = SANDBLOCK_ACT_DISAPPEARING
        --[[if is_current_area_sync_valid() then
            network_send_object(obj, false)
        end]]
    end
end

--id_bhvSandBlock_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_sandblock_init, bhv_sandblock_loop, "bhvSandBlock_MOP")

------ Flipswap platform ------
-- Jumping will cause this platform to spin, moving the land somewhere else.

local FLIP_SPEED_MULTIPLIER = 1

---@param obj Object
function bhv_flipswap_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.oFaceAngleRoll = 0
    --obj.collisionData = COL_FLIPSWAP_PLATFORM_MOP
    -- Spawns the border
    local childObj = spawn_non_sync_object(id_bhvFlipswap_Platform_Border_MOP, E_MODEL_FLIPSWAP_PLATFORM_BORDER, obj.oPosX, obj.oPosY, obj.oPosZ,
    ---@param o Object
    function (o)
        -- Probably overdone but just to make sure the angles are set correctly
        o.oFaceAngleYaw = obj.oFaceAngleYaw
        o.oFaceAnglePitch = obj.oFaceAnglePitch
        o.oFaceAngleRoll = obj.oFaceAngleRoll
        o.oMoveAngleYaw = obj.oMoveAngleYaw
        o.oMoveAnglePitch = obj.oMoveAnglePitch
        o.oMoveAngleRoll = obj.oMoveAngleRoll
    end)
    childObj.parentObj = obj

    --[[network_init_object(obj, false, {
        "oAction",
        "oMoveAngleRoll"
    })]]
end

---@param obj Object
function bhv_flipswap_loop(obj)
    obj_set_model_extended(obj, E_MODEL_FLIPSWAP_PLATFORM)
    load_object_collision_model()

    local m = gMarioStates[0]

    switch(obj.oAction, {
        [FLIPSWAP_PLATFORM_ACT_IDLE] = function ()
            -- If Mario enters an air action, start flipping
            if m.prevAction & ACT_GROUP_MASK ~= ACT_GROUP_AIRBORNE and m.action & ACT_GROUP_MASK == ACT_GROUP_AIRBORNE then
                --sloth brain it
                if obj.oFaceAngleRoll == 0 then
                    obj.oMoveAngleRoll = -2048 * FLIP_SPEED_MULTIPLIER
                else
                    obj.oMoveAngleRoll = 2048 * FLIP_SPEED_MULTIPLIER
                end
                obj.oAction = FLIPSWAP_PLATFORM_ACT_FLIPPING
                -- Not syncing it so people can have their own platforms
            end
        end,
        [FLIPSWAP_PLATFORM_ACT_FLIPPING] = function ()
            -- Flip the platform
            if obj.oTimer < 16 * FLIP_SPEED_MULTIPLIER ^ -1 then
                obj.oFaceAngleRoll = obj.oFaceAngleRoll + obj.oMoveAngleRoll
            -- Disallow flipping again until Mario lands
            elseif m.action & ACT_GROUP_MASK ~= ACT_GROUP_AIRBORNE then
                obj.oAction = FLIPSWAP_PLATFORM_ACT_IDLE
            end
        end
    })
end

--id_bhvFlipswap_Platform_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_flipswap_init, bhv_flipswap_loop, "bhvFlipswap_Platform_MOP")

------ Checkpoint flag ------
-- Dying will cause the player to respawn at this point

---@type Pointer_BehaviorScript
local checkpoint_flag_bhv = nil

local checkpoint = {
    x = 0,
    y = 0,
    z = 0
}

---@param m MarioState
local function checkpoint_save(m)
    vec3f_copy(checkpoint, m.pos)
end

---@param m MarioState
local function checkpoint_load(m)
    vec3f_copy(m.pos, checkpoint)
end

---@param m MarioState
local function reset_player(m)
    set_mario_action(m, ACT_IDLE, 0)
    soft_reset_camera(m.area.camera)
    m.area.camera.cutscene = 0
    m.health = 0x880
end


---@param obj Object
function bhv_checkpoint_flag_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE | OBJ_FLAG_COMPUTE_DIST_TO_MARIO
    --obj.oInteractType = INTERACT_POLE
    --obj.hitboxRadius = 64
    --obj.hitboxHeight = 650
    --obj.oIntangibleTimer = -1
    checkpoint_flag_bhv = obj.behavior
end

---@param obj Object
function bhv_checkpoint_flag_loop(obj)
    obj_set_model_extended(obj, E_MODEL_CHECKPOINT)
    if not checkpoint_flag_bhv then
        checkpoint_flag_bhv = obj.behavior
        return
    end
    local obj_count = count_objects_with_behavior(checkpoint_flag_bhv)

    ---@type MarioState
    local m = gMarioStates[0]
    if is_bubbled(m) then return end

    if dist_between_objects(obj, m.marioObj) < 150 then
        if obj.oAction == CHECKPOINT_FLAG_ACT_IDLE then
            checkpoint_save(m)
            obj.oAction = CHECKPOINT_FLAG_ACT_SAVED
            local sparkle = spawn_object_attached_to_parent(obj, E_MODEL_SPARKLES, id_bhvSparkle)
            if sparkle then obj_set_gfx_scale(sparkle, 5, 5, 5) end
            play_sound(SOUND_MENU_CHANGE_SELECT + (1 << 16), {x = 0, y = 0, z = 0})

            local amount_of_other_flags = obj_count - 1
            if amount_of_other_flags == 0 then return end

            -- Disables all other checkpoints once this checkpoint is gotten
            local o = find_object_with_behavior(checkpoint_flag_bhv)
            while o do
                if obj ~= o then
                    o.oAction = CHECKPOINT_FLAG_ACT_IDLE
                end
                o = obj_get_next(o)
            end
        end
    end
end

---@param m MarioState
hook_event(HOOK_ON_DEATH, function (m)
    if not checkpoint_flag_bhv then return true end
    local obj = find_object_with_behavior(checkpoint_flag_bhv)
    if not obj then return true end

    -- Upon dying, restart at the last saved checkpoint
    if gServerSettings.bubbleDeath == 1 and m.numLives > 0 then
        return true
    end
    while obj do
        if obj.oAction == CHECKPOINT_FLAG_ACT_SAVED then
            checkpoint_load(m)
            reset_player(m)
            return false
        end
        obj = obj_get_next(obj)
    end
    return true
end)

--id_bhvCheckpoint_Flag_MOP = hook_behavior(nil, OBJ_LIST_GENACTOR, false, bhv_checkpoint_flag_init, bhv_checkpoint_flag_loop, "bhvCheckpoint_Flag_MOP")

------ Green switchboard ------
-- The platform moves depending on where the player is on it. Similar to the rolling log.
-- ! Prone to desyncs

---@param obj Object
function bhv_green_switchboard_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE | OBJ_FLAG_MOVE_XZ_USING_FVEL
    --obj.collisionData = COL_GREEN_SWITCHBOARD_MOP
    -- Spawns gears
    -- Don't know why it uses intro lakitu cloud
    obj.oIntroLakituCloud = spawn_object_attached_to_parent(obj, E_MODEL_GREEN_SWITCHBOARD_GEARS, id_bhvGreen_Switchboard_Gears_MOP)
    --cur_obj_set_home_once()

    --[[network_init_object(obj, false, {
        "oAction",
    })]]
end

---@param obj Object
function bhv_green_switchboard_loop(obj)
    obj_set_model_extended(obj, E_MODEL_GREEN_SWITCHBOARD)

    load_object_collision_model()

    local MAX_SPEED = 20.0
    local SPEED_INC = 2.0
    local child = obj.oIntroLakituCloud
    local dot = 0
    local dotH = 0

    switch(obj.oAction, {
        [GREEN_SWITCHBOARD_ACT_MOVING] = function ()
            -- Hopefully makes sure the Mario the object is referencing is the Mario that's on
            local m = nearest_mario_state_to_object(obj)

            local dx = m.pos.x - obj.oPosX
            local dz = m.pos.z - obj.oPosZ
            local dHx = obj.oPosX - obj.oHomeX
            local dHz = obj.oPosZ - obj.oHomeZ
            local facingZ = coss(obj.oFaceAngleYaw)
            local facingX = sins(obj.oFaceAngleYaw)

            --if dot is positive, mario is on front arrow
            dot = facingZ * dz + facingX * dx
            dotH = facingZ * dHz + facingX * dHx

            if dot > 0 then
                -- 1st byte determines how far the switchboard can go forwards
                if dotH < ((obj.oBehParams >> 24) & 0xFF) * 16 then
                    obj.oForwardVel = approach_by_increment(MAX_SPEED, obj.oForwardVel, SPEED_INC)
                else
                    obj.oForwardVel = 0
                end
                obj.oFaceAnglePitch = approach_by_increment(2048.0, obj.oFaceAnglePitch, 128.0)
            else
                -- 2nd byte determines how far the switchboard can go backwards
                if dotH > obj.oBehParams2ndByte * -16 then
                    obj.oForwardVel = approach_by_increment(-MAX_SPEED, obj.oForwardVel, SPEED_INC)
                else
                    obj.oForwardVel = 0
                end
                --this function doesn't work well with negatives thanks nintendo
                if (obj.oFaceAnglePitch > -2048) then
                    obj.oFaceAnglePitch = approach_by_increment( -2048.0, obj.oFaceAnglePitch, 128.0)
                end
            end

            if m.marioObj.platform ~= obj then
                obj.oAction = GREEN_SWITCHBOARD_ACT_IDLE
            end
        end,
        [GREEN_SWITCHBOARD_ACT_IDLE] = function ()
            -- Slowly resets the pitch and speed back to 0
            obj.oForwardVel = approach_by_increment(0.0, obj.oForwardVel, SPEED_INC)
            obj.oFaceAnglePitch = approach_by_increment(0.0, obj.oFaceAnglePitch, 128.0)
        end
    })
    -- Moves the gears along with the platform
    child.oFaceAnglePitch = child.oFaceAnglePitch + (obj.oForwardVel * 200)
    obj_copy_pos(child, obj)

    -- Using actions to make syncing faster
    if cur_obj_is_mario_on_platform() == 1 and not is_bubbled(gMarioStates[0]) then
        obj.oAction = GREEN_SWITCHBOARD_ACT_MOVING
        --[[if is_current_area_sync_valid() then
            network_send_object(obj, false)
        end]]
    end
end

--id_bhvGreen_Switchboard_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_green_switchboard_init, bhv_green_switchboard_loop, "bhvGreen_Switchboard_MOP")

------ Shrink platform ------
-- Upon being stood on, shrinks platform over time until it no longer exists.

local SHRINK_TIME = 150

---@param obj Object
function bhv_shrinkplatform_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_SHRINK_PLATFORM
    -- Spawns border
    local childObj = spawn_non_sync_object(id_bhvShrink_Platform_Border_MOP, E_MODEL_SHRINK_PLATFORM_BORDER, obj.oPosX, obj.oPosY, obj.oPosZ,
    ---@param o Object
    function (o)
        -- Overdone like the flipswap platform and for the same reason
        o.oFaceAngleYaw = obj.oFaceAngleYaw
        o.oFaceAnglePitch = obj.oFaceAnglePitch
        o.oFaceAngleRoll = obj.oFaceAngleRoll
        o.oMoveAngleYaw = obj.oMoveAngleYaw
        o.oMoveAnglePitch = obj.oMoveAnglePitch
        o.oMoveAngleRoll = obj.oMoveAngleRoll
    end)
    childObj.parentObj = obj

    --[[network_init_object(obj, false, {
        "oAction"
    })]]
end

---@param obj Object
function bhv_shrinkplatform_loop(obj)
    obj_set_model_extended(obj, E_MODEL_SHRINK_PLATFORM)

    -- Only activate collision if the model is still visible
    if obj.oAction < SHRINK_PLATFORM_ACT_DISAPPEARED then
        load_object_collision_model()
    end

    switch(obj.oAction, {
        --disappearing
        [SHRINK_PLATFORM_ACT_DISAPPEARING] = function()
            if obj.oTimer == SHRINK_TIME then
                obj.oAction = SHRINK_PLATFORM_ACT_DISAPPEARED
            end

            -- Slowly shrinks the size of the platform horizontally
            obj.header.gfx.scale.x = (SHRINK_TIME - obj.oTimer) / SHRINK_TIME
            obj.header.gfx.scale.z = (SHRINK_TIME - obj.oTimer) / SHRINK_TIME
        end,
        [SHRINK_PLATFORM_ACT_DISAPPEARED] = function()
            -- Reset after the platform has fully disappeared
            cur_obj_hide()
            if obj.oTimer == SHRINK_TIME + 1 then
                obj.oAction = SHRINK_PLATFORM_ACT_IDLE
                obj.header.gfx.scale.x = 1.0
                obj.header.gfx.scale.z = 1.0
                cur_obj_unhide()
            end
        end
    })

    -- Start disappearing once Mario gets on it
    if cur_obj_is_mario_on_platform() == 1 and obj.oAction == SHRINK_PLATFORM_ACT_IDLE and not is_bubbled(gMarioStates[0]) then
        obj.oAction = SHRINK_PLATFORM_ACT_DISAPPEARING
        cur_obj_play_sound_1(SOUND_OBJ_UNK23)
        --[[if is_current_area_sync_valid() then
            network_send_object(obj, false)
        end]]
    end
end

--id_bhvShrink_Platform_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_shrinkplatform_init, bhv_shrinkplatform_loop, "bhvShrink_Platform_MOP")

------ Flipswitch panel ------
-- Jumping onto a panel activates it. Activating all panels spawns a star. Jumping onto a panel while it's activated with deactivate it.

local StarSpawned = false
---@type Pointer_BehaviorScript
local flipswitch_panel_bhv = nil
---@type Pointer_BehaviorScript
local flipswitch_panel_starspawn_bhv = nil

hook_event(HOOK_ON_LEVEL_INIT, function ()
    if not flipswitch_panel_starspawn_bhv then return end
    if count_objects_with_behavior(flipswitch_panel_starspawn_bhv) == 0 then
        StarSpawned = false
    end
end)

---@param obj Object
function bhv_flipswitch_panel_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_FLIPSWITCH_PANEL_MOP
    --obj.oCollisionDistance = 1024

    flipswitch_panel_bhv = obj.behavior
    network_init_object(obj, false, {
        "oAction",
        "oAnimState"
    })
end

---@param obj Object
function bhv_flipswitch_panel_loop(obj)
    if not flipswitch_panel_bhv or not flipswitch_panel_starspawn_bhv then
        flipswitch_panel_bhv = obj.behavior
        return
    end
    obj_set_model_extended(obj, E_MODEL_FLIPSWITCH_PANEL)

    load_object_collision_model()

    -- Always checks for the starspawn mop
    local starspawn_obj = cur_obj_nearest_object_with_behavior(flipswitch_panel_starspawn_bhv)
    if obj.parentObj ~= starspawn_obj then
        obj.parentObj = starspawn_obj
        if not obj.parentObj then
           return
        end
    end

    -- Turn green and don't allow further change
    if StarSpawned then
        obj.oAnimState = 2
    else
        switch(obj.oAction, {
            [FLIPSWITCH_PANEL_ACT_IDLE] = function()
                if cur_obj_is_mario_on_platform() == 1 and not is_bubbled(gMarioStates[0]) then
                    -- Causes the panel to change colors upon being pressed multiple times
                    obj.parentObj.oHiddenStarTriggerCounter = obj.parentObj.oHiddenStarTriggerCounter + 1 - (2 * obj.oAnimState)
                    obj.oAnimState = obj.oAnimState ~ 1

                    cur_obj_play_sound_1(SOUND_GENERAL_BIG_CLOCK)
                    obj.oAction = FLIPSWITCH_PANEL_ACT_ACTIVE
                    if is_current_area_sync_valid() then
                        network_send_object(obj, false)
                    end
                end
            end,
            [FLIPSWITCH_PANEL_ACT_ACTIVE] = function()
                local closest_player = nearest_player_to_object(obj)
                if cur_obj_is_mario_on_platform() == 0 and closest_player and closest_player.platform ~= obj then
                    obj.oAction = FLIPSWITCH_PANEL_ACT_IDLE
                end
            end
        })
    end
end

--id_bhvFlipswitch_Panel_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_flipswitch_panel_init, bhv_flipswitch_panel_loop, "bhvFlipswitch_Panel_MOP")

---@param obj Object
function bhv_flipswitch_panel_starspawn_init(obj)
    obj.oHealth = 0
    flipswitch_panel_starspawn_bhv = obj.behavior

    network_init_object(obj, false, {
        "oHiddenStarTriggerCounter"
    })
end

---@param obj Object
function bhv_flipswitch_panel_starspawn_loop(obj)
    if not flipswitch_panel_bhv or not flipswitch_panel_starspawn_bhv then
        flipswitch_panel_starspawn_bhv = obj.behavior
        return
    end

    local amount_of_panels = count_objects_with_behavior(flipswitch_panel_bhv)
    -- Prevents the starspawn mop from prematurely assume all panels have been pressed
    if amount_of_panels > obj.oHealth or obj.oHealth == 0 then
        obj.oHealth = amount_of_panels
        return
    end

    if obj.oHealth == obj.oHiddenStarTriggerCounter and not StarSpawned then
        spawn_red_coin_cutscene_star(obj.oPosX, obj.oPosY, obj.oPosZ)
        StarSpawned = true
        obj.activeFlags = obj.activeFlags | ACTIVE_FLAG_DEACTIVATED
    end

    if is_current_area_sync_valid() then
        network_send_object(obj, false)
    end
end

--id_bhvFlipswitch_Panel_StarSpawn_MOP = hook_behavior(nil, OBJ_LIST_GENACTOR, false, bhv_flipswitch_panel_starspawn_init, bhv_flipswitch_panel_starspawn_loop, "bhvFlipswitch_Panel_StarSpawn_MOP")

------ Switchblock ------
-- This block is either red or blue. If the corresponding switch is pressed, activate blocks of one color and deactivate blocks of another color.
-- The color of each block and switch depends on the 2nd byte.
-- 2nd byte of 0 spawns red 2nd byte of 2 spawns blue.
-- Anim state 0 is red, 1 is red deactivated, 2 is blue, 3 is blue deactivated.

gGlobalSyncTable.switchBlockState = 0

---@param obj Object
function bhv_Switchblock_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_SWITCHBLOCK_MOP
end

---@param obj Object
function bhv_Switchblock_loop(obj)
    obj_set_model_extended(obj, E_MODEL_SWITCHBLOCK)

    -- Determines which block color this becomes
    local params_2nd_byte = obj.oBehParams2ndByte
    obj.oAnimState = params_2nd_byte + obj.oAction -- Changes anim states

    -- Only loads collision if the corresponding switch is pressed
    -- Switchblocks have a second byte of 0 and 2, while switches have a second byte of 0 and 1
    if gGlobalSyncTable.switchBlockState == params_2nd_byte >> 1 then
        load_object_collision_model()
        obj.oAction = SWITCHBLOCK_ACT_ACTIVE
    else
        obj.oAction = SWITCHBLOCK_ACT_INACTIVE
    end
end

--id_bhvSwitchblock_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_Switchblock_init, bhv_Switchblock_loop, "bhvSwitchblock_MOP")

---@param obj Object
function bhv_Switchblock_Switch_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_SWITCHBLOCK_SWITCH_MOP
end

local scalar_timer = 0

---@param obj Object
function bhv_Switchblock_Switch_loop(obj)
    obj_set_model_extended(obj, E_MODEL_SWITCHBLOCK_SWITCH)

    local params_2nd_byte = obj.oBehParams2ndByte
    load_object_collision_model()

    obj.oAnimState = params_2nd_byte
    if cur_obj_is_mario_on_platform() == 1 then
        gGlobalSyncTable.switchBlockState = params_2nd_byte
    end

    local scalar = 0
    if gGlobalSyncTable.switchBlockState ~= params_2nd_byte then
        scalar = 1
    end

    -- Uses to slowly raise and lower the switch
    scalar_timer = scalar_timer + 1
    if scalar_timer > 100 then
        scalar_timer = 100
    end

    local result = scalar * 0.9 + 0.1
    local current_scale = obj.header.gfx.scale.y

    -- Make smaller if the switch is pressed
    obj.header.gfx.scale.y = lerp(current_scale, result, scalar_timer * 0.01)
end

hook_on_sync_table_change(gGlobalSyncTable, "switchBlockState", "tag",
function (tag, oldVal, newVal)
    scalar_timer = 0
end)

--id_bhvSwitchblock_Switch_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_Switchblock_Switch_init, bhv_Switchblock_Switch_loop, "bhvSwitchblock_Switch_MOP")

------ Moving Rotating Block ------
-- Moves on a square path. Occationally flips.

local ZPLUS = 0
local ZMINUS = 1
local XPLUS = 2
local XMINUS = 3
local LOOP = 4

local MoveRotatePath1 = {
    ZPLUS,
    XPLUS,
    ZMINUS,
    XMINUS,
    LOOP
}

local MoveRotatePath2 = {
    ZPLUS,
    ZPLUS,
    ZPLUS,
    ZMINUS,
    ZMINUS,
    ZMINUS,
    LOOP
}

local MoveRotatePath3 = {
    XPLUS,
    XPLUS,
    XPLUS,
    XMINUS,
    XMINUS,
    XMINUS,
    LOOP
}

local Paths = {
    MoveRotatePath1,
    MoveRotatePath2,
    MoveRotatePath3
}

--speeds are 8 in each dir
--red is bparam1 =1, offset timer by 0x80 on frame 1
--rotates every 0x110 frames aka ~9s or 272 frames
--rotate for pitch vel of 0x0400 for 0x20 frames
--advanced forward a direction every 0x3C frames

---@param obj Object
function bhv_move_rotate_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_MOVING_ROTATING_BLOCK_MOP
    -- Co-op always draws everything on screen
    --obj.oDrawingDistance = 19455

    -- 1st byte must be 0 or 1 for this to work
    obj.oTimer = obj.oTimer + 0x80 * (obj.oBehParams >> 24)
	obj.oAnimState = (obj.oBehParams >> 24)
    obj.oUnk1A8 = 0
    -- Forces the default case
    obj.oUnk94 = 0

    --[[network_init_object(obj, false, {
        "oPosX",
        "oPosY",
        "oPosZ",
        "oUnk94",
        "oUnk1A8",
        "oTimer",
        "oFaceAnglePitch"
    })]]
end

local PLAT_SPEED = 8
local PLAT_FLIP_START_TIMER = 0x110
local PLAT_FLIP_END_TIMER = 0x130
local PLAT_MOVEMENT_FRAMES = 0x3C

---@param obj Object
function bhv_move_rotate_loop(obj)
    load_object_collision_model()
    obj_set_model_extended(obj, E_MODEL_MOVING_ROATING_BLOCK)

    local direction = 0
    -- After a while, flip the platform
    if obj.oTimer == PLAT_FLIP_START_TIMER then
		obj.oAngleVelPitch = obj.oAngleVelPitch + 0x400
	elseif obj.oTimer == PLAT_FLIP_END_TIMER then
		obj.oAngleVelPitch = 0
		obj.oTimer = 0
    end

    -- Adding 1 since lua uses 1 index rather than c which uses 0 index
	direction = Paths[obj.oBehParams2ndByte + 1][obj.oUnk94 + 1] -- oUnk1A4 was replaced with oSyncDeath

	switch(direction, {
        [ZPLUS] = function ()
            obj.oUnk1A8 = obj.oUnk1A8 + 1
			obj.oVelZ = PLAT_SPEED
			obj.oVelX = 0
        end,
		[ZMINUS] = function ()
			obj.oUnk1A8 = obj.oUnk1A8 + 1
			obj.oVelZ = -PLAT_SPEED
			obj.oVelX = 0
        end,
		[XPLUS] = function ()
            obj.oUnk1A8 = obj.oUnk1A8 + 1
			obj.oVelX = PLAT_SPEED
			obj.oVelZ = 0
        end,
		[XMINUS] = function ()
            obj.oUnk1A8 = obj.oUnk1A8 + 1
			obj.oVelX = -PLAT_SPEED
			obj.oVelZ = 0
        end,
		["default"] = function ()
            obj.oUnk94 = 0
        end
	})

    -- After moving in a direction for a while, move in the next
	if obj.oUnk1A8 == PLAT_MOVEMENT_FRAMES then
		obj.oUnk94 = obj.oUnk94 + 1
		obj.oUnk1A8 = 0
        --[[if is_current_area_sync_valid() then
            network_send_object(obj, false)
        end]]
    end

	cur_obj_rotate_face_angle_using_vel()
	cur_obj_move_using_vel()
end

--id_bhvMoving_Rotating_Block_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_move_rotate_init, bhv_move_rotate_loop, "bhvMoving_Rotating_Block_MOP")

-----------------
-----Emitter-----
-----------------
-- Emits sparkles

---@param obj Object
function bhv_emitter_init(obj)
    --obj.oFlags = obj.oFlags | OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE | OBJ_FLAG_COMPUTE_DIST_TO_MARIO
    --obj.oDrawingDistance = 5120
end

---@param obj Object
function bhv_emitter_loop(obj)
    --if (obj.oBehParams >> 24) & 0xFF > obj.oDistanceToMario then
        spawn_object_attached_to_parent(obj, 0, id_bhvSparkleSpawn)
    --end
end

--id_bhvEmitter_MOP = hook_behavior(nil, OBJ_LIST_GENACTOR, false, bhv_emitter_init, bhv_emitter_loop, "bhvEmitter_MOP")

----- Blargg -----

-- Animation ID
local ANM_swim = 0
local ANM_attack = 1

--- Enemy Blargg ---

---@type ObjectHitbox
local sBlarggHitbox = {
    interactType = INTERACT_DAMAGE,
    downOffset = 0,
    damageOrCoinValue = 1,
    health = 0,
    numLootCoins = 0,
    --[[ -- Original, however I believe they're a little too large
    radius = 300,
    height = 235,
    hurtboxRadius = 300,
    hurtboxHeight = 110
    ]]
    radius = 200,
    height = 235,
    hurtboxRadius = 200,
    hurtboxHeight = 110
}

---@param obj Object
local function bhv_koopa_shell_flame_spawn(obj)
    for i = 0, 2 do
        spawn_object_attached_to_parent(obj, E_MODEL_RED_FLAME, id_bhvKoopaShellFlame)
    end
end

---@param obj Object
local function blargg_check_mario_collision(obj)
    if obj.oInteractStatus & INT_STATUS_INTERACTED ~= 0 then
        cur_obj_play_sound_2(SOUND_MOVING_LAVA_BURN)
        obj.oInteractStatus = obj.oInteractStatus & ~INT_STATUS_INTERACTED
        obj.oAction = BLARGG_ACT_KNOCKBACK
        obj.oFlags = obj.oFlags & ~OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW
        cur_obj_init_animation(ANM_swim)
        obj.oBullyMarioCollisionAngle = obj.oMoveAngleYaw
    end
end

---@param obj Object
local function blargg_act_swim(obj)
    obj.oForwardVel = 5.0
    if obj_return_home_if_safe(obj, obj.oHomeX, obj.oPosY, obj.oHomeZ, 800) == 1 and gMarioStates[0].floor.type ~= SURFACE_DEFAULT then
        obj.oAction = BLARGG_ACT_CHASE
    end
end

---@param obj Object
local function blargg_act_chase_mario(obj)
    local homeX = obj.oHomeX
    local posY = obj.oPosY
    local homeZ = obj.oHomeZ

    obj.oFlags = obj.oFlags | OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW
    obj.oMoveAngleYaw = obj.oFaceAngleYaw
    obj_turn_toward_object(obj, gMarioStates[0].marioObj, 16, 4096)

    obj.oForwardVel = (gMarioStates[0].riddenObj == obj) and 40 or 10

    bhv_koopa_shell_flame_spawn(obj)
    if is_point_within_radius_of_mario(homeX, posY, homeZ, 5000) == 0 or gMarioStates[0].floor.type == SURFACE_DEFAULT or posY < obj.oPosY then
        obj.oAction = BLARGG_ACT_SWIM
        cur_obj_init_animation(ANM_swim)
    end
end

---@param obj Object
local function blargg_act_knockback(obj)
    if obj.oForwardVel < 10.0 and convert_s32(obj.oVelY) == 0 then
        obj.oForwardVel = 1.0
        obj.oBullyKBTimerAndMinionKOCounter = obj.oBullyKBTimerAndMinionKOCounter + 1
        obj.oFlags = obj.oFlags | OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW
        obj.oMoveAngleYaw = obj.oFaceAngleYaw
        obj_turn_toward_object(obj, gMarioStates[0].marioObj, 16, 1280)
    else
        -- ! Changed from curAnim to animInfo
        obj.header.gfx.animInfo.animFrame = 0
    end

    if obj.oBullyKBTimerAndMinionKOCounter == 18 then
        obj.oAction = BLARGG_ACT_CHASE
        obj.oBullyKBTimerAndMinionKOCounter = 0
        cur_obj_init_animation(ANM_attack)
        cur_obj_play_sound_2(SOUND_OBJ2_PIRANHA_PLANT_BITE)
    end
end

---@param obj Object
local function blargg_act_back_up(obj)
    if obj.oTimer == 0 then
        obj.oFlags = obj.oFlags & ~OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW
        obj.oMoveAngleYaw = obj.oMoveAngleYaw + 0x8000
    end

    obj.oForwardVel = 5.0

    if obj.oTimer == 15 then
        obj.oMoveAngleYaw = obj.oFaceAngleYaw
        obj.oFlags = obj.oFlags | OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW
        obj.oAction = BLARGG_ACT_SWIM
    end
end

local function blargg_backup_check(obj, collisionFlags)
    if collisionFlags & OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW == 0 and obj.oAction ~= BLARGG_ACT_KNOCKBACK then
        obj.oPosX = obj.oBullyPrevX
        obj.oPosZ = obj.oBullyPrevZ
        obj.oAction = BLARGG_ACT_BACKUP
    end
end

---@param obj Object
local function blargg_step(obj)
    local collisionFlags = 0
    collisionFlags = object_step()
    blargg_backup_check(obj, collisionFlags)
end

---@param obj Object
function bhv_blargg_init(obj)
    --obj.oFlags = (OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW | OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE)
    --obj.oAnimations = gObjectAnimations.blargg_seg5_anims_0500616C
    --object_drop_to_floor(obj)
    --obj.oHomeX = obj.oPosX
    --obj.oHomeY = obj.oPosY
    --obj.oHomeZ = obj.oPosZ

    cur_obj_init_animation(ANM_swim)
    obj.oGravity = 4.0
    obj.oFriction = 0.91
    obj.oBuoyancy = 1.3

    obj_scale(obj, 1)
    obj_set_hitbox(obj, sBlarggHitbox)
end

---@param obj Object
function bhv_blargg_loop(obj)
    obj.oIntangibleTimer = 0
    obj.oBullyPrevX = obj.oPosX
    obj.oBullyPrevY = obj.oPosY
    obj.oBullyPrevZ = obj.oPosZ
    blargg_check_mario_collision(obj)

    switch (obj.oAction, {
        [BLARGG_ACT_SWIM] = function ()
            blargg_act_swim(obj)
            blargg_step(obj)
        end,

        [BLARGG_ACT_CHASE] = function ()
            blargg_act_chase_mario(obj)
            blargg_step(obj)
        end,

        [BLARGG_ACT_KNOCKBACK] = function ()
            blargg_act_knockback(obj)
            blargg_step(obj)
        end,

        [BLARGG_ACT_BACKUP] = function ()
            obj.oForwardVel = 10.0
            blargg_act_back_up(obj)
            blargg_step(obj)
        end,

        [BULLY_ACT_DEATH_PLANE_DEATH] = function ()
            obj.activeFlags = ACTIVE_FLAG_DEACTIVATED
        end
    })

    set_object_visibility(obj, 3000)
end

--id_bhvBlargg = hook_behavior(nil, OBJ_LIST_GENACTOR, false, bhv_blargg_init, bhv_blargg_loop, "bhvBlargg")

--- Friendly Blargg ---

---@type ObjectHitbox
local sBlarggFriendlyHitbox = {
    interactType = INTERACT_KOOPA_SHELL,
    downOffset = 0,
    damageOrCoinValue = 4,
    health = 1,
    numLootCoins = 1,
    radius = 50,
    height = 50,
    hurtboxRadius = 50,
    hurtboxHeight = 50,
}

---@param obj Object
local function blargg_friendly_explode(obj)
    gMarioStates[0].action = ACT_WALKING
    mario_stop_riding_object(gMarioStates[0])

    obj_mark_for_deletion(obj)
    if obj.oTimer < 5 then
        local scale = repack(obj.oTimer * 0.2, "I", "f")
        cur_obj_scale(scale)
    else
        local explosion = spawn_object_attached_to_parent(obj, E_MODEL_EXPLOSION, id_bhvExplosion)
        if explosion then
            explosion.oGraphYOffset = explosion.oGraphYOffset + 100
        end

        -- Some fields required for this to exist aren't exposed to lua
        --create_respawner(obj, E_MODEL_FRIENDLY_BLARGG, obj.behavior, 3000)
        spawn_non_sync_object(
            get_id_from_behavior(obj.behavior),
            E_MODEL_FRIENDLY_BLARGG,
            obj.oHomeX, obj.oHomeY, obj.oHomeZ,
            nil)
        obj.activeFlags = obj.activeFlags | ACTIVE_FLAG_DEACTIVATED
    end
end

---@param obj Object
function bhv_friendly_blargg_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.oAnimations = gObjectAnimations.blargg_seg5_anims_0500616C
    --obj.oWallHitboxRadius = 30
    --obj.oGravity = 0
    --obj.oBounciness = -50
    --obj.oDragStrength = 2000
    --obj.oFriction = 2000
    --obj.oBuoyancy = 200
    --object_drop_to_floor(obj)
    --obj.oHomeX = obj.oPosX
    --obj.oHomeY = obj.oPosY
    --obj.oHomeZ = obj.oPosZ

    cur_obj_init_animation(ANM_swim)
    obj_set_hitbox(obj, sBlarggFriendlyHitbox)
end

---@param obj Object
function bhv_blargg_friendly_loop(obj)
    switch(obj.oAction, {
        [FRIENDLY_BLARGG_ACT_IDLE] = function ()
            cur_obj_update_floor_and_walls()
            cur_obj_if_hit_wall_bounce_away()
            if obj.oInteractStatus & INT_STATUS_INTERACTED ~= 0 then
                obj.oAction = FRIENDLY_BLARGG_ACT_BEING_RIDDEN
            end
            cur_obj_move_standard(-20)
        end,
        [FRIENDLY_BLARGG_ACT_BEING_RIDDEN] = function ()
            obj_copy_pos(obj, gMarioStates[0].marioObj)
            local floor = cur_obj_update_floor_height_and_get_floor()
            if 5.0 > math.abs(obj.oPosY - obj.oFloorHeight) then
                if floor and floor.type == SURFACE_BURNING then
                    bhv_koopa_shell_flame_spawn(obj)
                else
                    blargg_friendly_explode(obj)
                end
            else
                blargg_friendly_explode(obj)
                obj.oFaceAngleYaw = gMarioStates[0].marioObj.oMoveAngleYaw
                if obj.oInteractStatus & INT_STATUS_STOP_RIDING ~= 0 then
                    obj_mark_for_deletion(obj)
                    spawn_mist_particles()
                    obj.oAction = FRIENDLY_BLARGG_ACT_IDLE
                end
            end
        end
    })
    obj.oInteractStatus = 0
end

--id_bhvFriendlyBlargg = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_friendly_blargg_init, bhv_blargg_friendly_loop, "bhvFriendlyBlargg")

------ P Switch ------
-- Purple switch that converts coins to cork boxes and vice versa

local function Swap_Coins_Box()
	local box_obj = obj_get_first_with_behavior_id(id_bhvBreakableBox)
	local coin_obj = obj_get_first_with_behavior_id(id_bhvYellowCoin)
	-- two loops so they don't couple and infinite loop
	while box_obj do
        box_obj.activeFlags = ACTIVE_FLAG_DEACTIVATED
        spawn_object_attached_to_parent(box_obj , E_MODEL_YELLOW_COIN, id_bhvYellowCoin)
        box_obj = obj_get_next_with_same_behavior_id(box_obj)
	end
	while coin_obj do
        coin_obj.activeFlags = ACTIVE_FLAG_DEACTIVATED
        coin_obj.oIntangibleTimer = -1
        spawn_object_attached_to_parent(coin_obj , E_MODEL_BREAKABLE_BOX, id_bhvBreakableBox)
        coin_obj = obj_get_next_with_same_behavior_id(coin_obj)
	end
end

---@param obj Object
function bhv_pswitch_init(obj)
    obj.collisionData = gGlobalObjectCollisionData.purple_switch_seg8_collision_0800C7A8
end

---@param obj Object
function bhv_pswitch_loop(obj)
    ---@type MarioState
    local m = gMarioStates[0]
    ---@type Object
    local m_obj = gMarioStates[0].marioObj
    local sound_source = {x = 0, y = 0, z = 0}
    switch (obj.oAction, {
        --[[
         * Set the switch's model and scale. If Mario is standing near the
         * switch's middle section, transition to the pressed state.
         --]]
        [PURPLE_SWITCH_IDLE] = function ()
            obj_set_model_extended(obj, E_MODEL_PURPLE_SWITCH)
            cur_obj_scale(1.0)
            if m_obj.platform == obj and m.action & MARIO_UNKNOWN_13 == 0 then
                if lateral_dist_between_objects(obj, m_obj) < 127.5 then
                    obj.oAction = PURPLE_SWITCH_PRESSED
                end
            end
        end,
        --[[
         * Collapse the switch downward, play a sound, and shake the screen.
         * Immediately transition to the ticking state.
         --]]
        [PURPLE_SWITCH_PRESSED] = function ()
            cur_obj_scale_over_time(2, 3, 1.0, 0.2)
            if obj.oTimer == 3 then
                cur_obj_play_sound_2(SOUND_GENERAL2_PURPLE_SWITCH)
                obj.oAction = PURPLE_SWITCH_TICKING
                cur_obj_shake_screen(SHAKE_POS_SMALL)
				Swap_Coins_Box()
			end
        end,
        --[[
         * Play a continuous ticking sound that gets faster when time is almost
         * up. When time is up, move to a waiting-while-pressed state.
         --]]
        [PURPLE_SWITCH_TICKING] = function ()
            if obj.oTimer < 360 then
				play_sound(SOUND_GENERAL2_SWITCH_TICK_FAST, sound_source)
			else
				play_sound(SOUND_GENERAL2_SWITCH_TICK_SLOW, sound_source)
            end
			if obj.oTimer > 400 then
				obj.oAction = PURPLE_SWITCH_WAIT_FOR_MARIO_TO_GET_OFF
				Swap_Coins_Box()
            end
        end,
        --[[
         * Make the switch look unpressed again, and transition back to the
         * idle state.
         --]]
        [PURPLE_SWITCH_UNPRESSED] = function ()
            cur_obj_scale_over_time(2, 3, 0.2, 1.0)
            if obj.oTimer == 3 then
                obj.oAction = PURPLE_SWITCH_IDLE
            end
        end,
        --[[
         * Mario is standing on the switch, but time has expired. Wait for
         * him to get off the switch, and when he does so, transition to the
         * unpressed state.
         --]]
        [PURPLE_SWITCH_WAIT_FOR_MARIO_TO_GET_OFF] = function ()
            if cur_obj_is_mario_on_platform() == 0 then
                obj.oAction = PURPLE_SWITCH_UNPRESSED
            end
        end
    })
end

--id_bhvPSwitch_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_pswitch_init, bhv_pswitch_loop, "bhvPSwitch_MOP")

------ Shell 1/2 ------
-- No idea how they're made but they seem to copy the small breakable box
-- However, since I really don't know how they work, they'll be deleted

id_bhvShell_1_MOP = hook_behavior(nil, OBJ_LIST_UNIMPORTANT, false, function (obj) obj_mark_for_deletion(obj) end, nil, "bhvShell_1_MOP")
id_bhvShell_2_MOP = hook_behavior(nil, OBJ_LIST_UNIMPORTANT, false, function (obj) obj_mark_for_deletion(obj) end, nil, "bhvShell_2_MOP")

------ Jukebox ------
-- Allows the music to change within the same area
-- Not possible in coop, or even regular pc port for that matter as far as I can tell

id_bhvJukebox_MOP = hook_behavior(nil, OBJ_LIST_UNIMPORTANT, false, function (obj) obj_mark_for_deletion(obj) end, nil, "bhvJukebox_MOP")