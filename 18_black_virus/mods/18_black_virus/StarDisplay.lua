-- name: Star Display

local star_display_shown = false

local table_remove = table.remove
---@param t table
local function table_clear(t)
    for i = 1, #t do
        table_remove(t, 1)
    end
end

local box_star_valid_sencond_byte = {
    [8] = 0,
    [10] = 1,
    [11] = 2,
    [12] = 3,
    [13] = 4,
    [14] = 5,
}

---@diagnostic disable: undefined-field
local function recreate_valid_box_bytes()
    if _G.CustomExclamationBox then
        table_clear(box_star_valid_sencond_byte)
        local contents = _G.CustomExclamationBox.getContentsTable()
        for _, value in ipairs(contents) do
            if value[5] == id_bhvSpawnedStar and value[3] < 7 then
                box_star_valid_sencond_byte[value[1]] = value[3]
            end
        end
    end
end
---@diagnostic enable

hook_event(HOOK_ON_MODS_LOADED, recreate_valid_box_bytes)

---------------------------------------------------------------------------------------------------

local level_to_course = {
    [LEVEL_BOB] = COURSE_BOB,
    [LEVEL_WF ] = COURSE_WF,
    [LEVEL_JRB] = COURSE_JRB,
    [LEVEL_CCM] = COURSE_CCM,
    [LEVEL_BBH] = COURSE_BBH,
    [LEVEL_HMC] = COURSE_HMC,
    [LEVEL_LLL] = COURSE_LLL,
    [LEVEL_SSL] = COURSE_SSL,
    [LEVEL_DDD] = COURSE_DDD,
    [LEVEL_SL ] = COURSE_SL,
    [LEVEL_WDW] = COURSE_WDW,
    [LEVEL_TTM] = COURSE_TTM,
    [LEVEL_THI] = COURSE_THI,
    [LEVEL_TTC] = COURSE_TTC,
    [LEVEL_RR ] = COURSE_RR,

    [LEVEL_BITDW] = COURSE_BITDW,
    [LEVEL_BITFS] = COURSE_BITFS,
    [LEVEL_BITS]  =  COURSE_BITS,
    [LEVEL_BOWSER_1] = COURSE_BITDW,
    [LEVEL_BOWSER_2] = COURSE_BITFS,
    [LEVEL_BOWSER_3] = COURSE_BITS,

    [LEVEL_COTMC] = COURSE_COTMC,
    [LEVEL_TOTWC] = COURSE_TOTWC,
    [LEVEL_VCUTM] = COURSE_VCUTM,

    [LEVEL_PSS]    = COURSE_PSS,
    [LEVEL_SA]     = COURSE_SA,
    [LEVEL_WMOTR]  = COURSE_WMOTR,
    [LEVEL_ENDING] = COURSE_CAKE_END,

    [LEVEL_CASTLE] = COURSE_NONE,
    [LEVEL_CASTLE_GROUNDS] = COURSE_NONE,
    [LEVEL_CASTLE_COURTYARD] = COURSE_NONE,
}

local course_to_level = {
    [COURSE_BOB] = LEVEL_BOB,
    [COURSE_WF ] = LEVEL_WF ,
    [COURSE_JRB] = LEVEL_JRB,
    [COURSE_CCM] = LEVEL_CCM,
    [COURSE_BBH] = LEVEL_BBH,
    [COURSE_HMC] = LEVEL_HMC,
    [COURSE_LLL] = LEVEL_LLL,
    [COURSE_SSL] = LEVEL_SSL,
    [COURSE_DDD] = LEVEL_DDD,
    [COURSE_SL ] = LEVEL_SL ,
    [COURSE_WDW] = LEVEL_WDW,
    [COURSE_TTM] = LEVEL_TTM,
    [COURSE_THI] = LEVEL_THI,
    [COURSE_TTC] = LEVEL_TTC,
    [COURSE_RR ] = LEVEL_RR ,
    [COURSE_BITDW] = LEVEL_BITDW,
    [COURSE_BITFS] = LEVEL_BITFS,
    [COURSE_BITS ] = LEVEL_BITS ,
    [COURSE_COTMC] = LEVEL_COTMC,
    [COURSE_TOTWC] = LEVEL_TOTWC,
    [COURSE_VCUTM] = LEVEL_VCUTM,
    [COURSE_PSS]   = LEVEL_PSS,
    [COURSE_SA]    = LEVEL_SA,
    [COURSE_WMOTR] = LEVEL_WMOTR,
    [COURSE_CAKE_END] = LEVEL_ENDING,
    [COURSE_NONE] = LEVEL_CASTLE
}

