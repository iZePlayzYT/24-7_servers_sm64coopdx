-- exclamation box, ported to Lua by Agent X
-- credit me if you use this, also let me know if there are any issues or inaccuracies.

-- Heavily modified by Sunk to be more efficent, accurate, easy to understand, and easy to use

------------------------------
------Localize functions------
------------------------------

local cutscene_object = cutscene_object
local set_time_stop_flags = set_time_stop_flags
local cur_obj_become_tangible = cur_obj_become_tangible
local spawn_sync_object = spawn_sync_object
local obj_copy_pos_and_angle = obj_copy_pos_and_angle
local nearest_mario_state_to_object = nearest_mario_state_to_object
local network_send_object = network_send_object
local save_file_get_flags = save_file_get_flags
local cur_obj_become_intangible = cur_obj_become_intangible
local obj_set_model_extended = obj_set_model_extended
local cur_obj_unhide = cur_obj_unhide
local cur_obj_was_attacked_or_ground_pounded = cur_obj_was_attacked_or_ground_pounded
local queue_rumble_data_object = queue_rumble_data_object
local load_object_collision_model = load_object_collision_model
local cur_obj_move_using_fvel_and_gravity = cur_obj_move_using_fvel_and_gravity
local sins = sins
local spawn_mist_particles_variable = spawn_mist_particles_variable
local spawn_triangle_break_particles = spawn_triangle_break_particles
local play_sound = play_sound
local cur_obj_hide = cur_obj_hide
local network_init_object = network_init_object

define_custom_obj_fields({
    oStarId = "u32"
})

-------------------------
------Helper tables------
-------------------------

---@type ObjectHitbox
local sExclamationBoxHitbox = {
    interactType = INTERACT_BREAKABLE,
    downOffset = 5,
    damageOrCoinValue = 0,
    health = 1,
    numLootCoins = 0,
    radius = 40,
    height = 30,
    hurtboxRadius = 40,
    hurtboxHeight = 30
}

local cap_flags = { [0] = SAVE_FLAG_HAVE_WING_CAP, [1] = SAVE_FLAG_HAVE_METAL_CAP, [2] = SAVE_FLAG_HAVE_VANISH_CAP }

-- - 1st element: index
-- - 2nd element: oBehParams2ndByte
-- - 3rd element: oBehParams1stByte
-- - 4th element: model
-- - 5th element: behavior id
---@class ExclamationBoxContents

---@type ExclamationBoxContents
local sExclamationBoxContents = {
    { 0, 0, 5, E_MODEL_STAR, id_bhvSpawnedStar},
    { 1, 0, 0, E_MODEL_STAR, id_bhvWarp },
    { 2, 0, 6, E_MODEL_STAR, id_bhvSpawnedStar },
    { 3, 0, 0, E_MODEL_KOOPA_SHELL, id_bhvKoopaShell },
    { 4, 0, 0, E_MODEL_YELLOW_COIN, id_bhvSingleCoinGetsSpawned },
    { 5, 0, 0, E_MODEL_NONE, id_bhvThreeCoinsSpawn },
    { 6, 0, 0, E_MODEL_NONE, id_bhvTenCoinsSpawn },
    { 7, 0, 0, E_MODEL_1UP, id_bhv1upWalking },
    { 8, 0, 0, E_MODEL_STAR, id_bhvSpawnedStar },
    { 9, 0, 0, E_MODEL_1UP, id_bhv1upRunningAway },
    { 10, 0, 1, E_MODEL_STAR, id_bhvSpawnedStar },
    { 11, 0, 2, E_MODEL_STAR, id_bhvSpawnedStar },
    { 12, 0, 3, E_MODEL_STAR, id_bhvSpawnedStar },
    { 13, 0, 4, E_MODEL_STAR, id_bhvSpawnedStar },
    { 14, 0, 5, E_MODEL_STAR, id_bhvSpawnedStar },
    { 15, 0, 0, E_MODEL_GOOMBA, id_bhvGoomba },
    { 16, 0, 3, E_MODEL_FLYGUY,  id_bhvFlyGuy },
    { 17, 0, 3, E_MODEL_AMP,  id_bhvCirclingAmp },
    { 18, 0, 3, E_MODEL_CHUCKYA,  id_bhvChuckya },
    { 19, 0, 3, E_MODEL_BLACK_BOBOMB,  id_bhvBobomb },
    { 20, 0, 3, E_MODEL_RED_COIN,  id_bhvRedCoin },
    { 21, 0, 3, E_MODEL_BLUE_COIN,  id_bhvMovingBlueCoin },
    { 22, 0, 3, E_MODEL_PIRANHA_PLANT,  id_bhvPiranhaPlant },
    { 23, 0, 3, E_MODEL_KOOPA_WITH_SHELL,  id_bhvKoopa },
    { 24, 0, 3, E_MODEL_WHOMP,  id_bhvWhompKingBoss },
    { 25, 0, 3, E_MODEL_KING_BOBOMB,  id_bhvKingBobomb },
    { 26, 0, 3, E_MODEL_BOWLING_BALL,  id_bhvFireSpitter },
    { 27, 0, 3, E_MODEL_BOO_CASTLE,  id_bhvGhostHuntBoo },
    { 28, 0, 3, E_MODEL_MAD_PIANO,  id_bhvMadPiano },
    { 29, 0, 3, E_MODEL_NONE,  id_bhvCoinFormation },
    { 30, 0, 3, E_MODEL_BULLY,  id_bhvSmallBully },
    { 31, 0, 3, E_MODEL_SNUFIT,  id_bhvSnufit },
    { 32, 0, 3, E_MODEL_SCUTTLEBUG,  id_bhvScuttlebug },
    { 33, 0, 3, E_MODEL_SPINDRIFT,  id_bhvSpindrift },
    { 34, 0, 3, E_MODEL_MARIOS_WING_CAP,  id_bhvWingCap },
    { 35, 0, 3, E_MODEL_MARIOS_METAL_CAP,  id_bhvMetalCap },
    { 36, 0, 3, E_MODEL_MARIOS_CAP,  id_bhvVanishCap },
}

