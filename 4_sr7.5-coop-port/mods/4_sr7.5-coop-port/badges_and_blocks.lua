--This is where the code for the badge system and blocks that react to the badges will go in, for anyone interested--
--~BlackJoystick--
--Mainly coded by flipflop bell
--Thanks ImYourCat for helping with some stuff here

E_MODEL_KILLER_NINE = smlua_model_util_get_id("killer9_geo")

--Blocks--
E_MODEL_SUPER_BLOCK = smlua_model_util_get_id("super_block_geo")
COL_SUPER_BLOCK = smlua_collision_util_get("super_block_collision")
E_MODEL_ULTRA_BLOCK = smlua_model_util_get_id("ultra_block_geo")
COL_ULTRA_BLOCK = smlua_collision_util_get("ultra_block_collision")

--Badges--
E_MODEL_WALLJUMP_BADGE = smlua_model_util_get_id("walljump_badge_geo")
E_MODEL_TRIPLEJUMP_BADGE = smlua_model_util_get_id("triplejump_badge_geo")
E_MODEL_SUPERSTOMP_BADGE = smlua_model_util_get_id("superstomp_badge_geo")
E_MODEL_ULTRASTOMP_BADGE = smlua_model_util_get_id("ultrastomp_badge_geo")
E_MODEL_LAVADEF_BADGE = smlua_model_util_get_id("lava_defense_badge_geo")

--Badge Strings and Mod Storage stuff--
--Thanks Cooliokid956, and the discord

if network_is_server() then
    local TB = mod_storage_load("TB"..get_current_save_file_num())
    local WB = mod_storage_load("WB"..get_current_save_file_num())
    local SB = mod_storage_load("SB"..get_current_save_file_num())
    local UB = mod_storage_load("UB"..get_current_save_file_num())
    local LD = mod_storage_load("LD"..get_current_save_file_num())
    gGlobalSyncTable.TB = TB ~= nil and TB or 0
    gGlobalSyncTable.WB = WB ~= nil and WB or 0
    gGlobalSyncTable.SB = SB ~= nil and SB or 0
    gGlobalSyncTable.UB = UB ~= nil and UB or 0
    gGlobalSyncTable.LD = LD ~= nil and LD or 0
end

function ResetIfNoStar()
    local m = gMarioStates[0]
    if m.numStars == 0 and network_is_server() then
        gGlobalSyncTable.WB = "0" mod_storage_save("WB"..get_current_save_file_num(), tostring(gGlobalSyncTable.WB))
        gGlobalSyncTable.TB = "0" mod_storage_save("TB"..get_current_save_file_num(), tostring(gGlobalSyncTable.TB))
        gGlobalSyncTable.SB = "0" mod_storage_save("SB"..get_current_save_file_num(), tostring(gGlobalSyncTable.SB))
        gGlobalSyncTable.UB = "0" mod_storage_save("UB"..get_current_save_file_num(), tostring(gGlobalSyncTable.UB))
        gGlobalSyncTable.LD = "0" mod_storage_save("LD"..get_current_save_file_num(), tostring(gGlobalSyncTable.LD))
    end
end

hook_event(HOOK_ON_LEVEL_INIT, ResetIfNoStar)

--API by wereyoshi--
_G.romhackbadges ={ 
    ---@param badgename string --name of badge to check
    hasbadge = function(badgename) --function that returns value of a badge variable
        local badgetable = {['TB'] = gGlobalSyncTable.TB,['SB'] = gGlobalSyncTable.SB,['UB'] = gGlobalSyncTable.UB,['WB']= gGlobalSyncTable.WB,['lava defense'] = gGlobalSyncTable.LD} --table of badge variables index by a string
        if badgetable[badgename] ~= nil then
            return badgetable[badgename]
        else
            log_to_console(string.format("invalid badgename was passed to _G.badges.hasbadge %s",badgename))
        end
    end
}