local base_stars = {
    -- "Base" stars
    [id_bhvStar] = true,
    [id_bhvHiddenStar] = true,
    [id_bhvSpawnedStar] = true,
    --[id_bhvSpawnedStarNoLevelExit] = true, -- Not in any script or macro
    [id_bhvHiddenRedCoinStar] = true,
    [id_bhvBowserCourseRedCoinStar] = true,
    --[id_bhvStarSpawnCoordinates] = true, -- Not in any script or macro
}

local enemies_that_spawn_stars = {
    -- Objects that spawn stars in a specific location
    -- id_bhvKoopa, -- Need to check for a second byte behavior arg
    [id_bhvKingBobomb] = true,
    [id_bhvWhompKingBoss] = true,
    [id_bhvEyerokBoss] = true,
    [id_bhvBigBully] = true,
    [id_bhvBigChillBully] = true,
    -- id_bhvPiranhaPlant, -- Need to check for a second byte behavior arg
    [id_bhvTuxiesMother] = true,
    [id_bhvWigglerHead] = true,
    -- The pss race timer spawns the star checking floor triangles, not objects
    [id_bhvRacingPenguin] = true,
    [id_bhvTreasureChests] = true,
    [id_bhvGhostHuntBigBoo] = true,
    [id_bhvKlepto] = true,
    [id_bhvMerryGoRoundBigBoo] = true,
    -- id_bhvMrI, -- Need to check for a second byte behavior arg
    [id_bhvBalconyBigBoo] = true,
    [id_bhvBigBullyWithMinions] = true,

    -- Objects that spawn the star right above Mario
    -- id_bhvToadMessage, -- Dialogs: 076, 082, 083
    -- id_bhvMips, -- Mips spawns multiple times, so I don't know how to track this well

    -- Exclamation boxes
    -- id_bhvExclamationBox -- This needs to be checked individually
}

local castle_levels = {
    [LEVEL_CASTLE] = true,
    [LEVEL_CASTLE_COURTYARD] = true,
    [LEVEL_CASTLE_GROUNDS] = true
}

local star_amounts = 0
local fire_plant_found = false

---@class LevelNum : number
---@class BhvData
    ---@field behavior BehaviorId
    ---@field behaviorArg integer

---@param area integer
---@param bhvData BhvData
---@param macroBhvId BehaviorId[]
---@param macroBhvArgs integer[]
local function get_star_amounts(area, bhvData, macroBhvId, macroBhvArgs)
    if bhvData then
        local behavior_id = bhvData.behavior
        local behavior_param = bhvData.behaviorArg
        if enemies_that_spawn_stars[behavior_id] then
            star_amounts = star_amounts + 1
        end

        -- Check each base star for fake stars
        if base_stars[behavior_id] and behavior_param >> 24 < 7 then
            star_amounts = star_amounts + 1
        end

        -- Check exclamation boxes individually
        if behavior_id == id_bhvExclamationBox then
            local star_id = box_star_valid_sencond_byte[(behavior_param >> 16) & 0xFF]
            if star_id then
                star_amounts = star_amounts + 1
            end
        end

        -- Check for koopa the quick individually
        if behavior_id == id_bhvKoopa and behavior_param & 0x00FF0000 ~= 0 then
            star_amounts = star_amounts + 1
        end

        -- Check piranha plants individually
        if behavior_id == id_bhvFirePiranhaPlant and behavior_param & 0x00FF0000 ~= 0 and not fire_plant_found then
            star_amounts = star_amounts + 1
            fire_plant_found = true
        end

        -- Check for Mr. I individually
        if behavior_id == id_bhvMrI and behavior_param & 0x00FF0000 ~= 0 then
            star_amounts = star_amounts + 1
        end

        -- Check for toads individually
        if behavior_id == id_bhvToadMessage and
        ((behavior_param == 76 << 24) or (behavior_param == 82 << 24) or (behavior_param == 83 << 24)) then
            star_amounts = star_amounts + 1
        end

        -- Check for mips individually
        if behavior_id == id_bhvMips then
            -- No way to know how many times MIPS spawns so assume it's twice
            star_amounts = star_amounts + 2
        end
    end

    -- Rare for this to happen but it could happen, so clamp it down
    if star_amounts > 7 then
        star_amounts = 7
    end