----------------------------
------Helper functions------
----------------------------

local function switch(param, case_table)
    local case = case_table[param]
    if case then return case() end
    local def = case_table['default']
    return def and def() or nil
end

---@param obj Object
local function star_spawn_cutscene(obj)
    cutscene_object(CUTSCENE_STAR_SPAWN, obj)
    gMarioStates[0].freeze = 60
    set_time_stop_flags(TIME_STOP_ENABLED | TIME_STOP_MARIO_AND_DOORS)
    obj.activeFlags = obj.activeFlags | ACTIVE_FLAG_INITIATED_TIME_STOP
end

---@return boolean
local function is_current_area_sync_valid()
    local np = gNetworkPlayers
    for i = 1, MAX_PLAYERS - 1, 1 do
        if np[i] and np[i].connected and
        (not np[i].currLevelSyncValid or not np[i].currAreaSyncValid) and
        is_player_in_local_area(gMarioStates[i]) ~= 0 then
            return false
        end
    end
    return true
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

--- @param parent Object
--- @param model ModelExtendedId
--- @param behavior BehaviorId
local function spawn_object(parent, model, behavior)
    if not parent then return nil end
    local obj = spawn_sync_object(behavior, model, parent.oPosX, parent.oPosY, parent.oPosZ, nil)
    if not obj then error("failed spawn"); return nil end

    obj_copy_pos_and_angle(obj, parent)

    return obj
end

--- @param parent Object
--- @param model ModelExtendedId
--- @param behavior BehaviorId
--- @param first_byte integer
--- @param second_byte integer
--- @param nearest_mario_object Object
local function spawn_content(parent, model, behavior, first_byte, second_byte, nearest_mario_object)
    if not parent then return nil end
    local obj = spawn_sync_object(behavior, model, parent.oPosX, parent.oPosY, parent.oPosZ, nil)
    if not obj then error("failed spawn"); return nil end

    obj_copy_pos_and_angle(obj, parent)
    obj.oVelY = 20
    obj.oForwardVel = 3

    obj.oMoveAngleYaw = nearest_mario_object and nearest_mario_object.oMoveAngleYaw or 0
    obj.globalPlayerIndex = nearest_mario_object and nearest_mario_object.globalPlayerIndex or 0

    if parent.oBehParams & 0xFF000000 == 0 then
        obj.oBehParams = obj.oBehParams | first_byte << 24
    else
        obj.oBehParams = obj.oBehParams | (parent.oBehParams & 0xFF000000)
    end

    obj.oBehParams = obj.oBehParams | (second_byte << 16)

    -- Not assigning a parent object breaks the cutscene
    -- so it needs to be done manually like this
    if obj_has_behavior_id(obj, id_bhvSpawnedStar) == 1 then
        star_spawn_cutscene(obj)
        obj.oStarId = (parent.oBehParams >> 24) & 0xFF
    end

    parent.oBehParams = obj.oBehParams

    return obj
