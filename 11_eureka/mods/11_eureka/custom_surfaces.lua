----- Original Code from SR 6 -----

SEQ_BOO = 0x57
SEQ_GRASS = 0x2D

function play_music_if_not_yet(seq)
    local cur = get_current_background_music()
    if cur ~= seq and cur-1024 ~= SEQ_EVENT_POWERUP and cur-1024 ~= SEQ_EVENT_METAL_CAP then
        stop_background_music(cur)
        set_background_music(0, seq, 0)
    end
end

    hook_event(HOOK_MARIO_UPDATE, function (m)
 ---@type MarioState
 local m = gMarioStates[0]
        if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_COURTYARD then
            if m.floor.type == 27 then
                play_music_if_not_yet(SEQ_GRASS)
            elseif m.floor.type == 28 then
                play_music_if_not_yet(SEQ_BOO)
            end
        end
        end)