end

local is_romhack = false
hook_event(HOOK_ON_MODS_LOADED, function ()
    for i = 0, #gActiveMods, 1 do
        if gActiveMods[i].incompatible == "romhack" then
            is_romhack = true
        end
    end
end)

---@param course integer
---@return boolean
local function determine_if_course_is_in_romhack(course)
    if is_romhack then
        if course == COURSE_NONE then
            return not (level_is_vanilla_level(LEVEL_CASTLE_GROUNDS) and level_is_vanilla_level(LEVEL_CASTLE) and level_is_vanilla_level(LEVEL_CASTLE_COURTYARD))
        elseif course == COURSE_BITDW then
            return not (level_is_vanilla_level(LEVEL_BITDW) and level_is_vanilla_level(LEVEL_BOWSER_1))
        elseif course == COURSE_BITFS then
            return not (level_is_vanilla_level(LEVEL_BITFS) and level_is_vanilla_level(LEVEL_BOWSER_2))
        elseif course == COURSE_BITS then
            return not (level_is_vanilla_level(LEVEL_BITS) and level_is_vanilla_level(LEVEL_BOWSER_3))
        elseif level_is_vanilla_level(course_to_level[course]) then
            return false
        end
    end
    -- Technically also true for vanilla
    return true
end

local function get_total_stars_in_specific_course(course)
    if not is_romhack then
        if course == COURSE_NONE then
            return 5
        end

        local vanilla_star_count = {
            [COURSE_TOTWC] = 1,
            [COURSE_VCUTM] = 1,
            [COURSE_COTMC] = 1,
            [COURSE_BITDW] = 1,
            [COURSE_BITFS] = 1,
            [COURSE_BITS] = 1,
            [COURSE_PSS] = 2,
            [COURSE_SA] = 1,
            [COURSE_WMOTR] = 1,
        }
        if vanilla_star_count[course] then
            return vanilla_star_count[course]
        end
        return 7
    end

    if not determine_if_course_is_in_romhack(course) then
        return 0
    end

    if course_is_main_course(course) then
        return 7
    end

    if course == COURSE_NONE then
        for key in pairs(castle_levels) do
            level_script_parse(key, get_star_amounts)
        end
        local count = star_amounts
        star_amounts = 0
        return count
    end

    level_script_parse(course_to_level[course], get_star_amounts)
    local count = star_amounts
    star_amounts = 0
    return count
end

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

local function render_in_current_level(x, y, course)
    if gNetworkPlayers[0].currCourseNum == course then
        djui_hud_set_color(200, 200, 60, 100)
        djui_hud_render_rect(x - 1, y, 75, 19)
    end
end

