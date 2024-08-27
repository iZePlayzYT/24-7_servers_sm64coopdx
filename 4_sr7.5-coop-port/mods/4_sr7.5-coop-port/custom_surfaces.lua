-- Created by Sunk

-------------------------------------------
----------List of custom surfaces----------
-------------------------------------------
--[[
    Surfaces:
    0x2 - Firsty wall
    0x6 - Wide angle wall
    0x7 - Bounce floor/wall
    0x8 - Ceil-bonk wall
    0xC - Fast floor
    0xF - Hover
    0x10 - Pull
    0x11 - Free movement
    0x17
    0x18
    0x19
    0x1F
    0x20
    0x2B
    0x31
    0x39
    0x3A
    0x3B
    0x3C
    0x3D
    0x3E
    0x3F
    0x40
    ... and a lot more, but I don't think I even need this much
]]



----------------
-----Switches---
----------------


SEQ_CAVE = 0x29
SEQ_ORANGE = 0x08
SEQ_FIRE = 0x35
SEQ_MANSION = 0x36
SEQ_CRYPT = 0x37
SEQ_DESERT = 0x2D
SEQ_TEMPLE = 0x2E
SEQ_PLANTS = 0x2F
SEQ_OUTSIDE = 0x3C
SEQ_INSIDE = 0x38
SEQ_TROLL = 0x06
SEQ_TIME = 0x3F
SEQ_NIGHT = 0x40
SEQ_WAKATI_OUT = 0x30
SEQ_WAKATI_IN = 0x31
SEQ_DORCHAWIGGLER = 0x2C

function play_music_if_not_yet(seq)
    local cur = get_current_background_music()
    if cur ~= seq and cur-1024 ~= SEQ_EVENT_POWERUP and cur-1024 ~= SEQ_EVENT_METAL_CAP and cur-1024 ~= SEQ_CRYPT then
        stop_background_music(cur)
        set_background_music(0, seq, 0)
    end
end
hook_event(HOOK_MARIO_UPDATE, function (m)
    if m.playerIndex ~= 0 then return end
    if gNetworkPlayers[0].currLevelNum == LEVEL_BBH then
        if m.floor and m.floor.type == 28 then
            play_music_if_not_yet(SEQ_ORANGE)
        end
    end
    end) 

    hook_event(HOOK_MARIO_UPDATE, function (m)
        if m.playerIndex ~= 0 then return end
        if gNetworkPlayers[0].currLevelNum == LEVEL_LLL then
            if m.floor and m.floor.type == 28 then
                play_music_if_not_yet(SEQ_FIRE)
            end
        end
        end)    

        hook_event(HOOK_MARIO_UPDATE, function (m)
            if m.playerIndex ~= 0 then return end
            if gNetworkPlayers[0].currLevelNum == LEVEL_SSL then
                if m.floor and m.floor.type == 27  then
                    play_music_if_not_yet(SEQ_MANSION)
                elseif m.floor.type == 28 then
                    play_music_if_not_yet(SEQ_CRYPT)
                end
            end
            end)    

            hook_event(HOOK_MARIO_UPDATE, function (m)
                if m.playerIndex ~= 0 then return end
                if gNetworkPlayers[0].currLevelNum == LEVEL_DDD then
                    if m.floor.type == 29 then
                        play_music_if_not_yet(SEQ_DESERT)
                    elseif m.floor.type == 21 then
                        play_music_if_not_yet(SEQ_TEMPLE)
                    elseif m.floor.type == 28 then
                        play_music_if_not_yet(SEQ_PLANTS)
                    end
                end
                end)    
    

                hook_event(HOOK_MARIO_UPDATE, function (m)
                    if m.playerIndex ~= 0 then return end
                    if gNetworkPlayers[0].currLevelNum == LEVEL_SL then
                        if m.floor.type == 21 then
                            play_music_if_not_yet(SEQ_INSIDE)
                        elseif m.floor.type == 29 then
                            play_music_if_not_yet(SEQ_TROLL)
                        elseif m.floor.type == 27 then
                            play_music_if_not_yet(SEQ_OUTSIDE)
                        end
                    end
                    end)    

                    hook_event(HOOK_MARIO_UPDATE, function (m)
                        if m.playerIndex ~= 0 then return end
                        if gNetworkPlayers[0].currLevelNum == LEVEL_WDW then
                            if m.floor.type == 27 then
                                play_music_if_not_yet(SEQ_TIME)
                            elseif m.floor.type == 28 then
                                play_music_if_not_yet(SEQ_NIGHT)
                            end
                        end
                        end)    

                        hook_event(HOOK_MARIO_UPDATE, function (m)
                            if m.playerIndex ~= 0 then return end
                            if gNetworkPlayers[0].currLevelNum == LEVEL_TTC then
                                if m.floor.type == 27 then
                                    play_music_if_not_yet(SEQ_WAKATI_OUT)
                                elseif m.floor.type == 21 then
                                    play_music_if_not_yet(SEQ_WAKATI_IN)
                                end
                            end
                            end)    
    
hook_event(HOOK_MARIO_UPDATE, function (m)
    if m.playerIndex ~= 0 then return end
    if gNetworkPlayers[0].currLevelNum == LEVEL_BOWSER_2 then
        if m.floor and m.floor.type == 27 then
            play_music_if_not_yet(SEQ_DORCHAWIGGLER)
        end
    end
    end) 