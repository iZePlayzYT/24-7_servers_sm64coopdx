function custom_warp0(m)
    local warp = obj_get_first_with_behavior_id(id_bhv0starsWarp)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CCM then
        if m.numStars == 75 then
        obj_mark_for_deletion(warp)
    end
  end
end

function custom_warp75(m)
    local warp = obj_get_first_with_behavior_id(id_bhv75starsWarp)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CCM then
        if m.numStars < 75 then
        obj_mark_for_deletion(warp)
    end
  end
end

function custom_warp30(m)
    local warp = obj_get_first_with_behavior_id(id_bhv30starsWarp)
    if gNetworkPlayers[0].currLevelNum == LEVEL_PSS then
        if m.numStars == 144 then
        obj_mark_for_deletion(warp)
    end
  end
end

function custom_warp144(m)
    local warp = obj_get_first_with_behavior_id(id_bhv144starsWarp)
    if gNetworkPlayers[0].currLevelNum == LEVEL_PSS then
        if m.numStars < 144 then
        obj_mark_for_deletion(warp)
    end
  end
end

-- hook the behavior

hook_event(HOOK_MARIO_UPDATE, custom_warp0)
hook_event(HOOK_MARIO_UPDATE, custom_warp75)
hook_event(HOOK_MARIO_UPDATE, custom_warp30)
hook_event(HOOK_MARIO_UPDATE, custom_warp144)

------ Warp0stars ------


---@param obj Object
function bhv_warp0_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj.oInteractType = INTERACT_WARP
    obj.oIntangibleTimer = 0
    cur_obj_set_home_once()
end

---@param obj Object
function bhv_warp0_loop(obj)
    bhv_warp_loop()
end

id_bhv0starsWarp = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_warp0_init, bhv_warp0_loop, "bhv0starsWarp")

------ Warp75stars ------


---@param obj Object
function bhv_warp75_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj.oInteractType = INTERACT_WARP
    obj.oIntangibleTimer = 0
    cur_obj_set_home_once()
end

---@param obj Object
function bhv_warp75_loop(obj)
    bhv_warp_loop()
end

id_bhv75starsWarp = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_warp75_init, bhv_warp75_loop, "bhv75starsWarp")

------ Warp30stars ------


---@param obj Object
function bhv_warp30_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj.oInteractType = INTERACT_WARP
    obj.oIntangibleTimer = 0
    cur_obj_set_home_once()
end

---@param obj Object
function bhv_warp30_loop(obj)
    bhv_warp_loop()
end

id_bhv30starsWarp = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_warp30_init, bhv_warp30_loop, "bhv30starsWarp")

------ Warp144stars ------


---@param obj Object
function bhv_warp144_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj.oInteractType = INTERACT_WARP
    obj.oIntangibleTimer = 0
    cur_obj_set_home_once()
end

---@param obj Object
function bhv_warp144_loop(obj)
    bhv_warp_loop()
end

id_bhv144starsWarp = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_warp144_init, bhv_warp144_loop, "bhv144starsWarp")