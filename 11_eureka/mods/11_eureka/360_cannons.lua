-- name: 360 Cannons
-- description: Allows cannons to turn a full 360 degrees. Intended for romhacks, however can be used standalone.\nCreated by Sunk.

local function convert_s16(num)
    local min = -32768
    local max = 32767
    while (num < min) do
        num = max + (num - min)
    end
    while (num > max) do
        num = min + (num - max)
    end
    return num
end

---@param m MarioState
---@return integer
local function act_in_cannon(m)
    if not m then return 0 end
    local marioObj = m.marioObj
    local startFacePitch = m.faceAngle.y
    local startFaceYaw = m.faceAngle.z

    local cannonSensitivity = 5.0

    if m.usedObj then
        if m.actionState == 0 then
            m.marioObj.header.gfx.node.flags = m.marioObj.header.gfx.node.flags & ~GRAPH_RENDER_ACTIVE
            m.usedObj.oInteractStatus = INT_STATUS_INTERACTED

            m.statusForCamera.cameraEvent = CAM_EVENT_CANNON
            m.statusForCamera.usedObj = m.usedObj

            vec3f_set(m.vel, 0.0, 0.0, 0.0)

            m.pos.x = m.usedObj.oPosX
            m.pos.y = m.usedObj.oPosY + 350.0
            m.pos.z = m.usedObj.oPosZ

            m.forwardVel = 0.0

            m.actionState = 1
        elseif m.actionState == 1 then
            if m.usedObj.oAction == 1 then
                m.faceAngle.x = m.usedObj.oMoveAnglePitch
                m.faceAngle.y = m.usedObj.oMoveAngleYaw

                marioObj.oMarioCannonObjectYaw = m.usedObj.oMoveAngleYaw
                marioObj.oMarioCannonInputYaw = 0

                m.actionState = 2
            end
        elseif m.actionState == 2 then
            m.faceAngle.x = m.faceAngle.x - convert_s16(m.controller.stickY * cannonSensitivity)
            marioObj.oMarioCannonInputYaw = marioObj.oMarioCannonInputYaw - convert_s16(m.controller.stickX * cannonSensitivity)

            if m.faceAngle.x > 0x38E3 then
                m.faceAngle.x = 0x38E3
            end
            if m.faceAngle.x < 0 then
                m.faceAngle.x = 0
            end

            --[[if marioObj.oMarioCannonInputYaw > 0x4000 then
                marioObj.oMarioCannonInputYaw = 0x4000
            end
            if marioObj.oMarioCannonInputYaw < -0x4000 then
                marioObj.oMarioCannonInputYaw = -0x4000
            end]]

            m.faceAngle.y = marioObj.oMarioCannonObjectYaw + marioObj.oMarioCannonInputYaw

            if m.input & INPUT_A_PRESSED ~= 0 then
                m.forwardVel = 100.0 * coss(m.faceAngle.x)

                m.vel.y = 100.0 * sins(m.faceAngle.x)

                m.pos.x = m.pos.x + (120.0 * coss(m.faceAngle.x) * sins(m.faceAngle.y))
                m.pos.y = m.pos.y + (120.0 * sins(m.faceAngle.x))
                m.pos.z = m.pos.z + (120.0 * coss(m.faceAngle.x) * coss(m.faceAngle.y))

                play_sound(SOUND_ACTION_FLYING_FAST, m.marioObj.header.gfx.cameraToObject)
                play_sound(SOUND_OBJ_POUNDING_CANNON, m.marioObj.header.gfx.cameraToObject)

                m.marioObj.header.gfx.node.flags = m.marioObj.header.gfx.node.flags | GRAPH_RENDER_ACTIVE

                set_mario_action(m, ACT_SHOT_FROM_CANNON, 0)
                queue_rumble_data_mario(m, 60, 70)
                m.usedObj.oAction = 2
                return 0
            else
                if m.faceAngle.x ~= startFacePitch or m.faceAngle.y ~= startFaceYaw then
                    play_sound(SOUND_MOVING_AIM_CANNON, m.marioObj.header.gfx.cameraToObject)
                    reset_rumble_timers_2(m, 0)
                end
            end
        end
    end

    vec3f_copy(m.marioObj.header.gfx.pos, m.pos)
    vec3s_set(m.marioObj.header.gfx.angle, 0, m.faceAngle.y, 0)
    set_mario_animation(m, MARIO_ANIM_DIVE)

    return 0
end

hook_mario_action(ACT_IN_CANNON, act_in_cannon)