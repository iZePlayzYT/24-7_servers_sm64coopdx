local add_scroll_target = add_scroll_target --- Thanks Er1ck!


local castle_inside_1_scroll = false
local castle_inside_2_scroll = false
local castle_inside_3_scroll = false

local bbh_1_scroll = false
local bbh_2_scroll = false
local bbh_3_scroll = false

local ccm_1_scroll = false
local ccm_2_scroll = false
local ccm_3_scroll = false

local hmc_1_scroll = false
local hmc_2_scroll = false

local ssl_1_scroll = false

local bob_1_scroll = false
local bob_2_scroll = false

local wf_1_scroll = false
local wf_2_scroll = false
local wf_3_scroll = false
local wf_4_scroll = false

local sl_1_scroll = false
local sl_2_scroll = false

local jrb_1_scroll = false
local jrb_2_scroll = false
local jrb_3_scroll = false

local thi_1_scroll = false

local ttc_1_scroll = false

local rr_1_scroll = false

local castle_grounds_1_scroll = false
local castle_grounds_2_scroll = false
local castle_grounds_3_scroll = false

local bitdw_1_scroll = false

local vcutm_1_scroll = false
local vcutm_2_scroll = false

local bitfs_1_scroll = false

local sa_1_scroll = false

local bits_1_scroll = false

local lll_1_scroll = false
local lll_2_scroll = false

local ddd_1_scroll = false
local ddd_3_scroll = false

local castle_courtyard_1_scroll = false
local castle_courtyard_4_scroll = false

local pss_1_scroll = false

local cotmc_1_scroll = false

local totwc_1_scroll = false

local bowser_1_1_scroll = false

local wmotr_1_scroll = false
local wmotr_2_scroll = false
local wmotr_3_scroll = false

local bowser_2_1_scroll = false

local bowser_3_1_scroll = false

local ttm_1_scroll = false
local ttm_2_scroll = false


local function cg1_scrolls()
	local np = gNetworkPlayers[0]
    local m = gMarioStates[0]

    if m.playerIndex ~= 0 then return end

	if np.currLevelNum == LEVEL_CASTLE_GROUNDS and np.currAreaIndex == 1 then
		if castle_grounds_1_scroll == false then
			add_scroll_target(83, "VB_castle_grounds_1_0xe025e90", 0, 11) -- Start VB
			add_scroll_target(83, "VB_castle_grounds_1_0xe025f40", 0, 11)
			add_scroll_target(83, "VB_castle_grounds_1_0xe025ff0", 0, 11)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0260a0", 0, 11)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026150", 0, 11)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026200", 0, 11)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0262b0", 0, 8)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0269f0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026a80", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026af0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026b60", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026bd0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026c40", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026cb0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026d20", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026d90", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026e00", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026e70", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026ee0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026f50", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe026fc0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027030", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0270c0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027130", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0271a0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027210", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027280", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0272f0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027360", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0273d0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027460", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0274d0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027540", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0275b0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027620", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027690", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027700", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027770", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027800", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027870", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0278e0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027950", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0279c0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027a30", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027ac0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027b30", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027ba0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027c30", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027ca0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027d30", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027da0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027e10", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027e80", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027ef0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027f60", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe027ff0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028060", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0280d0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028140", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0281d0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028240", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0282d0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028340", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0283d0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028440", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0284d0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028560", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0285f0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028680", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028710", 0, 8)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028790", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028800", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028870", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0288e0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028950", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0289c0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028a30", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028aa0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028b10", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028b80", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028c10", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028c80", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028cf0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028d60", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028df0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028e60", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028ef0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028f60", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe028fd0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029060", 0, 8)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0290e0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029150", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0291c0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029230", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0292c0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029330", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0293a0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029410", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029480", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029510", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029580", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0295f0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029660", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0296d0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029760", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0297d0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029840", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0298b0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029920", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe0299b0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029a20", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029a90", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029b00", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029b70", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029be0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029c50", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029cc0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029d30", 0, 3)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029d60", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029df0", 0, 8)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029e70", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029ee0", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029f50", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe029fc0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe02a050", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe02a0e0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe02a170", 0, 7)
			add_scroll_target(83, "VB_castle_grounds_1_0xe02a1e0", 0, 9)
			add_scroll_target(83, "VB_castle_grounds_1_0xe02a270", 0, 5)
			-- Count: 983

			add_scroll_target(84, "VB_castle_grounds_1_0xe039f20", 0, 11) -- Start VB
			add_scroll_target(84, "VB_castle_grounds_1_0xe039fd0", 0, 9)
			add_scroll_target(84, "VB_castle_grounds_1_0xe03a060", 0, 11)
			add_scroll_target(84, "VB_castle_grounds_1_0xe03a110", 0, 11)
			add_scroll_target(84, "VB_castle_grounds_1_0xe03a1c0", 0, 11)
			add_scroll_target(84, "VB_castle_grounds_1_0xe03a270", 0, 9)
			add_scroll_target(84, "VB_castle_grounds_1_0xe03a300", 0, 8)
			-- Count: 70

			add_scroll_target(85, "VB_castle_grounds_1_0xe056800", 0, 8) -- Start VB
			add_scroll_target(85, "VB_castle_grounds_1_0xe056880", 0, 8)
			-- Count: 16

			add_scroll_target(86, "VB_castle_grounds_1_0xe056900", 0, 9) -- Start VB
			add_scroll_target(86, "VB_castle_grounds_1_0xe056990", 0, 9)
			add_scroll_target(86, "VB_castle_grounds_1_0xe056a20", 0, 9)
			add_scroll_target(86, "VB_castle_grounds_1_0xe056ab0", 0, 11)
			add_scroll_target(86, "VB_castle_grounds_1_0xe056b60", 0, 11)
			add_scroll_target(86, "VB_castle_grounds_1_0xe056c10", 0, 3)
			-- Count: 52

			add_scroll_target(87, "VB_castle_grounds_1_0xe065f50", 0, 11) -- Start VB
			add_scroll_target(87, "VB_castle_grounds_1_0xe066000", 0, 11)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0660b0", 0, 11)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066160", 0, 11)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066210", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0662a0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066330", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0663b0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066420", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066490", 0, 10)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066530", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0665a0", 0, 3)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0665d0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066650", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0666c0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066740", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0667d0", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066820", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066890", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066900", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066980", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0669f0", 0, 10)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066a90", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066af0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066b60", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066bd0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066c60", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066cd0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066d40", 0, 4)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066d80", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066df0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066e80", 0, 10)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066f20", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe066fb0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067020", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0670b0", 0, 10)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067150", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0671e0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067250", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0672c0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067340", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0673c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067430", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0674c0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067550", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0675c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067630", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0676b0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067720", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067790", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067820", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067890", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067900", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067990", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067a20", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067a80", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067af0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067b60", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067bd0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067c40", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067cd0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067d40", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067db0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067e20", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067eb0", 0, 11)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067f60", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe067fd0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068040", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0680d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068140", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0681b0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068220", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0682b0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068330", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0683c0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068440", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0684a0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068510", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068580", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068610", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068680", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0686f0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068760", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0687d0", 0, 4)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068810", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068880", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0688f0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068960", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0689d0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068a50", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068ac0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068b40", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068bd0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068c40", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068cc0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068d50", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068dc0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068e30", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068ec0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068f40", 0, 4)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068f80", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe068ff0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069060", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0690d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069140", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0691d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069240", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0692b0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069320", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069390", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069420", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069490", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069500", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069570", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069600", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069690", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069710", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069780", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0697f0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069860", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0698d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069940", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe0699d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069a40", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069ab0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069b20", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069b90", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069c00", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069c70", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069d00", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069d70", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069de0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069e50", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069ec0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069f30", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe069fa0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a010", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a080", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a0f0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a160", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a1d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a240", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a2b0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a320", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a390", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a400", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a470", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a4e0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a550", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a5c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a630", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a6c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a730", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a7a0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a830", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a8a0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a910", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06a9a0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06aa10", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06aa80", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06aaf0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ab60", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06abd0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ac40", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06acb0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ad20", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06adb0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ae20", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06aeb0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06af20", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06af90", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b000", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b090", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b120", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b1b0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b240", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b2d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b340", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b3b0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b420", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b490", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b500", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b570", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b5e0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b650", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b6c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b730", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b7c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b830", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b8a0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b910", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06b9a0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ba10", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06baa0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bb30", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bba0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bc30", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bcb0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bd20", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bd90", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06be00", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06be90", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bf00", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bf70", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06bfe0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c050", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c0e0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c150", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c1c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c230", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c2a0", 0, 3)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c2d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c340", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c3b0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c440", 0, 11)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c4f0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c580", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c5f0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c660", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c6d0", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c760", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c7f0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c860", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c8d0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c940", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06c9d0", 0, 3)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ca00", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ca90", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cb20", 0, 9)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cbb0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cc30", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cc80", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cce0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cd50", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cdb0", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ce00", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ce70", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06ced0", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cf20", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cfa0", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06cff0", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d040", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d0a0", 0, 8)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d120", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d170", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d1e0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d250", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d2a0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d310", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d380", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d3f0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d460", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d4d0", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d530", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d590", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d600", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d650", 0, 5)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d6a0", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d700", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d760", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d7c0", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d830", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d8a0", 0, 6)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d900", 0, 7)
			add_scroll_target(87, "VB_castle_grounds_1_0xe06d970", 0, 5)
			-- Count: 1957

			add_scroll_target(88, "VB_castle_grounds_1_0xe0442b0", 0, 7) -- Start VB
			add_scroll_target(88, "VB_castle_grounds_1_0xe044320", 0, 5)
			-- Count: 12

			add_scroll_target(89, "VB_castle_grounds_1_0xe07e900", 0, 11) -- Start VB
			add_scroll_target(89, "VB_castle_grounds_1_0xe07e9b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07ea60", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07eb10", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07ebc0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07ec50", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07ecf0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07eda0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07ee50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07ef00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07efb0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f040", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f0f0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f1a0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f250", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f300", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f3b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f460", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f510", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f5c0", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f660", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f710", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f7c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f870", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f920", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07f9d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07fa80", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07fb30", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07fbe0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07fc90", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07fd40", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07fdf0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07fea0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe07ff50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080000", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0800b0", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080150", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080200", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0802b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080360", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080410", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0804c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080570", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080620", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0806d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080780", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080830", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0808e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080990", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080a40", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080af0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080ba0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080c50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080d00", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080da0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080e50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080f00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe080fb0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081060", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081110", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0811c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081270", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081320", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0813d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081480", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081530", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0815e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081690", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081730", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0817e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081890", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081940", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0819f0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081aa0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081b50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081c00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081cb0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081d60", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081e10", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081ec0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe081f50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082000", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0820b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082160", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082210", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0822c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082370", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082420", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0824d0", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082570", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082620", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0826d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082780", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082830", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0828e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082990", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082a40", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082af0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082ba0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082c50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082d00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082db0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082e60", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082f10", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe082fb0", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083050", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083100", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0831b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083260", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083310", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0833c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083470", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083520", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0835d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083680", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083730", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0837e0", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083880", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083930", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0839e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083a90", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083b40", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083bf0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083ca0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083d50", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083df0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083ea0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe083f50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084000", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0840b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084160", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084210", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0842c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084370", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084420", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0844d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084580", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084630", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0846e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084790", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084840", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0848d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084980", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084a30", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084ae0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084b90", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084c40", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084cf0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084da0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084e50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084f00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe084fb0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085060", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085110", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0851c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085270", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085320", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0853d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085480", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085530", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0855e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085690", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085740", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0857f0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0858a0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085950", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085a00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085ab0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085b60", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085c10", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085cc0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085d70", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085e20", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085ed0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe085f80", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086030", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0860d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086180", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086230", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0862c0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086350", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0863e0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086470", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086520", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0865b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086660", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0866f0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086780", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086810", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0868c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086970", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086a20", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086ad0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086b80", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086bf0", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086c60", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086cf0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086d80", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086e10", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086e80", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086f10", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe086fa0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087030", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0870c0", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087130", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0871a0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087230", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0872e0", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087350", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0873c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087470", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087500", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087570", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087620", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0876d0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087760", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0877d0", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087860", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0878f0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0879a0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087a50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087b00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087bb0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087c60", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087d10", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087dc0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087e70", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087f20", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe087fd0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088080", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088130", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0881e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088290", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088330", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0883e0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088490", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088540", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0885f0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0886a0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088750", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088800", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0888b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088960", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088a10", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088ac0", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088b60", 0, 10)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088c00", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088cb0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088d60", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088e10", 0, 9)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088ea0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe088f50", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe089000", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0890b0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe089160", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe089210", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0892c0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe089370", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe089420", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0894d0", 0, 11)
			add_scroll_target(89, "VB_castle_grounds_1_0xe089580", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0895f0", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe089660", 0, 7)
			add_scroll_target(89, "VB_castle_grounds_1_0xe0896d0", 0, 7)
			-- Count: 2788
			castle_grounds_1_scroll = true
		end
	end
end

