--- Original Code By: Sunk
--- Tweaked a Bit

local switch_timer = 400
-- The amount of frames before the switch reaches the timer
local start_blinking = switch_timer - 40

local function switch(param, case_table)
    local case = case_table[param]
    return case and case() or nil
end

---@param obj Object
local function bhv_starswitch_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj.collisionData = gGlobalObjectCollisionData.purple_switch_seg8_collision_0800C7A8
end

-- Technically there was no need to put in the code for the purple switch
-- instead of using bhv_purple_switch_loop(), but I decided to put the code
-- here anyways
---@param obj Object
local function bhv_starswitch_loop(obj)
    ---@type MarioState
    local m = gMarioStates[0]
    ---@type Object
    local m_obj = gMarioStates[0].marioObj
    load_object_collision_model()
    switch (obj.oAction, {
        --[[
         * Set the switch's model and scale. If Mario is standing near the
         * switch's middle section, transition to the pressed state.
         --]]
        [PURPLE_SWITCH_IDLE] = function ()
            obj_set_model_extended(obj, E_MODEL_PURPLE_SWITCH)
            cur_obj_scale(1.4)
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
                cur_obj_shake_screen(SHAKE_POS_SMALL)
                obj.oAction = PURPLE_SWITCH_WAIT_FOR_MARIO_TO_GET_OFF
			end
        end
        })
        end

---@param obj Object
local function bhv_starswitch_star_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    bhv_init_room()
    bhv_collect_star_init()
    cur_obj_disable_rendering_and_become_intangible(obj)
end

---@param obj Object
local function bhv_starswitch_star_loop(obj)
    obj.oFaceAngleYaw = obj.oFaceAngleYaw + 0x800

    if obj.oInteractStatus & INT_STATUS_INTERACTED ~= 0 then
        obj_mark_for_deletion(obj)
        obj.oInteractStatus = 0
    end
    spawn_star_number()

    local parent = obj_get_first_with_behavior_id(id_bhvStarSwitch)
    if parent then
        obj.parentObj = parent
    else
        return
    end

    if parent.oAction == PURPLE_SWITCH_PRESSED then
                spawn_red_coin_cutscene_star(obj.oPosX, obj.oPosY, obj.oPosZ)
    end
end

id_bhvStarSwitch = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_starswitch_init, bhv_starswitch_loop, "bhvStarSwitch")
id_bhvStarSwitchStar = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_starswitch_star_init, bhv_starswitch_star_loop, "bhvStarSwitchStar")