local function render_course_values(course, x, y)
    local star_flags = save_file_get_star_flags(get_current_save_file_num() - 1, course - 1)
    local total_star_count = get_total_stars_in_specific_course(course)
    local disabled = total_star_count == 0

    for star = 0, 6 do
        if (1 << star) & star_flags ~= 0 then
            djui_hud_set_color(255, 255, 255, 255)
        else
            djui_hud_set_color(100, 100, 100, 255)
            if star + 1 > total_star_count then
                djui_hud_set_color(30, 30, 30, 50)
            end
        end
        if disabled then djui_hud_set_color(30, 30, 30, 30) end
        djui_hud_render_texture(gTextures.star, (x + 10) + 9 * star, y + 8.5, 0.5, 0.5)
    end

    local text = get_level_name(course, course_to_level[course], 1)

    if course == COURSE_NONE then
        text = "Overworld"
    elseif course == COURSE_CAKE_END then
        text = "Ending"
    end
    djui_hud_set_font(FONT_ALIASED)
    djui_hud_set_color(255, 255, 255, 255)
    if disabled then djui_hud_set_color(30, 30, 30, 30) end
    djui_hud_print_text(text, x, y, 0.25)
end

---@param x number
---@param y number
---@param course integer
---@param textures {success: TextureInfo, fail: TextureInfo}
---@param compare {[integer]: {course: integer, saveFlag: integer}}
local function render_save_flag_info(x, y, course, textures, compare)
    local flags = save_file_get_flags()
    local success = true
    if course == compare[1].course and flags & compare[1].saveFlag == 0 then
        success = false
    elseif course == compare[2].course and flags & compare[2].saveFlag == 0 then
        success = false
    elseif course == compare[3].course and flags & compare[3].saveFlag == 0 then
        success = false
    end
    djui_hud_set_color(255, 255, 255, 255)
    djui_hud_render_texture(success and textures.success or textures.fail, x, y, 0.5, 0.5)
end

