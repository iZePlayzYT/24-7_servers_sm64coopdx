-- name: Different Red Coins Requirements
-- description: Instead of having to get 8 red coins to get a star in each level, Now the levels will have a different requirements for the red coin stars \n\nfeel free to use it for romhacks! \n\nCustom Red Coin Star Behaviors by Sunk. \n\nMod by JairoThePlumber

---@param obj Object
function bhv_custom_red_coin_star_loop(obj)
	if gNetworkPlayers[0].currLevelNum == LEVEL_COTMC then
    if obj.oHiddenStarTriggerCounter >= gMarioStates[0].area.numRedCoins - 40 then
        obj.oAction = 1
	end
end
end


-- These both need to be changed, though they share a lot of the same code so the function can be reused
hook_behavior(id_bhvHiddenRedCoinStar, OBJ_LIST_LEVEL, false, nil, bhv_custom_red_coin_star_loop)
hook_behavior(id_bhvBowserCourseRedCoinStar, OBJ_LIST_LEVEL, false, nil, bhv_custom_red_coin_star_loop)