SEQ_EVENT_BOSS = 0x16

function play_music_if_not_yet(seq)
    local cur = get_current_background_music()
    if cur ~= seq and cur-1024 ~= SEQ_EVENT_POWERUP and cur-1024 ~= SEQ_EVENT_METAL_CAP then
        stop_background_music(cur)
        set_background_music(0, seq, 0)
    end
end

    hook_event(HOOK_MARIO_UPDATE, function (m)
        if gNetworkPlayers[0].currLevelNum == LEVEL_JRB and gNetworkPlayers[0].currAreaIndex == 2 then
            if m.floor.type == 35 and m.pos.y < m.floorHeight+4060 then
                play_music_if_not_yet(SEQ_EVENT_BOSS)
            end
        end
        end)

