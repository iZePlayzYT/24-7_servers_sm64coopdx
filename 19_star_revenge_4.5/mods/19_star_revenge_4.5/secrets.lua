---------
--models--
----------

E_MODEL_SECRETS = smlua_model_util_get_id("secret")
E_MODEL_STAR_SPAWN = smlua_model_util_get_id("starspawn")

-- Thanks Blocky, SonicDark and PeachyPeach!

function bhv_custom_secrets_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj_set_model_extended(o, E_MODEL_SECRETS)
end


function bhv_custom_secrets_loop(o)
    o.oFaceAngleYaw = o.oFaceAngleYaw + 0x800
    local secret = obj_get_nearest_object_with_behavior_id(o, id_bhvHiddenStarTrigger)
    if secret == nil or secret.oPosX ~= o.oPosX or secret.oPosY ~= o.oPosY or secret.oPosZ ~= o.oPosZ then
        obj_mark_for_deletion(o)
    end
end

id_bhvCustomSecrets = hook_behavior(bhvCustomSecrets, OBJ_LIST_LEVEL, false, bhv_custom_secrets_init, bhv_custom_secrets_loop)