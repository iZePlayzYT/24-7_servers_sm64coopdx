-- name: No Lives
-- description: Removes Lives from the game, disables the Lives Counter and makes all 1-Up Mushrooms restore the player to full Health instead of giving extra lives.


-----FUNCTIONS-----
function on_hud_render()
	if (not hud_is_hidden()) then
		local hudDisplayFlags = hud_get_value(HUD_DISPLAY_FLAGS)
		hud_set_value(HUD_DISPLAY_FLAGS, hudDisplayFlags & ~HUD_DISPLAY_FLAGS_LIVES)
	end
end

function mario_inf_lives(m)
	if m.numLives < 4 then
		m.numLives = 4
	end
	gLevelValues.mushroom1UpHeal = 1
	gLevelValues.numCoinsToLife = 999
end
-----HOOKS-----
hook_event(HOOK_ON_HUD_RENDER, on_hud_render)
hook_event(HOOK_MARIO_UPDATE, mario_inf_lives)