local function elder_scrolls(m)
	local np = gNetworkPlayers[0]
    local m = gMarioStates[0]

    if m.playerIndex ~= 0 then return end

	if np.currLevelNum == LEVEL_CASTLE and np.currAreaIndex == 1 then
		if castle_inside_1_scroll == false then
			add_scroll_target(0, "VB_castle_inside_1_0xe01eec0", 0, 9) -- Start VB
			add_scroll_target(0, "VB_castle_inside_1_0xe01ef50", 0, 11)
			add_scroll_target(0, "VB_castle_inside_1_0xe01f000", 0, 11)
			add_scroll_target(0, "VB_castle_inside_1_0xe01f0b0", 0, 11)
			add_scroll_target(0, "VB_castle_inside_1_0xe01f160", 0, 7)
			-- Count: 49

			add_scroll_target(1, "VB_castle_inside_1_0xe02c610", 0, 7) -- Start VB
			add_scroll_target(1, "VB_castle_inside_1_0xe02c680", 0, 9)
			add_scroll_target(1, "VB_castle_inside_1_0xe02c710", 0, 7)
			add_scroll_target(1, "VB_castle_inside_1_0xe02c780", 0, 9)
			add_scroll_target(1, "VB_castle_inside_1_0xe02c810", 0, 11)
			add_scroll_target(1, "VB_castle_inside_1_0xe02c8c0", 0, 11)
			add_scroll_target(1, "VB_castle_inside_1_0xe02c970", 0, 11)
			add_scroll_target(1, "VB_castle_inside_1_0xe02ca20", 0, 11)
			add_scroll_target(1, "VB_castle_inside_1_0xe02cad0", 0, 11)
			add_scroll_target(1, "VB_castle_inside_1_0xe02cb80", 0, 11)
			add_scroll_target(1, "VB_castle_inside_1_0xe02cc30", 0, 8)
			-- Count: 106
			castle_inside_1_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_CASTLE and np.currAreaIndex == 2 then
		if castle_inside_2_scroll == false then
			add_scroll_target(2, "VB_castle_inside_2_0xe00fb30", 0, 11) -- Start VB
			add_scroll_target(2, "VB_castle_inside_2_0xe00fbe0", 0, 7)
			add_scroll_target(2, "VB_castle_inside_2_0xe00fc50", 0, 10)
			add_scroll_target(2, "VB_castle_inside_2_0xe00fcf0", 0, 9)
			add_scroll_target(2, "VB_castle_inside_2_0xe00fd80", 0, 7)
			add_scroll_target(2, "VB_castle_inside_2_0xe00fdf0", 0, 13)
			add_scroll_target(2, "VB_castle_inside_2_0xe00fec0", 0, 7)
			add_scroll_target(2, "VB_castle_inside_2_0xe00ff30", 0, 13)
			add_scroll_target(2, "VB_castle_inside_2_0xe010000", 0, 10)
			add_scroll_target(2, "VB_castle_inside_2_0xe0100a0", 0, 10)
			add_scroll_target(2, "VB_castle_inside_2_0xe010140", 0, 9)
			add_scroll_target(2, "VB_castle_inside_2_0xe0101d0", 0, 9)
			add_scroll_target(2, "VB_castle_inside_2_0xe010260", 0, 11)
			add_scroll_target(2, "VB_castle_inside_2_0xe010310", 0, 10)
			add_scroll_target(2, "VB_castle_inside_2_0xe0103b0", 0, 11)
			add_scroll_target(2, "VB_castle_inside_2_0xe010460", 0, 9)
			add_scroll_target(2, "VB_castle_inside_2_0xe0104f0", 0, 7)
			-- Count: 163

			add_scroll_target(3, "VB_castle_inside_2_0xe0173d0", 0, 9) -- Start VB
			add_scroll_target(3, "VB_castle_inside_2_0xe017460", 0, 9)
			add_scroll_target(3, "VB_castle_inside_2_0xe0174f0", 0, 11)
			add_scroll_target(3, "VB_castle_inside_2_0xe0175a0", 0, 9)
			add_scroll_target(3, "VB_castle_inside_2_0xe017630", 0, 11)
			add_scroll_target(3, "VB_castle_inside_2_0xe0176e0", 0, 10)
			add_scroll_target(3, "VB_castle_inside_2_0xe017780", 0, 11)
			add_scroll_target(3, "VB_castle_inside_2_0xe017830", 0, 9)
			add_scroll_target(3, "VB_castle_inside_2_0xe0178c0", 0, 9)
			add_scroll_target(3, "VB_castle_inside_2_0xe017950", 0, 7)
			-- Count: 95
			castle_inside_2_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_CASTLE and np.currAreaIndex == 3 then
		if castle_inside_3_scroll == false then
			add_scroll_target(4, "VB_castle_inside_3_0xe00bdc0", 0, 7) -- Start VB
			add_scroll_target(4, "VB_castle_inside_3_0xe00be30", 0, 11)
			add_scroll_target(4, "VB_castle_inside_3_0xe00bee0", 0, 7)
			add_scroll_target(4, "VB_castle_inside_3_0xe00bf50", 0, 9)
			add_scroll_target(4, "VB_castle_inside_3_0xe00bfe0", 0, 9)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c070", 0, 11)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c120", 0, 11)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c1d0", 0, 9)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c260", 0, 9)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c2f0", 0, 13)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c3c0", 0, 11)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c470", 0, 9)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c500", 0, 9)
			add_scroll_target(4, "VB_castle_inside_3_0xe00c590", 0, 3)
			-- Count: 128
			castle_inside_3_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_BBH and np.currAreaIndex == 1 then
		if bbh_1_scroll == false then
			add_scroll_target(5, "VB_bbh_1_0xe027ed0", 0, 11) -- Start VB
			add_scroll_target(5, "VB_bbh_1_0xe027f80", 0, 5)
			-- Count: 16

			add_scroll_target(6, "VB_bbh_1_0xe027fd0", 0, 11) -- Start VB
			add_scroll_target(6, "VB_bbh_1_0xe028080", 0, 11)
			add_scroll_target(6, "VB_bbh_1_0xe028130", 0, 11)
			add_scroll_target(6, "VB_bbh_1_0xe0281e0", 0, 11)
			add_scroll_target(6, "VB_bbh_1_0xe028290", 0, 13)
			add_scroll_target(6, "VB_bbh_1_0xe028360", 0, 13)
			-- Count: 70

			add_scroll_target(7, "VB_bbh_1_0xe014ae0", 0, 7) -- Start VB
			add_scroll_target(7, "VB_bbh_1_0xe014b50", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe014c00", 0, 8)
			add_scroll_target(7, "VB_bbh_1_0xe014c80", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe014d30", 0, 10)
			add_scroll_target(7, "VB_bbh_1_0xe014dd0", 0, 7)
			add_scroll_target(7, "VB_bbh_1_0xe034020", 0, 9)
			add_scroll_target(7, "VB_bbh_1_0xe0340b0", 0, 9)
			add_scroll_target(7, "VB_bbh_1_0xe034140", 0, 6)
			add_scroll_target(7, "VB_bbh_1_0xe0341a0", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe034250", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe034300", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe0343b0", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe034460", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe034510", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe0345c0", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe034670", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe034720", 0, 11)
			add_scroll_target(7, "VB_bbh_1_0xe0347d0", 0, 7)
			-- Count: 184

			add_scroll_target(8, "VB_bbh_1_0xe034880", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(9, "VB_bbh_1_0xe034d80", 0, 15) -- Start VB
			add_scroll_target(9, "VB_bbh_1_0xe034e70", 0, 13)
			-- Count: 28

			add_scroll_target(10, "VB_bbh_1_0xe040470", 0, 11) -- Start VB
			add_scroll_target(10, "VB_bbh_1_0xe040520", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe0405d0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040680", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040730", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe0407e0", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe0408b0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040960", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0409f0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe040a80", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040b30", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040be0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040c90", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040d40", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe040e10", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040ec0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe040f70", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe041040", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe0410f0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041180", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041210", 0, 15)
			add_scroll_target(10, "VB_bbh_1_0xe041300", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe0413b0", 0, 15)
			add_scroll_target(10, "VB_bbh_1_0xe0414a0", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe041570", 0, 12)
			add_scroll_target(10, "VB_bbh_1_0xe041630", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0416c0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041750", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0417e0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041870", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041900", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041990", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe041a40", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe041af0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe041ba0", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe041c70", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe041d40", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041dd0", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe041ea0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe041f50", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe041fe0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe042090", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe042120", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe0421f0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe042280", 0, 15)
			add_scroll_target(10, "VB_bbh_1_0xe042370", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe042400", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe0424d0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe042580", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe042610", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe0426c0", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe042730", 0, 8)
			add_scroll_target(10, "VB_bbh_1_0xe0427b0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe042840", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe0428f0", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe0429c0", 0, 15)
			add_scroll_target(10, "VB_bbh_1_0xe042ab0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe042b60", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe042bf0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe042c80", 0, 12)
			add_scroll_target(10, "VB_bbh_1_0xe042d40", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe042df0", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe042ec0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe042f70", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe043000", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe043090", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe043140", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe0431b0", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe043220", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0432b0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe043340", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0433d0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe043460", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe0434d0", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe043540", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0435d0", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe043640", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0436d0", 0, 8)
			add_scroll_target(10, "VB_bbh_1_0xe043750", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe0437c0", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe043870", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe043920", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe0439b0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe043a40", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe043ab0", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe043b20", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe043bd0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe043c60", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe043cd0", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe043d40", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe043df0", 0, 13)
			add_scroll_target(10, "VB_bbh_1_0xe043ec0", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe043f50", 0, 11)
			add_scroll_target(10, "VB_bbh_1_0xe044000", 0, 9)
			add_scroll_target(10, "VB_bbh_1_0xe044090", 0, 7)
			add_scroll_target(10, "VB_bbh_1_0xe044100", 0, 3)
			-- Count: 972
			bbh_1_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_BBH and np.currAreaIndex == 2 then
		if bbh_2_scroll == false then
			add_scroll_target(11, "VB_bbh_2_0xe009ed0", 0, 8) -- Start VB
			-- Count: 8
			bbh_2_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_BBH and np.currAreaIndex == 3 then
		if bbh_3_scroll == false then
			add_scroll_target(12, "VB_bbh_3_0xe00ac40", 0, 11) -- Start VB
			add_scroll_target(12, "VB_bbh_3_0xe00acf0", 0, 15)
			add_scroll_target(12, "VB_bbh_3_0xe00ade0", 0, 13)
			add_scroll_target(12, "VB_bbh_3_0xe00aeb0", 0, 13)
			add_scroll_target(12, "VB_bbh_3_0xe00af80", 0, 11)
			add_scroll_target(12, "VB_bbh_3_0xe00b030", 0, 13)
			add_scroll_target(12, "VB_bbh_3_0xe00b100", 0, 3)
			-- Count: 79
			bbh_3_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_CCM and np.currAreaIndex == 1 then
		if ccm_1_scroll == false then
			add_scroll_target(13, "VB_ccm_1_0xe013060", 0, 13) -- Start VB
			add_scroll_target(13, "VB_ccm_1_0xe013130", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0131e0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe0132b0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013360", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe013430", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0134c0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013570", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013620", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0136d0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013780", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe013810", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0138a0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe013930", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0139c0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe013a50", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe013ae0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013b90", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013c40", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013cf0", 0, 15)
			add_scroll_target(13, "VB_ccm_1_0xe013de0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013e90", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe013f40", 0, 10)
			add_scroll_target(13, "VB_ccm_1_0xe013fe0", 0, 10)
			add_scroll_target(13, "VB_ccm_1_0xe014080", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe014130", 0, 7)
			add_scroll_target(13, "VB_ccm_1_0xe0141a0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe014250", 0, 15)
			add_scroll_target(13, "VB_ccm_1_0xe014340", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe014410", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0144c0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe014550", 0, 15)
			add_scroll_target(13, "VB_ccm_1_0xe014640", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0146d0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe0147a0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe014830", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0148e0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe014990", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe014a20", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe014ad0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe014b60", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe014c10", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe014cc0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe014d70", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe014e00", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe014e90", 0, 12)
			add_scroll_target(13, "VB_ccm_1_0xe014f50", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe014fe0", 0, 7)
			add_scroll_target(13, "VB_ccm_1_0xe015050", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe015120", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0151d0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe015260", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe015310", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0153c0", 0, 7)
			add_scroll_target(13, "VB_ccm_1_0xe015430", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0154e0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe015570", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe015620", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0156d0", 0, 12)
			add_scroll_target(13, "VB_ccm_1_0xe015790", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe015840", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0158d0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe0159a0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe015a30", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe015ae0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe015b90", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe015c40", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe015cd0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe015da0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe015e70", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe015f20", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe015fb0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe016080", 0, 7)
			add_scroll_target(13, "VB_ccm_1_0xe0160f0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0161a0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe016270", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe016320", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0163d0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe016460", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0164f0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe016580", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe016610", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0166c0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe016750", 0, 10)
			add_scroll_target(13, "VB_ccm_1_0xe0167f0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe0168c0", 0, 15)
			add_scroll_target(13, "VB_ccm_1_0xe0169b0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe016a80", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe016b10", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe016be0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe016cb0", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe016d80", 0, 12)
			add_scroll_target(13, "VB_ccm_1_0xe016e40", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe016ef0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe016f80", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe017030", 0, 13)
			add_scroll_target(13, "VB_ccm_1_0xe017100", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0171b0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe017260", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0172f0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0173a0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe017430", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe0174e0", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe017590", 0, 15)
			add_scroll_target(13, "VB_ccm_1_0xe017680", 0, 11)
			add_scroll_target(13, "VB_ccm_1_0xe017730", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0177c0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe017850", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe0178e0", 0, 9)
			add_scroll_target(13, "VB_ccm_1_0xe017970", 0, 8)
			-- Count: 1177

			add_scroll_target(14, "VB_ccm_1_0xe034a60", 0, 11) -- Start VB
			add_scroll_target(14, "VB_ccm_1_0xe034b10", 0, 13)
			add_scroll_target(14, "VB_ccm_1_0xe034be0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe034c70", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe034d00", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe034db0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe034e40", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe034ef0", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe034fa0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035030", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe0350c0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035150", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe035200", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035290", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe035340", 0, 10)
			add_scroll_target(14, "VB_ccm_1_0xe0353e0", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe035490", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe035540", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe0355f0", 0, 10)
			add_scroll_target(14, "VB_ccm_1_0xe035690", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe035740", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe0357f0", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe0358a0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035930", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe0359e0", 0, 10)
			add_scroll_target(14, "VB_ccm_1_0xe035a80", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035b10", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035ba0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035c30", 0, 7)
			add_scroll_target(14, "VB_ccm_1_0xe035ca0", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe035d50", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035de0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe035e70", 0, 11)
			add_scroll_target(14, "VB_ccm_1_0xe035f20", 0, 7)
			add_scroll_target(14, "VB_ccm_1_0xe035f90", 0, 13)
			add_scroll_target(14, "VB_ccm_1_0xe036060", 0, 12)
			add_scroll_target(14, "VB_ccm_1_0xe036120", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe0361b0", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe036240", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe0362d0", 0, 12)
			add_scroll_target(14, "VB_ccm_1_0xe036390", 0, 13)
			add_scroll_target(14, "VB_ccm_1_0xe036460", 0, 9)
			add_scroll_target(14, "VB_ccm_1_0xe0364f0", 0, 8)
			-- Count: 433

			add_scroll_target(15, "VB_ccm_1_0xe036570", 0, 9) -- Start VB
			add_scroll_target(15, "VB_ccm_1_0xe036600", 0, 9)
			add_scroll_target(15, "VB_ccm_1_0xe036690", 0, 13)
			add_scroll_target(15, "VB_ccm_1_0xe036760", 0, 7)
			add_scroll_target(15, "VB_ccm_1_0xe0367d0", 0, 7)
			add_scroll_target(15, "VB_ccm_1_0xe036840", 0, 9)
			add_scroll_target(15, "VB_ccm_1_0xe0368d0", 0, 7)
			add_scroll_target(15, "VB_ccm_1_0xe036940", 0, 9)
			add_scroll_target(15, "VB_ccm_1_0xe0369d0", 0, 9)
			add_scroll_target(15, "VB_ccm_1_0xe036a60", 0, 11)
			add_scroll_target(15, "VB_ccm_1_0xe036b10", 0, 9)
			add_scroll_target(15, "VB_ccm_1_0xe036ba0", 0, 11)
			add_scroll_target(15, "VB_ccm_1_0xe036c50", 0, 11)
			add_scroll_target(15, "VB_ccm_1_0xe036d00", 0, 9)
			add_scroll_target(15, "VB_ccm_1_0xe036d90", 0, 9)
			add_scroll_target(15, "VB_ccm_1_0xe036e20", 0, 11)
			-- Count: 150

			add_scroll_target(16, "VB_ccm_1_0xe047fc0", 0, 15) -- Start VB
			add_scroll_target(16, "VB_ccm_1_0xe0480b0", 0, 3)
			-- Count: 18
			ccm_1_scroll = true
        end
    end

	if np.currLevelNum == LEVEL_CCM and np.currAreaIndex == 2 then
		if ccm_2_scroll == false then
			add_scroll_target(17, "VB_ccm_2_0xe007100", 0, 9) -- Start VB
			add_scroll_target(17, "VB_ccm_2_0xe007190", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007240", 0, 9)
			add_scroll_target(17, "VB_ccm_2_0xe0072d0", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007380", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe007450", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007500", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe0075d0", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe0076a0", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007750", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe007820", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe0078f0", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe0079a0", 0, 7)
			add_scroll_target(17, "VB_ccm_2_0xe007a10", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007ac0", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007b70", 0, 15)
			add_scroll_target(17, "VB_ccm_2_0xe007c60", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007d10", 0, 9)
			add_scroll_target(17, "VB_ccm_2_0xe007da0", 0, 9)
			add_scroll_target(17, "VB_ccm_2_0xe007e30", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe007ee0", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe007fb0", 0, 9)
			add_scroll_target(17, "VB_ccm_2_0xe008040", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe008110", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe0081e0", 0, 11)
			add_scroll_target(17, "VB_ccm_2_0xe008290", 0, 13)
			add_scroll_target(17, "VB_ccm_2_0xe008360", 0, 4)
			-- Count: 298

			add_scroll_target(18, "VB_ccm_2_0xe011660", 0, 11) -- Start VB
			add_scroll_target(18, "VB_ccm_2_0xe011710", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0117c0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011870", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011920", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0119d0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011a80", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011b30", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011be0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011c90", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011d40", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011df0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011ea0", 0, 10)
			add_scroll_target(18, "VB_ccm_2_0xe011f40", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe011ff0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0120a0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012150", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012200", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0122b0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012360", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012410", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0124c0", 0, 13)
			add_scroll_target(18, "VB_ccm_2_0xe012590", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012640", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0126f0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0127a0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012850", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012900", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe0129b0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012a60", 0, 9)
			add_scroll_target(18, "VB_ccm_2_0xe012af0", 0, 11)
			add_scroll_target(18, "VB_ccm_2_0xe012ba0", 0, 11)
			-- Count: 351

			add_scroll_target(19, "VB_ccm_2_0xe012c50", 0, 10) -- Start VB
			add_scroll_target(19, "VB_ccm_2_0xe012cf0", 0, 11)
			-- Count: 21
			ccm_2_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_CCM and np.currAreaIndex == 3 then
		if ccm_3_scroll == false then
			add_scroll_target(20, "VB_ccm_3_0xe00b560", 0, 11) -- Start VB
			add_scroll_target(20, "VB_ccm_3_0xe00b610", 0, 3)
			-- Count: 14
			ccm_3_scroll = true
	    end
	end

	if np.currLevelNum == LEVEL_HMC and np.currAreaIndex == 1 then
		if hmc_1_scroll == false then
			add_scroll_target(21, "VB_hmc_1_0xe03b790", 0, 9) -- Start VB
			add_scroll_target(21, "VB_hmc_1_0xe03b820", 0, 11)
			add_scroll_target(21, "VB_hmc_1_0xe03b8d0", 0, 11)
			add_scroll_target(21, "VB_hmc_1_0xe03b980", 0, 11)
			add_scroll_target(21, "VB_hmc_1_0xe03ba30", 0, 11)
			add_scroll_target(21, "VB_hmc_1_0xe03bae0", 0, 11)
			add_scroll_target(21, "VB_hmc_1_0xe03bb90", 0, 9)
			add_scroll_target(21, "VB_hmc_1_0xe03bc20", 0, 11)
			add_scroll_target(21, "VB_hmc_1_0xe03bcd0", 0, 11)
			add_scroll_target(21, "VB_hmc_1_0xe03bd80", 0, 4)
			-- Count: 99

			add_scroll_target(22, "VB_hmc_1_0xe0458f0", 0, 15) -- Start VB
			add_scroll_target(22, "VB_hmc_1_0xe0459e0", 0, 13)
			add_scroll_target(22, "VB_hmc_1_0xe045ab0", 0, 11)
			add_scroll_target(22, "VB_hmc_1_0xe045b60", 0, 9)
			-- Count: 48

			add_scroll_target(23, "VB_hmc_1_0xe065c00", 0, 11) -- Start VB
			-- Count: 11
			hmc_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_HMC and np.currAreaIndex == 2 then
		if hmc_2_scroll == false then
			add_scroll_target(24, "VB_hmc_2_0xe012f20", 0, 11) -- Start VB
			add_scroll_target(24, "VB_hmc_2_0xe012fd0", 0, 11)
			-- Count: 22

			add_scroll_target(25, "VB_hmc_2_0xe016aa0", 0, 9) -- Start VB
			add_scroll_target(25, "VB_hmc_2_0xe016b30", 0, 11)
			add_scroll_target(25, "VB_hmc_2_0xe016be0", 0, 7)
			-- Count: 27
			hmc_2_scroll = true
		end
    end

	if np.currLevelNum == LEVEL_SSL and np.currAreaIndex == 1 then
		if ssl_1_scroll == false then
			add_scroll_target(26, "VB_ssl_1_0xe0104b0", 0, 15) -- Start VB
			add_scroll_target(26, "VB_ssl_1_0xe0105a0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010650", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010700", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe0107d0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe0108a0", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe010990", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010a40", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010af0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010ba0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe010c70", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010d20", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010dd0", 0, 9)
			add_scroll_target(26, "VB_ssl_1_0xe010e60", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010f10", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe010fc0", 0, 12)
			add_scroll_target(26, "VB_ssl_1_0xe011080", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe011130", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe011200", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe0112b0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe011360", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe011430", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe011520", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe0115f0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe0116c0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe011790", 0, 7)
			add_scroll_target(26, "VB_ssl_1_0xe011800", 0, 9)
			add_scroll_target(26, "VB_ssl_1_0xe011890", 0, 9)
			add_scroll_target(26, "VB_ssl_1_0xe011920", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe011a10", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe011b00", 0, 12)
			add_scroll_target(26, "VB_ssl_1_0xe011bc0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe011c70", 0, 9)
			add_scroll_target(26, "VB_ssl_1_0xe011d00", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe011db0", 0, 9)
			add_scroll_target(26, "VB_ssl_1_0xe011e40", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe011f10", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe011fc0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe012070", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe012120", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe0121d0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe0122a0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe012370", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe012440", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe012530", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe012600", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe0126b0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe012760", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe012830", 0, 9)
			add_scroll_target(26, "VB_ssl_1_0xe0128c0", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe0129b0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe012a80", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe012b30", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe012be0", 0, 9)
			add_scroll_target(26, "VB_ssl_1_0xe012c70", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe012d60", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe012e50", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe012f00", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe012fd0", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe0130c0", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe0131b0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe013280", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe013370", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe013420", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe0134f0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe0135a0", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe013690", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe013760", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe013850", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe013920", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe0139d0", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe013ac0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe013b90", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe013c60", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe013d30", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe013e00", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe013eb0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe013f60", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe014030", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe0140e0", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe014190", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe014240", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe014310", 0, 11)
			add_scroll_target(26, "VB_ssl_1_0xe0143c0", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe0144b0", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe014580", 0, 13)
			add_scroll_target(26, "VB_ssl_1_0xe014650", 0, 15)
			add_scroll_target(26, "VB_ssl_1_0xe014740", 0, 7)
			-- Count: 1072

			add_scroll_target(27, "VB_ssl_1_0xe028360", 0, 11) -- Start VB
			add_scroll_target(27, "VB_ssl_1_0xe028410", 0, 11)
			add_scroll_target(27, "VB_ssl_1_0xe0284c0", 0, 11)
			add_scroll_target(27, "VB_ssl_1_0xe028570", 0, 11)
			add_scroll_target(27, "VB_ssl_1_0xe028620", 0, 8)
			-- Count: 52

			add_scroll_target(28, "VB_ssl_1_0xe028b60", 0, 11) -- Start VB
			add_scroll_target(28, "VB_ssl_1_0xe028c10", 0, 13)
			add_scroll_target(28, "VB_ssl_1_0xe028ce0", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe028d90", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe028e40", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe028ef0", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe028fa0", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe029050", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe029100", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe0291b0", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe029260", 0, 11)
			add_scroll_target(28, "VB_ssl_1_0xe029310", 0, 11)
			-- Count: 134

			add_scroll_target(29, "VB_ssl_1_0xe033090", 0, 13) -- Start VB
			add_scroll_target(29, "VB_ssl_1_0xe033160", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033230", 0, 15)
			add_scroll_target(29, "VB_ssl_1_0xe033320", 0, 11)
			add_scroll_target(29, "VB_ssl_1_0xe0333d0", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe0334a0", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033570", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033640", 0, 11)
			add_scroll_target(29, "VB_ssl_1_0xe0336f0", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe0337c0", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033890", 0, 11)
			add_scroll_target(29, "VB_ssl_1_0xe033940", 0, 11)
			add_scroll_target(29, "VB_ssl_1_0xe0339f0", 0, 11)
			add_scroll_target(29, "VB_ssl_1_0xe033aa0", 0, 11)
			add_scroll_target(29, "VB_ssl_1_0xe033b50", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033c20", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033cf0", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033dc0", 0, 11)
			add_scroll_target(29, "VB_ssl_1_0xe033e70", 0, 13)
			add_scroll_target(29, "VB_ssl_1_0xe033f40", 0, 13)
			-- Count: 248

			add_scroll_target(30, "VB_ssl_1_0xe035180", 0, 11) -- Start VB
			add_scroll_target(30, "VB_ssl_1_0xe035230", 0, 11)
			-- Count: 22

			add_scroll_target(31, "VB_ssl_1_0xe035540", 0, 11) -- Start VB
			add_scroll_target(31, "VB_ssl_1_0xe0355f0", 0, 11)
			-- Count: 22

			add_scroll_target(32, "VB_ssl_1_0xe035900", 0, 11) -- Start VB
			add_scroll_target(32, "VB_ssl_1_0xe0359b0", 0, 11)
			-- Count: 22

			add_scroll_target(33, "VB_ssl_1_0xe035d50", 0, 11) -- Start VB
			add_scroll_target(33, "VB_ssl_1_0xe035e00", 0, 11)
			-- Count: 22

			add_scroll_target(34, "VB_ssl_1_0xe036990", 0, 11) -- Start VB
			add_scroll_target(34, "VB_ssl_1_0xe036a40", 0, 11)
			-- Count: 22

			add_scroll_target(35, "VB_ssl_1_0xe036d70", 0, 11) -- Start VB
			add_scroll_target(35, "VB_ssl_1_0xe036e20", 0, 11)
			-- Count: 22

			add_scroll_target(36, "VB_ssl_1_0xe037150", 0, 11) -- Start VB
			add_scroll_target(36, "VB_ssl_1_0xe037200", 0, 11)
			-- Count: 22

			add_scroll_target(37, "VB_ssl_1_0xe037530", 0, 11) -- Start VB
			add_scroll_target(37, "VB_ssl_1_0xe0375e0", 0, 11)
			-- Count: 22

			add_scroll_target(38, "VB_ssl_1_0xe037910", 0, 11) -- Start VB
			add_scroll_target(38, "VB_ssl_1_0xe0379c0", 0, 11)
			-- Count: 22

			add_scroll_target(39, "VB_ssl_1_0xe037cf0", 0, 11) -- Start VB
			add_scroll_target(39, "VB_ssl_1_0xe037da0", 0, 11)
			-- Count: 22

			add_scroll_target(40, "VB_ssl_1_0xe0380d0", 0, 11) -- Start VB
			add_scroll_target(40, "VB_ssl_1_0xe038180", 0, 11)
			-- Count: 22

			add_scroll_target(41, "VB_ssl_1_0xe0384b0", 0, 11) -- Start VB
			add_scroll_target(41, "VB_ssl_1_0xe038560", 0, 11)
			-- Count: 22

			add_scroll_target(42, "VB_ssl_1_0xe038890", 0, 11) -- Start VB
			add_scroll_target(42, "VB_ssl_1_0xe038940", 0, 11)
			-- Count: 22

			add_scroll_target(43, "VB_ssl_1_0xe038ce0", 0, 11) -- Start VB
			add_scroll_target(43, "VB_ssl_1_0xe038d90", 0, 11)
			-- Count: 22

			add_scroll_target(44, "VB_ssl_1_0xe0390c0", 0, 11) -- Start VB
			add_scroll_target(44, "VB_ssl_1_0xe039170", 0, 11)
			-- Count: 22

			add_scroll_target(45, "VB_ssl_1_0xe0394a0", 0, 11) -- Start VB
			add_scroll_target(45, "VB_ssl_1_0xe039550", 0, 11)
			-- Count: 22

			add_scroll_target(46, "VB_ssl_1_0xe039880", 0, 11) -- Start VB
			add_scroll_target(46, "VB_ssl_1_0xe039930", 0, 11)
			-- Count: 22

			add_scroll_target(47, "VB_ssl_1_0xe039c60", 0, 11) -- Start VB
			add_scroll_target(47, "VB_ssl_1_0xe039d10", 0, 11)
			-- Count: 22

			add_scroll_target(48, "VB_ssl_1_0xe03a040", 0, 11) -- Start VB
			add_scroll_target(48, "VB_ssl_1_0xe03a0f0", 0, 11)
			-- Count: 22

			add_scroll_target(49, "VB_ssl_1_0xe02a920", 0, 9) -- Start VB
			add_scroll_target(49, "VB_ssl_1_0xe02a9b0", 0, 3)
			add_scroll_target(49, "VB_ssl_1_0xe0362b0", 0, 13)
			add_scroll_target(49, "VB_ssl_1_0xe036380", 0, 10)
			add_scroll_target(49, "VB_ssl_1_0xe036420", 0, 12)
			add_scroll_target(49, "VB_ssl_1_0xe0364e0", 0, 13)
			add_scroll_target(49, "VB_ssl_1_0xe0365b0", 0, 3)
			-- Count: 63

			add_scroll_target(50, "VB_ssl_1_0xe0362b0", 0, 13) -- Start VB
			add_scroll_target(50, "VB_ssl_1_0xe036380", 0, 10)
			add_scroll_target(50, "VB_ssl_1_0xe036420", 0, 12)
			add_scroll_target(50, "VB_ssl_1_0xe0364e0", 0, 13)
			add_scroll_target(50, "VB_ssl_1_0xe0365b0", 0, 3)
			-- Count: 51

			add_scroll_target(51, "VB_ssl_1_0xe0365e0", 0, 11) -- Start VB
			add_scroll_target(51, "VB_ssl_1_0xe036690", 0, 9)
			add_scroll_target(51, "VB_ssl_1_0xe036720", 0, 9)
			add_scroll_target(51, "VB_ssl_1_0xe0367b0", 0, 9)
			add_scroll_target(51, "VB_ssl_1_0xe036840", 0, 12)
			-- Count: 50
			ssl_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BOB and np.currAreaIndex == 1 then
		if bob_1_scroll == false then
			add_scroll_target(52, "VB_bob_1_0xe0230d0", 0, 9) -- Start VB
			add_scroll_target(52, "VB_bob_1_0xe023160", 0, 13)
			add_scroll_target(52, "VB_bob_1_0xe023230", 0, 13)
			add_scroll_target(52, "VB_bob_1_0xe023300", 0, 13)
			add_scroll_target(52, "VB_bob_1_0xe0233d0", 0, 15)
			add_scroll_target(52, "VB_bob_1_0xe0234c0", 0, 11)
			add_scroll_target(52, "VB_bob_1_0xe023570", 0, 9)
			add_scroll_target(52, "VB_bob_1_0xe023600", 0, 3)
			-- Count: 86

			add_scroll_target(53, "VB_bob_1_0xe02d510", 0, 9) -- Start VB
			add_scroll_target(53, "VB_bob_1_0xe02d5a0", 0, 3)
			-- Count: 12

			add_scroll_target(54, "VB_bob_1_0xe0415f0", 0, 11) -- Start VB
			add_scroll_target(54, "VB_bob_1_0xe0416a0", 0, 11)
			add_scroll_target(54, "VB_bob_1_0xe041750", 0, 9)
			add_scroll_target(54, "VB_bob_1_0xe0417e0", 0, 3)
			-- Count: 34
			bob_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BOB and np.currAreaIndex == 2 then
		if bob_2_scroll == false then
			add_scroll_target(55, "VB_bob_2_0xe005d00", 0, 11) -- Start VB
			add_scroll_target(55, "VB_bob_2_0xe005db0", 0, 9)
			add_scroll_target(55, "VB_bob_2_0xe005e40", 0, 9)
			add_scroll_target(55, "VB_bob_2_0xe005ed0", 0, 7)
			add_scroll_target(55, "VB_bob_2_0xe005f40", 0, 13)
			add_scroll_target(55, "VB_bob_2_0xe006010", 0, 11)
			add_scroll_target(55, "VB_bob_2_0xe0060c0", 0, 11)
			add_scroll_target(55, "VB_bob_2_0xe006170", 0, 11)
			add_scroll_target(55, "VB_bob_2_0xe006220", 0, 6)
			-- Count: 88

			add_scroll_target(56, "VB_bob_2_0xe025f20", 0, 15) -- Start VB
			add_scroll_target(56, "VB_bob_2_0xe026010", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026100", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0261f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0262e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0263d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0264c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0265b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0266a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026790", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026880", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026970", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026a60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026b50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026c40", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026d30", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026e20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe026f10", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe027000", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0270f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0271e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0272d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0273c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0274b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0275a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe027690", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe027780", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe027850", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe027900", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0279f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe027ae0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe027bd0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe027ca0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe027d70", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe027e60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe027f50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028040", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028130", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028220", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028310", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028400", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0284d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0285c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0286b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0287a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028890", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028980", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028a70", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028b60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028c50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028d40", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028e30", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe028f20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029010", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029100", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0291f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0292e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0293d0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0294a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029590", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029680", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029770", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029860", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029950", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029a40", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029b30", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029c20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029d10", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029e00", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029ef0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe029fe0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a0d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a1c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a2b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a3a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a490", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a580", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a670", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a760", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a850", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02a940", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe02a9f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02aae0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02abd0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02acc0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02adb0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02aea0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02af90", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b080", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b170", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b260", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b350", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b440", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b530", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b620", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b710", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b800", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b8f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02b9e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02bad0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02bbc0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02bcb0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02bda0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02be90", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02bf80", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c070", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c160", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c250", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c340", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02c410", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c500", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c5f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c6e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c7d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c8c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02c9b0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02ca80", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02cb70", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe02cc00", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe02ccb0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe02cd60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02ce50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02cf40", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02d010", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02d0e0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe02d190", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe02d240", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02d310", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe02d3a0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02d470", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe02d500", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02d5d0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02d6a0", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe02d730", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe02d7c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02d8b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02d9a0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe02da50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02db40", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02dc30", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02dd00", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02ddf0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02dee0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02dfd0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02e0c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02e1b0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02e280", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02e350", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02e440", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02e530", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02e620", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02e6f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02e7e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02e8d0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02e9a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02ea90", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02eb80", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02ec70", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02ed60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02ee50", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02ef20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f010", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02f0e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f1d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f2c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f3b0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02f480", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f570", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f660", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f750", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02f820", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02f8f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02f9e0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02fab0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02fba0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe02fc70", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02fd60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02fe50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe02ff40", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe030010", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe030100", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0301f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0302e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0303d0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0304a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe030590", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe030660", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe030750", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe030840", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe030910", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0309e0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe030ab0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe030b80", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe030c70", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe030d40", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe030e30", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe030f00", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe030ff0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0310e0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0311b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0312a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031390", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe031460", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031550", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031640", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe031710", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031800", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe0318b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0319a0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe031a50", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe031b20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031c10", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031d00", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031df0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031ee0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe031fd0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0320c0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe032170", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe032220", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032310", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0323e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0324d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0325c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0326b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0327a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032890", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032980", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032a70", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032b60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032c50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032d40", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032e30", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe032f20", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe032ff0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0330e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0331d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0332c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0333b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0334a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033590", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033680", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033770", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033860", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033950", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe033a20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033b10", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033c00", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033cf0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033de0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033ed0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe033fc0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0340b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0341a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034290", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034380", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034470", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034560", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034650", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034740", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034830", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034920", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034a10", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034b00", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034bf0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034ce0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034dd0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe034ea0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe034f90", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035080", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035170", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035260", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035350", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035440", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035530", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe035600", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0356f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0357e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0358d0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0359a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035a90", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035b80", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035c70", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035d60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe035e50", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe035f20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036010", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036100", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0361d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0362c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0363b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0364a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036590", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036680", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036770", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036860", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036950", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036a40", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe036b10", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036c00", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036cf0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036de0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036ed0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe036fc0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0370b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0371a0", 0, 14)
			add_scroll_target(56, "VB_bob_2_0xe037280", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037370", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037460", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037550", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037640", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037730", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037820", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037910", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0379e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037ad0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037bc0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037cb0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe037d80", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037e70", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe037f60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038050", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe038120", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038210", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe0382e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0383d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0384c0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0385b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0386a0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038790", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038880", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038970", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038a60", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038b50", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038c40", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038d30", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038e20", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe038f10", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe039000", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0390f0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0391e0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0392d0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0393c0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe039490", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe039520", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe0395d0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe039680", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe039730", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe039820", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe0398b0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe0399a0", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe039a70", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe039b20", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe039bb0", 0, 15)
			add_scroll_target(56, "VB_bob_2_0xe039ca0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe039d50", 0, 13)
			add_scroll_target(56, "VB_bob_2_0xe039e20", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe039ed0", 0, 11)
			add_scroll_target(56, "VB_bob_2_0xe039f80", 0, 9)
			add_scroll_target(56, "VB_bob_2_0xe03a010", 0, 6)
			-- Count: 5141
			bob_2_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_WF and np.currAreaIndex == 1 then
		if wf_1_scroll == false then
			add_scroll_target(138, "VB_wf_1_0xe027480", 0, 8) -- Start VB
			-- Count: 8

			add_scroll_target(139, "VB_wf_1_0xe044910", 0, 8) -- Start VB
			-- Count: 8

			add_scroll_target(140, "VB_wf_1_0xe044ab0", 0, 8) -- Start VB
			-- Count: 8

			add_scroll_target(141, "VB_wf_1_0xe044770", 0, 13) -- Start VB
			add_scroll_target(141, "VB_wf_1_0xe044840", 0, 13)
			-- Count: 26
			wf_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_WF and np.currAreaIndex == 2 then
		if wf_2_scroll == false then
			add_scroll_target(142, "VB_wf_2_0xe00b020", 0, 10) -- Start VB
			add_scroll_target(142, "VB_wf_2_0xe00b0c0", 0, 13)
			add_scroll_target(142, "VB_wf_2_0xe00b190", 0, 10)
			add_scroll_target(142, "VB_wf_2_0xe00b230", 0, 9)
			-- Count: 42

			add_scroll_target(143, "VB_wf_2_0xe014a10", 0, 9) -- Start VB
			add_scroll_target(143, "VB_wf_2_0xe014aa0", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe014b40", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe014bd0", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe014c70", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe014d00", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe014d90", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe014e40", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe014ec0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe014f70", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe015020", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0150d0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe015180", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe015210", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0152c0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe015370", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe015420", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe015490", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe015520", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0155b0", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe015630", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0156c0", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe015740", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe0157c0", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe015860", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe0158d0", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe015960", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0159f0", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe015a70", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe015b00", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe015b80", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe015c00", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe015ca0", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe015d10", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe015da0", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe015e30", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe015eb0", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe015f40", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe015fc0", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe016040", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe0160e0", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe016150", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0161e0", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe016270", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe0162f0", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe016380", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe016400", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe016480", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe016520", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe016590", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe016640", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0166f0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0167a0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe016850", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe016900", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0169b0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe016a60", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe016af0", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe016b90", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe016c00", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe016c90", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe016d00", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe016d90", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe016e00", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe016e90", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe016f10", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe016fc0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017070", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017120", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0171d0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017280", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017330", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0173e0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017490", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017540", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0175f0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0176a0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017750", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017800", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0178b0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017960", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017a10", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe017ab0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017b60", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017c10", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017cc0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017d70", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe017e00", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe017e90", 0, 10)
			add_scroll_target(143, "VB_wf_2_0xe017f30", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe017fe0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018090", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe018110", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0181a0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018250", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0182e0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018390", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018440", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0184f0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0185a0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018650", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018700", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0187b0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018860", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018910", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe0189c0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018a70", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018b20", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018bd0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018c80", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018d30", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018de0", 0, 11)
			add_scroll_target(143, "VB_wf_2_0xe018e90", 0, 13)
			add_scroll_target(143, "VB_wf_2_0xe018f60", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe018fd0", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe019050", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0190e0", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe019150", 0, 7)
			add_scroll_target(143, "VB_wf_2_0xe0191c0", 0, 8)
			add_scroll_target(143, "VB_wf_2_0xe019240", 0, 9)
			add_scroll_target(143, "VB_wf_2_0xe0192d0", 0, 4)
			-- Count: 1168

			add_scroll_target(144, "VB_wf_2_0xe022c90", 0, 13) -- Start VB
			add_scroll_target(144, "VB_wf_2_0xe022d60", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe023050", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe023100", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe0231b0", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe023260", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe023310", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe0233c0", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe023470", 0, 11)
			add_scroll_target(144, "VB_wf_2_0xe023520", 0, 11)
			-- Count: 112

			add_scroll_target(145, "VB_wf_2_0xe025720", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(146, "VB_wf_2_0xe025840", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(147, "VB_wf_2_0xe025960", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(148, "VB_wf_2_0xe025a20", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(149, "VB_wf_2_0xe025b40", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(150, "VB_wf_2_0xe025c60", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(151, "VB_wf_2_0xe025d80", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(152, "VB_wf_2_0xe025ea0", 0, 4) -- Start VB
			add_scroll_target(152, "VB_wf_2_0xe012690", 0, 11)
			add_scroll_target(152, "VB_wf_2_0xe012740", 0, 11)
			add_scroll_target(152, "VB_wf_2_0xe0127f0", 0, 8)
			add_scroll_target(152, "VB_wf_2_0xe022e10", 0, 11)
			add_scroll_target(152, "VB_wf_2_0xe022ec0", 0, 11)
			add_scroll_target(152, "VB_wf_2_0xe022f70", 0, 11)
			add_scroll_target(152, "VB_wf_2_0xe023020", 0, 3)
			-- Count: 70

			add_scroll_target(153, "VB_wf_2_0xe025ee0", 0, 4) -- Start VB
			-- Count: 4
			wf_scroll_2 = true
		end
	end

	if np.currLevelNum == LEVEL_WF and np.currAreaIndex == 3 then
		if wf_3_scroll == false then
			add_scroll_target(154, "VB_wf_3_0xe007060", 0, 11) -- Start VB
			add_scroll_target(154, "VB_wf_3_0xe007110", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe0071c0", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe007270", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe007320", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe0073d0", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe007480", 0, 13)
			add_scroll_target(154, "VB_wf_3_0xe007550", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe007600", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe0076b0", 0, 13)
			add_scroll_target(154, "VB_wf_3_0xe007780", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe007830", 0, 11)
			add_scroll_target(154, "VB_wf_3_0xe0078e0", 0, 8)
			-- Count: 144

			add_scroll_target(155, "VB_wf_3_0xe00b280", 0, 8) -- Start VB
			-- Count: 8

			add_scroll_target(156, "VB_wf_3_0xe00b440", 0, 11) -- Start VB
			add_scroll_target(156, "VB_wf_3_0xe00b4f0", 0, 11)
			add_scroll_target(156, "VB_wf_3_0xe00b5a0", 0, 4)
			-- Count: 26

			add_scroll_target(157, "VB_wf_3_0xe00b8e0", 0, 11) -- Start VB
			add_scroll_target(157, "VB_wf_3_0xe00b990", 0, 7)
			-- Count: 18

			add_scroll_target(158, "VB_wf_3_0xe00bc40", 0, 4) -- Start VB
			-- Count: 4
			wf_3_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_WF and np.currAreaIndex == 4 then
		if wf_4_scroll == false then

			add_scroll_target(159, "VB_wf_4_0xe009550", 0, 11) -- Start VB
			add_scroll_target(159, "VB_wf_4_0xe009600", 0, 7)
			add_scroll_target(159, "VB_wf_4_0xe009850", 0, 11)
			add_scroll_target(159, "VB_wf_4_0xe009900", 0, 7)
			-- Count: 36

			add_scroll_target(160, "VB_wf_4_0xe009850", 0, 11) -- Start VB
			add_scroll_target(160, "VB_wf_4_0xe009900", 0, 7)
			-- Count: 18
		wf_4_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_SL and np.currAreaIndex == 1 then
		if sl_1_scroll == false then
			add_scroll_target(57, "VB_sl_1_0xe01b3a0", 0, 9) -- Start VB
			add_scroll_target(57, "VB_sl_1_0xe01b430", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01b4c0", 0, 10)
			add_scroll_target(57, "VB_sl_1_0xe01b560", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01b5d0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01b680", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01b730", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01b7c0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01b850", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01b8c0", 0, 10)
			add_scroll_target(57, "VB_sl_1_0xe01b960", 0, 12)
			add_scroll_target(57, "VB_sl_1_0xe01ba20", 0, 12)
			add_scroll_target(57, "VB_sl_1_0xe01bae0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01bb50", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01bbe0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01bc50", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01bcc0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01bd30", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01bda0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01be10", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01bec0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01bf50", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01bfe0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c070", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c100", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c190", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01c240", 0, 13)
			add_scroll_target(57, "VB_sl_1_0xe01c310", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c3a0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01c450", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01c4c0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c550", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c5e0", 0, 10)
			add_scroll_target(57, "VB_sl_1_0xe01c680", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c710", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01c7c0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c850", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c8e0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01c970", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01ca00", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01ca90", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01cb00", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01cbb0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01cc60", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01cd10", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01cda0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01ce10", 0, 12)
			add_scroll_target(57, "VB_sl_1_0xe01ced0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01cf40", 0, 15)
			add_scroll_target(57, "VB_sl_1_0xe01d030", 0, 13)
			add_scroll_target(57, "VB_sl_1_0xe01d100", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01d190", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01d220", 0, 12)
			add_scroll_target(57, "VB_sl_1_0xe01d2e0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01d390", 0, 10)
			add_scroll_target(57, "VB_sl_1_0xe01d430", 0, 10)
			add_scroll_target(57, "VB_sl_1_0xe01d4d0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01d540", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01d5d0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01d660", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01d6d0", 0, 13)
			add_scroll_target(57, "VB_sl_1_0xe01d7a0", 0, 10)
			add_scroll_target(57, "VB_sl_1_0xe01d840", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01d8b0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01d920", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01d9d0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01da40", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01dad0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01db80", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01dc10", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01dcc0", 0, 12)
			add_scroll_target(57, "VB_sl_1_0xe01dd80", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01de30", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01dec0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01df70", 0, 13)
			add_scroll_target(57, "VB_sl_1_0xe01e040", 0, 10)
			add_scroll_target(57, "VB_sl_1_0xe01e0e0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01e170", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01e200", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01e290", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01e300", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01e390", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01e440", 0, 12)
			add_scroll_target(57, "VB_sl_1_0xe01e500", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01e590", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01e640", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01e6d0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01e740", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01e7d0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01e880", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01e8f0", 0, 7)
			add_scroll_target(57, "VB_sl_1_0xe01e960", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01ea10", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01eac0", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01eb70", 0, 11)
			add_scroll_target(57, "VB_sl_1_0xe01ec20", 0, 13)
			add_scroll_target(57, "VB_sl_1_0xe01ecf0", 0, 9)
			add_scroll_target(57, "VB_sl_1_0xe01ed80", 0, 13)
			add_scroll_target(57, "VB_sl_1_0xe01ee50", 0, 7)
			-- Count: 946

			add_scroll_target(58, "VB_sl_1_0xe046330", 0, 13) -- Start VB
			add_scroll_target(58, "VB_sl_1_0xe046400", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe0464b0", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe046560", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe046630", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe046700", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe0467d0", 0, 15)
			add_scroll_target(58, "VB_sl_1_0xe0468c0", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe046990", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe046a40", 0, 14)
			add_scroll_target(58, "VB_sl_1_0xe046b20", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe046bf0", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe046cc0", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe046d90", 0, 10)
			add_scroll_target(58, "VB_sl_1_0xe046e30", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe046ee0", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe046f90", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe047040", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe0470f0", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe0471c0", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe047290", 0, 9)
			add_scroll_target(58, "VB_sl_1_0xe047320", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe0473f0", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe0474a0", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe047570", 0, 15)
			add_scroll_target(58, "VB_sl_1_0xe047660", 0, 11)
			add_scroll_target(58, "VB_sl_1_0xe047710", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe0477e0", 0, 7)
			add_scroll_target(58, "VB_sl_1_0xe047850", 0, 7)
			add_scroll_target(58, "VB_sl_1_0xe0478c0", 0, 9)
			add_scroll_target(58, "VB_sl_1_0xe047950", 0, 9)
			add_scroll_target(58, "VB_sl_1_0xe0479e0", 0, 7)
			add_scroll_target(58, "VB_sl_1_0xe047a50", 0, 13)
			add_scroll_target(58, "VB_sl_1_0xe047b20", 0, 10)
			add_scroll_target(58, "VB_sl_1_0xe047bc0", 0, 3)
			-- Count: 396

			add_scroll_target(59, "VB_sl_1_0xe048620", 0, 9) -- Start VB
			add_scroll_target(59, "VB_sl_1_0xe0486b0", 0, 9)
			add_scroll_target(59, "VB_sl_1_0xe048740", 0, 7)
			add_scroll_target(59, "VB_sl_1_0xe0487b0", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048860", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048910", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe0489c0", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048a70", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048b20", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048bd0", 0, 13)
			add_scroll_target(59, "VB_sl_1_0xe048ca0", 0, 13)
			add_scroll_target(59, "VB_sl_1_0xe048d70", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048e20", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048ed0", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe048f80", 0, 7)
			add_scroll_target(59, "VB_sl_1_0xe048ff0", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe0490a0", 0, 7)
			add_scroll_target(59, "VB_sl_1_0xe049110", 0, 13)
			add_scroll_target(59, "VB_sl_1_0xe0491e0", 0, 13)
			add_scroll_target(59, "VB_sl_1_0xe0492b0", 0, 7)
			add_scroll_target(59, "VB_sl_1_0xe049320", 0, 7)
			add_scroll_target(59, "VB_sl_1_0xe049390", 0, 9)
			add_scroll_target(59, "VB_sl_1_0xe049420", 0, 7)
			add_scroll_target(59, "VB_sl_1_0xe049490", 0, 7)
			add_scroll_target(59, "VB_sl_1_0xe049500", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe053ba0", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe053c50", 0, 9)
			add_scroll_target(59, "VB_sl_1_0xe053ce0", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe053d90", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe053e40", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe053ef0", 0, 9)
			add_scroll_target(59, "VB_sl_1_0xe053f80", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe054030", 0, 9)
			add_scroll_target(59, "VB_sl_1_0xe0540c0", 0, 9)
			add_scroll_target(59, "VB_sl_1_0xe054150", 0, 11)
			add_scroll_target(59, "VB_sl_1_0xe054200", 0, 10)
			-- Count: 361

			add_scroll_target(60, "VB_sl_1_0xe053ba0", 0, 11) -- Start VB
			add_scroll_target(60, "VB_sl_1_0xe053c50", 0, 9)
			add_scroll_target(60, "VB_sl_1_0xe053ce0", 0, 11)
			add_scroll_target(60, "VB_sl_1_0xe053d90", 0, 11)
			add_scroll_target(60, "VB_sl_1_0xe053e40", 0, 11)
			add_scroll_target(60, "VB_sl_1_0xe053ef0", 0, 9)
			add_scroll_target(60, "VB_sl_1_0xe053f80", 0, 11)
			add_scroll_target(60, "VB_sl_1_0xe054030", 0, 9)
			add_scroll_target(60, "VB_sl_1_0xe0540c0", 0, 9)
			add_scroll_target(60, "VB_sl_1_0xe054150", 0, 11)
			add_scroll_target(60, "VB_sl_1_0xe054200", 0, 10)
			-- Count: 112

			add_scroll_target(61, "VB_sl_1_0xe0542a0", 0, 13) -- Start VB
			add_scroll_target(61, "VB_sl_1_0xe054370", 0, 11)
			add_scroll_target(61, "VB_sl_1_0xe054420", 0, 13)
			add_scroll_target(61, "VB_sl_1_0xe0544f0", 0, 12)
			add_scroll_target(61, "VB_sl_1_0xe0545b0", 0, 12)
			-- Count: 61
		    sl_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_SL and np.currAreaIndex == 2 then
		if sl_2_scroll == false then
			add_scroll_target(62, "VB_sl_2_0xe007080", 0, 15) -- Start VB
			add_scroll_target(62, "VB_sl_2_0xe007170", 0, 9)
			-- Count: 24
			sl_2_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_JRB and np.currAreaIndex == 1 then
		if jrb_1_scroll == false then
			add_scroll_target(63, "VB_jrb_1_0xe012cd0", 0, 11) -- Start VB
			add_scroll_target(63, "VB_jrb_1_0xe012d80", 0, 3)
			add_scroll_target(63, "VB_jrb_1_0xe02a890", 0, 9)
			add_scroll_target(63, "VB_jrb_1_0xe02a920", 0, 9)
			add_scroll_target(63, "VB_jrb_1_0xe02a9b0", 0, 13)
			add_scroll_target(63, "VB_jrb_1_0xe02aa80", 0, 15)
			add_scroll_target(63, "VB_jrb_1_0xe02ab70", 0, 12)
			add_scroll_target(63, "VB_jrb_1_0xe02ac30", 0, 11)
			add_scroll_target(63, "VB_jrb_1_0xe02ace0", 0, 11)
			add_scroll_target(63, "VB_jrb_1_0xe02ad90", 0, 10)
			add_scroll_target(63, "VB_jrb_1_0xe02ae30", 0, 9)
			add_scroll_target(63, "VB_jrb_1_0xe02aec0", 0, 13)
			add_scroll_target(63, "VB_jrb_1_0xe02af90", 0, 11)
			add_scroll_target(63, "VB_jrb_1_0xe02b040", 0, 9)
			add_scroll_target(63, "VB_jrb_1_0xe02b0d0", 0, 9)
			add_scroll_target(63, "VB_jrb_1_0xe02b160", 0, 11)
			add_scroll_target(63, "VB_jrb_1_0xe02b210", 0, 9)
			add_scroll_target(63, "VB_jrb_1_0xe02b2a0", 0, 3)
			-- Count: 178

			add_scroll_target(64, "VB_jrb_1_0xe02a890", 0, 9) -- Start VB
			add_scroll_target(64, "VB_jrb_1_0xe02a920", 0, 9)
			add_scroll_target(64, "VB_jrb_1_0xe02a9b0", 0, 13)
			add_scroll_target(64, "VB_jrb_1_0xe02aa80", 0, 15)
			add_scroll_target(64, "VB_jrb_1_0xe02ab70", 0, 12)
			add_scroll_target(64, "VB_jrb_1_0xe02ac30", 0, 11)
			add_scroll_target(64, "VB_jrb_1_0xe02ace0", 0, 11)
			add_scroll_target(64, "VB_jrb_1_0xe02ad90", 0, 10)
			add_scroll_target(64, "VB_jrb_1_0xe02ae30", 0, 9)
			add_scroll_target(64, "VB_jrb_1_0xe02aec0", 0, 13)
			add_scroll_target(64, "VB_jrb_1_0xe02af90", 0, 11)
			add_scroll_target(64, "VB_jrb_1_0xe02b040", 0, 9)
			add_scroll_target(64, "VB_jrb_1_0xe02b0d0", 0, 9)
			add_scroll_target(64, "VB_jrb_1_0xe02b160", 0, 11)
			add_scroll_target(64, "VB_jrb_1_0xe02b210", 0, 9)
			add_scroll_target(64, "VB_jrb_1_0xe02b2a0", 0, 3)
			-- Count: 164

			add_scroll_target(65, "VB_jrb_1_0xe02b2d0", 0, 8) -- Start VB
			add_scroll_target(65, "VB_jrb_1_0xe02b350", 0, 9)
			add_scroll_target(65, "VB_jrb_1_0xe02b3e0", 0, 7)
			add_scroll_target(65, "VB_jrb_1_0xe02b450", 0, 9)
			add_scroll_target(65, "VB_jrb_1_0xe02b4e0", 0, 3)
			-- Count: 36
			jrb_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_JRB and np.currAreaIndex == 2 then
		if jrb_2_scroll == false then
			add_scroll_target(66, "VB_jrb_2_0xe015d70", 0, 13) -- Start VB
			add_scroll_target(66, "VB_jrb_2_0xe015e40", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe015ef0", 0, 12)
			add_scroll_target(66, "VB_jrb_2_0xe016630", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe0166e0", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe016790", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe016840", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe0168f0", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe0169a0", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe016a50", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe016b00", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe016bb0", 0, 13)
			add_scroll_target(66, "VB_jrb_2_0xe016c80", 0, 15)
			add_scroll_target(66, "VB_jrb_2_0xe016d70", 0, 15)
			add_scroll_target(66, "VB_jrb_2_0xe016e60", 0, 15)
			add_scroll_target(66, "VB_jrb_2_0xe016f50", 0, 15)
			add_scroll_target(66, "VB_jrb_2_0xe017040", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe0170f0", 0, 11)
			add_scroll_target(66, "VB_jrb_2_0xe0171a0", 0, 3)
			-- Count: 222

			add_scroll_target(67, "VB_jrb_2_0xe016630", 0, 11) -- Start VB
			add_scroll_target(67, "VB_jrb_2_0xe0166e0", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe016790", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe016840", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe0168f0", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe0169a0", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe016a50", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe016b00", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe016bb0", 0, 13)
			add_scroll_target(67, "VB_jrb_2_0xe016c80", 0, 15)
			add_scroll_target(67, "VB_jrb_2_0xe016d70", 0, 15)
			add_scroll_target(67, "VB_jrb_2_0xe016e60", 0, 15)
			add_scroll_target(67, "VB_jrb_2_0xe016f50", 0, 15)
			add_scroll_target(67, "VB_jrb_2_0xe017040", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe0170f0", 0, 11)
			add_scroll_target(67, "VB_jrb_2_0xe0171a0", 0, 3)
			-- Count: 186

			add_scroll_target(68, "VB_jrb_2_0xe0171d0", 0, 9) -- Start VB
			add_scroll_target(68, "VB_jrb_2_0xe017260", 0, 11)
			add_scroll_target(68, "VB_jrb_2_0xe017310", 0, 8)
			-- Count: 28

			add_scroll_target(69, "VB_jrb_2_0xe018640", 0, 11) -- Start VB
			add_scroll_target(69, "VB_jrb_2_0xe0186f0", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe0187a0", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe018850", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe018900", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe0189b0", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe018a60", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe018b10", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe018bc0", 0, 13)
			add_scroll_target(69, "VB_jrb_2_0xe018c90", 0, 15)
			add_scroll_target(69, "VB_jrb_2_0xe018d80", 0, 15)
			add_scroll_target(69, "VB_jrb_2_0xe018e70", 0, 15)
			add_scroll_target(69, "VB_jrb_2_0xe018f60", 0, 12)
			add_scroll_target(69, "VB_jrb_2_0xe0196a0", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe019750", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe019800", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe0198b0", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe019960", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe019a10", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe019ac0", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe019b70", 0, 11)
			add_scroll_target(69, "VB_jrb_2_0xe019c20", 0, 13)
			add_scroll_target(69, "VB_jrb_2_0xe019cf0", 0, 15)
			add_scroll_target(69, "VB_jrb_2_0xe019de0", 0, 15)
			add_scroll_target(69, "VB_jrb_2_0xe019ed0", 0, 15)
			add_scroll_target(69, "VB_jrb_2_0xe019fc0", 0, 12)
			-- Count: 316

			add_scroll_target(70, "VB_jrb_2_0xe0196a0", 0, 11) -- Start VB
			add_scroll_target(70, "VB_jrb_2_0xe019750", 0, 11)
			add_scroll_target(70, "VB_jrb_2_0xe019800", 0, 11)
			add_scroll_target(70, "VB_jrb_2_0xe0198b0", 0, 11)
			add_scroll_target(70, "VB_jrb_2_0xe019960", 0, 11)
			add_scroll_target(70, "VB_jrb_2_0xe019a10", 0, 11)
			add_scroll_target(70, "VB_jrb_2_0xe019ac0", 0, 11)
			add_scroll_target(70, "VB_jrb_2_0xe019b70", 0, 11)
			add_scroll_target(70, "VB_jrb_2_0xe019c20", 0, 13)
			add_scroll_target(70, "VB_jrb_2_0xe019cf0", 0, 15)
			add_scroll_target(70, "VB_jrb_2_0xe019de0", 0, 15)
			add_scroll_target(70, "VB_jrb_2_0xe019ed0", 0, 15)
			add_scroll_target(70, "VB_jrb_2_0xe019fc0", 0, 12)
			-- Count: 158
			jrb_2_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_JRB and np.currAreaIndex == 3 then
		if jrb_3_scroll == false then
			add_scroll_target(71, "VB_jrb_3_0xe008b20", 0, 8) -- Start VB
			-- Count: 8

			add_scroll_target(72, "VB_jrb_3_0xe008ba0", 0, 11) -- Start VB
			add_scroll_target(72, "VB_jrb_3_0xe008c50", 0, 7)
			-- Count: 18
			jrb_3_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_THI and np.currAreaIndex == 1 then
		if thi_1_scroll == false then
			add_scroll_target(73, "VB_thi_1_0xe0071d0", 0, 9) -- Start VB
			add_scroll_target(73, "VB_thi_1_0xe007260", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe007310", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe0073c0", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe007470", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe007520", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe0075d0", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe007680", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe007730", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe0077e0", 0, 11)
			add_scroll_target(73, "VB_thi_1_0xe007890", 0, 7)
			-- Count: 115
			thi_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_TTC and np.currAreaIndex == 1 then
		if ttc_1_scroll == false then
			add_scroll_target(74, "VB_ttc_1_0xe015c80", 0, 7) -- Start VB
			add_scroll_target(74, "VB_ttc_1_0xe015cf0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe015da0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe015e30", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe015ee0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe015f70", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016000", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016090", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016120", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0161b0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016240", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0162d0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016360", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0163f0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe0164a0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016530", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe0165e0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016670", 0, 7)
			add_scroll_target(74, "VB_ttc_1_0xe0166e0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe016790", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe016840", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0168d0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016960", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe016a10", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016aa0", 0, 10)
			add_scroll_target(74, "VB_ttc_1_0xe016b40", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016bd0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe016c80", 0, 10)
			add_scroll_target(74, "VB_ttc_1_0xe016d20", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe016dd0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe016e80", 0, 13)
			add_scroll_target(74, "VB_ttc_1_0xe016f50", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe016fe0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017070", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe017120", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0171b0", 0, 7)
			add_scroll_target(74, "VB_ttc_1_0xe017220", 0, 7)
			add_scroll_target(74, "VB_ttc_1_0xe017290", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017320", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0173b0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017440", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe0174f0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe0175a0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe017650", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe017700", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe0177b0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe017860", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe017910", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0179a0", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017a30", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017ac0", 0, 13)
			add_scroll_target(74, "VB_ttc_1_0xe017b90", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017c20", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017cb0", 0, 7)
			add_scroll_target(74, "VB_ttc_1_0xe017d20", 0, 10)
			add_scroll_target(74, "VB_ttc_1_0xe017dc0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe017e70", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe017f00", 0, 7)
			add_scroll_target(74, "VB_ttc_1_0xe017f70", 0, 13)
			add_scroll_target(74, "VB_ttc_1_0xe018040", 0, 9)
			add_scroll_target(74, "VB_ttc_1_0xe0180d0", 0, 11)
			add_scroll_target(74, "VB_ttc_1_0xe018180", 0, 7)
			-- Count: 599

			add_scroll_target(75, "VB_ttc_1_0xe01f780", 0, 9) -- Start VB
			add_scroll_target(75, "VB_ttc_1_0xe01f810", 0, 10)
			add_scroll_target(75, "VB_ttc_1_0xe01f8b0", 0, 9)
			add_scroll_target(75, "VB_ttc_1_0xe01f940", 0, 13)
			add_scroll_target(75, "VB_ttc_1_0xe01fa10", 0, 10)
			add_scroll_target(75, "VB_ttc_1_0xe01fab0", 0, 11)
			add_scroll_target(75, "VB_ttc_1_0xe01fb60", 0, 11)
			-- Count: 73
			ttc_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_RR and np.currAreaIndex == 1 then
		if rr_1_scroll == false then
			add_scroll_target(76, "VB_rr_1_0xe019940", 0, 11) -- Start VB
			add_scroll_target(76, "VB_rr_1_0xe0199f0", 0, 13)
			add_scroll_target(76, "VB_rr_1_0xe019ac0", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe019b50", 0, 11)
			add_scroll_target(76, "VB_rr_1_0xe019c00", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe019c90", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe019d20", 0, 11)
			add_scroll_target(76, "VB_rr_1_0xe019dd0", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe019e60", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe019ef0", 0, 11)
			add_scroll_target(76, "VB_rr_1_0xe019fa0", 0, 7)
			add_scroll_target(76, "VB_rr_1_0xe01a010", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe01a0a0", 0, 7)
			add_scroll_target(76, "VB_rr_1_0xe01a110", 0, 11)
			add_scroll_target(76, "VB_rr_1_0xe01a1c0", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe01a250", 0, 11)
			add_scroll_target(76, "VB_rr_1_0xe01a300", 0, 9)
			add_scroll_target(76, "VB_rr_1_0xe01a390", 0, 13)
			add_scroll_target(76, "VB_rr_1_0xe01a460", 0, 10)
			-- Count: 188

			add_scroll_target(77, "VB_rr_1_0xe020510", 0, 9) -- Start VB
			add_scroll_target(77, "VB_rr_1_0xe0205a0", 0, 9)
			add_scroll_target(77, "VB_rr_1_0xe020630", 0, 11)
			add_scroll_target(77, "VB_rr_1_0xe0206e0", 0, 9)
			-- Count: 38

			add_scroll_target(78, "VB_rr_1_0xe0349a0", 0, 11) -- Start VB
			add_scroll_target(78, "VB_rr_1_0xe034a50", 0, 11)
			add_scroll_target(78, "VB_rr_1_0xe034b00", 0, 11)
			add_scroll_target(78, "VB_rr_1_0xe034bb0", 0, 9)
			add_scroll_target(78, "VB_rr_1_0xe034c40", 0, 11)
			add_scroll_target(78, "VB_rr_1_0xe034cf0", 0, 15)
			add_scroll_target(78, "VB_rr_1_0xe034de0", 0, 9)
			add_scroll_target(78, "VB_rr_1_0xe034e70", 0, 11)
			add_scroll_target(78, "VB_rr_1_0xe034f20", 0, 9)
			add_scroll_target(78, "VB_rr_1_0xe034fb0", 0, 13)
			add_scroll_target(78, "VB_rr_1_0xe035080", 0, 15)
			add_scroll_target(78, "VB_rr_1_0xe035170", 0, 11)
			add_scroll_target(78, "VB_rr_1_0xe035220", 0, 15)
			add_scroll_target(78, "VB_rr_1_0xe035310", 0, 13)
			add_scroll_target(78, "VB_rr_1_0xe0353e0", 0, 15)
			add_scroll_target(78, "VB_rr_1_0xe0354d0", 0, 9)
			add_scroll_target(78, "VB_rr_1_0xe035560", 0, 13)
			add_scroll_target(78, "VB_rr_1_0xe035630", 0, 7)
			add_scroll_target(78, "VB_rr_1_0xe036240", 0, 13)
			add_scroll_target(78, "VB_rr_1_0xe036310", 0, 9)
			add_scroll_target(78, "VB_rr_1_0xe0363a0", 0, 11)
			add_scroll_target(78, "VB_rr_1_0xe036450", 0, 11)
			add_scroll_target(78, "VB_rr_1_0xe036500", 0, 13)
			add_scroll_target(78, "VB_rr_1_0xe0365d0", 0, 10)
			-- Count: 275

			add_scroll_target(79, "VB_rr_1_0xe036240", 0, 13) -- Start VB
			add_scroll_target(79, "VB_rr_1_0xe036310", 0, 9)
			add_scroll_target(79, "VB_rr_1_0xe0363a0", 0, 11)
			add_scroll_target(79, "VB_rr_1_0xe036450", 0, 11)
			add_scroll_target(79, "VB_rr_1_0xe036500", 0, 13)
			add_scroll_target(79, "VB_rr_1_0xe0365d0", 0, 10)
			-- Count: 67

			add_scroll_target(80, "VB_rr_1_0xe025180", 0, 11) -- Start VB
			add_scroll_target(80, "VB_rr_1_0xe025230", 0, 11)
			add_scroll_target(80, "VB_rr_1_0xe0252e0", 0, 11)
			add_scroll_target(80, "VB_rr_1_0xe025390", 0, 11)
			add_scroll_target(80, "VB_rr_1_0xe025440", 0, 11)
			add_scroll_target(80, "VB_rr_1_0xe0254f0", 0, 10)
			-- Count: 65

			add_scroll_target(81, "VB_rr_1_0xe025fc0", 0, 7) -- Start VB
			add_scroll_target(81, "VB_rr_1_0xe026030", 0, 7)
			add_scroll_target(81, "VB_rr_1_0xe0260a0", 0, 13)
			add_scroll_target(81, "VB_rr_1_0xe026170", 0, 12)
			add_scroll_target(81, "VB_rr_1_0xe026230", 0, 11)
			add_scroll_target(81, "VB_rr_1_0xe0262e0", 0, 11)
			add_scroll_target(81, "VB_rr_1_0xe026390", 0, 11)
			add_scroll_target(81, "VB_rr_1_0xe026440", 0, 11)
			add_scroll_target(81, "VB_rr_1_0xe0264f0", 0, 11)
			add_scroll_target(81, "VB_rr_1_0xe0265a0", 0, 13)
			add_scroll_target(81, "VB_rr_1_0xe026670", 0, 11)
			add_scroll_target(81, "VB_rr_1_0xe026720", 0, 7)
			-- Count: 125

			add_scroll_target(82, "VB_rr_1_0xe036670", 0, 4) -- Start VB
			-- Count: 4
			rr_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_CASTLE_GROUNDS and np.currAreaIndex == 2 then
		if castle_grounds_2_scroll == false then
			add_scroll_target(90, "VB_castle_grounds_2_0xe01ec40", 0, 11) -- Start VB
			add_scroll_target(90, "VB_castle_grounds_2_0xe01ecf0", 0, 11)
			add_scroll_target(90, "VB_castle_grounds_2_0xe01eda0", 0, 11)
			add_scroll_target(90, "VB_castle_grounds_2_0xe01ee50", 0, 10)
			add_scroll_target(90, "VB_castle_grounds_2_0xe01eef0", 0, 12)
			add_scroll_target(90, "VB_castle_grounds_2_0xe01efb0", 0, 10)
			add_scroll_target(90, "VB_castle_grounds_2_0xe01f050", 0, 4)
			-- Count: 69

			add_scroll_target(91, "VB_castle_grounds_2_0xe011d40", 0, 11) -- Start VB
			add_scroll_target(91, "VB_castle_grounds_2_0xe011df0", 0, 13)
			add_scroll_target(91, "VB_castle_grounds_2_0xe011ec0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe011f70", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012020", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0120d0", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012160", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012210", 0, 10)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0122b0", 0, 12)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012370", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012420", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0124d0", 0, 13)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0125a0", 0, 13)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012670", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012720", 0, 15)
			add_scroll_target(91, "VB_castle_grounds_2_0xe012810", 0, 13)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0128e0", 0, 8)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014980", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014a30", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014ae0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014b90", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014c40", 0, 13)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014d10", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014dc0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014e70", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014f20", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe014fd0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015080", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015130", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0151e0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015290", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015340", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0153f0", 0, 12)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0154b0", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015540", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0155d0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015680", 0, 10)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015720", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0157d0", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015860", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0158f0", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015980", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015a30", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015ae0", 0, 10)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015b80", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015c30", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015ce0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015d90", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015e40", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015ef0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe015fa0", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe016050", 0, 10)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0160f0", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe016180", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe016230", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0162e0", 0, 12)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0163a0", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe016430", 0, 11)
			add_scroll_target(91, "VB_castle_grounds_2_0xe0164e0", 0, 9)
			add_scroll_target(91, "VB_castle_grounds_2_0xe016570", 0, 7)
			-- Count: 648

			add_scroll_target(92, "VB_castle_grounds_2_0xe021310", 0, 9) -- Start VB
			add_scroll_target(92, "VB_castle_grounds_2_0xe0213a0", 0, 11)
			add_scroll_target(92, "VB_castle_grounds_2_0xe021450", 0, 4)
			-- Count: 24
			castle_grounds_2_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_CASTLE_GROUNDS and np.currAreaIndex == 3 then
		if castle_grounds_3_scroll == false then
			add_scroll_target(93, "VB_castle_grounds_3_0xe006da0", 0, 11) -- Start VB
			add_scroll_target(93, "VB_castle_grounds_3_0xe006e50", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe006f00", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe006fb0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007060", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007110", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0071c0", 0, 9)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007250", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007300", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0073b0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007460", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007510", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0075c0", 0, 10)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007660", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007710", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0077c0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007870", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007920", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0079d0", 0, 9)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007a60", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007b10", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007bc0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007c70", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007d20", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007dd0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007e80", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007f30", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe007fe0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008090", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008140", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0081f0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0082a0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008350", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008400", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0084b0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008560", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008610", 0, 13)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0086e0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008790", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008840", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0088f0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0089a0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008a50", 0, 13)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008b20", 0, 13)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008bf0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008ca0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008d50", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008e00", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008eb0", 0, 8)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008f30", 0, 8)
			add_scroll_target(93, "VB_castle_grounds_3_0xe008fb0", 0, 8)
			add_scroll_target(93, "VB_castle_grounds_3_0xe009030", 0, 8)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0090b0", 0, 8)
			add_scroll_target(93, "VB_castle_grounds_3_0xe009130", 0, 8)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0091b0", 0, 9)
			add_scroll_target(93, "VB_castle_grounds_3_0xe009240", 0, 9)
			add_scroll_target(93, "VB_castle_grounds_3_0xe0092d0", 0, 11)
			add_scroll_target(93, "VB_castle_grounds_3_0xe009380", 0, 9)
			add_scroll_target(93, "VB_castle_grounds_3_0xe009410", 0, 7)
			-- Count: 622
			castle_grounds_3_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BITDW and np.currAreaIndex == 1 then
		if bitdw_1_scroll == false then
			add_scroll_target(94, "VB_bitdw_1_0xe01d220", 0, 11) -- Start VB
			add_scroll_target(94, "VB_bitdw_1_0xe01d2d0", 0, 13)
			add_scroll_target(94, "VB_bitdw_1_0xe01d3a0", 0, 9)
			add_scroll_target(94, "VB_bitdw_1_0xe01d430", 0, 11)
			add_scroll_target(94, "VB_bitdw_1_0xe01d4e0", 0, 11)
			add_scroll_target(94, "VB_bitdw_1_0xe01d590", 0, 11)
			add_scroll_target(94, "VB_bitdw_1_0xe01d640", 0, 11)
			add_scroll_target(94, "VB_bitdw_1_0xe01d6f0", 0, 13)
			add_scroll_target(94, "VB_bitdw_1_0xe01d7c0", 0, 11)
			add_scroll_target(94, "VB_bitdw_1_0xe01d870", 0, 6)
			-- Count: 107
			bitdw_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_VCUTM and np.currAreaIndex == 1 then
		if vcutm_1_scroll == false then
			add_scroll_target(95, "VB_vcutm_1_0xe049040", 0, 12) -- Start VB
			add_scroll_target(95, "VB_vcutm_1_0xe049100", 0, 12)
			add_scroll_target(95, "VB_vcutm_1_0xe0491c0", 0, 7)
			add_scroll_target(95, "VB_vcutm_1_0xe049230", 0, 9)
			add_scroll_target(95, "VB_vcutm_1_0xe0492c0", 0, 8)
			-- Count: 48
			vcutm_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_VCUTM and np.currAreaIndex == 2 then
		if vcutm_2_scroll == false then
			add_scroll_target(96, "VB_vcutm_2_0xe0028d0", 0, 11) -- Start VB
			add_scroll_target(96, "VB_vcutm_2_0xe002980", 0, 13)
			add_scroll_target(96, "VB_vcutm_2_0xe002a50", 0, 8)
			-- Count: 32
			vcutm_2_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BITFS then
		if bitfs_1_scroll == false then
			add_scroll_target(97, "VB_bitfs_1_0xe019010", 0, 11) -- Start VB
			add_scroll_target(97, "VB_bitfs_1_0xe0190c0", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019190", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe019240", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe0192d0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe019380", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe019430", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019500", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe0195b0", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe019640", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe0196f0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe0197a0", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019870", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019940", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019a10", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019ae0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe019b90", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019c60", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019d30", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe019de0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe019e90", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe019f60", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe019ff0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a0a0", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe01a170", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a220", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a2d0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a380", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe01a450", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe01a4e0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a590", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe01a660", 0, 12)
			add_scroll_target(97, "VB_bitfs_1_0xe01a720", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe01a7b0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a860", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a910", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01a9c0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01aa70", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01ab20", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe01abf0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01aca0", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe01ad30", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe01adc0", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe01ae90", 0, 9)
			add_scroll_target(97, "VB_bitfs_1_0xe01af20", 0, 13)
			add_scroll_target(97, "VB_bitfs_1_0xe01aff0", 0, 11)
			add_scroll_target(97, "VB_bitfs_1_0xe01b0a0", 0, 3)
			-- Count: 524

			add_scroll_target(98, "VB_bitfs_1_0xe01b0d0", 0, 11) -- Start VB
			add_scroll_target(98, "VB_bitfs_1_0xe01b180", 0, 11)
			add_scroll_target(98, "VB_bitfs_1_0xe01b230", 0, 11)
			add_scroll_target(98, "VB_bitfs_1_0xe01b2e0", 0, 11)
			add_scroll_target(98, "VB_bitfs_1_0xe01b390", 0, 8)
			-- Count: 52

			add_scroll_target(99, "VB_bitfs_1_0xe024da0", 0, 12) -- Start VB
			add_scroll_target(99, "VB_bitfs_1_0xe024e60", 0, 13)
			add_scroll_target(99, "VB_bitfs_1_0xe024f30", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe024fe0", 0, 15)
			add_scroll_target(99, "VB_bitfs_1_0xe0250d0", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025180", 0, 15)
			add_scroll_target(99, "VB_bitfs_1_0xe025270", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025320", 0, 9)
			add_scroll_target(99, "VB_bitfs_1_0xe0253b0", 0, 9)
			add_scroll_target(99, "VB_bitfs_1_0xe025440", 0, 15)
			add_scroll_target(99, "VB_bitfs_1_0xe025530", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe0255e0", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025690", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025740", 0, 13)
			add_scroll_target(99, "VB_bitfs_1_0xe025810", 0, 9)
			add_scroll_target(99, "VB_bitfs_1_0xe0258a0", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025950", 0, 13)
			add_scroll_target(99, "VB_bitfs_1_0xe025a20", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025ad0", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025b80", 0, 11)
			add_scroll_target(99, "VB_bitfs_1_0xe025c30", 0, 4)
			-- Count: 237

			add_scroll_target(100, "VB_bitfs_1_0xe01d690", 0, 9) -- Start VB
			add_scroll_target(100, "VB_bitfs_1_0xe01d720", 0, 3)
			-- Count: 12

			add_scroll_target(101, "VB_bitfs_1_0xe025c70", 0, 8) -- Start VB
			-- Count: 8

			add_scroll_target(102, "VB_bitfs_1_0xe0264f0", 0, 11) -- Start VB
			add_scroll_target(102, "VB_bitfs_1_0xe0265a0", 0, 9)
			add_scroll_target(102, "VB_bitfs_1_0xe026630", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe026700", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe0267b0", 0, 7)
			add_scroll_target(102, "VB_bitfs_1_0xe026820", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe0268f0", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe0269c0", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe026a90", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe026b60", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe026c10", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe026ce0", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe026d90", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe026e60", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe026f10", 0, 9)
			add_scroll_target(102, "VB_bitfs_1_0xe026fa0", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe027050", 0, 15)
			add_scroll_target(102, "VB_bitfs_1_0xe027140", 0, 9)
			add_scroll_target(102, "VB_bitfs_1_0xe0271d0", 0, 9)
			add_scroll_target(102, "VB_bitfs_1_0xe027260", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe027330", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe0273e0", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe027490", 0, 9)
			add_scroll_target(102, "VB_bitfs_1_0xe027520", 0, 11)
			add_scroll_target(102, "VB_bitfs_1_0xe0275d0", 0, 9)
			add_scroll_target(102, "VB_bitfs_1_0xe027660", 0, 13)
			add_scroll_target(102, "VB_bitfs_1_0xe027730", 0, 9)
			add_scroll_target(102, "VB_bitfs_1_0xe0277c0", 0, 3)
			-- Count: 304
			bitfs_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_SA then
		if sa_1_scroll == false then
			add_scroll_target(103, "VB_sa_1_0xe001820", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(104, "VB_sa_2_0xe001820", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(105, "VB_sa_3_0xe001820", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(106, "VB_sa_4_0xe001820", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(107, "VB_sa_5_0xe001820", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(108, "VB_sa_7_0xe02b720", 0, 4) -- Start VB
			-- Count: 4
			sa_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BITS then
		if bits_1_scroll == false then
			add_scroll_target(109, "VB_bits_1_0xe00fc00", 0, 13) -- Start VB
			add_scroll_target(109, "VB_bits_1_0xe00fcd0", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe00fd80", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe00fe30", 0, 7)
			add_scroll_target(109, "VB_bits_1_0xe00fea0", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe00ff30", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe00ffe0", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe010090", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010120", 0, 15)
			add_scroll_target(109, "VB_bits_1_0xe010210", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe0102a0", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010330", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe0103e0", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010470", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010500", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe0105b0", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010640", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe0106f0", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe0107a0", 0, 13)
			add_scroll_target(109, "VB_bits_1_0xe010870", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010900", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe0109b0", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe010a60", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe010b10", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010ba0", 0, 14)
			add_scroll_target(109, "VB_bits_1_0xe010c80", 0, 14)
			add_scroll_target(109, "VB_bits_1_0xe010d60", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe010e10", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe010ec0", 0, 9)
			add_scroll_target(109, "VB_bits_1_0xe010f50", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe011000", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe0110b0", 0, 11)
			add_scroll_target(109, "VB_bits_1_0xe011160", 0, 7)
			add_scroll_target(109, "VB_bits_1_0xe0111d0", 0, 4)
			-- Count: 353

			add_scroll_target(110, "VB_bits_1_0xe011210", 0, 11) -- Start VB
			add_scroll_target(110, "VB_bits_1_0xe0112c0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011370", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011420", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe0114d0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011580", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011630", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe0116e0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011790", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011840", 0, 13)
			add_scroll_target(110, "VB_bits_1_0xe011910", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe0119c0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011a70", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011b20", 0, 13)
			add_scroll_target(110, "VB_bits_1_0xe011bf0", 0, 13)
			add_scroll_target(110, "VB_bits_1_0xe011cc0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011d70", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011e20", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011ed0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe011f80", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe012030", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe0120e0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe012190", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe012240", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe0122f0", 0, 11)
			add_scroll_target(110, "VB_bits_1_0xe0123a0", 0, 13)
			add_scroll_target(110, "VB_bits_1_0xe012470", 0, 4)
			-- Count: 298

			add_scroll_target(111, "VB_bits_1_0xe0124b0", 0, 11) -- Start VB
			add_scroll_target(111, "VB_bits_1_0xe012560", 0, 12)
			add_scroll_target(111, "VB_bits_1_0xe012620", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe0126d0", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012780", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012830", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe0128e0", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012990", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012a40", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012af0", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012ba0", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012c50", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012d00", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012db0", 0, 11)
			add_scroll_target(111, "VB_bits_1_0xe012e60", 0, 3)
			-- Count: 158

			add_scroll_target(112, "VB_bits_1_0xe012e90", 0, 11) -- Start VB
			add_scroll_target(112, "VB_bits_1_0xe012f40", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe012ff0", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe0130a0", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe013150", 0, 13)
			add_scroll_target(112, "VB_bits_1_0xe013220", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe0132d0", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe013380", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe013430", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe0134e0", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe013590", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe013640", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe0136f0", 0, 11)
			add_scroll_target(112, "VB_bits_1_0xe0137a0", 0, 11)
			-- Count: 156

			add_scroll_target(113, "VB_bits_1_0xe013850", 0, 11) -- Start VB
			add_scroll_target(113, "VB_bits_1_0xe013900", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe0139b0", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013a60", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013b10", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013bc0", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013c70", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013d20", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013dd0", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013e80", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013f30", 0, 11)
			add_scroll_target(113, "VB_bits_1_0xe013fe0", 0, 7)
			-- Count: 128

			add_scroll_target(114, "VB_bits_1_0xe014050", 0, 11) -- Start VB
			add_scroll_target(114, "VB_bits_1_0xe014100", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe0141b0", 0, 9)
			add_scroll_target(114, "VB_bits_1_0xe014240", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe0142f0", 0, 9)
			add_scroll_target(114, "VB_bits_1_0xe014380", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014430", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe0144e0", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014590", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014640", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe0146f0", 0, 13)
			add_scroll_target(114, "VB_bits_1_0xe0147c0", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014870", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014920", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe0149d0", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014a80", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014b30", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014be0", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014c90", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014d40", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014df0", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014ea0", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe014f50", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe015000", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe0150b0", 0, 9)
			add_scroll_target(114, "VB_bits_1_0xe015140", 0, 11)
			add_scroll_target(114, "VB_bits_1_0xe0151f0", 0, 11)
			-- Count: 293

			add_scroll_target(115, "VB_bits_1_0xe027710", 0, 15) -- Start VB
			add_scroll_target(115, "VB_bits_1_0xe027800", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe0278f0", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe0279e0", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe027ad0", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe027bc0", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe027cb0", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe027da0", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe027e90", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe027f80", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe028070", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe028160", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe028250", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe028340", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe028430", 0, 15)
			add_scroll_target(115, "VB_bits_1_0xe028520", 0, 15)
			-- Count: 240

			add_scroll_target(116, "VB_bits_1_0xe02cd30", 0, 11) -- Start VB
			add_scroll_target(116, "VB_bits_1_0xe02cde0", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02ce90", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02cf40", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02cff0", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02d0a0", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02d150", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02d200", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02d2b0", 0, 11)
			add_scroll_target(116, "VB_bits_1_0xe02d360", 0, 7)
			-- Count: 106

			add_scroll_target(117, "VB_bits_1_0xe02d3d0", 0, 7) -- Start VB
			add_scroll_target(117, "VB_bits_1_0xe02d440", 0, 11)
			add_scroll_target(117, "VB_bits_1_0xe02d4f0", 0, 4)
			-- Count: 22

			add_scroll_target(118, "VB_bits_1_0xe02d530", 0, 11) -- Start VB
			add_scroll_target(118, "VB_bits_1_0xe02d5e0", 0, 11)
			add_scroll_target(118, "VB_bits_1_0xe02d690", 0, 11)
			add_scroll_target(118, "VB_bits_1_0xe02d740", 0, 11)
			add_scroll_target(118, "VB_bits_1_0xe02d7f0", 0, 11)
			add_scroll_target(118, "VB_bits_1_0xe02d8a0", 0, 11)
			add_scroll_target(118, "VB_bits_1_0xe02d950", 0, 9)
			add_scroll_target(118, "VB_bits_1_0xe02d9e0", 0, 9)
			add_scroll_target(118, "VB_bits_1_0xe02da70", 0, 11)
			add_scroll_target(118, "VB_bits_1_0xe02db20", 0, 11)
			-- Count: 106

			add_scroll_target(119, "VB_bits_1_0xe02dbd0", 0, 7) -- Start VB
			add_scroll_target(119, "VB_bits_1_0xe02dc40", 0, 11)
			add_scroll_target(119, "VB_bits_1_0xe02dcf0", 0, 6)
			-- Count: 24

			add_scroll_target(120, "VB_bits_1_0xe0244c0", 0, 11) -- Start VB
			add_scroll_target(120, "VB_bits_1_0xe024570", 0, 14)
			add_scroll_target(120, "VB_bits_1_0xe024650", 0, 12)
			add_scroll_target(120, "VB_bits_1_0xe024710", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe0247e0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe0248d0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe0249c0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe024ab0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe024b60", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe024c30", 0, 12)
			add_scroll_target(120, "VB_bits_1_0xe024cf0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe024de0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe024ed0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe024fc0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe0250b0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe0251a0", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe025290", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe025380", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025430", 0, 9)
			add_scroll_target(120, "VB_bits_1_0xe0254c0", 0, 12)
			add_scroll_target(120, "VB_bits_1_0xe025580", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe025650", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025700", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0257b0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025860", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025910", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0259c0", 0, 9)
			add_scroll_target(120, "VB_bits_1_0xe025a50", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025b00", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025bb0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025c60", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025d10", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025dc0", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe025e90", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025f40", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe025ff0", 0, 12)
			add_scroll_target(120, "VB_bits_1_0xe0260b0", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe026180", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe026270", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026320", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0263d0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026480", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026530", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0265e0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026690", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026740", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0267f0", 0, 12)
			add_scroll_target(120, "VB_bits_1_0xe0268b0", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe026980", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026a30", 0, 9)
			add_scroll_target(120, "VB_bits_1_0xe026ac0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026b70", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe026c40", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026cf0", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe026dc0", 0, 9)
			add_scroll_target(120, "VB_bits_1_0xe026e50", 0, 15)
			add_scroll_target(120, "VB_bits_1_0xe026f40", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe026ff0", 0, 9)
			add_scroll_target(120, "VB_bits_1_0xe027080", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe027130", 0, 9)
			add_scroll_target(120, "VB_bits_1_0xe0271c0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe027270", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe027340", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0273f0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0274a0", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe027550", 0, 13)
			add_scroll_target(120, "VB_bits_1_0xe027620", 0, 11)
			add_scroll_target(120, "VB_bits_1_0xe0276d0", 0, 4)
			-- Count: 805
			bits_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_LLL and np.currAreaIndex == 1 then
		if lll_1_scroll == false then
			add_scroll_target(121, "VB_lll_1_0xe03f7c0", 0, 3) -- Start VB
			-- Count: 3

			add_scroll_target(122, "VB_lll_1_0xe03f910", 0, 3) -- Start VB
			-- Count: 3

			add_scroll_target(123, "VB_lll_1_0xe03fa60", 0, 3) -- Start VB
			-- Count: 3

			add_scroll_target(124, "VB_lll_1_0xe03fbb0", 0, 3) -- Start VB
			-- Count: 3

			add_scroll_target(125, "VB_lll_1_0xe03fd00", 0, 3) -- Start VB
			-- Count: 3
			lll_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_LLL and np.currAreaIndex == 2 then
		if lll_2_scroll == false then
			add_scroll_target(126, "VB_lll_2_0xe0090a0", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(127, "VB_lll_2_0xe006e40", 0, 4) -- Start VB
			add_scroll_target(127, "VB_lll_2_0xe010da0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe010e10", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe010e80", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe010f10", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe010f80", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe010ff0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe011060", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0110d0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe011160", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe0111e0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe012b80", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe012bf0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe012c60", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe012cf0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe012d60", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe012dd0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe012e40", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe012eb0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe012f40", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe012fc0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe014980", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0149f0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe014a60", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe014af0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe014b60", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe014bd0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe014c40", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe014cb0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe014d40", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe014dc0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe016720", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe016790", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe016800", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe016880", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0168f0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe016960", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0169d0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe016a40", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe016ad0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe016b40", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe018510", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe018580", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0185f0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe018680", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0186f0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe018760", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0187d0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe018840", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe0188d0", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe018950", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01bdc0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01be30", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01bea0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe01bf30", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01bfa0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01c010", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01c080", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01c0f0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe01c180", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe01c200", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01e920", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01e990", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01ea00", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe01ea90", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01eb00", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01eb70", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01ebe0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe01ec50", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe01ece0", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe01ed60", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0221d0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe022240", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0222b0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe022340", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0223b0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe022420", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe022490", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe022500", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe022590", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe022610", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe023f70", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe023fe0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe024050", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe0240e0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe024150", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0241c0", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe024230", 0, 7)
			add_scroll_target(127, "VB_lll_2_0xe0242a0", 0, 9)
			add_scroll_target(127, "VB_lll_2_0xe024330", 0, 8)
			add_scroll_target(127, "VB_lll_2_0xe0243b0", 0, 7)
			-- Count: 677
			lll_2_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_DDD and np.currAreaIndex == 1 then
		if ddd_1_scroll == false then
			add_scroll_target(128, "VB_ddd_1_0xe044140", 0, 4) -- Start VB
			add_scroll_target(128, "VB_ddd_1_0xe044180", 0, 7)
			add_scroll_target(128, "VB_ddd_1_0xe0441f0", 0, 9)
			add_scroll_target(128, "VB_ddd_1_0xe044280", 0, 9)
			add_scroll_target(128, "VB_ddd_1_0xe044310", 0, 7)
			add_scroll_target(128, "VB_ddd_1_0xe044380", 0, 9)
			add_scroll_target(128, "VB_ddd_1_0xe044410", 0, 11)
			add_scroll_target(128, "VB_ddd_1_0xe0444c0", 0, 9)
			add_scroll_target(128, "VB_ddd_1_0xe044550", 0, 11)
			add_scroll_target(128, "VB_ddd_1_0xe044600", 0, 11)
			add_scroll_target(128, "VB_ddd_1_0xe0446b0", 0, 7)
			add_scroll_target(128, "VB_ddd_1_0xe044720", 0, 4)
			add_scroll_target(128, "VB_ddd_1_0xe044760", 0, 11)
			add_scroll_target(128, "VB_ddd_1_0xe044810", 0, 7)
			-- Count: 116

			add_scroll_target(129, "VB_ddd_1_0xe046df0", 0, 11) -- Start VB
			add_scroll_target(129, "VB_ddd_1_0xe046ea0", 0, 11)
			add_scroll_target(129, "VB_ddd_1_0xe046f50", 0, 11)
			add_scroll_target(129, "VB_ddd_1_0xe047000", 0, 11)
			add_scroll_target(129, "VB_ddd_1_0xe0470b0", 0, 11)
			add_scroll_target(129, "VB_ddd_1_0xe047160", 0, 3)
			-- Count: 58

			add_scroll_target(130, "VB_ddd_1_0xe047190", 0, 11) -- Start VB
			add_scroll_target(130, "VB_ddd_1_0xe047240", 0, 11)
			add_scroll_target(130, "VB_ddd_1_0xe0472f0", 0, 11)
			add_scroll_target(130, "VB_ddd_1_0xe0473a0", 0, 11)
			add_scroll_target(130, "VB_ddd_1_0xe047450", 0, 11)
			add_scroll_target(130, "VB_ddd_1_0xe047500", 0, 7)
			-- Count: 62

			add_scroll_target(131, "VB_ddd_1_0xe0480c0", 0, 11) -- Start VB
			add_scroll_target(131, "VB_ddd_1_0xe048170", 0, 13)
			add_scroll_target(131, "VB_ddd_1_0xe048240", 0, 9)
			add_scroll_target(131, "VB_ddd_1_0xe0482d0", 0, 8)
			add_scroll_target(131, "VB_ddd_1_0xe048350", 0, 11)
			add_scroll_target(131, "VB_ddd_1_0xe048400", 0, 8)
			add_scroll_target(131, "VB_ddd_1_0xe048480", 0, 9)
			add_scroll_target(131, "VB_ddd_1_0xe048510", 0, 11)
			add_scroll_target(131, "VB_ddd_1_0xe0485c0", 0, 5)
			-- Count: 85

			add_scroll_target(132, "VB_ddd_1_0xe059c70", 0, 13) -- Start VB
			add_scroll_target(132, "VB_ddd_1_0xe059d40", 0, 13)
			add_scroll_target(132, "VB_ddd_1_0xe059e10", 0, 11)
			add_scroll_target(132, "VB_ddd_1_0xe059ec0", 0, 11)
			add_scroll_target(132, "VB_ddd_1_0xe059f70", 0, 11)
			add_scroll_target(132, "VB_ddd_1_0xe05a020", 0, 15)
			add_scroll_target(132, "VB_ddd_1_0xe05a110", 0, 11)
			add_scroll_target(132, "VB_ddd_1_0xe05a1c0", 0, 11)
			add_scroll_target(132, "VB_ddd_1_0xe05a270", 0, 11)
			add_scroll_target(132, "VB_ddd_1_0xe05a320", 0, 4)
			-- Count: 111

			add_scroll_target(133, "VB_ddd_1_0xe05fc00", 0, 11) -- Start VB
			add_scroll_target(133, "VB_ddd_1_0xe05fcb0", 0, 3)
			-- Count: 14

			add_scroll_target(134, "VB_ddd_1_0xe05fce0", 0, 11) -- Start VB
			add_scroll_target(134, "VB_ddd_1_0xe05fd90", 0, 3)
			-- Count: 14

			add_scroll_target(135, "VB_ddd_1_0xe05a360", 0, 11) -- Start VB
			add_scroll_target(135, "VB_ddd_1_0xe05a410", 0, 13)
			add_scroll_target(135, "VB_ddd_1_0xe05a4e0", 0, 11)
			add_scroll_target(135, "VB_ddd_1_0xe05a590", 0, 11)
			add_scroll_target(135, "VB_ddd_1_0xe05a640", 0, 13)
			add_scroll_target(135, "VB_ddd_1_0xe05a710", 0, 13)
			add_scroll_target(135, "VB_ddd_1_0xe05a7e0", 0, 11)
			add_scroll_target(135, "VB_ddd_1_0xe05a890", 0, 11)
			add_scroll_target(135, "VB_ddd_1_0xe05a940", 0, 11)
			add_scroll_target(135, "VB_ddd_1_0xe05a9f0", 0, 4)
			-- Count: 109

			add_scroll_target(136, "VB_ddd_1_0xe05fdc0", 0, 13) -- Start VB
			add_scroll_target(136, "VB_ddd_1_0xe05fe90", 0, 15)
			-- Count: 28
			ddd_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_DDD and np.currAreaIndex == 3 then
		if ddd_3_scroll == false then
			add_scroll_target(137, "VB_ddd_3_0xe010130", 0, 9) -- Start VB
			add_scroll_target(137, "VB_ddd_3_0xe0101c0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010250", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe010300", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010390", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010420", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe0104d0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010560", 0, 8)
			add_scroll_target(137, "VB_ddd_3_0xe0105e0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010670", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010700", 0, 8)
			add_scroll_target(137, "VB_ddd_3_0xe010780", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe010830", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe0108c0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010950", 0, 7)
			add_scroll_target(137, "VB_ddd_3_0xe0109c0", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe010a70", 0, 8)
			add_scroll_target(137, "VB_ddd_3_0xe010af0", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe010ba0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010c30", 0, 8)
			add_scroll_target(137, "VB_ddd_3_0xe010cb0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010d40", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010dd0", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe010e80", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe010f10", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe010fc0", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe011070", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe011120", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe0111b0", 0, 12)
			add_scroll_target(137, "VB_ddd_3_0xe011270", 0, 13)
			add_scroll_target(137, "VB_ddd_3_0xe011340", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe0113f0", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe0114a0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe011530", 0, 12)
			add_scroll_target(137, "VB_ddd_3_0xe0115f0", 0, 7)
			add_scroll_target(137, "VB_ddd_3_0xe011660", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe0116f0", 0, 9)
			add_scroll_target(137, "VB_ddd_3_0xe011780", 0, 11)
			add_scroll_target(137, "VB_ddd_3_0xe011830", 0, 5)
			-- Count: 373
            ddd_3_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_CASTLE_COURTYARD and np.currAreaIndex == 1 then
		if castle_courtyard_1_scroll == false then
			add_scroll_target(161, "VB_castle_courtyard_1_0xe049790", 0, 11) -- Start VB
			add_scroll_target(161, "VB_castle_courtyard_1_0xe049840", 0, 9)
			add_scroll_target(161, "VB_castle_courtyard_1_0xe0498d0", 0, 10)
			add_scroll_target(161, "VB_castle_courtyard_1_0xe049970", 0, 11)
			add_scroll_target(161, "VB_castle_courtyard_1_0xe049a20", 0, 9)
			add_scroll_target(161, "VB_castle_courtyard_1_0xe049ab0", 0, 11)
			add_scroll_target(161, "VB_castle_courtyard_1_0xe049b60", 0, 4)
			-- Count: 65

			add_scroll_target(162, "VB_castle_courtyard_1_0xe0520d0", 0, 14) -- Start VB
			add_scroll_target(162, "VB_castle_courtyard_1_0xe0521b0", 0, 13)
			add_scroll_target(162, "VB_castle_courtyard_1_0xe052280", 0, 12)
			-- Count: 39

			add_scroll_target(163, "VB_castle_courtyard_1_0xe032190", 0, 4) -- Start VB
			-- Count: 4

			add_scroll_target(164, "VB_castle_courtyard_1_0xe03f970", 0, 11) -- Start VB
			add_scroll_target(164, "VB_castle_courtyard_1_0xe03fa20", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe03fa90", 0, 11)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe03fb40", 0, 11)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe047860", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe0478d0", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe047940", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe0479b0", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe047a20", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe047a90", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe047b00", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe047b70", 0, 7)
			add_scroll_target(164, "VB_castle_courtyard_1_0xe047be0", 0, 8)
			-- Count: 104

			add_scroll_target(165, "VB_castle_courtyard_1_0xe05f8f0", 0, 10) -- Start VB
			add_scroll_target(165, "VB_castle_courtyard_1_0xe05f990", 0, 3)
			-- Count: 13

			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fa00", 0, 9) -- Start VB
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fa90", 0, 13)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fb60", 0, 11)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fc10", 0, 7)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fc80", 0, 13)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fd50", 0, 9)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fde0", 0, 7)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08fe50", 0, 11)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08ff00", 0, 13)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe08ffd0", 0, 10)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe090070", 0, 10)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe090110", 0, 10)
			add_scroll_target(166, "VB_castle_courtyard_1_0xe0901b0", 0, 3)
			-- Count: 126
            castle_courtyard_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_CASTLE_COURTYARD and np.currAreaIndex == 4 then
		if castle_courtyard_4_scroll == false then
			add_scroll_target(167, "VB_castle_courtyard_4_0xe005e40", 0, 11) -- Start VB
			add_scroll_target(167, "VB_castle_courtyard_4_0xe005ef0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe005fa0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006050", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006100", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0061b0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006260", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0062f0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0063a0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006450", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006500", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0065b0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006660", 0, 10)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006700", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0067b0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006860", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006910", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0069c0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006a70", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006b00", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006bb0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006c60", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006d10", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006dc0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006e70", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006f20", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe006fd0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007080", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007130", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0071e0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007290", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007340", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0073f0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0074a0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007550", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007600", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0076b0", 0, 13)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007780", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007830", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0078e0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007990", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007a40", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007af0", 0, 13)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007bc0", 0, 13)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007c90", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007d40", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007df0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007ea0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007f50", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe007fd0", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe008050", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0080d0", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe008150", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0081d0", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe008250", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0082e0", 0, 12)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0083a0", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe008420", 0, 6)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe008480", 0, 6)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe008fc0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009030", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0090c0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009130", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0091a0", 0, 3)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0091d0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009240", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0092b0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009320", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009390", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009420", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009490", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009500", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009570", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009600", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009670", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0096e0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009750", 0, 6)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0097b0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009840", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe0098b0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009920", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009990", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009a00", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009a90", 0, 6)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009af0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009b60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009bd0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009c60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009cd0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009d60", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009df0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009e60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009ed0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009f40", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe009fb0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a020", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a090", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a100", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a170", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a1f0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a260", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a2d0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a340", 0, 6)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a3a0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a410", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a480", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a4f0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a560", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a5e0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a650", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a6c0", 0, 4)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a700", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a7b0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a820", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a8b0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a920", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00a990", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00aa20", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00aa90", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ab00", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ab70", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00abe0", 0, 11)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ac90", 0, 3)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00acc0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ad30", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ada0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ae10", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ae80", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00aef0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00af60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00afd0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b040", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b0b0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b120", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b190", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b200", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b270", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b2e0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b370", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b3e0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b450", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b4c0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b530", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b5c0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b630", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b6a0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b710", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b7a0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b810", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b880", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b8f0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b960", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00b9f0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ba60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bad0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bb60", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bbf0", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bc70", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bce0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bd50", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bde0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00be70", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bee0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bf50", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00bfc0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c030", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c0a0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c130", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c1a0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c210", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c280", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c310", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c380", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c410", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c480", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c4f0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c580", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c5f0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c660", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c6f0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c760", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c7d0", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c850", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c8c0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c930", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00c9a0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ca10", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00caa0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cb10", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cb80", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cbf0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cc60", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ccf0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cd60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cdd0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ce40", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ceb0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cf20", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00cf90", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d020", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d090", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d100", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d170", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d1e0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d270", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d2e0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d350", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d3c0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d430", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d4a0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d510", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d580", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d5f0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d660", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d6f0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d780", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d810", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d880", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d8f0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00d980", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00da10", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00da80", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00daf0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00db80", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00dbf0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00dc60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00dcd0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00dd60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ddd0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00de40", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00deb0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00df20", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00df90", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e000", 0, 3)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e030", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e0a0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e110", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e1a0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e230", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e2b0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e340", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e3b0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e440", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e4b0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e520", 0, 10)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e5c0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e650", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e6c0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e750", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e7c0", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e850", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e8e0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e950", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00e9c0", 0, 8)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ea40", 0, 6)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00eaa0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00eb10", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00eb80", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ebf0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ec60", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ecd0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ed40", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00edb0", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ee20", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ee90", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ef00", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00ef70", 0, 9)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00f000", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00f070", 0, 7)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00f0e0", 0, 4)
			add_scroll_target(167, "VB_castle_courtyard_4_0xe00f120", 0, 7)
			-- Count: 2183
			castle_courtyard_4_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_PSS and np.currAreaIndex == 1 then
		if pss_1_scroll == false then
			add_scroll_target(168, "VB_pss_1_0xe011170", 0, 11) -- Start VB
			add_scroll_target(168, "VB_pss_1_0xe011220", 0, 11)
			add_scroll_target(168, "VB_pss_1_0xe0112d0", 0, 11)
			add_scroll_target(168, "VB_pss_1_0xe011380", 0, 3)
			-- Count: 36

			add_scroll_target(169, "VB_pss_1_0xe0255b0", 0, 9) -- Start VB
			add_scroll_target(169, "VB_pss_1_0xe025640", 0, 13)
			add_scroll_target(169, "VB_pss_1_0xe025710", 0, 11)
			add_scroll_target(169, "VB_pss_1_0xe0257c0", 0, 9)
			add_scroll_target(169, "VB_pss_1_0xe025850", 0, 9)
			add_scroll_target(169, "VB_pss_1_0xe0258e0", 0, 7)
			add_scroll_target(169, "VB_pss_1_0xe025950", 0, 7)
			-- Count: 65
			pss_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_COTMC and np.currAreaIndex == 1 then
		if cotmc_1_scroll == false then
			add_scroll_target(170, "VB_cotmc_1_0xe01e5e0", 0, 11) -- Start VB
			add_scroll_target(170, "VB_cotmc_1_0xe01e690", 0, 13)
			add_scroll_target(170, "VB_cotmc_1_0xe01e760", 0, 10)
			-- Count: 34

			add_scroll_target(171, "VB_cotmc_1_0xe01ed70", 0, 13) -- Start VB
			add_scroll_target(171, "VB_cotmc_1_0xe01ee40", 0, 13)
			add_scroll_target(171, "VB_cotmc_1_0xe01ef10", 0, 13)
			add_scroll_target(171, "VB_cotmc_1_0xe01efe0", 0, 15)
			add_scroll_target(171, "VB_cotmc_1_0xe01f0d0", 0, 15)
			add_scroll_target(171, "VB_cotmc_1_0xe01f1c0", 0, 13)
			-- Count: 82

			add_scroll_target(172, "VB_cotmc_1_0xe020f50", 0, 11) -- Start VB
			add_scroll_target(172, "VB_cotmc_1_0xe021000", 0, 7)
			-- Count: 18
			cotmc_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_TOTWC and np.currAreaIndex == 1 then
		if totwc_1_scroll == false then
			add_scroll_target(173, "VB_totwc_1_0xe019f40", 0, 11) -- Start VB
			add_scroll_target(173, "VB_totwc_1_0xe019ff0", 0, 11)
			-- Count: 22

			add_scroll_target(174, "VB_totwc_1_0xe01f7d0", 0, 9) -- Start VB
			add_scroll_target(174, "VB_totwc_1_0xe01f860", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01f8f0", 0, 8)
			add_scroll_target(174, "VB_totwc_1_0xe01f970", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fa00", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fa90", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fb20", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fbb0", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fc40", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fcd0", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fd60", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fdf0", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01fe80", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01ff10", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe01ffa0", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe020030", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe0200c0", 0, 8)
			add_scroll_target(174, "VB_totwc_1_0xe020140", 0, 7)
			add_scroll_target(174, "VB_totwc_1_0xe0201b0", 0, 11)
			add_scroll_target(174, "VB_totwc_1_0xe020260", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe0202f0", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe020380", 0, 8)
			add_scroll_target(174, "VB_totwc_1_0xe020400", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe020490", 0, 11)
			add_scroll_target(174, "VB_totwc_1_0xe020540", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe0205d0", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe020660", 0, 9)
			add_scroll_target(174, "VB_totwc_1_0xe0206f0", 0, 9)
			-- Count: 251
			totwc_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BOWSER_1 and np.currAreaIndex == 1 then
		if bowser_1_1_scroll == false then
			add_scroll_target(175, "VB_bowser_1_1_0xe00d520", 0, 15) -- Start VB
			add_scroll_target(175, "VB_bowser_1_1_0xe00d610", 0, 9)
			add_scroll_target(175, "VB_bowser_1_1_0xe00d6a0", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00d750", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00d800", 0, 9)
			add_scroll_target(175, "VB_bowser_1_1_0xe00d890", 0, 9)
			add_scroll_target(175, "VB_bowser_1_1_0xe00d920", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00d9d0", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00da80", 0, 9)
			add_scroll_target(175, "VB_bowser_1_1_0xe00db10", 0, 12)
			add_scroll_target(175, "VB_bowser_1_1_0xe00dbd0", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00dc80", 0, 15)
			add_scroll_target(175, "VB_bowser_1_1_0xe00dd70", 0, 13)
			add_scroll_target(175, "VB_bowser_1_1_0xe00de40", 0, 9)
			add_scroll_target(175, "VB_bowser_1_1_0xe00ded0", 0, 13)
			add_scroll_target(175, "VB_bowser_1_1_0xe00dfa0", 0, 9)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e030", 0, 13)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e100", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e1b0", 0, 13)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e280", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e330", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e3e0", 0, 15)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e4d0", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e580", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e630", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e6e0", 0, 9)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e770", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e820", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e8d0", 0, 13)
			add_scroll_target(175, "VB_bowser_1_1_0xe00e9a0", 0, 13)
			add_scroll_target(175, "VB_bowser_1_1_0xe00ea70", 0, 13)
			add_scroll_target(175, "VB_bowser_1_1_0xe00eb40", 0, 11)
			add_scroll_target(175, "VB_bowser_1_1_0xe00ebf0", 0, 3)
			-- Count: 368

			add_scroll_target(176, "VB_bowser_1_1_0xe00b7f0", 0, 7) -- Start VB
			add_scroll_target(176, "VB_bowser_1_1_0xe00b860", 0, 9)
			add_scroll_target(176, "VB_bowser_1_1_0xe00b8f0", 0, 11)
			add_scroll_target(176, "VB_bowser_1_1_0xe00b9a0", 0, 11)
			add_scroll_target(176, "VB_bowser_1_1_0xe00ba50", 0, 15)
			add_scroll_target(176, "VB_bowser_1_1_0xe00bb40", 0, 13)
			add_scroll_target(176, "VB_bowser_1_1_0xe00bc10", 0, 13)
			add_scroll_target(176, "VB_bowser_1_1_0xe00bce0", 0, 10)
			add_scroll_target(176, "VB_bowser_1_1_0xe00bd80", 0, 9)
			add_scroll_target(176, "VB_bowser_1_1_0xe00be10", 0, 11)
			add_scroll_target(176, "VB_bowser_1_1_0xe00bec0", 0, 13)
			add_scroll_target(176, "VB_bowser_1_1_0xe00bf90", 0, 13)
			add_scroll_target(176, "VB_bowser_1_1_0xe00c060", 0, 4)
			-- Count: 139

			add_scroll_target(177, "VB_bowser_1_1_0xe00ec20", 0, 9) -- Start VB
			add_scroll_target(177, "VB_bowser_1_1_0xe00ecb0", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00ed40", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00edf0", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00ee80", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00ef10", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00efa0", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f030", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f0e0", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f170", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f200", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f2b0", 0, 13)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f380", 0, 14)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f460", 0, 7)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f4d0", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f580", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f610", 0, 13)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f6e0", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f790", 0, 15)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f880", 0, 10)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f920", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00f9d0", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00fa80", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00fb30", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00fbe0", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00fc70", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00fd00", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00fdb0", 0, 11)
			add_scroll_target(177, "VB_bowser_1_1_0xe00fe60", 0, 13)
			add_scroll_target(177, "VB_bowser_1_1_0xe00ff30", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe00ffc0", 0, 9)
			add_scroll_target(177, "VB_bowser_1_1_0xe010050", 0, 10)
			add_scroll_target(177, "VB_bowser_1_1_0xe0100f0", 0, 3)
			-- Count: 336
			bowser_1_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_WMOTR and np.currAreaIndex == 1 then
		if wmotr_1_scroll == false then
			add_scroll_target(178, "VB_wmotr_1_0xe00e290", 0, 9) -- Start VB
			add_scroll_target(178, "VB_wmotr_1_0xe00e320", 0, 5)
			-- Count: 14
			wmotr_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_WMOTR and np.currAreaIndex == 2 then
		if wmotr_2_scroll == false then
			add_scroll_target(179, "VB_wmotr_2_0xe00e9f0", 0, 9) -- Start VB
			add_scroll_target(179, "VB_wmotr_2_0xe00ea80", 0, 5)
			-- Count: 14
			wmotr_2_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_WMOTR and np.currAreaIndex == 3 then
		if wmotr_3_scroll == false then
			add_scroll_target(180, "VB_wmotr_3_0xe00f4b0", 0, 9) -- Start VB
			add_scroll_target(180, "VB_wmotr_3_0xe00f540", 0, 5)
			-- Count: 14
			wmotr_3_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BOWSER_2 and np.currAreaIndex == 1 then
		if bowser_2_1_scroll == false then
			add_scroll_target(181, "VB_bowser_2_1_0xe007e10", 0, 13) -- Start VB
			add_scroll_target(181, "VB_bowser_2_1_0xe007ee0", 0, 13)
			add_scroll_target(181, "VB_bowser_2_1_0xe007fb0", 0, 11)
			add_scroll_target(181, "VB_bowser_2_1_0xe008060", 0, 11)
			add_scroll_target(181, "VB_bowser_2_1_0xe008110", 0, 13)
			add_scroll_target(181, "VB_bowser_2_1_0xe0081e0", 0, 11)
			add_scroll_target(181, "VB_bowser_2_1_0xe008290", 0, 13)
			add_scroll_target(181, "VB_bowser_2_1_0xe008360", 0, 13)
			add_scroll_target(181, "VB_bowser_2_1_0xe008430", 0, 13)
			add_scroll_target(181, "VB_bowser_2_1_0xe008500", 0, 3)
			-- Count: 114

			add_scroll_target(182, "VB_bowser_2_1_0xe008c70", 0, 13) -- Start VB
			add_scroll_target(182, "VB_bowser_2_1_0xe008d40", 0, 13)
			add_scroll_target(182, "VB_bowser_2_1_0xe008e10", 0, 15)
			add_scroll_target(182, "VB_bowser_2_1_0xe008f00", 0, 13)
			add_scroll_target(182, "VB_bowser_2_1_0xe008fd0", 0, 15)
			add_scroll_target(182, "VB_bowser_2_1_0xe0090c0", 0, 13)
			add_scroll_target(182, "VB_bowser_2_1_0xe009190", 0, 12)
			-- Count: 94

			add_scroll_target(183, "VB_bowser_2_1_0xe007bd0", 0, 11) -- Start VB
			add_scroll_target(183, "VB_bowser_2_1_0xe007c80", 0, 11)
			add_scroll_target(183, "VB_bowser_2_1_0xe007d30", 0, 11)
			add_scroll_target(183, "VB_bowser_2_1_0xe007de0", 0, 3)
			-- Count: 36

			add_scroll_target(184, "VB_bowser_2_1_0xe009250", 0, 9) -- Start VB
			add_scroll_target(184, "VB_bowser_2_1_0xe0092e0", 0, 9)
			add_scroll_target(184, "VB_bowser_2_1_0xe009370", 0, 11)
			add_scroll_target(184, "VB_bowser_2_1_0xe009420", 0, 11)
			add_scroll_target(184, "VB_bowser_2_1_0xe0094d0", 0, 11)
			add_scroll_target(184, "VB_bowser_2_1_0xe009580", 0, 13)
			add_scroll_target(184, "VB_bowser_2_1_0xe009650", 0, 11)
			add_scroll_target(184, "VB_bowser_2_1_0xe009700", 0, 15)
			add_scroll_target(184, "VB_bowser_2_1_0xe0097f0", 0, 12)
			add_scroll_target(184, "VB_bowser_2_1_0xe0098b0", 0, 15)
			add_scroll_target(184, "VB_bowser_2_1_0xe0099a0", 0, 11)
			add_scroll_target(184, "VB_bowser_2_1_0xe009a50", 0, 13)
			add_scroll_target(184, "VB_bowser_2_1_0xe009b20", 0, 10)
			-- Count: 151
			bowser_2_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_BOWSER_3 and np.currAreaIndex == 1 then
		if bowser_3_1_scroll == false then
			add_scroll_target(185, "VB_bowser_3_1_0xe002860", 0, 13) -- Start VB
			add_scroll_target(185, "VB_bowser_3_1_0xe002930", 0, 15)
			add_scroll_target(185, "VB_bowser_3_1_0xe002a20", 0, 13)
			add_scroll_target(185, "VB_bowser_3_1_0xe002af0", 0, 11)
			add_scroll_target(185, "VB_bowser_3_1_0xe002ba0", 0, 11)
			add_scroll_target(185, "VB_bowser_3_1_0xe002c50", 0, 11)
			add_scroll_target(185, "VB_bowser_3_1_0xe002d00", 0, 11)
			add_scroll_target(185, "VB_bowser_3_1_0xe002db0", 0, 11)
			-- Count: 96

			add_scroll_target(186, "VB_bowser_3_1_0xe002e60", 0, 11) -- Start VB
			add_scroll_target(186, "VB_bowser_3_1_0xe002f10", 0, 13)
			add_scroll_target(186, "VB_bowser_3_1_0xe002fe0", 0, 11)
			add_scroll_target(186, "VB_bowser_3_1_0xe003090", 0, 13)
			add_scroll_target(186, "VB_bowser_3_1_0xe003160", 0, 11)
			add_scroll_target(186, "VB_bowser_3_1_0xe003210", 0, 9)
			-- Count: 68
			bowser_3_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_TTM and np.currAreaIndex == 1 then
		if ttm_1_scroll == false then
			add_scroll_target(187, "VB_ttm_1_0xe020a00", 0, 7) -- Start VB
			add_scroll_target(187, "VB_ttm_1_0xe020a70", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020ae0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe020b70", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe020c00", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe020c90", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020d00", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020d70", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020de0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020e50", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020ec0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020f30", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe020fa0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021010", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021080", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0210f0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe021180", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe021210", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021280", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe021310", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021380", 0, 11)
			add_scroll_target(187, "VB_ttm_1_0xe021430", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe0214c0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021530", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0215a0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021610", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021680", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0216f0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021760", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe0217f0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021860", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0218d0", 0, 8)
			add_scroll_target(187, "VB_ttm_1_0xe021950", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0219c0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021a30", 0, 10)
			add_scroll_target(187, "VB_ttm_1_0xe021ad0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021b40", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe021bd0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021c40", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021cb0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021d20", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021d90", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021e00", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021e70", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021ee0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021f50", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe021fc0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe022050", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0220c0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe022150", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0221c0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022230", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0222a0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022310", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022380", 0, 8)
			add_scroll_target(187, "VB_ttm_1_0xe022400", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022470", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0224e0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022550", 0, 8)
			add_scroll_target(187, "VB_ttm_1_0xe0225d0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022640", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0226b0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022720", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022790", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022800", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022870", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe022900", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022970", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe022a00", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022a70", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022ae0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022b50", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022bc0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe022c50", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022cc0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022d30", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe022dc0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe022e50", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022ec0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022f30", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe022fa0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023010", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023080", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0230f0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023160", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe0231f0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023260", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0232d0", 0, 8)
			add_scroll_target(187, "VB_ttm_1_0xe023350", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0233c0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023430", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe0234c0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe023550", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0235c0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023630", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0236a0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe023730", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0237a0", 0, 8)
			add_scroll_target(187, "VB_ttm_1_0xe023820", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023890", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023900", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023970", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe0239e0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023a50", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023ac0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe023b50", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023bc0", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023c30", 0, 7)
			add_scroll_target(187, "VB_ttm_1_0xe023ca0", 0, 10)
			add_scroll_target(187, "VB_ttm_1_0xe023d40", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe023dd0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe023e60", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe023ef0", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe023f80", 0, 9)
			add_scroll_target(187, "VB_ttm_1_0xe024010", 0, 9)
			-- Count: 874

			add_scroll_target(188, "VB_ttm_1_0xe026610", 0, 9) -- Start VB
			add_scroll_target(188, "VB_ttm_1_0xe0266a0", 0, 11)
			add_scroll_target(188, "VB_ttm_1_0xe026750", 0, 6)
			-- Count: 26

			add_scroll_target(189, "VB_ttm_1_0xe02cb90", 0, 10) -- Start VB
			add_scroll_target(189, "VB_ttm_1_0xe02cc30", 0, 10)
			add_scroll_target(189, "VB_ttm_1_0xe02ccd0", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02cd40", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02cdb0", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02ce20", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02ceb0", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02cf40", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02cfd0", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02d040", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d0d0", 0, 11)
			add_scroll_target(189, "VB_ttm_1_0xe02d180", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d210", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02d280", 0, 11)
			add_scroll_target(189, "VB_ttm_1_0xe02d330", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d3c0", 0, 8)
			add_scroll_target(189, "VB_ttm_1_0xe02d440", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02d4b0", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d540", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02d5b0", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d640", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d6d0", 0, 11)
			add_scroll_target(189, "VB_ttm_1_0xe02d780", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d810", 0, 9)
			add_scroll_target(189, "VB_ttm_1_0xe02d8a0", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02d910", 0, 6)
			add_scroll_target(189, "VB_ttm_1_0xe02d970", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02d9e0", 0, 7)
			add_scroll_target(189, "VB_ttm_1_0xe02da50", 0, 4)
			-- Count: 240
			ttm_1_scroll = true
		end
	end

	if np.currLevelNum == LEVEL_TTM and np.currAreaIndex == 2 then
		if ttm_2_scroll == false then
			add_scroll_target(190, "VB_ttm_2_0xe005420", 0, 11) -- Start VB
			add_scroll_target(190, "VB_ttm_2_0xe0054d0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005580", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005630", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0056e0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005790", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005840", 0, 9)
			add_scroll_target(190, "VB_ttm_2_0xe0058d0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005980", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005a30", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005ae0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005b90", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005c40", 0, 10)
			add_scroll_target(190, "VB_ttm_2_0xe005ce0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005d90", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005e40", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005ef0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe005fa0", 0, 13)
			add_scroll_target(190, "VB_ttm_2_0xe006070", 0, 9)
			add_scroll_target(190, "VB_ttm_2_0xe006100", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0061b0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006260", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006310", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0063c0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006470", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006520", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0065d0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006680", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006730", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0067e0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006890", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006940", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0069f0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006aa0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006b50", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006c00", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006cb0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006d60", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006e10", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006ec0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe006f70", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe007020", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0070d0", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe007180", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe007230", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0072e0", 0, 13)
			add_scroll_target(190, "VB_ttm_2_0xe0073b0", 0, 8)
			add_scroll_target(190, "VB_ttm_2_0xe007430", 0, 8)
			add_scroll_target(190, "VB_ttm_2_0xe0074b0", 0, 8)
			add_scroll_target(190, "VB_ttm_2_0xe007530", 0, 8)
			add_scroll_target(190, "VB_ttm_2_0xe0075b0", 0, 8)
			add_scroll_target(190, "VB_ttm_2_0xe007630", 0, 8)
			add_scroll_target(190, "VB_ttm_2_0xe0076b0", 0, 9)
			add_scroll_target(190, "VB_ttm_2_0xe007740", 0, 10)
			add_scroll_target(190, "VB_ttm_2_0xe0077e0", 0, 8)
			add_scroll_target(190, "VB_ttm_2_0xe007860", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe007910", 0, 11)
			add_scroll_target(190, "VB_ttm_2_0xe0079c0", 0, 7)
			-- Count: 609

			add_scroll_target(191, "VB_ttm_2_0xe007f10", 0, 13) -- Start VB
			add_scroll_target(191, "VB_ttm_2_0xe007fe0", 0, 11)
			add_scroll_target(191, "VB_ttm_2_0xe008090", 0, 9)
			add_scroll_target(191, "VB_ttm_2_0xe008120", 0, 13)
			add_scroll_target(191, "VB_ttm_2_0xe0081f0", 0, 13)
			add_scroll_target(191, "VB_ttm_2_0xe0082c0", 0, 3)
			-- Count: 62
			ttm_2_scroll = true
		end
	end
end

hook_event(HOOK_ON_LEVEL_INIT, cg1_scrolls)
hook_event(HOOK_ON_WARP, elder_scrolls)
