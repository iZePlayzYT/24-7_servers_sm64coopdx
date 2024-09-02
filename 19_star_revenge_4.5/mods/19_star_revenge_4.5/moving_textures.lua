-- Moving Textures (WaterBoxes)
--   Every movtext type is set to 1 (normal water texture)
--   If you want to configure and setup other water type, change the value here

local courses = {
    ["bob"] = LEVEL_BOB,
    ["wf"] = LEVEL_WF,
    ["jrb"] = LEVEL_JRB,
    ["ccm"] = LEVEL_CCM,
    ["bbh"] = LEVEL_BBH,
    ["hmc"] = LEVEL_HMC,
    ["lll"] = LEVEL_LLL,
    ["ssl"] = LEVEL_SSL,
    ["ddd"] = LEVEL_DDD,
    ["sl"] = LEVEL_SL,
    ["wdw"] = LEVEL_WDW,
    ["ttm"] = LEVEL_TTM,
    ["thi"] = LEVEL_THI,
    ["ttc"] = LEVEL_TTC,
    ["rr"] = LEVEL_RR,
    ["totwc"] = LEVEL_TOTWC,
    ["vcutm"] = LEVEL_VCUTM,
    ["cotmc"] = LEVEL_COTMC,
    ["bitdw"] = LEVEL_BITDW,
    ["bitfs"] = LEVEL_BITFS,
    ["bits"] = LEVEL_BITS,
    ["sa"] = LEVEL_SA,
    ["pss"] = LEVEL_PSS,
    ["wmotr"] = LEVEL_WMOTR,
    ["ending"] = LEVEL_ENDING,
    ["bowser_1"] = LEVEL_BOWSER_1,
    ["bowser_2"] = LEVEL_BOWSER_2,
    ["bowser_3"] = LEVEL_BOWSER_3,
    ["castle_grounds"] = LEVEL_CASTLE_GROUNDS,
    ["castle_inside"] = LEVEL_CASTLE,
    ["castle_courtyard"] = LEVEL_CASTLE_COURTYARD,
}

for key, value in pairs(courses) do
    for i = 0, 2 do
        local text = key .. "_1_Movtex_" .. tostring(i)
        movtexqc_register(text, value, 1, i)
    end
end