--Hitbox-- (Thanks SonicDark for letting me copy the function)
BadgeHitbox = {
    interactType = INTERACT_COIN,
    downOffset = 0,
    damageOrCoinValue = 0,
    health = 0,
    numLootCoins = 0,
    radius = 100,
    height = 64,
    hurtboxRadius = 0,
    hurtboxHeight = 0,
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

    obj.hitboxRadius = hitbox.radius
    obj.hitboxHeight = hitbox.height
    obj.hurtboxRadius = hitbox.hurtboxRadius
    obj.hurtboxHeight = hitbox.hurtboxHeight
    obj.hitboxDownOffset = hitbox.downOffset
end

--Walljump Badge--
function bhv_walljumpbadge_init(obj)
    obj_set_hitbox(obj, BadgeHitbox)
    obj_set_model_extended(obj, E_MODEL_WALLJUMP_BADGE) 
end

function bhv_walljumpbadge_loop(obj)
    local m = gMarioStates[0]
    local nm = nearest_mario_state_to_object(obj) --needed so the badge doesn't desync (thanks holc)
    local np = gNetworkPlayers[0]
    if (obj_check_hitbox_overlap(obj, nm.marioObj) and not (nm.action == ACT_BUBBLED)) then
        obj_mark_for_deletion(obj)
        gGlobalSyncTable.WB = "1" if network_is_server() then mod_storage_save("WB"..get_current_save_file_num(), tostring(gGlobalSyncTable.WB)) end
        if nm.playerIndex ~= 0 then return end --needed so the stuff down here doesn't sync
        play_character_sound(m, CHAR_SOUND_OKEY_DOKEY)
        djui_popup_create_global(np.name.." has obtained the \\#FFFF99\\Wall Jump Badge", 1)
    end
end

function WallJumpBadge(m)
    if m.playerIndex ~= 0 then return end
    if gGlobalSyncTable.WB == "0" then
        if m.action == ACT_WALL_KICK_AIR then
            set_mario_action(m, ACT_GROUND_BONK, 0)
        end
    end
end

hook_event(HOOK_MARIO_UPDATE, WallJumpBadge)

--Triple Jump Badge--
function bhv_triplejumpbadge_init(obj)
    obj_set_hitbox(obj, BadgeHitbox)
    obj_set_model_extended(obj, E_MODEL_TRIPLEJUMP_BADGE)
end

function bhv_triplejumpbadge_loop(obj)
    local m = gMarioStates[0]
    local nm = nearest_mario_state_to_object(obj) --needed so the badge doesn't desync
    local np = gNetworkPlayers[0]
    if (obj_check_hitbox_overlap(obj, nm.marioObj) and not (nm.action == ACT_BUBBLED)) then
        obj_mark_for_deletion(obj)
        gGlobalSyncTable.TB = "1" if network_is_server() then mod_storage_save("TB"..get_current_save_file_num(), tostring(gGlobalSyncTable.TB)) end
        if nm.playerIndex ~= 0 then return end --needed so the stuff down here doesn't sync
        play_character_sound(m, CHAR_SOUND_OKEY_DOKEY)
        djui_popup_create_global(np.name.." has obtained the \\#BC2B18\\Triple Jump Badge", 1)
    end
end

function TripleJumpBadge(m)
    if m.playerIndex ~= 0 then return end
    if gGlobalSyncTable.TB == "0" then
        if m.action == ACT_DOUBLE_JUMP then
            set_character_animation(m, CHAR_ANIM_SINGLE_JUMP)
            set_anim_to_frame(m, m.actionTimer)
            m.actionTimer = m.actionTimer + 1
        end
        if m.action == ACT_DOUBLE_JUMP_LAND then
            set_mario_action(m, ACT_JUMP_LAND, 0)
        end
    end
end

hook_event(HOOK_MARIO_UPDATE, TripleJumpBadge)

--Super Stomp Badge--
function bhv_superstompbadge_init(obj)
    obj_set_hitbox(obj, BadgeHitbox)
    obj_set_model_extended(obj, E_MODEL_SUPERSTOMP_BADGE)
end

function bhv_superstompbadge_loop(obj)
    local m = gMarioStates[0]
    local nm = nearest_mario_state_to_object(obj) --needed so the badge doesn't desync
    local np = gNetworkPlayers[0]
    if (obj_check_hitbox_overlap(obj, nm.marioObj) and not (nm.action == ACT_BUBBLED)) then
        obj_mark_for_deletion(obj)
        gGlobalSyncTable.SB = "1" if network_is_server() then mod_storage_save("SB"..get_current_save_file_num(), tostring(gGlobalSyncTable.SB)) end
        if nm.playerIndex ~= 0 then return end --needed so the stuff down here doesn't sync
        play_character_sound(m, CHAR_SOUND_OKEY_DOKEY)
        djui_popup_create_global(np.name.." has obtained the \\#999999\\Super Stomp Badge", 1)
    end
end

--Super Block--
function bhv_superblock_init(obj)
    obj.collisionData = COL_SUPER_BLOCK
    obj.oCollisionDistance = 20000
    obj_set_model_extended(obj, E_MODEL_SUPER_BLOCK)
end

function bhv_superblock_loop(obj)
    if cur_obj_is_mario_ground_pounding_platform() ~= 0 and gGlobalSyncTable.SB == "1" then
        obj_mark_for_deletion(obj)
        spawn_mist_particles()
        obj_explode_and_spawn_coins(46, 1)
        --spawn_triangle_break_particles(10, 1, 2, 1)
    end
    load_object_collision_model()
end

--ULtra Stomp Badge--
function bhv_ultrastompbadge_init(obj)
    obj_set_hitbox(obj, BadgeHitbox)
    obj_set_model_extended(obj, E_MODEL_ULTRASTOMP_BADGE)
end

function bhv_ultrastompbadge_loop(obj)
    local m = gMarioStates[0]
    local nm = nearest_mario_state_to_object(obj) --needed so the badge doesn't desync
    local np = gNetworkPlayers[0]
    if (obj_check_hitbox_overlap(obj, nm.marioObj) and not (nm.action == ACT_BUBBLED)) then
        obj_mark_for_deletion(obj)
        gGlobalSyncTable.UB = "1" if network_is_server() then mod_storage_save("UB"..get_current_save_file_num(), tostring(gGlobalSyncTable.UB)) end
        if nm.playerIndex ~= 0 then return end --needed so the stuff down here doesn't sync
        play_character_sound(m, CHAR_SOUND_OKEY_DOKEY)
        djui_popup_create_global(np.name.." has obtained the \\#AAAAFF\\Ultra Stomp Badge", 1)
    end
end

--Ultra Block--

function bhv_ultrablock_init(obj)
    obj.collisionData = COL_ULTRA_BLOCK
    obj.oCollisionDistance = 20000
    obj_set_model_extended(obj, E_MODEL_ULTRA_BLOCK)
end

function bhv_ultrablock_loop(obj)
    if cur_obj_is_mario_ground_pounding_platform() ~= 0 and gGlobalSyncTable.UB == "1" then
        obj_mark_for_deletion(obj)
        spawn_mist_particles()
        obj_explode_and_spawn_coins(46, 1)
        --spawn_triangle_break_particles(10, 1, 2, 1)
    end
    load_object_collision_model()
end

--Lava Defense Badge--
function bhv_lavadef_init(obj)
    obj_set_hitbox(obj, BadgeHitbox)
    obj_set_model_extended(obj, E_MODEL_LAVADEF_BADGE)
end

function bhv_lavadef_loop(obj)
    local m = gMarioStates[0]
    local nm = nearest_mario_state_to_object(obj) --needed so the badge doesn't desync
    local np = gNetworkPlayers[0]
    if (obj_check_hitbox_overlap(obj, nm.marioObj) and not (nm.action == ACT_BUBBLED)) then
        obj_mark_for_deletion(obj)
        gGlobalSyncTable.LD = "1" if network_is_server() then mod_storage_save("LD"..get_current_save_file_num(), tostring(gGlobalSyncTable.LD)) end
        if nm.playerIndex ~= 0 then return end --needed so the stuff down here doesn't sync
        play_character_sound(m, CHAR_SOUND_OKEY_DOKEY)
        djui_popup_create_global(np.name.." has obtained the \\#FF9999\\Lava Defense 1 Badge", 1)
    end
end

-- Thanks wereyoshi
function LavaDefenseBadgeFloor(m)
    if m.playerIndex ~= 0 then
        return
    elseif (gGlobalSyncTable.LD == "1" and m.floor.type == SURFACE_BURNING and (m.pos.y == m.floorHeight) and
        (m.action == ACT_LAVA_BOOST) and (m.vel.y == 84) and (m.hurtCounter > 0)) then
        m.hurtCounter = m.hurtCounter - 4
    end
end

function LavaDefenseBadgeWall(m, incomingAction)
    if m.playerIndex ~= 0 then
        return
    elseif gGlobalSyncTable.LD == "1" and incomingAction == ACT_LAVA_BOOST and (m.pos.y ~= m.floorHeight) and m.hurtCounter > 0 then
        m.hurtCounter = m.hurtCounter - 4
    end
end

hook_event(HOOK_BEFORE_PHYS_STEP, LavaDefenseBadgeFloor)
hook_event(HOOK_BEFORE_SET_MARIO_ACTION, LavaDefenseBadgeWall)

id_bhvWalljumpBadge = hook_behavior(nil, OBJ_LIST_DEFAULT, true, bhv_walljumpbadge_init, bhv_walljumpbadge_loop)
id_bhvTriplejumpBadge = hook_behavior(nil, OBJ_LIST_DEFAULT, true, bhv_triplejumpbadge_init, bhv_triplejumpbadge_loop)
id_bhvSuperStompBadge = hook_behavior(nil, OBJ_LIST_DEFAULT, true, bhv_superstompbadge_init, bhv_superstompbadge_loop)
id_bhvUltraStompBadge = hook_behavior(nil, OBJ_LIST_DEFAULT, true, bhv_ultrastompbadge_init, bhv_ultrastompbadge_loop)
id_bhvLavaDefenseBadge = hook_behavior(nil, OBJ_LIST_DEFAULT, true, bhv_lavadef_init, bhv_lavadef_loop)
id_bhvSuperBlock = hook_behavior(nil, OBJ_LIST_SURFACE, true, bhv_superblock_init, bhv_superblock_loop)
id_bhvUltraBlock = hook_behavior(nil, OBJ_LIST_SURFACE, true, bhv_ultrablock_init, bhv_ultrablock_loop)

--HUD Badge Progress--

function HUDBadgeProgress()
    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_set_font(FONT_HUD)
    local x = djui_hud_get_screen_width()/2 - (djui_hud_measure_text("BADGES")/2 * 1)
    local y = djui_hud_get_screen_height()/2 - 100
    local TBpng = get_texture_info("triplejump_badge") --triplejump_badge.png
    local WBpng = get_texture_info("walljump_badge")   --walljump_badge.png
    local SBpng = get_texture_info("super_badge")      --super_badge.png
    local UBpng = get_texture_info("ultra_badge")      --ultra_badge.png
    local LDpng = get_texture_info("lava_badge")       --lava_badge.png
    if is_game_paused() and not djui_hud_is_pause_menu_created() then
        djui_hud_print_text("BADGES", x, y, 1)
        if gGlobalSyncTable.TB == "0" then djui_hud_set_color(0, 0, 0, 150) end
        djui_hud_render_texture(TBpng, x+00-3-2, y+20, 0.5, 0.5) --first number in x is an offset for each texture, second is for centering and the third is for spacing 
        if gGlobalSyncTable.WB == "0" then djui_hud_set_color(0, 0, 0, 150) else djui_hud_set_color(255, 255, 255, 255) end
        djui_hud_render_texture(WBpng, x+16-3-1, y+20, 0.5, 0.5)
        if gGlobalSyncTable.SB == "0" then djui_hud_set_color(0, 0, 0, 150) else djui_hud_set_color(255, 255, 255, 255) end
        djui_hud_render_texture(SBpng, x+32-3-0, y+20, 0.5, 0.5)
        if gGlobalSyncTable.UB == "0" then djui_hud_set_color(0, 0, 0, 150) else djui_hud_set_color(255, 255, 255, 255) end
        djui_hud_render_texture(UBpng, x+48-3+1, y+20, 0.5, 0.5)
        if gGlobalSyncTable.LD == "0" then djui_hud_set_color(0, 0, 0, 150) else djui_hud_set_color(255, 255, 255, 255) end
        djui_hud_render_texture(LDpng, x+64-3+2, y+20, 0.5, 0.5)
    end
end

hook_event(HOOK_ON_HUD_RENDER, HUDBadgeProgress)