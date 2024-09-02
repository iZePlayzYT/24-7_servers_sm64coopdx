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