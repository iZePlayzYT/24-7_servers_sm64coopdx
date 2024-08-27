-- name: Act Select Dark Mode
-- by: Blocky

local smlua_model_util_get_id, obj_set_model_extended, hook_behavior =
      smlua_model_util_get_id, obj_set_model_extended, hook_behavior

local E_MODEL_COLOR = smlua_model_util_get_id("color_geo")

local function act_selector_init(o)
    obj_set_model_extended(o, E_MODEL_COLOR)
end

hook_behavior(id_bhvActSelector, OBJ_LIST_DEFAULT, false, act_selector_init, nil)