end


--- @param m MarioState
--- @param model ModelExtendedId
local function exclamation_replace_model(m, model)
    -- Not sure when m will be nil, but better safe
    if not m then return model end
    switch(model, {
        [E_MODEL_MARIOS_CAP] = function()              return m.character.capModelId end,
        [E_MODEL_MARIOS_METAL_CAP] = function()        return m.character.capMetalModelId end,
        [E_MODEL_MARIOS_WING_CAP] = function()         return m.character.capWingModelId end,
        [E_MODEL_MARIOS_WINGED_METAL_CAP] = function() return m.character.capMetalWingModelId end
    })
    return model
end

--- @param exclamation_box_obj Object
--- @param desired_index number
--- @return boolean
local function exclamation_box_spawn_contents(exclamation_box_obj, desired_index)
    local nearest_mario_state = nearest_mario_state_to_object(exclamation_box_obj)
    -- No way for this to be nil, but if it is, restart the function
    if not nearest_mario_state then return false end
    local nearest_mario_object = nearest_mario_state.marioObj

    if exclamation_box_obj.oExclamationBoxForce ~= 0 then
        return true
    end

    ---@type Object?
    local spawned_object = nil
    ---@type ModelExtendedId
    local model = 0
    ---@param value ExclamationBoxContents
    for _, value in ipairs(sExclamationBoxContents) do
        -- The 2nd byte of the exclamation box determines what objects spawn
        if desired_index == value[1] then
            model = exclamation_replace_model(nearest_mario_state, value[4])

            spawned_object = spawn_content(exclamation_box_obj, model, value[5], value[3], value[2], nearest_mario_object)
            if not spawned_object then
                return false
            end
            break
        end
    end
    return true
end

-------------------
------Actions------
-------------------

local EXCLAMATION_BOX_ACT_INITIALIZE = 0
local EXCLAMATION_BOX_ACT_NEED_CAPS = 1
local EXCLAMATION_BOX_ACT_IDLE = 2
local EXCLAMATION_BOX_ACT_BREAKING = 3
local EXCLAMATION_BOX_ACT_BROKEN = 4
local EXCLAMATION_BOX_ACT_AWAITING_RESPAWN = 5
local EXCLAMATION_BOX_ACT_AWAITING_DELETION = 6

----------------------------
------Action Behaviors------
----------------------------

-- Initializes the exclamation box
--- @param obj Object
local function exclamation_box_act_initialize(obj)
    obj.oExclamationBoxForce = 0
    -- A 2nd byte of 0, 1, and 2 refer to different cap blocks
    if obj.oBehParams2ndByte < 3 then
        obj.oAnimState = obj.oBehParams2ndByte
        -- Determines if cap switches have been pressed
        if (save_file_get_flags() & cap_flags[obj.oBehParams2ndByte]) ~= 0
            -- If a cap box has a first byte, it will always be active
            or ((obj.oBehParams >> 24) & 0xFF) ~= 0 then
            obj.oAction = EXCLAMATION_BOX_ACT_IDLE
        else
            obj.oAction = EXCLAMATION_BOX_ACT_NEED_CAPS
        end
    else
        -- Yellow block
        obj.oAnimState = 3
        obj.oAction = EXCLAMATION_BOX_ACT_IDLE
    end
end

-- If the exclamation box is a cap box and the cap switches aren't pressed, go here
--- @param obj Object
local function exclamation_box_act_need_caps(obj)
    cur_obj_become_intangible()
    if obj.oTimer == 0 then
        spawn_object(obj, E_MODEL_EXCLAMATION_POINT, id_bhvRotatingExclamationMark)
        obj_set_model_extended(obj, E_MODEL_EXCLAMATION_BOX_OUTLINE)
    end
    if (save_file_get_flags() & cap_flags[obj.oBehParams2ndByte]) ~= 0
        -- Always false since cap boxes do not have a first byte
        -- However romhacks can take advantage of this
        or ((obj.oBehParams >> 24) & 0xFF) ~= 0 then
        obj.oAction = EXCLAMATION_BOX_ACT_IDLE
        obj_set_model_extended(obj, E_MODEL_EXCLAMATION_BOX)
    end
end

