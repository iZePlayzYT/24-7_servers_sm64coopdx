----------
--models--
----------

-- Thanks Blocky and SonicDark!

sCustomSecretHitbox = {
    interactType      = INTERACT_COIN,
    downOffset        = 0,
    damageOrCoinValue = 0,
    health            = 0,
    numLootCoins      = 0,
    radius            = 100,
    height            = 100,
    hurtboxRadius     = 0,
    hurtboxHeight     = 0,
}

--- @param obj Object
function obj_set_hitbox(obj, hitbox)
    if obj == nil or hitbox == nil then return end
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

function bhv_custom_secrets_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj_set_hitbox(o, sCustomSecretHitbox)
    obj_set_model_extended(o, E_MODEL_NONE)
    end

function bhv_custom_secrets_loop(o)
    spawn_non_sync_object(id_bhvSparkleSpawn, E_MODEL_NONE, o.oPosX, o.oPosY, o.oPosZ, nil)
    o.oFaceAngleYaw = o.oFaceAngleYaw + 0x800
    if (o.oInteractStatus & INT_STATUS_INTERACTED) ~= 0 then
        obj_mark_for_deletion(o)
        o.oInteractStatus = 0
    end
end

id_Bhv_Custom_0x13005708 = hook_behavior(nil, OBJ_LIST_LEVEL, false, bhv_custom_secrets_init, bhv_custom_secrets_loop, "Bhv_Custom_0x13005708")
--Bhv_Custom_0x13005708 = hook_behavior(Bhv_Custom_0x13005708, OBJ_LIST_LEVEL, false, bhv_custom_secrets_init, bhv_custom_secrets_loop)

function custom_emitter100(m)
    local emt100 = obj_get_first_with_behavior_id(id_Bhv_Custom_0x13005708)
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_GROUNDS then
        if m.numStars <= 99 then
        obj_mark_for_deletion(emt100)
    end
  end
end

hook_event(HOOK_MARIO_UPDATE, custom_emitter100)