-- Scroll Textures
--   Uncomment and replace <id>, <offset> and <count> with the proper values
--   if you want to have scroll textures in your mod.
--[[
add_scroll_target(<id>, "VB_bbh_1_0xe0373b0", <offset>, <count>)
add_scroll_target(<id>, "VB_bbh_1_0xe0a0d10", <offset>, <count>)
add_scroll_target(<id>, "VB_bbh_1_0xe036ff0", <offset>, <count>)
add_scroll_target(<id>, "VB_bbh_1_0xe0a1b20", <offset>, <count>)
add_scroll_target(<id>, "VB_ccm_1_0xe060e50", <offset>, <count>)
add_scroll_target(<id>, "VB_ccm_1_0xe02f8f0", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe00af90", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe009640", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe007fc0", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe006850", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe010030", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe00e8c0", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe00d060", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_inside_1_0xe00b8f0", <offset>, <count>)
add_scroll_target(<id>, "VB_hmc_1_0xe036b00", <offset>, <count>)
add_scroll_target(<id>, "VB_hmc_1_0xe0352a0", <offset>, <count>)
add_scroll_target(<id>, "VB_hmc_1_0xe033b30", <offset>, <count>)
add_scroll_target(<id>, "VB_hmc_1_0xe07d000", <offset>, <count>)
add_scroll_target(<id>, "VB_hmc_1_0xe0404c0", <offset>, <count>)
add_scroll_target(<id>, "VB_hmc_1_0xe03ed50", <offset>, <count>)
add_scroll_target(<id>, "VB_bob_1_0xe01fa20", <offset>, <count>)
add_scroll_target(<id>, "VB_sl_1_0xe0824a0", <offset>, <count>)
add_scroll_target(<id>, "VB_sl_1_0xe044d30", <offset>, <count>)
add_scroll_target(<id>, "VB_sl_1_0xe044010", <offset>, <count>)
add_scroll_target(<id>, "VB_wdw_1_0xe03b030", <offset>, <count>)
add_scroll_target(<id>, "VB_wdw_1_0xe01d210", <offset>, <count>)
add_scroll_target(<id>, "VB_jrb_1_0xe027810", <offset>, <count>)
add_scroll_target(<id>, "VB_thi_1_0xe0cc500", <offset>, <count>)
add_scroll_target(<id>, "VB_thi_1_0xe0a0a90", <offset>, <count>)
add_scroll_target(<id>, "VB_thi_1_0xe09f320", <offset>, <count>)
add_scroll_target(<id>, "VB_thi_1_0xe0257f0", <offset>, <count>)
add_scroll_target(<id>, "VB_thi_1_0xe037b80", <offset>, <count>)
add_scroll_target(<id>, "VB_thi_1_0xe021fb0", <offset>, <count>)
add_scroll_target(<id>, "VB_ttc_1_0xe021f40", <offset>, <count>)
add_scroll_target(<id>, "VB_rr_1_0xe02fb50", <offset>, <count>)
add_scroll_target(<id>, "VB_rr_1_0xe02df30", <offset>, <count>)
add_scroll_target(<id>, "VB_castle_grounds_1_0xe039210", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe060a50", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe036660", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe034e00", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe033690", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe05f2e0", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe032880", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe031f20", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe0307b0", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe02ef50", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe02d7e0", <offset>, <count>)
add_scroll_target(<id>, "VB_bitdw_1_0xe02d600", <offset>, <count>)
add_scroll_target(<id>, "VB_bitfs_1_0xe028300", <offset>, <count>)
add_scroll_target(<id>, "VB_bitfs_1_0xe0283f0", <offset>, <count>)
add_scroll_target(<id>, "VB_bitfs_1_0xe07a830", <offset>, <count>)
add_scroll_target(<id>, "VB_sa_1_0xe05b520", <offset>, <count>)
add_scroll_target(<id>, "VB_sa_1_0xe03acd0", <offset>, <count>)
add_scroll_target(<id>, "VB_bits_1_0xe00e0b0", <offset>, <count>)
add_scroll_target(<id>, "VB_bits_1_0xe0173e0", <offset>, <count>)
add_scroll_target(<id>, "VB_bits_1_0xe00d390", <offset>, <count>)
add_scroll_target(<id>, "VB_lll_1_0xe07b970", <offset>, <count>)
add_scroll_target(<id>, "VB_lll_1_0xe019bd0", <offset>, <count>)
add_scroll_target(<id>, "VB_ddd_1_0xe057b10", <offset>, <count>)
add_scroll_target(<id>, "VB_ddd_1_0xe036b40", <offset>, <count>)
add_scroll_target(<id>, "VB_ending_1_0xe01b3a0", <offset>, <count>)
add_scroll_target(<id>, "VB_ending_1_0xe097f90", <offset>, <count>)
add_scroll_target(<id>, "VB_cotmc_1_0xe00eb40", <offset>, <count>)
add_scroll_target(<id>, "VB_cotmc_1_0xe00ab80", <offset>, <count>)
add_scroll_target(<id>, "VB_cotmc_1_0xe009410", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe05a980", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe00c050", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe03d5b0", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe030a40", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe01f010", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe022760", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe023de0", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe020690", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe0586d0", <offset>, <count>)
add_scroll_target(<id>, "VB_totwc_1_0xe056f60", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe0277e0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe025f80", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe03c0f0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe033bd0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe01b5d0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe0203a0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe01ec30", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe01d3d0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_1_1_0xe01bc60", <offset>, <count>)
add_scroll_target(<id>, "VB_wmotr_1_0xe0396e0", <offset>, <count>)
add_scroll_target(<id>, "VB_wmotr_1_0xe028430", <offset>, <count>)
add_scroll_target(<id>, "VB_wmotr_1_0xe027da0", <offset>, <count>)
add_scroll_target(<id>, "VB_wmotr_1_0xe036170", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_2_1_0xe012740", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_2_1_0xe01c010", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_2_1_0xe014ae0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_3_1_0xe0090b0", <offset>, <count>)
add_scroll_target(<id>, "VB_bowser_3_1_0xe004010", <offset>, <count>)
--]]