-- Wait until attacked
--- @param obj Object
local function exclamation_box_act_idle(obj)
    obj_set_hitbox(obj, sExclamationBoxHitbox)
    if obj.oTimer == 0 then
        -- If previously hidden, stop being hidden
        cur_obj_unhide()
        cur_obj_become_tangible()
        obj.oInteractStatus = 0
        obj.oPosY = obj.oHomeY
        obj.oGraphYOffset = 0
    end

    local isNearest = nearest_mario_state_to_object(obj) == gMarioStates[0]
    -- All of this checking for oExclamationBoxForce is strange but necessary
    -- oExclamationBoxForce really is just a check to see if the box was hit.
    if obj.oExclamationBoxForce ~= 0 or isNearest then
        if obj.oExclamationBoxForce ~= 0 or (isNearest and cur_obj_was_attacked_or_ground_pounded() ~= 0) then
            -- If it wasn't attacked before, it is now
            if obj.oExclamationBoxForce == 0 then
                obj.oExclamationBoxForce = 1
                if is_current_area_sync_valid() then
                    network_send_object(obj, true)
                end
                obj.oExclamationBoxForce = 0
            end
            -- Start breaking the exclamation box
            cur_obj_become_intangible()
            obj.oExclamationBoxUnkFC = 0x4000
            obj.oVelY = 30
            obj.oGravity = -8
            obj.oFloorHeight = obj.oPosY
            obj.oAction = EXCLAMATION_BOX_ACT_BREAKING
            queue_rumble_data_object(obj, 5, 80)
        end
    end
    load_object_collision_model()
end

-- When the box has been attacked and now needs to start breaking
--- @param obj Object
local function exclamation_box_act_breaking(obj)
    cur_obj_move_using_fvel_and_gravity()
    if obj.oVelY < 0 then
        obj.oVelY = 0
        obj.oGravity = 0
    end
    -- A whole bunch of things which all make the box appear smaller per frame
    obj.oExclamationBoxUnkF8 = (sins(obj.oExclamationBoxUnkFC) + 1) * 0.3 + 0.0
    obj.oExclamationBoxUnkF4 = (-sins(obj.oExclamationBoxUnkFC) + 1) * 0.5 + 1.0
    obj.oGraphYOffset = (-sins(obj.oExclamationBoxUnkFC) + 1) * 26.0
    obj.oExclamationBoxUnkFC = obj.oExclamationBoxUnkFC + 0x1000
    obj.header.gfx.scale.x = obj.oExclamationBoxUnkF4 * 2
    obj.header.gfx.scale.y = obj.oExclamationBoxUnkF8 * 2
    obj.header.gfx.scale.z = obj.oExclamationBoxUnkF4 * 2
    if obj.oTimer == 7 then
        obj.oAction = EXCLAMATION_BOX_ACT_BROKEN
    end
end

-- What happens when the box is broken
--- @param obj Object
local function exclamation_box_act_broken(obj)
    spawn_mist_particles_variable(0, 0, 46)
    spawn_triangle_break_particles(20, 139, 0.3, obj.oAnimState)
    play_sound(SOUND_GENERAL_BREAK_BOX, obj.header.gfx.cameraToObject)

    if not exclamation_box_spawn_contents(obj, obj.oBehParams2ndByte) then
        obj.oAction = EXCLAMATION_BOX_ACT_AWAITING_RESPAWN
        cur_obj_hide()
        obj.oTimer = 290
        return
    end

    -- The 2nd byte of all cap boxes is below 2
    -- However, the third byte is a shell box, which naturally respawns in coop
    -- This can be turned off with gBehaviorValues
    local threshold = 3
    if gBehaviorValues.RespawnShellBoxes == 0 then
        threshold = 2
    end

    if obj.oBehParams2ndByte <= threshold then
        obj.oAction = EXCLAMATION_BOX_ACT_AWAITING_RESPAWN
        cur_obj_hide()
    else
        obj.oAction = EXCLAMATION_BOX_ACT_AWAITING_DELETION
        cur_obj_become_intangible()
        cur_obj_hide()
    end
end

-- Cap boxes respawn
-- Shell boxes do respawn in coop naturally
--- @param obj Object
local function exclamation_box_act_awaiting_respawn(obj)
    obj.oExclamationBoxForce = 0
    if obj.oTimer > 300 then
        obj.oAction = EXCLAMATION_BOX_ACT_IDLE
        -- sync_object_forget_last_reliable_packet(o.oSyncID)
    end
end

-- Non-cap boxes don't respawn
--- @param obj Object
local function exclamation_box_act_awaiting_deletion(obj)
    obj.oExclamationBoxForce = 0
    -- No reason for it to take so long to delete the object
    if obj.oTimer > 1000 then
        obj_mark_for_deletion(obj)
    end
