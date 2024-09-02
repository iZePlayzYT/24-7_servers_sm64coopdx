-- name:  Any Degree Wallkicks
-- description: Allows wallkicks to happen at 45 degree angles, or whatever angles are set. Default is 45 degrees.\nCreated by Sunk.

--There may be more I missed
local actions_able_to_wallkick =
{
    [ACT_JUMP] = ACT_JUMP,
    [ACT_HOLD_JUMP] = ACT_HOLD_JUMP,
    [ACT_DOUBLE_JUMP] = ACT_DOUBLE_JUMP,
    [ACT_TRIPLE_JUMP] = ACT_TRIPLE_JUMP,
    [ACT_SIDE_FLIP] = ACT_SIDE_FLIP,
    [ACT_BACKFLIP] = ACT_BACKFLIP,
    [ACT_LONG_JUMP] = ACT_LONG_JUMP,
    [ACT_WALL_KICK_AIR] = ACT_WALL_KICK_AIR,
    [ACT_TOP_OF_POLE_JUMP] = ACT_TOP_OF_POLE_JUMP,
    [ACT_FREEFALL] = ACT_FREEFALL
}

--This is in degrees
gGlobalSyncTable.limit = 46

--Thanks Djoslin
function convert_s16(num)
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

--This is mostly copied from the wall bonk check code
---@param m MarioState
function wallkicks(m)
    if m.playerIndex ~= 0 then return end

    if m.wall ~= nil then
        if (m.wall.type == SURFACE_BURNING) then return end

        local wallDYaw = (atan2s(m.wall.normal.z, m.wall.normal.x) - (m.faceAngle.y))
        --I don't really understand this however I do know the lower `limit` becomes, the more possible wallkick degrees.
        local limitNegative = (-((180 - gGlobalSyncTable.limit) * (8192/45))) + 1
        local limitPositive = ((180 - gGlobalSyncTable.limit) * (8192/45)) - 1
        --wallDYaw is s16, so I converted it
        wallDYaw = convert_s16(wallDYaw)

        --Standard air hit wall requirements
        if (m.forwardVel >= 16) and (actions_able_to_wallkick[m.action] ~= nil) then
            if (wallDYaw >= limitPositive) or (wallDYaw <= limitNegative) then
                mario_bonk_reflection(m, 0)
                m.faceAngle.y = m.faceAngle.y + 0x8000
                set_mario_action(m, ACT_AIR_HIT_WALL, 0)
            end
        end
    end
end

--[[local wallDYaw = 0
local limitNegative = 0
local limitPositive = 0
function display()
    local m = gMarioStates[0]
    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_set_font(FONT_MENU)
    if m.wall ~= nil then
        wallDYaw = (atan2s(m.wall.normal.z, m.wall.normal.x) - (m.faceAngle.y))
        wallDYaw = convert_s16(wallDYaw)
    end
    limitNegative = (-((180 - gGlobalSyncTable.limit) * (8192/45))) + 1
    limitPositive = ((180 - gGlobalSyncTable.limit) * (8192/45)) - 1

    djui_hud_print_text("Limit Variable: " .. gGlobalSyncTable.limit, 0, 35, 0.25)
    djui_hud_print_text("Limit Negative: " .. limitNegative, 0, 45, 0.25)
    djui_hud_print_text("Limit Positive: " .. limitPositive, 0, 55, 0.25)
    djui_hud_print_text("Wall DYaw: " .. wallDYaw, 0, 65, 0.25)
    djui_hud_print_text("Face Angle: " .. m.faceAngle.y, 0, 75, 0.25)
    djui_hud_print_text("Is DYaw Below Negative: " .. tostring(wallDYaw <= limitNegative), 0, 85, 0.25)
    djui_hud_print_text("Is DYaw Above Positive: " .. tostring(wallDYaw >= limitPositive), 0, 95, 0.25)
end
hook_event(HOOK_ON_HUD_RENDER, display)]]

hook_event(HOOK_BEFORE_PHYS_STEP, wallkicks)