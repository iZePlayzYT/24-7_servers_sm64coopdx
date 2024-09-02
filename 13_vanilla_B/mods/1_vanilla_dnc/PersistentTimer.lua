-- name: Persistent Timer
-- description: A timer that saves its progress and resumes automatically after a server restart, ensuring uninterrupted tracking.

gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER = nil

function on_hud_render()
	if gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER ~= nil then
		djui_hud_set_resolution(RESOLUTION_N64)
	
		local seconds = math.floor(gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER / 30)
		local sDays = string.format("%.f", math.floor(seconds/86400));
		local sHours = string.format("%02.f", math.floor(seconds/3600 - (sDays*24)));
		local sMinutes = string.format("%02.f", math.floor(seconds/60 - (sDays*60*24) - (sHours*60)));
		local sSeconds = string.format("%02.f", math.floor(seconds - sDays*86400 - sHours*3600 - sMinutes*60));
			
		local text = sDays..":"..sHours..":"..sMinutes..":"..sSeconds
		local scale = 0.50
		local screenWidth = djui_hud_get_screen_width()
		local width = djui_hud_measure_text(text) * scale
		local x = (screenWidth - width) / 2.0
		local y = 0
	
		local background = 0.0
	
		djui_hud_set_color(255 * background, 0, 0, 128);
		djui_hud_render_rect(x - 6, y, width + 12, 16);
	
		djui_hud_set_color(255, 255, 255, 255);
		djui_hud_print_text(text, x, y, scale);
	end
end

function on_update()
	if network_is_server() then
		local save_variable = "timerFramesSave" .. tostring(get_current_save_file_num())
		if gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER == nil then
			if mod_storage_load(save_variable) == nil then
				mod_storage_save(save_variable, "0")
			end
			gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER = tonumber(mod_storage_load(save_variable))
		end

		if gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER ~= nil then
			local connectedCount = 0
			for i=0,(MAX_PLAYERS-1) do
				if gNetworkPlayers[i].connected then
					connectedCount = connectedCount + 1
				end
			end
			if connectedCount > 1 then
				gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER = gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER + 1
				if gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER % 150 == 0 then
					mod_storage_save(save_variable, tostring(gGlobalSyncTable.G_SPEEDRUNTIMER_TIMER_FRAME_COUNTER))
				end
			end
		end
	end
end

hook_event(HOOK_ON_HUD_RENDER, on_hud_render)
hook_event(HOOK_UPDATE, on_update)