end

---------------------
------Behaviors------
---------------------

local sExclamationBoxActions = {
    [EXCLAMATION_BOX_ACT_INITIALIZE] = function(o) exclamation_box_act_initialize(o) end,
    [EXCLAMATION_BOX_ACT_NEED_CAPS] = function(o) exclamation_box_act_need_caps(o) end,
    [EXCLAMATION_BOX_ACT_IDLE] = function(o) exclamation_box_act_idle(o) end,
    [EXCLAMATION_BOX_ACT_BREAKING] = function(o) exclamation_box_act_breaking(o) end,
    [EXCLAMATION_BOX_ACT_BROKEN] = function(o) exclamation_box_act_broken(o) end,
    [EXCLAMATION_BOX_ACT_AWAITING_RESPAWN] = function(o) exclamation_box_act_awaiting_respawn(o) end,
    [EXCLAMATION_BOX_ACT_AWAITING_DELETION] = function(o) exclamation_box_act_awaiting_deletion(o) end
}

--- @param obj Object
--- @param actionFunctions table
local function obj_call_action_function(obj, actionFunctions)
    ---@type function
    local actionFunction = actionFunctions[obj.oAction]
    -- On object init, it always calls action 0 (initialize)
    actionFunction(obj)
end

--- @param obj Object
local function bhv_custom_exclamation_box_init(obj)
    obj.oFlags = (OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE | OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW)
    obj.collisionData = gGlobalObjectCollisionData.exclamation_box_outline_seg8_collision_08025F78
    obj.oCollisionDistance = 300
    obj.oHomeX = obj.oPosX
    obj.oHomeY = obj.oPosY
    obj.oHomeZ = obj.oPosZ

    obj.areaTimerType = AREA_TIMER_TYPE_MAXIMUM
    obj.areaTimer = 0
    obj.areaTimerDuration = 300

    network_init_object(obj, false, { "oExclamationBoxForce", "areaTimer" })
end

--- @param obj Object
local function bhv_custom_exclamation_box_loop(obj)
    cur_obj_scale(2)
    obj_call_action_function(obj, sExclamationBoxActions)
end

id_bhvExclamationBox = hook_behavior(id_bhvExclamationBox, OBJ_LIST_SURFACE, true, bhv_custom_exclamation_box_init, bhv_custom_exclamation_box_loop, "bhvExclamationBox")

-- Hooking the star directly might break something can't really do anything about it
---@param obj Object
local function bhv_custom_spawned_star_init(obj)
    network_init_object(obj, false, {
        "oStarId"
    })
end

---@param obj Object
local function bhv_custom_spawned_star_loop(obj)
    if obj.oSyncID ~= 0 and obj.globalPlayerIndex == gNetworkPlayers[0].globalIndex then
        network_send_object(obj, true)
    end
    obj.oBehParams = obj.oBehParams | (obj.oStarId << 24)

    if obj.oTimer > 150 then
        obj.oIntangibleTimer = 0
    end

    local model = E_MODEL_TRANSPARENT_STAR
    if ((1 << ((obj.oBehParams >> 24) & 0xFF)) & save_file_get_star_flags(get_current_save_file_num() - 1, gNetworkPlayers[0].currCourseNum - 1)) == 0 then
        model = E_MODEL_STAR
    end
    obj_set_model_extended(obj, model)
end

id_bhvSpawnedStar = hook_behavior(id_bhvSpawnedStar, OBJ_LIST_GENACTOR, false, bhv_custom_spawned_star_init, bhv_custom_spawned_star_loop, "bhvSpawnedStar")

_G.CustomExclamationBox = {
    getContentsTable = function ()
        return sExclamationBoxContents
    end,
    getNewExclamationBoxId = function ()
        return id_bhvExclamationBox
    end,
    getNewSpawnedStarId = function ()
        return id_bhvSpawnedStar
    end
}

local cutscene_timer = 180
hook_event(HOOK_UPDATE, function ()
    ---@type MarioState
    local m = gMarioStates[0]
    if not m.area or not m.area.camera or not m.area.camera.cutscene then return end

    if m.area.camera.cutscene == CUTSCENE_STAR_SPAWN then
        cutscene_timer = cutscene_timer - 1
        if cutscene_timer <= 0 then
            m.freeze = 0
            m.area.camera.cutscene = 0
            clear_time_stop_flags(TIME_STOP_ENABLED | TIME_STOP_MARIO_AND_DOORS)
        end
    else
        cutscene_timer = 180
    end
end)