local function hud_render()
    if not star_display_shown then return end
    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_set_rotation(0, 0, 0)

    if gMarioStates[0].controller.buttonPressed ~= 0 then
        star_display_shown = false
        return
    end

    local screen_width = djui_hud_get_screen_width()
    local screen_height = djui_hud_get_screen_height()
    local MAIN_RECT_WIDTH = 260
    local MAIN_RECT_HEIGHT = 190
    local MAIN_RECT_X = screen_width * 0.5 - MAIN_RECT_WIDTH * 0.5
    local MAIN_RECT_Y = screen_height * 0.5 - MAIN_RECT_HEIGHT * 0.5
    local MAIN_RECT_MID_X = MAIN_RECT_X + MAIN_RECT_WIDTH * 0.5
    local MAIN_RECT_END_X = MAIN_RECT_X + MAIN_RECT_WIDTH
    djui_hud_set_color(0, 0, 0, 100)
    djui_hud_render_rect(MAIN_RECT_X, MAIN_RECT_Y, MAIN_RECT_WIDTH, MAIN_RECT_HEIGHT)

    -- Render main courses
    do
        -- c1-c8
        local course_text_x = MAIN_RECT_X + 5
        local course_text_base_y = MAIN_RECT_Y + 5
        local course_text_increment_y = 17
        for course = COURSE_BOB, COURSE_SSL do
            local current_y = course_text_base_y + course_text_increment_y * (course - 1)
            render_course_values(course, course_text_x, current_y)
            render_in_current_level(course_text_x, current_y, course)
        end
        -- c9-c15
        course_text_x = MAIN_RECT_MID_X - 45
        for course = COURSE_DDD, COURSE_RR + 1 do
            local current_y = course_text_base_y + course_text_increment_y * (course - 9)
            -- Override for rendering overworld
            if course == COURSE_RR + 1 then
                render_course_values(COURSE_NONE, course_text_x, current_y)
                render_in_current_level(course_text_x, current_y, COURSE_NONE)
            else
                render_course_values(course, course_text_x, current_y)
                render_in_current_level(course_text_x, current_y, course)
            end
        end
    end

    -- Render cap courses
    do
        local course_text_x = MAIN_RECT_END_X - 95
        local course_star_x = course_text_x + 10
        local course_text_base_y = MAIN_RECT_Y + 5
        local course_text_increment_y = 17
        local course_ids = {COURSE_TOTWC, COURSE_VCUTM, COURSE_COTMC}
        for index in ipairs(course_ids) do
            local current_y = course_text_base_y + course_text_increment_y * (index - 1)
            local course = course_ids[index]
            render_course_values(course, course_text_x, current_y)
            render_in_current_level(course_text_x, current_y, course)
            render_save_flag_info(course_star_x - 10, current_y + 9, course, {success = gTextures.coin, fail = gTextures.no_camera}, {
                [1] = {course = COURSE_TOTWC, saveFlag = SAVE_FLAG_HAVE_WING_CAP},
                [2] = {course = COURSE_VCUTM, saveFlag = SAVE_FLAG_HAVE_VANISH_CAP},
                [3] = {course = COURSE_COTMC, saveFlag = SAVE_FLAG_HAVE_METAL_CAP},
            })
        end
    end

    -- Render bowser courses
    do
        local course_text_x = MAIN_RECT_END_X - 95
        local course_star_x = course_text_x + 10
        local course_text_base_y = MAIN_RECT_Y + 60
        local course_text_increment_y = 17
        local course_ids = {COURSE_BITDW, COURSE_BITFS, COURSE_BITS}
        for index in ipairs(course_ids) do
            local current_y = course_text_base_y + course_text_increment_y * (index - 1)
            local course = course_ids[index]
            render_course_values(course, course_text_x, current_y)
            render_in_current_level(course_text_x, current_y, course)
            render_save_flag_info(course_star_x - 10, current_y + 9, course, {success = gTextures.coin, fail = gTextures.no_camera}, {
                [1] = {course = COURSE_BITDW, saveFlag = SAVE_FLAG_HAVE_KEY_1 | SAVE_FLAG_UNLOCKED_BASEMENT_DOOR},
                [2] = {course = COURSE_BITFS, saveFlag = SAVE_FLAG_HAVE_KEY_2 | SAVE_FLAG_UNLOCKED_UPSTAIRS_DOOR},
                [3] = {course = COURSE_BITS , saveFlag = 0},
            })
        end
    end

    -- Render other secret courses
    do
        local course_text_x = MAIN_RECT_END_X - 95
        local course_text_base_y = MAIN_RECT_Y + 115
        local course_text_increment_y = 17
        local course_ids = {COURSE_PSS, COURSE_SA, COURSE_WMOTR, COURSE_CAKE_END}
        for index in ipairs(course_ids) do
            local current_y = course_text_base_y + course_text_increment_y * (index - 1)
            local course = course_ids[index]
            render_course_values(course, course_text_x, current_y)
            render_in_current_level(course_text_x, current_y, course)
        end
    end

    -- Render warning text
    do
        local text_x = MAIN_RECT_MID_X - 80
        local text_y = (MAIN_RECT_Y + MAIN_RECT_HEIGHT) - 35
        local message = "All romhacks are different"
        local message2 = "The star count may be inaccurate"
        djui_hud_set_color(255, 255, 255, 255)
        djui_hud_set_font(FONT_ALIASED)
        djui_hud_print_text(message, text_x, text_y, 0.3)
        djui_hud_print_text(message2, text_x, text_y + 10, 0.3)
    end
end

local function star_display_chat_command()
    star_display_shown = true
    return true
end

local infoMsgSent = false

function on_mario_update(m)
    if m.playerIndex == 0 then
		if infoMsgSent == false then
            djui_chat_message_create("\\#ff8080\\This 24/7 server is always online (available anytime)!")
			djui_chat_message_create("\\#ffff40\\If you encounter bugs or need the save file to be reset (if already complete), contact \\#ff8040\\izeplayz \\#ffff40\\on Discord via DM or ping me on the official Discord server!")
			djui_chat_message_create("\\#40ffff\\Use the \\#40ff40\\/stars \\#40ffff\\command to see which stars (including secret stars) have already been collected and which stars are still missing!")
 			infoMsgSent = true
		end
	end
end

hook_event(HOOK_MARIO_UPDATE, on_mario_update)
hook_event(HOOK_ON_HUD_RENDER, hud_render)
hook_chat_command("stars", "| Shows the Star Display menu", star_display_chat_command)

camera_romhack_allow_dpad_usage(1)